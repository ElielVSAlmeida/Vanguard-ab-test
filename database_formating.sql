USE project;

SELECT * FROM webdata;

ALTER TABLE demo
DROP COLUMN `index`;

ALTER TABLE webdata
DROP COLUMN `index`;

ALTER TABLE group_type
DROP COLUMN `index`;



ALTER TABLE demo
ADD CONSTRAINT PK_demo PRIMARY KEY (client_id);

ALTER TABLE webdata
ADD webdata_id SERIAL;
ALTER TABLE webdata
ADD CONSTRAINT PK_webdata PRIMARY KEY (webdata_id);

ALTER TABLE group_type
ADD group_type_id SERIAL;
ALTER TABLE group_type
ADD CONSTRAINT PK_group_type PRIMARY KEY (group_type_id);

ALTER TABLE group_type
ADD CONSTRAINT PK_group_type
FOREIGN KEY (client_id) REFERENCES demo(client_id);

SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE webdata
ADD CONSTRAINT PK_webdata 
FOREIGN KEY (client_id) REFERENCES demo(client_id);