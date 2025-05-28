DO $$
DECLARE
  var_user_id UUID;
  var_shipping_address_id UUID;
  var_order_id UUID;
  var_product_id UUID;
  list_product_ids UUID[];
  list_product_price FLOAT[];
  var_product_price FLOAT;
  var_total_amount FLOAT;
  var_quantity INT;
  statuses TEXT[] := ARRAY['DRAFT', 'PENDING', 'CONFIRMED', 'SHIPPING', 'DELIVERED', 'CANCELED'];
  i INT;
  j INT;
  number_records INT;
  random_year INT;
  random_month INT;
  random_day INT;
  random_date DATE;
BEGIN
  -- 1. Try to get a user ID
  SELECT id INTO var_user_id FROM "user" LIMIT 1;

  -- 2. If not exists, create one
  IF var_user_id IS NULL THEN
    INSERT INTO "user" (id, name, email, gender, role, dob)
    VALUES (uuid_generate_v4(), 'Test User', 'test@example.com', 'FEMALE', 'USER', '1995-01-01')
    RETURNING id INTO var_user_id;
  END IF;

  -- 3. Try to find default shipping address
  SELECT id INTO var_shipping_address_id
  FROM shipping_address
  WHERE user_id = var_user_id AND is_default = true
  LIMIT 1;

  -- 4. If not exists, create one
  IF var_shipping_address_id IS NULL THEN
    INSERT INTO shipping_address (
      id, title, user_id, phone, address, district, city, country, postal_code, is_default
    ) VALUES (
      uuid_generate_v4(), 'Home', var_user_id, '0123456789', '123 Test St', 'Test District', 'Test City', 'Testland', '123456', true
    ) RETURNING id INTO var_shipping_address_id;
  END IF;

  -- 5. Get product IDs and prices only once
  SELECT ARRAY_AGG(id), ARRAY_AGG(price)
  INTO list_product_ids, list_product_price
  FROM (
    SELECT id, price FROM "product" LIMIT 5
  ) sub;

  -- 6. Create orders with different statuses
  FOR i IN 1..array_length(statuses, 1) LOOP
    FOR number_records IN 1..5 LOOP -- 5 orders per status
      -- Generate random date
      random_year := 2022 + floor(random() * 4)::INT;
      random_month := 1 + floor(random() * 12)::INT;
      random_day := 1 + floor(random() * 28)::INT;
      random_date := make_date(random_year, random_month, random_day);

      var_total_amount := 0;

      -- Create order
      INSERT INTO "order" (
        id, user_id, shipping_address_id, status, total_amount, total_discount,
        shipping_fee, final_amount, payment_method, payment_status, payment_date
      ) VALUES (
        uuid_generate_v4(), var_user_id, var_shipping_address_id, statuses[i]::"OrderStatus",
        0, 0, 0, 0, 'COD', 'PAID', random_date
      ) RETURNING id INTO var_order_id;

      -- Insert order items
      FOR j IN 1..array_length(list_product_ids, 1) LOOP
        var_quantity := 1 + floor(random() * 30)::INT;
        var_product_id := list_product_ids[j];
        var_product_price := list_product_price[j];
        var_total_amount := var_total_amount + var_product_price * var_quantity;

        INSERT INTO "order_item" (
          id, user_id, order_id, product_id, quantity, original_price,
          final_price, discount_amount, note
        ) VALUES (
          uuid_generate_v4(), var_user_id, var_order_id, var_product_id,
          var_quantity, var_product_price * var_quantity,
          var_product_price * var_quantity, 0, ''
        );
      END LOOP;

      -- Update order total
      UPDATE "order"
      SET total_amount = var_total_amount,
          final_amount = var_total_amount
      WHERE id = var_order_id;

    END LOOP;
  END LOOP;
END;
$$;
