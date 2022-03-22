-- IDEMPIERE-2020 (4) Value Format for ZK

-- Feb 25, 2015 5:57:03 PM COT
ALTER TABLE AD_UserDef_Field ADD COLUMN VFormat VARCHAR(255) DEFAULT NULL 
;

-- Feb 25, 2015 5:57:30 PM COT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (203499,'Value Format','Format of the value; Can contain fixed format elements, Variables: "_lLoOaAcCa09"','<B>Validation elements:</B>
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

Example of format "(000)_000-0000"',395,211840,'Y',255,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-02-25 17:57:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-02-25 17:57:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','f8a92fba-ee26-4ccc-95ed-62dcfd3d7207','Y',290,5)
;


SELECT register_migration_script('201605052331_IDEMPIERE-20204.sql') FROM dual
;
