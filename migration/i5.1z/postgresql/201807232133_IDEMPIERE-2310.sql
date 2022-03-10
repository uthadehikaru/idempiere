-- ALTER ERROR line 8
-- IDEMPIERE-2310 Improve description field with inline Html editor and html rendering
-- Mar 30, 2017 2:02:53 AM ICT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (213622,0,'HTML','Text has HTML tags',101,'IsHtml','N',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2017-03-30 02:02:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-03-30 02:02:53','YYYY-MM-DD HH24:MI:SS'),100,1510,'Y','N','D','Y','N','N','Y','351dd31d-d9ba-45bf-b53e-63931a60b4b1','Y',0,'N','N','N')
;

SELECT register_migration_script('201807232133_IDEMPIERE-2310.sql') FROM dual
;
