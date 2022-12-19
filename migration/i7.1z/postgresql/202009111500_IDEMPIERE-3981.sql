-- ALTER ERROR line 359, 550
-- IDEMPIERE-3981 - Lookup tab & field level control options, Lookup Dynamic validation and overwrite Lookup Dynamic validation & isselection at field level
-- Jun 3, 2019 10:05:06 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203338,0,0,'Y',TO_TIMESTAMP('2019-06-03 10:05:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-03 10:05:05','YYYY-MM-DD HH24:MI:SS'),100,'IsAllowAdvancedLookup','Allow Advanced Lookup','Allow Advanced Lookup','D','f410a3ed-f6f5-4c16-9a02-a50f91d60dbc')
;

-- Jun 3, 2019 10:05:06 BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,Help,PrintName,PO_Description,PO_Help,PO_Name,PO_PrintName,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Element_Trl_UU ) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.Help,t.PrintName,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=203338 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 3, 2019 10:12:24 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (203339,0,0,'Y',TO_TIMESTAMP('2019-06-03 10:12:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-03 10:12:24','YYYY-MM-DD HH24:MI:SS'),100,'IsLookupOnlySelection','Lookup Only Selection Columns','When defined to true Lookup panel will display only selection columns. Default to false.','Lookup Only Selection Columns','D','ae484903-8b6e-405e-bc39-06a4ec1add9a')
;

