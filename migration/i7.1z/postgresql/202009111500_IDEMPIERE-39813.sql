-- Jun 22, 2019, 4:02:19 PM BRT
UPDATE AD_Column SET FKConstraintName='ADValRuleLookup_ADField', FKConstraintType='N',Updated=TO_TIMESTAMP('2019-06-22 16:02:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213963
;

-- Jun 22, 2019, 4:02:19 PM BRT
ALTER TABLE AD_Field ADD COLUMN AD_Val_Rule_Lookup_ID NUMERIC(10) DEFAULT NULL
;

SELECT register_migration_script('202009111500_IDEMPIERE-39813.sql') FROM dual
;
