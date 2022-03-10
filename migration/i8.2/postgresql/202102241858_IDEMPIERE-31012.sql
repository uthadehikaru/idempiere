-- Feb 26, 2021, 9:43:49 PM CET
INSERT INTO t_alter_column values('ad_authorizationscopeprov','ScopeURL','VARCHAR(2000)',null,null)
;

-- Feb 26, 2021, 9:43:49 PM CET
INSERT INTO t_alter_column values('ad_authorizationscopeprov','ScopeURL',null,'NOT NULL',null)
;

-- Feb 26, 2021, 9:44:00 PM CET
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2021-02-26 21:44:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214374
;

-- Feb 26, 2021, 9:44:01 PM CET
INSERT INTO t_alter_column values('ad_authorizationscopeprov','AD_AuthorizationScope','VARCHAR(10)',null,null)
;

-- Feb 26, 2021, 9:44:01 PM CET
INSERT INTO t_alter_column values('ad_authorizationscopeprov','AD_AuthorizationScope',null,'NOT NULL',null)
;

-- Feb 26, 2021, 9:44:22 PM CET
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2021-02-26 21:44:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214387
;

-- Feb 26, 2021, 9:44:24 PM CET
INSERT INTO t_alter_column values('ad_authorizationcredential','AuthorizationClientId','VARCHAR(2000)',null,null)
;

-- Feb 26, 2021, 9:44:24 PM CET
INSERT INTO t_alter_column values('ad_authorizationcredential','AuthorizationClientId',null,'NOT NULL',null)
;

-- Feb 26, 2021, 9:44:28 PM CET
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2021-02-26 21:44:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214388
;

-- Feb 26, 2021, 9:44:30 PM CET
INSERT INTO t_alter_column values('ad_authorizationcredential','AuthorizationClientSecret','VARCHAR(2000)',null,null)
;

-- Feb 26, 2021, 9:44:30 PM CET
INSERT INTO t_alter_column values('ad_authorizationcredential','AuthorizationClientSecret',null,'NOT NULL',null)
;

-- Feb 26, 2021, 9:44:38 PM CET
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2021-02-26 21:44:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214389
;

-- Feb 26, 2021, 9:44:39 PM CET
INSERT INTO t_alter_column values('ad_authorizationcredential','AuthorizationRedirectURL','VARCHAR(2000)',null,null)
;

-- Feb 26, 2021, 9:44:39 PM CET
INSERT INTO t_alter_column values('ad_authorizationcredential','AuthorizationRedirectURL',null,'NOT NULL',null)
;

