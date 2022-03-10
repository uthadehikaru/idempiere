-- Jun 22, 2019, 4:02:19 PM BRT
ALTER TABLE AD_Field ADD COLUMN AD_Val_Rule_Lookup_ID NUMERIC(10) DEFAULT NULL
;

-- Jun 22, 2019, 4:02:19 PM BRT
ALTER TABLE AD_Field ADD CONSTRAINT ADValRuleLookup_ADField FOREIGN KEY (AD_Val_Rule_Lookup_ID) REFERENCES ad_val_rule(ad_val_rule_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 22, 2019, 4:02:54 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206129,'Dynamic Validation (Lookup)','Override Dynamic Validation Rule for Lookup Window','For some situations the dynamic validation rule for a Lookup window should be different from user data entry window. ',107,213963,'Y',22,480,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-22 16:02:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 16:02:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','1f1ef182-bb87-4c57-9f56-05f0bdd73f2f','Y',480,2)
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206129
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200838
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200834
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13424
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=62468
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206080
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53280
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203500
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200836
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200835
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=136
;

-- Jun 22, 2019, 4:03:18 PM BRT
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=139
;

-- Jun 22, 2019, 4:04:07 PM BRT
UPDATE AD_Field SET DisplayLogic='@AD_Reference_ID@=17 | @AD_Reference_ID@=18 | @AD_Reference_ID@=19 | @AD_Reference_ID@=28 | @AD_Reference_ID@=30 | @AD_Reference_ID@=200012 | @AD_Reference_ID@=200138 | @AD_Reference_ID@=200139', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 16:04:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206129
;

-- Jun 22, 2019, 5:04:27 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (213964,0,'Dynamic Validation (Lookup)','Override Dynamic Validation Rule for Lookup Window','For some situations the dynamic validation rule for a Lookup window should be different from user data entry window. ',464,'AD_Val_Rule_Lookup_ID',22,'N','N','N','N','N',0,'N',18,100,0,0,'Y',TO_TIMESTAMP('2019-06-22 17:04:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 17:04:27','YYYY-MM-DD HH24:MI:SS'),100,203344,'Y','N','D','N','N','N','Y','fbebb64d-8f86-4d3d-ab30-93a5b4b45827','Y',0,'N','N','N')
;

-- Jun 22, 2019, 5:04:30 PM BRT
UPDATE AD_Column SET FKConstraintName='ADValRuleLookup_ADUserDefField', FKConstraintType='N',Updated=TO_TIMESTAMP('2019-06-22 17:04:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213964
;

-- Jun 22, 2019, 5:04:30 PM BRT
ALTER TABLE AD_UserDef_Field ADD COLUMN AD_Val_Rule_Lookup_ID NUMERIC(10) DEFAULT NULL
;

-- Jun 22, 2019, 5:04:30 PM BRT
ALTER TABLE AD_UserDef_Field ADD CONSTRAINT ADValRuleLookup_ADUserDefField FOREIGN KEY (AD_Val_Rule_Lookup_ID) REFERENCES ad_val_rule(ad_val_rule_id) DEFERRABLE INITIALLY DEFERRED
;

-- Jun 22, 2019, 5:05:21 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206130,'Dynamic Validation (Lookup)','Override Dynamic Validation Rule for Lookup Window','For some situations the dynamic validation rule for a Lookup window should be different from user data entry window. ',395,213964,'Y',22,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-22 17:05:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 17:05:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','0d5d42b9-0dde-4e4d-aaec-7bd4a7a799b6','Y',330,2)
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203266
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204221
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206130
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5054
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200849
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200851
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200852
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203499
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200854
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5051
;

-- Jun 22, 2019, 5:06:06 PM BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5057
;

-- Jun 22, 2019, 5:06:28 PM BRT
UPDATE AD_Field SET DisplayLogic='@AD_Reference_ID@=17 | @AD_Reference_ID@=18 | @AD_Reference_ID@=19 | @AD_Reference_ID@=28 | @AD_Reference_ID@=30 | @AD_Reference_ID@=200012', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-06-22 17:06:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206130
;

-- Dec 2, 2019, 10:34:01 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (214124,0,'Lookup Only Selection Columns','When defined to true Lookup panel will display only selection columns. Default to false.',466,'IsLookupOnlySelection',NULL,1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2019-12-02 10:34:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-02 10:34:01','YYYY-MM-DD HH24:MI:SS'),100,203339,'Y','N','D','N','N','N','Y','e0688e8f-13b3-4b5a-bf12-8ea1a25928b9','Y',0,'N','N','N')
;

-- Dec 2, 2019, 10:34:51 AM BRT
ALTER TABLE AD_UserDef_Tab ADD COLUMN IsLookupOnlySelection CHAR(1) DEFAULT NULL
;

-- Dec 2, 2019, 10:35:07 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (214125,0,'Allow Advanced Lookup',466,'IsAllowAdvancedLookup','''Y''',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2019-12-02 10:35:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-02 10:35:07','YYYY-MM-DD HH24:MI:SS'),100,203338,'Y','N','D','N','N','N','Y','388580fd-aa4e-4d75-be90-c344874a2924','Y',0,'N','N','N')
;

-- Dec 2, 2019, 10:35:11 AM BRT
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_TIMESTAMP('2019-12-02 10:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214125
;

-- Dec 2, 2019, 10:35:13 AM BRT
ALTER TABLE AD_UserDef_Tab ADD COLUMN IsAllowAdvancedLookup CHAR(1) DEFAULT NULL
;

-- Dec 2, 2019, 10:35:51 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206313,'Lookup Only Selection Columns','When defined to true Lookup panel will display only selection columns. Default to false.',394,214124,'Y',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-12-02 10:35:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-02 10:35:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','a4bdb38c-0ccc-4c90-a778-9b1099be6a76','Y',130,2)
;

-- Dec 2, 2019, 10:35:51 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206314,'Allow Advanced Lookup',394,214125,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-12-02 10:35:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-02 10:35:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','cf924414-1783-4868-8c8e-c7d1bccc9133','Y',140,2)
;

-- Dec 2, 2019, 10:36:04 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2019-12-02 10:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206314
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206078
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206079
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204121
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5709
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5708
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1546
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57266
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2575
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11265
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=929
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11998
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=271
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11266
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1548
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1550
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1549
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4956
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201811
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206396
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206397
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5131
;

-- Aug 6, 2020 4:41:29 PM IST
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3205
;

-- Aug 6, 2020 7:06:53 PM IST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204221
;

-- Aug 6, 2020 7:06:53 PM IST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5054
;

-- Aug 6, 2020 7:06:53 PM IST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200849
;

-- Aug 6, 2020 7:06:53 PM IST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200851
;

-- Aug 6, 2020 7:06:53 PM IST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200852
;

-- Aug 6, 2020 7:06:53 PM IST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203499
;

-- Aug 6, 2020 7:06:54 PM IST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200854
;

-- Aug 6, 2020 7:06:54 PM IST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5051
;

-- Aug 6, 2020 7:06:54 PM IST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5057
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=205345
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=205244
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=137
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200274
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=138
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202362
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=142
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8343
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=140
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202341
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=141
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200350
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200348
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200349
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204213
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204214
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13425
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200837
;

-- Aug 6, 2020 7:07:47 PM IST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54402
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54401
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206129
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206080
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53280
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203500
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200836
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200835
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=136
;

-- Aug 6, 2020 7:07:48 PM IST
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-06 19:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=139
;

CREATE OR REPLACE VIEW ad_field_v AS
 SELECT t.ad_window_id, f.ad_tab_id, f.ad_field_id, tbl.ad_table_id, f.ad_column_id, f.name, f.description, f.help, f.isdisplayed, f.displaylogic, f.displaylength, f.seqno, f.sortno, f.issameline,
f.isheading, f.isfieldonly, f.isreadonly, f.isencrypted AS isencryptedfield, f.obscuretype, c.columnname, c.columnsql, c.fieldlength, COALESCE(f.VFormat, c.VFormat) AS VFormat, COALESCE(f.defaultvalue, c.defaultvalue) AS defaultvalue,
c.iskey, c.isparent, COALESCE(f.ismandatory, c.ismandatory) AS ismandatory, c.isidentifier, c.istranslated, COALESCE(f.ad_reference_value_id, c.ad_reference_value_id) AS ad_reference_value_id,
c.callout, COALESCE(f.ad_reference_id, c.ad_reference_id) AS ad_reference_id, COALESCE(f.ad_val_rule_id, c.ad_val_rule_id) AS ad_val_rule_id, c.ad_process_id, COALESCE(f.isalwaysupdateable, c.isalwaysupdateable) AS isalwaysupdateable,
COALESCE(f.readonlylogic, c.readonlylogic) AS readonlylogic, COALESCE(f.mandatorylogic, c.mandatorylogic) AS mandatorylogic, COALESCE(f.isupdateable, c.isupdateable) AS isupdateable,
c.isencrypted AS isencryptedcolumn, COALESCE(f.isselectioncolumn, c.isselectioncolumn) AS isselectioncolumn, tbl.tablename, c.valuemin, c.valuemax, fg.name AS fieldgroup, vr.code AS validationcode, f.included_tab_id, fg.fieldgrouptype,
fg.iscollapsedbydefault, COALESCE(f.infofactoryclass, c.infofactoryclass) AS infofactoryclass, c.isautocomplete, COALESCE(f.isallowcopy, c.isallowcopy) AS isallowcopy, f.isdisplayedgrid,
f.seqnogrid, c.seqnoselection, f.xposition, f.columnspan, f.numlines, COALESCE(f.istoolbarbutton, c.istoolbarbutton) AS istoolbarbutton, c.formatpattern, f.isadvancedfield, f.isdefaultfocus,
c.ad_chart_id, f.ad_labelstyle_id, f.ad_fieldstyle_id, c.pa_dashboardcontent_id, COALESCE(f.placeholder, c.placeholder) AS placeholder, c.ishtml, f.isquickform, COALESCE(f.ad_val_rule_Lookup_id, c.ad_val_rule_Lookup_id) AS ad_val_rule_Lookup_id, vrf.code AS validationcodeLookup
   FROM ad_field f
   JOIN ad_tab t ON f.ad_tab_id = t.ad_tab_id
   LEFT JOIN ad_fieldgroup fg ON f.ad_fieldgroup_id = fg.ad_fieldgroup_id
   LEFT JOIN ad_column c ON f.ad_column_id = c.ad_column_id
   JOIN ad_table tbl ON c.ad_table_id = tbl.ad_table_id
   LEFT JOIN ad_val_rule vr ON vr.ad_val_rule_id = COALESCE(f.ad_val_rule_id, c.ad_val_rule_id)
   LEFT JOIN ad_val_rule vrf ON vrf.ad_val_rule_id = COALESCE(f.ad_val_rule_Lookup_id, c.ad_val_rule_Lookup_id)
  WHERE f.isactive = 'Y' AND c.isactive = 'Y'
;

CREATE OR REPLACE VIEW ad_field_vt AS
 SELECT trl.ad_language, t.ad_window_id, f.ad_tab_id, f.ad_field_id, tbl.ad_table_id, f.ad_column_id, trl.name, trl.description, trl.help, f.isdisplayed, f.displaylogic, f.displaylength, f.seqno,
 f.sortno, f.issameline, f.isheading, f.isfieldonly, f.isreadonly, f.isencrypted AS isencryptedfield, f.obscuretype, c.columnname, c.columnsql, c.fieldlength, COALESCE(f.VFormat, c.VFormat) AS VFormat, COALESCE(f.defaultvalue, c.defaultvalue) AS defaultvalue,
 c.iskey, c.isparent, COALESCE(f.ismandatory, c.ismandatory) AS ismandatory, c.isidentifier, c.istranslated, COALESCE(f.ad_reference_value_id, c.ad_reference_value_id) AS ad_reference_value_id,
 c.callout, COALESCE(f.ad_reference_id, c.ad_reference_id) AS ad_reference_id, COALESCE(f.ad_val_rule_id, c.ad_val_rule_id) AS ad_val_rule_id, c.ad_process_id, COALESCE(f.isalwaysupdateable,
 c.isalwaysupdateable) AS isalwaysupdateable, COALESCE(f.readonlylogic, c.readonlylogic) AS readonlylogic, COALESCE(f.mandatorylogic, c.mandatorylogic) AS mandatorylogic, COALESCE(f.isupdateable, c.isupdateable) AS isupdateable,
 c.isencrypted AS isencryptedcolumn, COALESCE(f.isselectioncolumn, c.isselectioncolumn) AS isselectioncolumn, tbl.tablename, c.valuemin, c.valuemax, fgt.name AS fieldgroup, vr.code AS validationcode, f.included_tab_id, fg.fieldgrouptype,
 fg.iscollapsedbydefault, COALESCE(f.infofactoryclass, c.infofactoryclass) AS infofactoryclass, c.isautocomplete, COALESCE(f.isallowcopy, c.isallowcopy) AS isallowcopy, f.isdisplayedgrid,
 f.seqnogrid, c.seqnoselection, f.xposition, f.columnspan, f.numlines, COALESCE(f.istoolbarbutton, c.istoolbarbutton) AS istoolbarbutton, c.formatpattern, f.isadvancedfield, f.isdefaultfocus, c.ad_chart_id, f.ad_labelstyle_id, f.ad_fieldstyle_id, c.pa_dashboardcontent_id, COALESCE(trl.placeholder, ct.placeholder) AS placeholder, c.ishtml, f.isquickform, COALESCE(f.ad_val_rule_Lookup_id, c.ad_val_rule_Lookup_id) AS ad_val_rule_Lookup_id, vrf.code AS validationcodeLookup
   FROM ad_field f
   JOIN ad_field_trl trl ON f.ad_field_id = trl.ad_field_id
   JOIN ad_tab t ON f.ad_tab_id = t.ad_tab_id
   LEFT JOIN ad_fieldgroup fg ON f.ad_fieldgroup_id = fg.ad_fieldgroup_id
   LEFT JOIN ad_fieldgroup_trl fgt ON f.ad_fieldgroup_id = fgt.ad_fieldgroup_id AND trl.ad_language::text = fgt.ad_language::text
   LEFT JOIN ad_column c ON f.ad_column_id = c.ad_column_id
   LEFT JOIN ad_column_trl ct ON f.ad_column_id = ct.ad_column_id AND trl.ad_language::text = ct.ad_language::text
   JOIN ad_table tbl ON c.ad_table_id = tbl.ad_table_id
   LEFT JOIN ad_val_rule vr ON vr.ad_val_rule_id = COALESCE(f.ad_val_rule_id, c.ad_val_rule_id)
   LEFT JOIN ad_val_rule vrf ON vrf.ad_val_rule_id = COALESCE(f.ad_val_rule_Lookup_id, c.ad_val_rule_Lookup_id)
  WHERE f.isactive = 'Y' AND c.isactive = 'Y'
;

CREATE OR REPLACE VIEW AD_TAB_V
(AD_TAB_ID, AD_WINDOW_ID, AD_TABLE_ID, NAME, DESCRIPTION, 
 HELP, SEQNO, ISSINGLEROW, HASTREE, ISINFOTAB, 
 REPLICATIONTYPE, TABLENAME, ACCESSLEVEL, ISSECURITYENABLED, ISDELETEABLE, 
 ISHIGHVOLUME, ISVIEW, HASASSOCIATION, ISTRANSLATIONTAB, ISREADONLY, 
 AD_IMAGE_ID, TABLEVEL, WHERECLAUSE, ORDERBYCLAUSE, COMMITWARNING, 
 READONLYLOGIC, DISPLAYLOGIC, AD_COLUMN_ID, AD_PROCESS_ID, ISSORTTAB, 
 ISINSERTRECORD, ISADVANCEDTAB, AD_COLUMNSORTORDER_ID, AD_COLUMNSORTYESNO_ID,
 INCLUDED_TAB_ID, PARENT_COLUMN_ID, AD_Tab_UU, AD_Table_UU, TREEDISPLAYEDON,
 MAXQUERYRECORDS, IsAllowAdvancedLookup, IsLookupOnlySelection)
AS 
SELECT t.AD_Tab_ID, t.AD_Window_ID, t.AD_Table_ID, t.Name, t.Description, 
    t.Help, t.SeqNo, t.IsSingleRow, t.HasTree, t.IsInfoTab, tbl.ReplicationType,
    tbl.TableName, tbl.AccessLevel, tbl.IsSecurityEnabled, tbl.IsDeleteable, 
    tbl.IsHighVolume, tbl.IsView, cast('N' as char) AS HasAssociation, -- compatibility
    t.IsTranslationTab, t.IsReadOnly, t.AD_Image_ID, t.TabLevel, 
    t.WhereClause, t.OrderByClause, t.CommitWarning, t.ReadOnlyLogic, t.DisplayLogic,
    t.AD_Column_ID, t.AD_Process_ID, t.IsSortTab, t.IsInsertRecord, t.IsAdvancedTab,
    t.AD_ColumnSortOrder_ID, t.AD_ColumnSortYesNo_ID, t.Included_Tab_ID, t.Parent_Column_ID,
    t.AD_Tab_UU, tbl.AD_Table_UU, t.TreeDisplayedOn, t.MaxQueryRecords,
    t.IsAllowAdvancedLookup, t.IsLookupOnlySelection
FROM AD_Tab t 
	INNER JOIN AD_Table tbl ON (t.AD_Table_ID = tbl.AD_Table_ID)
WHERE t.IsActive='Y'
  AND tbl.IsActive='Y'
;


CREATE OR REPLACE VIEW AD_TAB_VT
(AD_LANGUAGE, AD_TAB_ID, AD_WINDOW_ID, AD_TABLE_ID, NAME, 
 DESCRIPTION, HELP, SEQNO, ISSINGLEROW, HASTREE, 
 ISINFOTAB, REPLICATIONTYPE, TABLENAME, ACCESSLEVEL, ISSECURITYENABLED, 
 ISDELETEABLE, ISHIGHVOLUME, ISVIEW, HASASSOCIATION, ISTRANSLATIONTAB, 
 ISREADONLY, AD_IMAGE_ID, TABLEVEL, WHERECLAUSE, ORDERBYCLAUSE, 
 COMMITWARNING, READONLYLOGIC, DISPLAYLOGIC, AD_COLUMN_ID, AD_PROCESS_ID, 
 ISSORTTAB, ISINSERTRECORD, ISADVANCEDTAB, AD_COLUMNSORTORDER_ID, AD_COLUMNSORTYESNO_ID, 
 INCLUDED_TAB_ID, PARENT_COLUMN_ID, AD_Tab_UU, AD_Table_UU, TREEDISPLAYEDON,
 MAXQUERYRECORDS, IsAllowAdvancedLookup, IsLookupOnlySelection)
AS 
SELECT trl.AD_Language, t.AD_Tab_ID, t.AD_Window_ID, t.AD_Table_ID, trl.Name, trl.Description, 
    trl.Help, t.SeqNo, t.IsSingleRow, t.HasTree, t.IsInfoTab, tbl.ReplicationType,
    tbl.TableName, tbl.AccessLevel, tbl.IsSecurityEnabled, tbl.IsDeleteable, 
    tbl.IsHighVolume, tbl.IsView, cast('N' as char) AS HasAssociation,
    t.IsTranslationTab, t.IsReadOnly, t.AD_Image_ID, t.TabLevel, 
    t.WhereClause, t.OrderByClause, trl.CommitWarning, t.ReadOnlyLogic, t.DisplayLogic,
    t.AD_Column_ID, t.AD_Process_ID, t.IsSortTab, t.IsInsertRecord, t.IsAdvancedTab,
    t.AD_ColumnSortOrder_ID, t.AD_ColumnSortYesNo_ID, t.Included_Tab_ID, t.Parent_Column_ID,
    t.AD_Tab_UU, tbl.AD_Table_UU, t.TreeDisplayedOn, t.MaxQueryRecords,
    t.IsAllowAdvancedLookup, t.IsLookupOnlySelection
FROM AD_Tab t 
	INNER JOIN AD_Table tbl ON (t.AD_Table_ID = tbl.AD_Table_ID)
	INNER JOIN AD_Tab_Trl trl ON (t.AD_Tab_ID = trl.AD_Tab_ID)
WHERE t.IsActive='Y'
  AND tbl.IsActive='Y'
;

SELECT register_migration_script('202009111500_IDEMPIERE-39813.sql') FROM dual
;
