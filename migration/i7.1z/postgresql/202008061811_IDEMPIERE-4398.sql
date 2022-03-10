-- ALTER error line 25
-- IDEMPIERE-4398 Database inconsistency with dictionary for types CHAR
-- Aug 6, 2020, 6:04:11 PM CEST
INSERT INTO t_alter_column values('ad_orginfo','DUNS','VARCHAR(11)',null,null)
;

-- Aug 6, 2020, 6:04:51 PM CEST
INSERT INTO t_alter_column values('c_bpartner','DUNS','VARCHAR(11)',null,'NULL')
;

-- Aug 6, 2020, 6:05:10 PM CEST
INSERT INTO t_alter_column values('c_bpartner','NAICS','VARCHAR(6)',null,'NULL')
;

-- Aug 6, 2020, 6:07:03 PM CEST
INSERT INTO t_alter_column values('gl_journalgenerator','GenerateGLJournal','VARCHAR(10)',null,'NULL')
;

-- Aug 6, 2020, 6:07:58 PM CEST
UPDATE AD_Column SET FieldLength=1,Updated=TO_TIMESTAMP('2020-08-06 18:07:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=200509
;

UPDATE gl_journalgenerator SET generategljournal=trim(generategljournal);

SELECT register_migration_script('202008061811_IDEMPIERE-4398.sql') FROM dual
;