-- Jun 3, 2019 10:12:24 BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,Help,PrintName,PO_Description,PO_Help,PO_Name,PO_PrintName,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Element_Trl_UU ) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.Help,t.PrintName,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=203339 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 3, 2019 10:12:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (213944,0,'Lookup Only Selection Columns','When defined to true Lookup panel will display only selection columns. Default to false.',106,'IsLookupOnlySelection','''N''',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2019-06-03 10:12:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-03 10:12:54','YYYY-MM-DD HH24:MI:SS'),100,203339,'Y','N','D','N','N','N','Y','836a3ca4-0000-465c-8f75-ea22f41cb44a','Y',0,'N','N','N')
;

-- Jun 3, 2019 10:12:54 BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=213944 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 3, 2019 10:12:56 BRT
ALTER TABLE AD_Tab ADD COLUMN IsLookupOnlySelection CHAR(1) DEFAULT 'N' CHECK (IsLookupOnlySelection IN ('Y','N'))
;

-- Jun 3, 2019 10:13:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (213945,0,'Allow Advanced Lookup',106,'IsAllowAdvancedLookup','''Y''',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2019-06-03 10:13:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-03 10:13:22','YYYY-MM-DD HH24:MI:SS'),100,203338,'Y','N','D','N','N','N','Y','8104b7fa-75ce-4eea-843d-337f6c8de731','Y',0,'N','N','N')
;

-- Jun 3, 2019 10:13:23 BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=213945 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 3, 2019 10:13:24 BRT
ALTER TABLE AD_Tab ADD COLUMN IsAllowAdvancedLookup CHAR(1) DEFAULT 'Y' CHECK (IsAllowAdvancedLookup IN ('Y','N'))
;

-- Jun 3, 2019 10:14:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (213946,0,'Selection Column','Is this column used for Lookup rows in windows','If selected, the column is listed in the first Lookup window tab and in the selection part of the window',107,'IsSelectionColumn',1,'N','N','N','N','N',0,'N',17,53365,0,0,'Y',TO_TIMESTAMP('2019-06-03 10:14:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-03 10:14:26','YYYY-MM-DD HH24:MI:SS'),100,1656,'Y','N','D','N','N','N','Y','746eedd3-e345-4aee-bd4e-72d46e02a90b','Y',0,'N','N')
;

-- Jun 3, 2019 10:14:26 BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=213946 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 3, 2019 10:14:32 BRT
UPDATE AD_Column SET AD_Reference_Value_ID=319,Updated=TO_TIMESTAMP('2019-06-03 10:14:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213946
;

-- Jun 3, 2019 10:14:36 BRT
ALTER TABLE AD_Field ADD COLUMN IsSelectionColumn CHAR(1) DEFAULT NULL
;

-- Jun 3, 2019 10:15:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206078,'Lookup Only Selection Columns','When defined to true Lookup panel will display only selection columns. Default to false.',106,213944,'Y',1,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-03 10:15:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-03 10:15:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','9366c40e-e96c-41db-a22b-ee9da56e4f9c','Y',330,2,2)
;

-- Jun 3, 2019 10:15:30 BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Field_Trl_UU ) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=206078 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 3, 2019 10:15:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206079,'Allow Advanced Lookup',106,213945,'Y',1,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-03 10:15:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-03 10:15:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','d178ab39-3383-48ef-aa45-937c8bad5756','Y',340,2,2)
;

-- Jun 3, 2019 10:15:30 BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Field_Trl_UU ) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=206079 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 3, 2019 10:16:31 BRT
UPDATE AD_Field SET Name='Lookup Only Selection Columns', Description='When defined to true Lookup panel will display only selection columns. Default to false.', Help=NULL, IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, ColumnSpan=1, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206078
;

-- Jun 3, 2019 10:16:31 BRT
UPDATE AD_Field SET Name='Allow Advanced Lookup', Description=NULL, Help=NULL, IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206079
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Order Column', Description='Column determining the order', Help='Integer Column of the table determining the order (display, sort, ..). If defined, the Order By replaces the default Order By clause. It should be fully qualified (i.e. "tablename.columnname").', SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5709
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Included Column', Description='Column determining if a Table Column is included in Ordering', Help='If a Included Column is defined, it decides, if a column is active in the ordering - otherwise it is determined that the Order Column has a value of one or greater', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5708
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Link Column', Description='Link Column for Multi-Parent tables', Help='The Link Column indicates which column is the primary key for those situations where there is more than one parent.  Only define it, if the table has more than one parent column (e.g. AD_User_Roles).', SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1546
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Parent Column', Description='The link column on the parent tab.', Help=NULL, SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57266
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Process', Description='Process or Report', Help='The Process field identifies a unique Process or Report in the system.', SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2575
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Display Logic', Description='If the Field is displayed, the result determines if the field is actually displayed', Help='format := {expression} [{logic} {expression}]<br>
expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br>
logic := {|}|{&}<br>
context := any global or window context <br>
value := strings or numbers<br>
logic operators	:= AND or OR with the previous result from left to right <br>
operand := eq{=}, gt{&gt;}, le{&lt;}, not{~^!} <br>
Examples: <br>
@AD_Table_ID@=14 | @Language@!GERGER <br>
@PriceLimit@>10 | @PriceList@>@PriceActual@<br>
@Name@>J<br>
Strings may be in single quotes (optional)', SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11265
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Read Only', Description='Field is read only', Help='The Read Only indicates that this field may only be Read.  It may not be updated.', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=929
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Insert Record', Description='The user can insert a new Record', Help='If not selected, the user cannot create a new Record.  This is automatically disabled, if the Tab is Read Only.', SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11998
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=271
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Read Only Logic', Description='Logic to determine if field is read only (applies only when field is read-write)', Help='format := {expression} [{logic} {expression}]<br>
expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br>
logic := {|}|{&}<br>
context := any global or window context <br>
value := strings or numbers<br>
logic operators	:= AND or OR with the previous result from left to right <br>
operand := eq{=}, gt{&gt;}, le{&lt;}, not{~^!} <br>
Examples: <br>
@AD_Table_ID@=14 | @Language@!GERGER <br>
@PriceLimit@>10 | @PriceList@>@PriceActual@<br>
@Name@>J<br>
Strings may be in single quotes (optional)', SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11266
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Commit Warning', Description='Warning displayed when saving', Help='Warning or information displayed when committing the record', SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1548
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Sql WHERE', Description='Fully qualified SQL WHERE clause', Help='The Where Clause indicates the SQL WHERE clause to use for record selection. The WHERE clause is added to the query. Fully qualified means "tablename.columnname".', SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1550
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Sql ORDER BY', Description='Fully qualified ORDER BY clause', Help='The ORDER BY Clause indicates the SQL ORDER BY clause to use for record selection', SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1549
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Image', Description='Image or Icon', Help='Images and Icon can be used to display supported graphic formats (gif, jpg, png).
You can either load the image (in the database) or point to a graphic via a URI (i.e. it can point to a resource, http address)', SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4956
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Context Help', Description=NULL, Help=NULL, SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201811
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Create Fields', Description='Create Field from Table Column, which do not exist in the Tab yet', Help='Based on the table columns of this Tab, this procedure creates the missing Fields', SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5131
;

-- Jun 3, 2019 10:16:32 BRT
UPDATE AD_Field SET Name='Copy Tab Fields', Description='Copy Fields from other Tab', Help=NULL, SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:16:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3205
;

-- Jun 3, 2019 10:17:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206080,'Selection Column','Is this column used for Lookup rows in windows','If selected, the column is listed in the first Lookup window tab and in the selection part of the window',107,213946,'Y',1,490,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-06-03 10:17:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-03 10:17:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','6585def5-e85e-4926-8367-2dd50d5725d2','Y',470,2)
;

-- Jun 3, 2019 10:17:00 BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Field_Trl_UU ) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=206080 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 3, 2019 10:17:22 BRT
UPDATE AD_Field SET Name='Placeholder', Description=NULL, Help=NULL, SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=205345
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Read Only', Description='Field is read only', Help='The Read Only indicates that this field may only be Read.  It may not be updated.', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=924
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Display Logic', Description='If the Field is displayed, the result determines if the field is actually displayed', Help='format := {expression} [{logic} {expression}]<br>
expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br>
logic := {|}|{&}<br>
context := any global or window context <br>
value := strings or numbers<br>
logic operators	:= AND or OR with the previous result from left to right <br>
operand := eq{=}, gt{&gt;}, le{&lt;}, not{~^!} <br>
Examples: <br>
@AD_Table_ID@=14 | @Language@!GERGER <br>
@PriceLimit@>10 | @PriceList@>@PriceActual@<br>
@Name@>J<br>
Strings may be in single quotes (optional)', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=133
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Sequence', Description='Method of ordering records; lowest number comes first', Help='The Sequence indicates the order of records', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=137
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Grid Sequence No', Description=NULL, Help=NULL, SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200274
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Record Sort No', Description='Determines in what order the records are displayed', Help='The Record Sort No indicates the ascending sort sequence of the records. If the number is negative, the records are sorted descending.
Example: A tab with C_DocType_ID (1), DocumentNo (-2) will be sorted ascending by document type and descending by document number (SQL: ORDER BY C_DocType, DocumentNo DESC)', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=138
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Advanced Field', Description=NULL, Help=NULL, SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202362
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Encrypted', Description='Display or Storage is encrypted', Help='Display encryption (in Window/Tab/Field) - all characters are displayed as ''*'' - in the database it is stored in clear text. You will not be able to report on these columns.<br>
Data storage encryption (in Table/Column) - data is stored encrypted in the database (dangerous!) and you will not be able to report on those columns. Independent from Display encryption.', SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=142
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Obscure', Description='Type of obscuring the data (limiting the display)', Help=NULL, SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8343
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Heading only', Description='Field without Column - Only label is displayed', Help='The Heading Only checkbox indicates if just the label will display on the screen', SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=140
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Default Focus', Description=NULL, Help=NULL, SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202341
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Field Only', Description='Label is not displayed', Help='The Field Only checkbox indicates that the column will display without a label.', SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=141
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='X Position', Description='Absolute X (horizontal) position in 1/72 of an inch', Help='Absolute X (horizontal) position in 1/72 of an inch', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200350
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Column Span', Description='Number of column for a box of field', Help=NULL, SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200348
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Number of Lines', Description='Number of lines for a field', Help='Number of lines for a field', SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200349
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Label Style', Description='Label CSS Style', Help=NULL, SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204213
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Field Style', Description='Field CSS Style ', Help=NULL, SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204214
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Reference Overwrite', Description='System Reference - optional Overwrite', Help='You can overwrite the Display Type, but only use this if you aware of the consequences.', SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13425
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Toolbar Button', Description='Show the button on the toolbar, the window, or both', Help='The IsToolbarButton field indicates if this button is part of the toolbar''s process button popup list, or render as field in window, or both.', SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200837
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Reference Key', Description='Required to specify, if data type is Table or List', Help='The Reference Value indicates where the reference values are stored.  It must be specified if the data type is Table or List.  ', SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54402
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Dynamic Validation', Description='Dynamic Validation Rule', Help='These rules define how an entry is determined to valid. You can use variables for dynamic (context sensitive) validation.', SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54401
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Updatable', Description='Determines, if the field can be updated', Help='The Updatable checkbox indicates if a field can be updated by the user.', SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200838
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Always Updatable', Description='The column is always updateable, even if the record is not active or processed', Help='If selected and if the window / tab is not read only, you can always update the column.  This might be useful for comments, etc.', SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200834
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Mandatory Overwrite', Description='Overwrite Field Mandatory status', Help='The field must have a value for the record to be saved to the database.', SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13424
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Allow Copy', Description='Determine if a column must be copied when pushing the button to copy record', Help=NULL, SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=62468
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Selection Column', Description='Is this column used for Lookup rows in windows', Help='If selected, the column is listed in the first Lookup window tab and in the selection part of the window', IsDisplayed='Y', SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206080
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Default Logic', Description='Default value hierarchy, separated by ;', Help='The defaults are evaluated in the order of definition, the first not null value becomes the default value of the column. The values are separated by comma or semicolon. a) Literals:. ''Text'' or 123 b) Variables - in format @Variable@ - Login e.g. #Date, #AD_Org_ID, #AD_Client_ID - Accounting Schema: e.g. $C_AcctSchema_ID, $C_Calendar_ID - Global defaults: e.g. DateFormat - Window values (all Picks, CheckBoxes, RadioButtons, and DateDoc/DateAcct) c) SQL code with the tag: @SQL=SELECT something AS DefaultValue FROM ... The SQL statement can contain variables.  There can be no other value other than the SQL statement. The default is only evaluated, if no user preference is defined.  Default definitions are ignored for record columns as Key, Parent, Client as well as Buttons.', SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53280
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Value Format', Description='Format of the value; Can contain fixed format elements, Variables: "_lLoOaAcCa09"', Help='<B>Validation elements:</B>
 	(Space) any character
