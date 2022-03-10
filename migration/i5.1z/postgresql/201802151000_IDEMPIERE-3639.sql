-- ALTER ERROR line 83
-- IDEMPIERE-3639 Placeholders for every fields
-- Feb 15, 2018 8:42:55 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203163,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:42:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:42:54','YYYY-MM-DD HH24:MI:SS'),100,'Placeholder','Placeholder','Placeholder','D','dce47a52-1044-4ee0-aad3-31ae2325d1ec')
;

-- Feb 15, 2018 8:43:09 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203164,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:43:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:43:08','YYYY-MM-DD HH24:MI:SS'),100,'Placeholder2','Placeholder2','Placeholder2','D','5581e7dc-7238-49f5-91bc-cf8cd1184951')
;

-- Feb 15, 2018 8:43:20 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203165,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:43:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:43:19','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderAddress1','PlaceholderAddress1','PlaceholderAddress1','D','ac2963f4-53c6-4871-ae28-3db51ca45644')
;

-- Feb 15, 2018 8:43:34 AM CET
UPDATE AD_Element SET Name='Placeholder for Address 1', PrintName='Placeholder for Address 1',Updated=TO_TIMESTAMP('2018-02-15 08:43:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=203165
;

-- Feb 15, 2018 8:43:34 AM CET
UPDATE AD_Column SET ColumnName='PlaceholderAddress1', Name='Placeholder for Address 1', Description=NULL, Help=NULL WHERE AD_Element_ID=203165
;

-- Feb 15, 2018 8:43:35 AM CET
UPDATE AD_Process_Para SET ColumnName='PlaceholderAddress1', Name='Placeholder for Address 1', Description=NULL, Help=NULL, AD_Element_ID=203165 WHERE UPPER(ColumnName)='PLACEHOLDERADDRESS1' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 15, 2018 8:43:35 AM CET
UPDATE AD_Process_Para SET ColumnName='PlaceholderAddress1', Name='Placeholder for Address 1', Description=NULL, Help=NULL WHERE AD_Element_ID=203165 AND IsCentrallyMaintained='Y'
;

-- Feb 15, 2018 8:43:35 AM CET
UPDATE AD_InfoColumn SET ColumnName='PlaceholderAddress1', Name='Placeholder for Address 1', Description=NULL, Help=NULL WHERE AD_Element_ID=203165 AND IsCentrallyMaintained='Y'
;

-- Feb 15, 2018 8:43:35 AM CET
UPDATE AD_Field SET Name='Placeholder for Address 1', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=203165) AND IsCentrallyMaintained='Y'
;

-- Feb 15, 2018 8:43:35 AM CET
UPDATE AD_PrintFormatItem SET PrintName='Placeholder for Address 1', Name='Placeholder for Address 1' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=203165)
;

-- Feb 15, 2018 8:43:44 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203166,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:43:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:43:44','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderAddress2','Placeholder for Address 2','Placeholder for Address 2','D','0d9f6ef8-1c1c-47c2-a38a-8f2ce36f3d06')
;

-- Feb 15, 2018 8:43:54 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203167,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:43:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:43:54','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderAddress3','Placeholder for Address 3','Placeholder for Address 3','D','e80ab5ac-1e28-4f71-a8b3-e93902d7c11f')
;

-- Feb 15, 2018 8:44:05 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203168,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:44:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:44:04','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderAddress4','Placeholder for Address 4','Placeholder for Address 4','D','3fba6866-ce9f-4e90-a2be-3d21b533ffbd')
;

-- Feb 15, 2018 8:44:13 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203169,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:44:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:44:13','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderAddress5','Placeholder for Address 5','Placeholder for Address 5','D','d3389e94-d9f7-464a-8666-6b02b5c2f645')
;

-- Feb 15, 2018 8:44:29 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203170,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:44:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:44:29','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderComments','Placeholder for comments','Placeholder for comments','D','91ad32f2-f434-4144-b114-64f5634dbbaa')
;

-- Feb 15, 2018 8:44:43 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203171,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:44:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:44:42','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderCity','Placeholder for city','Placeholder for city','U','2fd28347-9a06-47e3-8007-faeb45e06396')
;

-- Feb 15, 2018 8:44:56 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203172,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:44:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:44:56','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderPostal','Placeholder for postal','Placeholder for postal','D','127bbca7-f8d0-4c63-87ca-852b6a12c9df')
;

-- Feb 15, 2018 8:45:27 AM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203173,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:45:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:45:27','YYYY-MM-DD HH24:MI:SS'),100,'PlaceholderPostal_Add','Placeholder for additional zip','Placeholder for additional zip','D','da7a5677-cc49-4070-8480-2b4ef5dc3392')
;

-- Feb 15, 2018 8:45:49 AM CET
UPDATE AD_Element SET EntityType='D',Updated=TO_TIMESTAMP('2018-02-15 08:45:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=203171
;

-- Feb 15, 2018 8:47:44 AM CET
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (213357,0,'Placeholder',101,'Placeholder',255,'N','N','N','Y','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-02-15 08:47:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-02-15 08:47:43','YYYY-MM-DD HH24:MI:SS'),100,203163,'Y','N','D','N','N','N','Y','eb0d7055-6d11-4901-8e58-fcc8ee80194a','Y',0,'N','N')
;

SELECT register_migration_script('201802151000_IDEMPIERE-3639.sql') FROM dual
;
