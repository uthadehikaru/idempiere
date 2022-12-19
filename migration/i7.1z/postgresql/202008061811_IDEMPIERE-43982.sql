-- Aug 6, 2020, 6:08:00 PM CEST
INSERT INTO t_alter_column values('gl_journalgenerator','GenerateGLJournal','CHAR(1)',null,'NULL')
;

-- Aug 6, 2020, 6:08:38 PM CEST
INSERT INTO t_alter_column values('i_bpartner','DUNS','VARCHAR(11)',null,'NULL')
;

-- Aug 6, 2020, 6:08:50 PM CEST
INSERT INTO t_alter_column values('i_bpartner','NAICS','VARCHAR(6)',null,'NULL')
;

-- Aug 6, 2020, 6:09:14 PM CEST
INSERT INTO t_alter_column values('m_product_po','Manufacturer','VARCHAR(30)',null,'NULL')
;

-- Aug 6, 2020, 6:09:31 PM CEST
INSERT INTO t_alter_column values('m_product_po','VendorCategory','VARCHAR(30)',null,'NULL')
;

SELECT register_migration_script('202008061811_IDEMPIERE-43982.sql') FROM dual
;

