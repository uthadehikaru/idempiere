-- ALTER PROBLEM line 17

-- May 9, 2016 8:34:27 PM MYT
-- 1006008 Add field type for dashboard content
INSERT INTO AD_Reference (AD_Reference_ID,Name,AD_Reference_UU,IsOrderByValue,AD_Org_ID,Description,ValidationType,Updated,IsActive,CreatedBy,UpdatedBy,AD_Client_ID,Created,EntityType) VALUES (200122,'Dashboard Content','eddd31af-5ab7-4b88-967f-4fe7b7e091ea','N',0,'Dashboard Content','D',TO_TIMESTAMP('2016-05-09 20:34:20','YYYY-MM-DD HH24:MI:SS'),'Y',100,100,0,TO_TIMESTAMP('2016-05-09 20:34:20','YYYY-MM-DD HH24:MI:SS'),'D')
;

-- May 9, 2016 8:35:29 PM MYT
INSERT INTO AD_Column (AD_Column_ID,SeqNoSelection,IsSyncDatabase,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,Updated,IsUpdateable,ColumnName,Name,IsAllowCopy,IsActive,CreatedBy,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,AD_Org_ID,Created,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Table_ID) VALUES (212762,0,'N',0,'N','N','N',0,'N',22,'N','N','N','Y','e5d70049-4a7e-49ab-aba9-ad181833c0d9',TO_TIMESTAMP('2016-05-09 20:35:23','YYYY-MM-DD HH24:MI:SS'),'Y','PA_DashboardContent_ID','Dashboard Content','Y','Y',100,100,'N','N',0,0,TO_TIMESTAMP('2016-05-09 20:35:23','YYYY-MM-DD HH24:MI:SS'),'D','N','N','N',51006,19,101)
;

-- May 9, 2016 8:35:38 PM MYT
UPDATE AD_Column SET FKConstraintType='N', FKConstraintName='PADashboardContent_ADColumn',Updated=TO_TIMESTAMP('2016-05-09 20:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=212762
;

SELECT register_migration_script('201605101800_System_Ticket_1006008.sql') FROM dual
;