_	Space (fixed character)
l	any Letter a..Z NO space
L	any Letter a..Z NO space converted to upper case
o	any Letter a..Z or space
O	any Letter a..Z or space converted to upper case
a	any Letters & Digits NO space
A	any Letters & Digits NO space converted to upper case
c	any Letters & Digits or space
C	any Letters & Digits or space converted to upper case
0	Digits 0..9 NO space
9	Digits 0..9 or space

Example of format "(000)_000-0000"', SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203500
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Read Only Logic', Description='Logic to determine if field is read only (applies only when field is read-write)', Help='format := {expression} [{logic} {expression}]<br>
expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br>
logic := {|}|{&}<br>
context := any global or window context <br>
value := strings or numbers<br>
logic operators	:= AND or OR with the previous result from left to right <br>
operand := eq{=}, gt{&gt;}, le{&lt;}, not{~^!} <br>
Examples: <br>
@AD_Table_ID@=14 | @Language@!GERGER <br>
@PriceLimit@>10 | @PriceList@>@PriceActual@<br>
@Name@>J<br>
Strings may be in single quotes (optional)', SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200836
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Mandatory Logic', Description=NULL, Help=NULL, SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200835
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Display Length', Description='Length of the display in characters', Help='The display length is mainly for String fields. The length has no impact, if the data type of the field is - Integer, Number, Amount	(length determined by the system) - YesNo	(Checkbox) - List, Table, TableDir	(length of combo boxes are determined by their content at runtime)', SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=136
;

