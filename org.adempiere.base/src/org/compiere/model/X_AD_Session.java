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
/** Generated Model - DO NOT CHANGE */
package org.compiere.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.util.KeyNamePair;

/** Generated Model for AD_Session
 *  @author iDempiere (generated)
 *  @version Release 12 - $Id$ */
@org.adempiere.base.Model(table="AD_Session")
public class X_AD_Session extends PO implements I_AD_Session, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20241222L;

    /** Standard Constructor */
    public X_AD_Session (Properties ctx, int AD_Session_ID, String trxName)
    {
      super (ctx, AD_Session_ID, trxName);
      /** if (AD_Session_ID == 0)
        {
			setAD_Session_ID (0);
			setProcessed (false);
        } */
    }

    /** Standard Constructor */
    public X_AD_Session (Properties ctx, int AD_Session_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, AD_Session_ID, trxName, virtualColumns);
      /** if (AD_Session_ID == 0)
        {
			setAD_Session_ID (0);
			setProcessed (false);
        } */
    }

    /** Standard Constructor */
    public X_AD_Session (Properties ctx, String AD_Session_UU, String trxName)
    {
      super (ctx, AD_Session_UU, trxName);
      /** if (AD_Session_UU == null)
        {
			setAD_Session_ID (0);
			setProcessed (false);
        } */
    }

    /** Standard Constructor */
    public X_AD_Session (Properties ctx, String AD_Session_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, AD_Session_UU, trxName, virtualColumns);
      /** if (AD_Session_UU == null)
        {
			setAD_Session_ID (0);
			setProcessed (false);
        } */
    }

    /** Load Constructor */
    public X_AD_Session (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuilder sb = new StringBuilder ("X_AD_Session[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_Role getAD_Role() throws RuntimeException
	{
		return (org.compiere.model.I_AD_Role)MTable.get(getCtx(), org.compiere.model.I_AD_Role.Table_ID)
			.getPO(getAD_Role_ID(), get_TrxName());
	}

	/** Set Role.
		@param AD_Role_ID Responsibility Role
	*/
	public void setAD_Role_ID (int AD_Role_ID)
	{
		if (AD_Role_ID < 0)
			set_Value (COLUMNNAME_AD_Role_ID, null);
		else
			set_Value (COLUMNNAME_AD_Role_ID, Integer.valueOf(AD_Role_ID));
	}

	/** Get Role.
		@return Responsibility Role
	  */
	public int getAD_Role_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Role_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Session.
		@param AD_Session_ID User Session Online or Web
	*/
	public void setAD_Session_ID (int AD_Session_ID)
	{
		if (AD_Session_ID < 1)
			set_ValueNoCheck (COLUMNNAME_AD_Session_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_AD_Session_ID, Integer.valueOf(AD_Session_ID));
	}

	/** Get Session.
		@return User Session Online or Web
	  */
	public int getAD_Session_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Session_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), String.valueOf(getAD_Session_ID()));
    }

	/** Set AD_Session_UU.
		@param AD_Session_UU AD_Session_UU
	*/
	public void setAD_Session_UU (String AD_Session_UU)
	{
		set_Value (COLUMNNAME_AD_Session_UU, AD_Session_UU);
	}

	/** Get AD_Session_UU.
		@return AD_Session_UU	  */
	public String getAD_Session_UU()
	{
		return (String)get_Value(COLUMNNAME_AD_Session_UU);
	}

	/** Set Description.
		@param Description Optional short description of the record
	*/
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription()
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Login date.
		@param LoginDate Login date
	*/
	public void setLoginDate (Timestamp LoginDate)
	{
		set_Value (COLUMNNAME_LoginDate, LoginDate);
	}

	/** Get Login date.
		@return Login date	  */
	public Timestamp getLoginDate()
	{
		return (Timestamp)get_Value(COLUMNNAME_LoginDate);
	}

	/** Set Processed.
		@param Processed The document has been processed
	*/
	public void setProcessed (boolean Processed)
	{
		set_ValueNoCheck (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed()
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Remote Addr.
		@param Remote_Addr Remote Address
	*/
	public void setRemote_Addr (String Remote_Addr)
	{
		set_ValueNoCheck (COLUMNNAME_Remote_Addr, Remote_Addr);
	}

	/** Get Remote Addr.
		@return Remote Address
	  */
	public String getRemote_Addr()
	{
		return (String)get_Value(COLUMNNAME_Remote_Addr);
	}

	/** Set Remote Host.
		@param Remote_Host Remote host Info
	*/
	public void setRemote_Host (String Remote_Host)
	{
		set_ValueNoCheck (COLUMNNAME_Remote_Host, Remote_Host);
	}

	/** Get Remote Host.
		@return Remote host Info
	  */
	public String getRemote_Host()
	{
		return (String)get_Value(COLUMNNAME_Remote_Host);
	}

	/** Set Server Name.
		@param ServerName Server Name
	*/
	public void setServerName (String ServerName)
	{
		set_Value (COLUMNNAME_ServerName, ServerName);
	}

	/** Get Server Name.
		@return Server Name	  */
	public String getServerName()
	{
		return (String)get_Value(COLUMNNAME_ServerName);
	}

	/** Set Web Session.
		@param WebSession Web Session ID
	*/
	public void setWebSession (String WebSession)
	{
		set_ValueNoCheck (COLUMNNAME_WebSession, WebSession);
	}

	/** Get Web Session.
		@return Web Session ID
	  */
	public String getWebSession()
	{
		return (String)get_Value(COLUMNNAME_WebSession);
	}
}