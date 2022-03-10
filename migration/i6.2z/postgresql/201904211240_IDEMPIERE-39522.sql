-- Apr 21, 2019, 12:47:36 PM CEST
INSERT INTO t_alter_column values('ad_infoprocess','EntityType',null,'NOT NULL',null)
;

-- Apr 21, 2019, 12:48:28 PM CEST
INSERT INTO t_alter_column values('ad_inforelated','EntityType',null,'NOT NULL',null)
;

-- Apr 21, 2019, 12:48:48 PM CEST
INSERT INTO t_alter_column values('ad_searchdefinition','EntityType',null,'NOT NULL',null)
;

-- Apr 21, 2019, 12:49:00 PM CEST
INSERT INTO t_alter_column values('ad_style','EntityType',null,'NOT NULL',null)
;

-- Apr 21, 2019, 12:49:10 PM CEST
INSERT INTO t_alter_column values('ad_styleline','EntityType',null,'NOT NULL',null)
;

-- Apr 21, 2019, 12:49:26 PM CEST
INSERT INTO t_alter_column values('ad_toolbarbutton','EntityType',null,'NOT NULL',null)
;

-- Apr 21, 2019, 12:49:46 PM CEST
INSERT INTO t_alter_column values('ad_zoomcondition','EntityType',null,'NOT NULL',null)
;

-- Apr 21, 2019, 12:49:59 PM CEST
INSERT INTO t_alter_column values('pa_documentstatus','EntityType',null,'NOT NULL',null)
;

SELECT register_migration_script('201904211240_IDEMPIERE-39522.sql') FROM dual
;