-- Jun 3, 2019 10:17:23 BRT
UPDATE AD_Field SET Name='Same Line', Description='Displayed on same line as previous field', Help='The Same Line checkbox indicates that the field will display on the same line as the previous field.', SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, Placeholder=NULL,Updated=TO_TIMESTAMP('2019-06-03 10:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=139
;

-- Jun 22, 2019, 3:44:56 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (203344,0,0,'Y',TO_TIMESTAMP('2019-06-22 15:44:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 15:44:55','YYYY-MM-DD HH24:MI:SS'),100,'AD_Val_Rule_Lookup_ID','Dynamic Validation (Lookup)','Override Dynamic Validation Rule for Lookup Window','For some situations the dynamic validation rule for a Lookup window should be different from user data entry window. ','Validation (Lookup)','D','5e3b66a8-aa38-4a77-85de-09d07a44e559')
;

-- Jun 22, 2019, 3:45:21 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (213962,1,'Dynamic Validation (Lookup)','Override Dynamic Validation Rule for Lookup Window','For some situations the dynamic validation rule for a Lookup window should be different from user data entry window. ',101,'AD_Val_Rule_Lookup_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2019-06-22 15:45:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-06-22 15:45:21','YYYY-MM-DD HH24:MI:SS'),100,203344,'Y','N','D','N','N','N','Y','b5847bc2-5224-462a-8f69-7eff6a4626c5','Y','N','N','N')
;

SELECT register_migration_script('202009111500_IDEMPIERE-3981.sql') FROM dual
;
