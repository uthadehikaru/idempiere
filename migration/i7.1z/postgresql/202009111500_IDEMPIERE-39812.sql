-- Jun 22, 2019, 3:45:34 PM BRT
ALTER TABLE AD_Column ADD COLUMN AD_Val_Rule_Lookup_ID NUMERIC(10) DEFAULT NULL
;

-- Jun 22, 2019, 3:46:42 PM BRT
-- INSERT INTO t_alter_column values('ad_column','AD_Val_Rule_Lookup_ID','NUMERIC(10)',null,'NULL');

-- Jun 22, 2019, 3:47:55 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206091,'Dynamic Validation (Lookup)','Override Dynamic Validation Rule for Lookup Window','For some situations the dynamic validation rule for a Lookup window should be different from user data entry window. ',101,213962,'Y',22,490,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-22 15:47:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 15:47:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','a63e0dc2-6972-4b2b-87d7-5deb978523f5','Y',460,2)
;

-- Jun 22, 2019, 3:48:16 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206091
;

-- Jun 22, 2019, 3:48:16 PM BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=205668
;

-- Jun 22, 2019, 3:48:16 PM BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56279
;

-- Jun 22, 2019, 3:48:16 PM BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56374
;

-- Jun 22, 2019, 3:48:16 PM BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=310
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2526
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=59619
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204220
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=171
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2574
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2573
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=161
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=162
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202518
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202519
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=160
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=166
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2370
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10128
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5122
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=169
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4941
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50188
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=168
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=159
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4940
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200288
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56317
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=62467
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202257
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200648
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=167
;

-- Jun 22, 2019, 3:48:17 PM BRT
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=825
;

-- Jun 22, 2019, 3:49:47 PM BRT
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=100,Updated=TO_TIMESTAMP('2019-06-22 15:49:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213962
;

-- Jun 22, 2019, 3:50:33 PM BRT
UPDATE AD_Field SET DisplayLogic='@AD_Reference_ID@=17 | @AD_Reference_ID@=18 | @AD_Reference_ID@=19 | @AD_Reference_ID@=28 | @AD_Reference_ID@=30 | @AD_Reference_ID@=200012 | @AD_Reference_ID@=200138 | @AD_Reference_ID@=200139', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:50:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206091
;

-- Jun 22, 2019, 3:53:30 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn,IsLookupOnlySelection,IsAllowAdvancedLookup) VALUES (200269,'Used in Column (Lookup)','Used in Column (Lookup)',103,30,'Y',101,0,0,'Y',TO_TIMESTAMP('2019-06-22 15:53:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 15:53:30','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',213962,'N','N',1,'N','D','N','N','cb281c2a-e9ae-4c1d-b2bc-2dcc651573b0','B','N','Y')
;

-- Jun 22, 2019, 3:53:59 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206124,'Table','Database Table information','The Database Table provides the information of the table definition',200269,114,'Y',14,10,1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-22 15:53:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 15:53:58','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','D','35c05ad3-66b1-4055-9907-9aa096c2fe81','Y',10,1,2,1,'N','N','N')
;

-- Jun 22, 2019, 3:53:59 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Reference_ID,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206125,'Column','Column in the table','Link to the database column of the table',200269,109,'Y',14,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-22 15:53:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 15:53:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D',30,'05062b37-d438-4de9-a352-20e30fdabd8b','Y',20,1,2,1,'N','N','N')
;

-- Jun 22, 2019, 3:53:59 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206126,'DB Column Name','Name of the column in the database','The Column Name indicates the name of a column on a table as defined in the database.',200269,116,'Y',11,30,2,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-22 15:53:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 15:53:59','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','D','cd428dc7-129e-4d65-911d-e80acf0890e2','Y',30,4,2,1,'N','N','N')
;

-- Jun 22, 2019, 3:56:11 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206128,'Dynamic Validation (Lookup)','Override Dynamic Validation Rule for Lookup Window','For some situations the dynamic validation rule for a Lookup window should be different from user data entry window. ',773,213962,'Y',22,140,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-22 15:56:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 15:56:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','c7b43c7f-0e01-499d-b127-19482aa9ffa7','Y',130,4,2,1,'N','N','N')
;

-- Jun 22, 2019, 3:57:01 PM BRT
UPDATE AD_Field SET EntityType='D', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:57:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206124
;

-- Jun 22, 2019, 3:57:10 PM BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 15:57:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206126
;

-- Jun 22, 2019, 3:57:30 PM BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y', Updated=TO_TIMESTAMP('2019-06-22 15:57:10','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100 WHERE AD_Field_ID=206126
;

-- Jun 22, 2019, 4:02:05 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (213963,0,'Dynamic Validation (Lookup)','Override Dynamic Validation Rule for Lookup Window','For some situations the dynamic validation rule for a Lookup window should be different from user data entry window. ',107,'AD_Val_Rule_Lookup_ID',22,'N','N','N','N','N',0,'N',18,100,0,0,'Y',TO_TIMESTAMP('2019-06-22 16:02:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 16:02:04','YYYY-MM-DD HH24:MI:SS'),100,203344,'Y','N','D','N','N','N','Y','3915d31e-9a86-4f6f-b717-9453a56466f2','Y','N','N','N')
;

-- Jun 22, 2019, 4:02:19 PM BRT
UPDATE AD_Column SET FKConstraintName='ADValRuleLookup_ADField', FKConstraintType='N',Updated=TO_TIMESTAMP('2019-06-22 16:02:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213963
;

SELECT register_migration_script('202009111500_IDEMPIERE-39812.sql') FROM dual
;
