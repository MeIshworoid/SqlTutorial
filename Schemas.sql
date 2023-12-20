
CREATE SCHEMA Engineering;

CREATE SCHEMA Management;

CREATE TABLE Engineering.Test1(
TestId INT
);

CREATE TABLE Management.Test(
TestId INT
);

DROP TABLE Management.Test1;

ALTER SCHEMA Management
TRANSFER Engineering.Test1;

