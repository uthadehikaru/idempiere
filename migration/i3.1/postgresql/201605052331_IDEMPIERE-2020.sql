-- IDEMPIERE-2020 Value Format for ZK
-- Feb 25, 2015 5:45:01 PM COT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2015-02-25 17:45:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1179
;

-- Feb 25, 2015 5:54:41 PM COT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (211839,0,'Value Format','Format of the value; Can contain fixed format elements, Variables: "_lLoOaAcCa09"','<B>Validation elements:</B>
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

Example of format "(000)_000-0000"',107,'VFormat',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-02-25 17:54:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-02-25 17:54:41','YYYY-MM-DD HH24:MI:SS'),100,616,'Y','N','D','N','N','N','Y','a585debb-2c2f-4a8f-89c9-28281fd44b62','Y',0,'N','N')
;

-- Feb 25, 2015 5:55:50 PM COT
UPDATE AD_Column SET FieldLength=255,Updated=TO_TIMESTAMP('2015-02-25 17:55:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1179
;

SELECT register_migration_script('201605052331_IDEMPIERE-2020.sql') FROM dual
;
