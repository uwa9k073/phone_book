DROP SCHEMA IF EXISTS contacts_info_schema CASCADE;

CREATE SCHEMA IF NOT EXISTS contacts_info_schema;

CREATE TABLE IF NOT EXISTS contacts_info_schema.contacts (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    username TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone_number TEXT NOT NULL UNIQUE
);
