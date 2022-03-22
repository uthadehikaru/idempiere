-- IDEMPIERE-2020 (3) Value Format for ZK
-- Feb 25, 2015 5:56:15 PM COT
INSERT INTO t_alter_column values('ad_process_para','VFormat','VARCHAR(255)',null,'NULL')
;

-- Feb 25, 2015 5:57:01 PM COT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (211840,0,'Value Format','Format of the value; Can contain fixed format elements, Variables: "_lLoOaAcCa09"','<B>Validation elements:</B>
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

Example of format "(000)_000-0000"',464,'VFormat',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-02-25 17:57:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-02-25 17:57:00','YYYY-MM-DD HH24:MI:SS'),100,616,'Y','N','U','N','N','N','Y','35514060-1c96-435d-b3bf-101ed064d4f6','Y',0,'N','N')
;


SELECT register_migration_script('201605052331_IDEMPIERE-20203.sql') FROM dual
;
