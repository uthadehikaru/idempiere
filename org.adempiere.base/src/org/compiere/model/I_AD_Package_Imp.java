/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.util.KeyNamePair;

/** Generated Interface for AD_Package_Imp
 *  @author iDempiere (generated) 
 *  @version Release 12
 */
public interface I_AD_Package_Imp 
{

    /** TableName=AD_Package_Imp */
    public static final String Table_Name = "AD_Package_Imp";

    /** AD_Table_ID=50003 */
    public static final int Table_ID = 50003;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Tenant.
	  * Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within tenant
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within tenant
	  */
	public int getAD_Org_ID();

    /** Column name AD_Package_Imp_ID */
    public static final String COLUMNNAME_AD_Package_Imp_ID = "AD_Package_Imp_ID";

	/** Set Package Imp.	  */
	public void setAD_Package_Imp_ID (int AD_Package_Imp_ID);

	/** Get Package Imp.	  */
	public int getAD_Package_Imp_ID();

    /** Column name AD_Package_Imp_Proc_ID */
    public static final String COLUMNNAME_AD_Package_Imp_Proc_ID = "AD_Package_Imp_Proc_ID";

	/** Set Package Imp. Proc.	  */
	public void setAD_Package_Imp_Proc_ID (int AD_Package_Imp_Proc_ID);

	/** Get Package Imp. Proc.	  */
	public int getAD_Package_Imp_Proc_ID();

	public org.compiere.model.I_AD_Package_Imp_Proc getAD_Package_Imp_Proc() throws RuntimeException;

    /** Column name AD_Package_Imp_UU */
    public static final String COLUMNNAME_AD_Package_Imp_UU = "AD_Package_Imp_UU";

	/** Set AD_Package_Imp_UU	  */
	public void setAD_Package_Imp_UU (String AD_Package_Imp_UU);

	/** Get AD_Package_Imp_UU	  */
	public String getAD_Package_Imp_UU();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name CreatedDate */
    public static final String COLUMNNAME_CreatedDate = "CreatedDate";

	/** Set Created Date	  */
	public void setCreatedDate (String CreatedDate);

	/** Get Created Date	  */
	public String getCreatedDate();

    /** Column name Creator */
    public static final String COLUMNNAME_Creator = "Creator";

	/** Set Creator	  */
	public void setCreator (String Creator);

	/** Get Creator	  */
	public String getCreator();

    /** Column name CreatorContact */
    public static final String COLUMNNAME_CreatorContact = "CreatorContact";

	/** Set Creator Contact	  */
	public void setCreatorContact (String CreatorContact);

	/** Get Creator Contact	  */
	public String getCreatorContact();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name EMail */
    public static final String COLUMNNAME_EMail = "EMail";

	/** Set EMail Address.
	  * Electronic Mail Address
	  */
	public void setEMail (String EMail);

	/** Get EMail Address.
	  * Electronic Mail Address
	  */
	public String getEMail();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name PK_Status */
    public static final String COLUMNNAME_PK_Status = "PK_Status";

	/** Set Package Status	  */
	public void setPK_Status (String PK_Status);

	/** Get Package Status	  */
	public String getPK_Status();

    /** Column name PK_Version */
    public static final String COLUMNNAME_PK_Version = "PK_Version";

	/** Set Package Version	  */
	public void setPK_Version (String PK_Version);

	/** Get Package Version	  */
	public String getPK_Version();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name ReleaseNo */
    public static final String COLUMNNAME_ReleaseNo = "ReleaseNo";

	/** Set Release No.
	  * Internal Release Number
	  */
	public void setReleaseNo (String ReleaseNo);

	/** Get Release No.
	  * Internal Release Number
	  */
	public String getReleaseNo();

    /** Column name Uninstall */
    public static final String COLUMNNAME_Uninstall = "Uninstall";

	/** Set Uninstall	  */
	public void setUninstall (boolean Uninstall);

	/** Get Uninstall	  */
	public boolean isUninstall();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name UpdatedDate */
    public static final String COLUMNNAME_UpdatedDate = "UpdatedDate";

	/** Set Updated Date	  */
	public void setUpdatedDate (String UpdatedDate);

	/** Get Updated Date	  */
	public String getUpdatedDate();

    /** Column name Version */
    public static final String COLUMNNAME_Version = "Version";

	/** Set Version.
	  * Version of the table definition
	  */
	public void setVersion (String Version);

	/** Get Version.
	  * Version of the table definition
	  */
	public String getVersion();
}
