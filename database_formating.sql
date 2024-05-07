USE project;

SELECT * FROM webdata;

ALTER TABLE demo
DROP COLUMN `index`;

ALTER TABLE webdata
DROP COLUMN `index`;

ALTER TABLE experiment
DROP COLUMN `index`;



ALTER TABLE demo
ADD CONSTRAINT PK_demo PRIMARY KEY (client_id);

ALTER TABLE webdata
ADD webdata_id SERIAL;
ALTER TABLE webdata
ADD CONSTRAINT PK_webdata PRIMARY KEY (webdata_id);

ALTER TABLE experiment
ADD experiment_id SERIAL;
ALTER TABLE experiment
ADD CONSTRAINT PK_experiment PRIMARY KEY (experiment_id);

ALTER TABLE experiment
ADD CONSTRAINT PK_experiment 
FOREIGN KEY (client_id) REFERENCES demo(client_id);

SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE webdata
ADD CONSTRAINT PK_webdata 
FOREIGN KEY (client_id) REFERENCES demo(client_id);