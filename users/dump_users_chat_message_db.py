from pymongo import MongoClient
from datetime import datetime, timedelta

DATABASE_URL="mongodb+srv://jasminebkdn:jasminebkdn@mongocluster.sihqh.mongodb.net/chat_session_db?retryWrites=true&w=majority&appName=MongoCluster"
client = MongoClient(DATABASE_URL) 
db = client["chat_session_db"] 
users_collection = db["User"]

def days_ago(n):
    return datetime.now() - timedelta(days=n)

# Users created THIS MONTH
users_this_month = [
    {
        "name": "Alice Now",
        "avatar": None,
        "email": "alice.now@example.com",
        "location": "City A",
        "date_of_birth": datetime(1995, 1, 1),
        "gender": "FEMALE",
        "role": "USER",
        "created_at": days_ago(2),
    },
    {
        "name": "Bob Now",
        "avatar": None,
        "email": "bob.now@example.com",
        "location": "City B",
        "date_of_birth": datetime(1993, 4, 5),
        "gender": "MALE",
        "role": "USER",
        "created_at": days_ago(5),
    },
    {
        "name": "Cara Now",
        "avatar": None,
        "email": "cara.now@example.com",
        "location": "City C",
        "date_of_birth": datetime(1990, 6, 7),
        "gender": "FEMALE",
        "role": "USER",
        "created_at": days_ago(10),
    },
    {
        "name": "David Now",
        "avatar": None,
        "email": "david.now@example.com",
        "location": "City D",
        "date_of_birth": datetime(1992, 11, 12),
        "gender": "MALE",
        "role": "USER",
        "created_at": days_ago(12),
    },
]

# Users created LAST MONTH (approximate 30-60 days ago)
users_last_month = [
    {
        "name": "Eva Last",
        "avatar": None,
        "email": "eva.last@example.com",
        "location": "City E",
        "date_of_birth": datetime(1991, 2, 3),
        "gender": "FEMALE",
        "role": "USER",
        "created_at": days_ago(63),  # 2 months + 3 days approx
    },
    {
        "name": "Frank Last",
        "avatar": None,
        "email": "frank.last@example.com",
        "location": "City F",
        "date_of_birth": datetime(1989, 8, 15),
        "gender": "MALE",
        "role": "USER",
        "created_at": days_ago(67),
    },
    {
        "name": "Grace Last",
        "avatar": None,
        "email": "grace.last@example.com",
        "location": "City G",
        "date_of_birth": datetime(1987, 3, 19),
        "gender": "FEMALE",
        "role": "USER",
        "created_at": days_ago(72),
    },
]

# Users created LONG AGO (months/years ago)
users_long_ago = [
    {
        "name": "Henry Old",
        "avatar": None,
        "email": "henry.old@example.com",
        "location": "City H",
        "date_of_birth": datetime(1980, 1, 1),
        "gender": "MALE",
        "role": "USER",
        "created_at": days_ago(180),  # 6 months ago
    },
    {
        "name": "Ivy Old",
        "avatar": None,
        "email": "ivy.old@example.com",
        "location": "City I",
        "date_of_birth": datetime(1985, 7, 7),
        "gender": "FEMALE",
        "role": "USER",
        "created_at": days_ago(270),  # 9 months ago
    },
    {
        "name": "Jake Old",
        "avatar": None,
        "email": "jake.old@example.com",
        "location": "City J",
        "date_of_birth": datetime(1983, 12, 25),
        "gender": "MALE",
        "role": "USER",
        "created_at": days_ago(365),  # 1 year ago
    },
]

all_users = users_this_month + users_last_month + users_long_ago

result = users_collection.insert_many(all_users)

print(f"Inserted {len(result.inserted_ids)} users.")
