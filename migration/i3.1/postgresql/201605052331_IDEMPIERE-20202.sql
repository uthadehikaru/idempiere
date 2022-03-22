-- IDEMPIERE-2020 (2) Value Format for ZK
-- Feb 25, 2015 5:55:52 PM COT
INSERT INTO t_alter_column values('ad_column','VFormat','VARCHAR(255)',null,'NULL')
;

-- Feb 25, 2015 5:56:14 PM COT
UPDATE AD_Column SET FieldLength=255,Updated=TO_TIMESTAMP('2015-02-25 17:56:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3740
;

SELECT register_migration_script('201605052331_IDEMPIERE-20202.sql') FROM dual
;
