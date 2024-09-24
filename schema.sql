
DROP TABLE IF EXISTS inspection_violations;
DROP TABLE IF EXISTS inspections;
DROP TABLE IF EXISTS violations;

CREATE TABLE IF NOT EXISTS inspections (
    "Inspection ID" INTEGER PRIMARY KEY,
    "DBA Name" VARCHAR,
    "AKA Name" VARCHAR,
    "License #" INTEGER,
    "Facility Type" VARCHAR,
    "Risk" VARCHAR,
    "Address" VARCHAR,
    "City" VARCHAR,
    "State" VARCHAR,
    "Zip" INTEGER,
    "Inspection Date" DATE,
    "Inspection Type" VARCHAR,
    "Results" VARCHAR,
    "Violations" VARCHAR,
    "Latitude" DOUBLE,
    "Longitude" DOUBLE,
    "Location" VARCHAR
);

CREATE TABLE IF NOT EXISTS violations (
    code INTEGER PRIMARY KEY,
    description TEXT,
);

CREATE TABLE IF NOT EXISTS inspection_violations (
    inspection_violation_id INTEGER PRIMARY KEY,
    inspection_id INTEGER REFERENCES inspections("Inspection ID"),
    violation_id INTEGER REFERENCES violations(code),
    inspection_details TEXT
);