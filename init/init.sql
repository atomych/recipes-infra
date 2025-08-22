CREATE TABLE IF NOT EXISTS users (
    "id" UUID NOT NULL PRIMARY KEY,
    "name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL UNIQUE,
    "password" VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS recipes (
    "id" UUID NOT NULL PRIMARY KEY,
    "user_id" UUID REFERENCES users(id),
    title TEXT NOT NULL,
    description TEXT,
    ingredients VARCHAR(255)[],
    tags VARCHAR(255)[],
    last_update TIMESTAMP WITH TIME ZONE
);