-- Feb 26, 2021, 9:45:03 PM CET
UPDATE AD_Column SET IsSecure='Y',Updated=TO_TIMESTAMP('2021-02-26 21:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214387
;

-- Feb 26, 2021, 9:45:11 PM CET
UPDATE AD_Column SET IsSecure='Y',Updated=TO_TIMESTAMP('2021-02-26 21:45:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214388
;

-- Feb 26, 2021, 9:45:29 PM CET
UPDATE AD_Field SET IsEncrypted='Y', ObscureType=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-26 21:45:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206576
;

-- Feb 26, 2021, 9:46:06 PM CET
UPDATE AD_Column SET IsSecure='Y',Updated=TO_TIMESTAMP('2021-02-26 21:46:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214402
;

-- Feb 26, 2021, 9:46:15 PM CET
UPDATE AD_Field SET IsEncrypted='Y', ObscureType=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-26 21:46:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206587
;

-- Feb 26, 2021, 9:46:27 PM CET
UPDATE AD_Column SET IsSecure='Y',Updated=TO_TIMESTAMP('2021-02-26 21:46:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214403
;

-- Feb 26, 2021, 9:46:38 PM CET
UPDATE AD_Field SET IsEncrypted='Y', ObscureType=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-26 21:46:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206588
;

-- Feb 26, 2021, 10:40:43 PM CET
INSERT INTO AD_AuthorizationProvider (AD_AuthorizationProvider_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,AD_AuthorizationProvider_UU,Name,Updated,UpdatedBy,AuthorizationEndpoint,TokenEndpoint,AD_AuthorizationType) VALUES (200001,0,0,TO_TIMESTAMP('2021-02-26 22:40:42','YYYY-MM-DD HH24:MI:SS'),100,'Y','7d5d231e-121a-4ef5-912f-fefb7960fb5b','Microsoft',TO_TIMESTAMP('2021-02-26 22:40:42','YYYY-MM-DD HH24:MI:SS'),100,'https://login.microsoftonline.com/common/oauth2/v2.0/authorize','https://login.microsoftonline.com/common/oauth2/v2.0/token','OAuth2')
;

-- Feb 26, 2021, 10:40:56 PM CET
INSERT INTO AD_AuthorizationScopeProv (AD_AuthorizationScopeProv_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,AD_AuthorizationScopeProv_UU,Updated,UpdatedBy,AD_AuthorizationProvider_ID,AD_AuthorizationScope,ScopeURL) VALUES (200002,0,0,TO_TIMESTAMP('2021-02-26 22:40:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','34a26d19-85f3-44af-9df6-57883161b076',TO_TIMESTAMP('2021-02-26 22:40:56','YYYY-MM-DD HH24:MI:SS'),100,200001,'EMail','https://outlook.office.com/mail.read https://outlook.office.com/mail.send https://outlook.office.com/SMTP.Send https://outlook.office.com/IMAP.AccessAsUser.All email openid offline_access')
;

-- Mar 2, 2021, 8:44:54 PM CET
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (200128,0,0,'Y',TO_TIMESTAMP('2021-03-02 20:44:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-02 20:44:53','YYYY-MM-DD HH24:MI:SS'),100,'Add Authorization Mail Account','N','AddAuthorizationProcess','N','org.compiere.process.AddAuthorizationProcess','7','D',7,7,'N','Y','N','c6ba87ce-aa65-4895-b156-5385dfcc6164','P')
;

-- Mar 2, 2021, 8:44:54 PM CET
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (200145,'AD_AuthorizationScope Configured','S','AD_Ref_List.Value IN (
SELECT DISTINCT asp.AD_AuthorizationScope
FROM AD_AuthorizationScopeProv asp
WHERE asp.IsActive=''Y''
  AND (''0''=''@+SCOPE:0@'' OR asp.AD_AuthorizationScope=''@+SCOPE:0@'')
  AND asp.AD_Client_ID IN (0,@#AD_Client_ID@)
  AND EXISTS (SELECT 1
    FROM AD_AuthorizationCredential ac
    JOIN AD_AuthorizationProvider ap ON (ac.AD_AuthorizationProvider_ID=ap.AD_AuthorizationProvider_ID
      AND ap.IsActive=''Y''
      AND ap.AD_Client_ID IN (0,@#AD_Client_ID@))
    WHERE ac.AD_AuthorizationProvider_ID=asp.AD_AuthorizationProvider_ID 
      AND ac.IsActive=''Y''
      AND ac.AD_AuthorizationScopeList LIKE ''%''||asp.AD_AuthorizationScope||''%''
      AND ac.AD_Client_ID IN (0,@#AD_Client_ID@))
)',0,0,'Y',TO_TIMESTAMP('2021-03-02 20:44:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-02 20:44:54','YYYY-MM-DD HH24:MI:SS'),100,'D','3972733f-ee00-4e30-9aab-5d09b0d849d3')
;

-- Mar 2, 2021, 8:44:55 PM CET
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,ReadOnlyLogic,AD_Process_Para_UU,IsEncrypted,IsAutocomplete) VALUES (200335,0,0,'Y',TO_TIMESTAMP('2021-03-02 20:44:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-02 20:44:54','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Scope',200128,10,17,200185,'N',200145,10,'Y','@+SCOPE@','AD_AuthorizationScope','Y','D',203460,'@+SCOPE@!''''','f2c44e06-a98b-476c-b6aa-5035e19f6cdb','N','N')
;

-- Mar 2, 2021, 8:44:55 PM CET
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (200146,'AD_AuthorizationCredential of Scope','S','AD_AuthorizationCredential.AD_Client_ID IN (0,@#AD_Client_ID@) AND 
AD_AuthorizationCredential.IsActive=''Y'' AND 
AD_AuthorizationCredential.AD_AuthorizationScopeList LIKE ''%''||''@AD_AuthorizationScope@''||''%'' AND 
EXISTS ( 
  SELECT 1 
  FROM AD_AuthorizationScopeProv asp 
    JOIN AD_AuthorizationProvider ap ON (asp.AD_AuthorizationProvider_ID=ap.AD_AuthorizationProvider_ID  
      AND ap.IsActive=''Y''  
      AND ap.AD_Client_ID IN (0,@#AD_Client_ID@)) 
  WHERE asp.AD_AuthorizationProvider_ID=AD_AuthorizationCredential.AD_AuthorizationProvider_ID 
    AND asp.AD_AuthorizationScope=''@AD_AuthorizationScope@'' 
    AND asp.IsActive=''Y'' 
    AND asp.AD_Client_ID IN (0,@#AD_Client_ID@))',0,0,'Y',TO_TIMESTAMP('2021-03-02 20:44:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-02 20:44:55','YYYY-MM-DD HH24:MI:SS'),100,'D','2be5a622-adb4-485d-a06a-168e3627135a')
;

-- Mar 2, 2021, 8:44:55 PM CET
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,IsAutocomplete) VALUES (200336,0,0,'Y',TO_TIMESTAMP('2021-03-02 20:44:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-02 20:44:55','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Credential',200128,20,19,'N',200146,22,'Y','AD_AuthorizationCredential_ID','Y','D',203462,'0f2496c7-10d4-4f0c-aae1-6e25bc2b4ff7','N','N')
;

-- Mar 2, 2021, 8:44:56 PM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203477,0,0,'Y',TO_TIMESTAMP('2021-03-02 20:44:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-02 20:44:55','YYYY-MM-DD HH24:MI:SS'),100,'Auth_OpenPopup','Open Authorization in Popup Window','Open Authorization in Popup Window','D','03b05026-1620-4429-a28a-49a06fa8612a')
;

-- Mar 2, 2021, 8:44:56 PM CET
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,IsAutocomplete) VALUES (200337,0,0,'Y',TO_TIMESTAMP('2021-03-02 20:44:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-02 20:44:56','YYYY-MM-DD HH24:MI:SS'),100,'Open Authorization in Popup Window',200128,30,20,'N',1,'Y','@+OPEN_POPUP:Y@','Auth_OpenPopup','Y','D',203477,'@+OPEN_POPUP@=''''','6f136023-be77-4762-aed3-0107c473379e','N','N')
;

-- Mar 2, 2021, 8:44:57 PM CET
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU,PredefinedContextVariables) VALUES (200182,'Add Authorization Mail Account','P',0,0,'Y',TO_TIMESTAMP('2021-03-02 20:44:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-02 20:44:56','YYYY-MM-DD HH24:MI:SS'),100,'N',200128,'Y','N','D','Y','53d88c72-2e33-41b2-94b2-03f16bf07982','SCOPE=EMail
OPEN_POPUP=Y')
;

-- Mar 2, 2021, 8:44:57 PM CET
INSERT INTO AD_TREENODEMM(AD_Client_ID, AD_Org_ID, CreatedBy, UpdatedBy, Parent_ID, SeqNo, AD_Tree_ID, Node_ID)VALUES(0, 0, 0, 0, 200178,3, 10, 200182)
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=161
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=367
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=456
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=501
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=326
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=566
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=392
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=113
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200178
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=220
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=351
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=289
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=302
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200168
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200169
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=303
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200047
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200048
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=321
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=461
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53193
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200161
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53322
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=383
;

-- Mar 2, 2021, 8:47:20 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200177
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=161
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=367
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=456
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=501
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=326
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=566
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=392
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200178
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=113
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=220
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=351
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=289
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=302
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200168
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200169
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=303
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200047
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200048
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=321
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=461
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53193
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200161
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53322
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=383
;

-- Mar 2, 2021, 8:47:29 PM CET
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200177
;

-- Mar 4, 2021, 10:35:05 AM CET
UPDATE AD_Process_Para SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2021-03-04 10:35:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=200337
;

-- IDEMPIERE-3101 implement OAuth2 for mail (gmail, outlook and other mail system)
-- Mar 4, 2021, 10:37:16 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Please copy this URL and open it into your browser to authorize your account',0,0,'Y',TO_TIMESTAMP('2021-03-04 10:37:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 10:37:16','YYYY-MM-DD HH24:MI:SS'),100,200664,'Add_Auth_Copy_Link','D','15c81291-1926-4d7f-a69f-15ec9e94e057')
;

-- Mar 4, 2021, 10:37:47 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Please proceed to authorize your account in the popup window.',0,0,'Y',TO_TIMESTAMP('2021-03-04 10:37:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 10:37:46','YYYY-MM-DD HH24:MI:SS'),100,200665,'Add_Auth_In_Popup','D','1fc69689-5c66-4ea2-ac09-3a3f064bad16')
;

-- Mar 4, 2021, 10:47:28 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','The "{0}" URL parameter is missing',0,0,'Y',TO_TIMESTAMP('2021-03-04 10:47:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 10:47:28','YYYY-MM-DD HH24:MI:SS'),100,200666,'OAuthCallback_MissingParameter','D','4741bb6c-eb25-4504-89c9-a3b8e74b875c')
;

-- Mar 4, 2021, 10:50:29 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','The "state" URL parameter is not valid',0,0,'Y',TO_TIMESTAMP('2021-03-04 10:50:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 10:50:29','YYYY-MM-DD HH24:MI:SS'),100,200667,'OAuthCallback_InvalidState','D','39cc3d01-fe8d-437e-a90c-68383dd9296e')
;

-- Mar 4, 2021, 10:51:46 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','The "state" URL parameter is not valid, parameter not found',0,0,'Y',TO_TIMESTAMP('2021-03-04 10:51:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 10:51:46','YYYY-MM-DD HH24:MI:SS'),100,200668,'OAuthCallback_NotFoundState','D','b8dbabc5-2942-4207-808b-5195e1fc91d6')
;

-- Mar 4, 2021, 10:55:51 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Could not get the email from the response',0,0,'Y',TO_TIMESTAMP('2021-03-04 10:55:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 10:55:51','YYYY-MM-DD HH24:MI:SS'),100,200669,'OAuthProcessToken_CouldNotGetEMail','D','494ad2ec-b18f-4479-9ce0-fd62227853ea')
;

-- Mar 4, 2021, 10:56:06 AM CET
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2021-03-04 10:56:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=200667
;

-- Mar 4, 2021, 10:56:09 AM CET
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2021-03-04 10:56:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=200666
;

-- Mar 4, 2021, 10:56:11 AM CET
UPDATE AD_Message SET MsgType='E',Updated=TO_TIMESTAMP('2021-03-04 10:56:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=200668
;

-- Mar 4, 2021, 10:56:40 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','No refresh token.  Request Failed. Please try again',0,0,'Y',TO_TIMESTAMP('2021-03-04 10:56:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 10:56:40','YYYY-MM-DD HH24:MI:SS'),100,200670,'OAuthProcessToken_NoRefreshToken','D','f4ed653b-6021-4ab3-a0bd-db3971f872f6')
;

-- Mar 4, 2021, 11:17:35 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Request failed or it was aborted by user.',0,0,'Y',TO_TIMESTAMP('2021-03-04 11:17:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 11:17:35','YYYY-MM-DD HH24:MI:SS'),100,200671,'OAuthPopup_Failure','D','0b34a772-fa43-4a84-a7bc-34bb5f3b78f1')
;

-- Mar 4, 2021, 11:40:09 AM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','This window can be closed now.',0,0,'Y',TO_TIMESTAMP('2021-03-04 11:40:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 11:40:08','YYYY-MM-DD HH24:MI:SS'),100,200672,'OAuthPopup_Close','D','22b37095-6afc-458a-b2b5-86eb808fef87')
;

-- Mar 4, 2021, 1:10:14 PM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Click the OK button to open the authorization popup window.',0,0,'Y',TO_TIMESTAMP('2021-03-04 13:10:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 13:10:14','YYYY-MM-DD HH24:MI:SS'),100,200673,'Authorization_Message','D','a0ace366-678c-47d9-b048-737af5511fd9')
;

-- Mar 4, 2021, 4:01:13 PM CET
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,IsAutocomplete) VALUES (200338,0,0,'Y',TO_TIMESTAMP('2021-03-04 16:01:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-04 16:01:12','YYYY-MM-DD HH24:MI:SS'),100,'Language','Language for this entity','The Language identifies the language to use for display and formatting',200128,40,18,327,'N',6,'N','@#AD_Language@','AD_Language','Y','D',109,'1=2','9042a009-41dd-466c-9ed7-9a352d3eb362','N','N')
;

-- Mar 4, 2021, 4:26:51 PM CET
UPDATE AD_Column SET IsAllowLogging='N',Updated=TO_TIMESTAMP('2021-03-04 16:26:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214402
;

-- Mar 4, 2021, 4:27:04 PM CET
UPDATE AD_Column SET IsAllowLogging='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-03-04 16:27:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214403
;

-- Mar 4, 2021, 4:27:08 PM CET
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-03-04 16:27:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214402
;

-- Mar 4, 2021, 4:27:35 PM CET
UPDATE AD_Column SET IsAllowLogging='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-03-04 16:27:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214388
;

-- Mar 4, 2021, 4:27:40 PM CET
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-03-04 16:27:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214387
;

-- Mar 5, 2021, 3:56:33 PM CET
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (203478,0,0,'Y',TO_TIMESTAMP('2021-03-05 15:56:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-05 15:56:03','YYYY-MM-DD HH24:MI:SS'),100,'Auth_CallbackAnswer','Callback Answer',NULL,NULL,'Callback Answer','D','60b94b5d-a902-4e98-93ef-360a93fd6cbe')
;

-- Mar 5, 2021, 3:57:46 PM CET
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,IsAutocomplete) VALUES (200339,0,0,'Y',TO_TIMESTAMP('2021-03-05 15:57:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-05 15:57:45','YYYY-MM-DD HH24:MI:SS'),100,'Callback Answer',200128,50,10,'N',4000,'N','Auth_CallbackAnswer','Y','D',203478,'1=2','c36bcfc9-d123-4f57-bae3-4ad93c8f338e','N','N')
;

-- Mar 5, 2021, 4:07:22 PM CET
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','The authorization link was already used',0,0,'Y',TO_TIMESTAMP('2021-03-05 16:07:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-05 16:07:21','YYYY-MM-DD HH24:MI:SS'),100,200674,'OAuthCallback_AlreadyUsedLink','D','3ebd92aa-4a4d-4a2c-a6d3-df874083f040')
;

SELECT register_migration_script('202102241858_IDEMPIERE-31012.sql') FROM dual
;

