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
import java.util.Properties;
import org.compiere.util.KeyNamePair;

/** Generated Model for AD_InfoWindow
 *  @author iDempiere (generated)
 *  @version Release 12 - $Id$ */
@org.adempiere.base.Model(table="AD_InfoWindow")
public class X_AD_InfoWindow extends PO implements I_AD_InfoWindow, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20241222L;

    /** Standard Constructor */
    public X_AD_InfoWindow (Properties ctx, int AD_InfoWindow_ID, String trxName)
    {
      super (ctx, AD_InfoWindow_ID, trxName);
      /** if (AD_InfoWindow_ID == 0)
        {
			setAD_InfoWindow_ID (0);
			setAD_Table_ID (0);
			setEntityType (null);
// @SQL=SELECT CASE WHEN '@P|AdempiereSys:N@'='Y' THEN 'D' ELSE get_sysconfig('DEFAULT_ENTITYTYPE','U',0,0) END FROM Dual
			setFromClause (null);
			setIsDefault (false);
// N
			setIsDistinct (false);
// N
			setIsShowInDashboard (true);
// Y
			setIsValid (false);
// N
			setMaxQueryRecords (0);
// 0
			setName (null);
			setPagingSize (0);
// 0
        } */
    }

    /** Standard Constructor */
    public X_AD_InfoWindow (Properties ctx, int AD_InfoWindow_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, AD_InfoWindow_ID, trxName, virtualColumns);
      /** if (AD_InfoWindow_ID == 0)
        {
			setAD_InfoWindow_ID (0);
			setAD_Table_ID (0);
			setEntityType (null);
// @SQL=SELECT CASE WHEN '@P|AdempiereSys:N@'='Y' THEN 'D' ELSE get_sysconfig('DEFAULT_ENTITYTYPE','U',0,0) END FROM Dual
			setFromClause (null);
			setIsDefault (false);
// N
			setIsDistinct (false);
// N
			setIsShowInDashboard (true);
// Y
			setIsValid (false);
// N
			setMaxQueryRecords (0);
// 0
			setName (null);
			setPagingSize (0);
// 0
        } */
    }

    /** Standard Constructor */
    public X_AD_InfoWindow (Properties ctx, String AD_InfoWindow_UU, String trxName)
    {
      super (ctx, AD_InfoWindow_UU, trxName);
      /** if (AD_InfoWindow_UU == null)
        {
			setAD_InfoWindow_ID (0);
			setAD_Table_ID (0);
			setEntityType (null);
// @SQL=SELECT CASE WHEN '@P|AdempiereSys:N@'='Y' THEN 'D' ELSE get_sysconfig('DEFAULT_ENTITYTYPE','U',0,0) END FROM Dual
			setFromClause (null);
			setIsDefault (false);
// N
			setIsDistinct (false);
// N
			setIsShowInDashboard (true);
// Y
			setIsValid (false);
// N
			setMaxQueryRecords (0);
// 0
			setName (null);
			setPagingSize (0);
// 0
        } */
    }

    /** Standard Constructor */
    public X_AD_InfoWindow (Properties ctx, String AD_InfoWindow_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, AD_InfoWindow_UU, trxName, virtualColumns);
      /** if (AD_InfoWindow_UU == null)
        {
			setAD_InfoWindow_ID (0);
			setAD_Table_ID (0);
			setEntityType (null);
// @SQL=SELECT CASE WHEN '@P|AdempiereSys:N@'='Y' THEN 'D' ELSE get_sysconfig('DEFAULT_ENTITYTYPE','U',0,0) END FROM Dual
			setFromClause (null);
			setIsDefault (false);
// N
			setIsDistinct (false);
// N
			setIsShowInDashboard (true);
// Y
			setIsValid (false);
// N
			setMaxQueryRecords (0);
// 0
			setName (null);
			setPagingSize (0);
// 0
        } */
    }

    /** Load Constructor */
    public X_AD_InfoWindow (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 4 - System
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
      StringBuilder sb = new StringBuilder ("X_AD_InfoWindow[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_CtxHelp getAD_CtxHelp() throws RuntimeException
	{
		return (org.compiere.model.I_AD_CtxHelp)MTable.get(getCtx(), org.compiere.model.I_AD_CtxHelp.Table_ID)
			.getPO(getAD_CtxHelp_ID(), get_TrxName());
	}

	/** Set Context Help.
		@param AD_CtxHelp_ID Context Help
	*/
	public void setAD_CtxHelp_ID (int AD_CtxHelp_ID)
	{
		if (AD_CtxHelp_ID < 1)
			set_Value (COLUMNNAME_AD_CtxHelp_ID, null);
		else
			set_Value (COLUMNNAME_AD_CtxHelp_ID, Integer.valueOf(AD_CtxHelp_ID));
	}

	/** Get Context Help.
		@return Context Help	  */
	public int getAD_CtxHelp_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_CtxHelp_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Info Window.
		@param AD_InfoWindow_ID Info and search/select Window
	*/
	public void setAD_InfoWindow_ID (int AD_InfoWindow_ID)
	{
		if (AD_InfoWindow_ID < 1)
			set_ValueNoCheck (COLUMNNAME_AD_InfoWindow_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_AD_InfoWindow_ID, Integer.valueOf(AD_InfoWindow_ID));
	}

	/** Get Info Window.
		@return Info and search/select Window
	  */
	public int getAD_InfoWindow_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_InfoWindow_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set AD_InfoWindow_UU.
		@param AD_InfoWindow_UU AD_InfoWindow_UU
	*/
	public void setAD_InfoWindow_UU (String AD_InfoWindow_UU)
	{
		set_Value (COLUMNNAME_AD_InfoWindow_UU, AD_InfoWindow_UU);
	}

	/** Get AD_InfoWindow_UU.
		@return AD_InfoWindow_UU	  */
	public String getAD_InfoWindow_UU()
	{
		return (String)get_Value(COLUMNNAME_AD_InfoWindow_UU);
	}

	public org.compiere.model.I_AD_Table getAD_Table() throws RuntimeException
	{
		return (org.compiere.model.I_AD_Table)MTable.get(getCtx(), org.compiere.model.I_AD_Table.Table_ID)
			.getPO(getAD_Table_ID(), get_TrxName());
	}

	/** Set Table.
		@param AD_Table_ID Database Table information
	*/
	public void setAD_Table_ID (int AD_Table_ID)
	{
		if (AD_Table_ID < 1)
			set_Value (COLUMNNAME_AD_Table_ID, null);
		else
			set_Value (COLUMNNAME_AD_Table_ID, Integer.valueOf(AD_Table_ID));
	}

	/** Get Table.
		@return Database Table information
	  */
	public int getAD_Table_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Table_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Window getAD_Window() throws RuntimeException
	{
		return (org.compiere.model.I_AD_Window)MTable.get(getCtx(), org.compiere.model.I_AD_Window.Table_ID)
			.getPO(getAD_Window_ID(), get_TrxName());
	}

	/** Set Window.
		@param AD_Window_ID Data entry or display window
	*/
	public void setAD_Window_ID (int AD_Window_ID)
	{
		if (AD_Window_ID < 1)
			set_Value (COLUMNNAME_AD_Window_ID, null);
		else
			set_Value (COLUMNNAME_AD_Window_ID, Integer.valueOf(AD_Window_ID));
	}

	/** Get Window.
		@return Data entry or display window
	  */
	public int getAD_Window_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Window_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** EntityType AD_Reference_ID=389 */
	public static final int ENTITYTYPE_AD_Reference_ID=389;
	/** Set Entity Type.
		@param EntityType Dictionary Entity Type; Determines ownership and synchronization
	*/
	public void setEntityType (String EntityType)
	{

		set_Value (COLUMNNAME_EntityType, EntityType);
	}

	/** Get Entity Type.
		@return Dictionary Entity Type; Determines ownership and synchronization
	  */
	public String getEntityType()
	{
		return (String)get_Value(COLUMNNAME_EntityType);
	}

	/** Set Sql FROM.
		@param FromClause SQL FROM clause
	*/
	public void setFromClause (String FromClause)
	{
		set_Value (COLUMNNAME_FromClause, FromClause);
	}

	/** Get Sql FROM.
		@return SQL FROM clause
	  */
	public String getFromClause()
	{
		return (String)get_Value(COLUMNNAME_FromClause);
	}

	/** Set Comment/Help.
		@param Help Comment or Hint
	*/
	public void setHelp (String Help)
	{
		set_Value (COLUMNNAME_Help, Help);
	}

	/** Get Comment/Help.
		@return Comment or Hint
	  */
	public String getHelp()
	{
		return (String)get_Value(COLUMNNAME_Help);
	}

	/** Set Image URL.
		@param ImageURL URL of  image
	*/
	public void setImageURL (String ImageURL)
	{
		set_Value (COLUMNNAME_ImageURL, ImageURL);
	}

	/** Get Image URL.
		@return URL of  image
	  */
	public String getImageURL()
	{
		return (String)get_Value(COLUMNNAME_ImageURL);
	}

	/** Set Default.
		@param IsDefault Default value
	*/
	public void setIsDefault (boolean IsDefault)
	{
		set_Value (COLUMNNAME_IsDefault, Boolean.valueOf(IsDefault));
	}

	/** Get Default.
		@return Default value
	  */
	public boolean isDefault()
	{
		Object oo = get_Value(COLUMNNAME_IsDefault);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Distinct.
		@param IsDistinct Select Distinct
	*/
	public void setIsDistinct (boolean IsDistinct)
	{
		set_Value (COLUMNNAME_IsDistinct, Boolean.valueOf(IsDistinct));
	}

	/** Get Distinct.
		@return Select Distinct
	  */
	public boolean isDistinct()
	{
		Object oo = get_Value(COLUMNNAME_IsDistinct);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Show in Dashboard.
		@param IsShowInDashboard Show the dashlet in the dashboard
	*/
	public void setIsShowInDashboard (boolean IsShowInDashboard)
	{
		set_Value (COLUMNNAME_IsShowInDashboard, Boolean.valueOf(IsShowInDashboard));
	}

	/** Get Show in Dashboard.
		@return Show the dashlet in the dashboard
	  */
	public boolean isShowInDashboard()
	{
		Object oo = get_Value(COLUMNNAME_IsShowInDashboard);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Valid.
		@param IsValid Element is valid
	*/
	public void setIsValid (boolean IsValid)
	{
		set_Value (COLUMNNAME_IsValid, Boolean.valueOf(IsValid));
	}

	/** Get Valid.
		@return Element is valid
	  */
	public boolean isValid()
	{
		Object oo = get_Value(COLUMNNAME_IsValid);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Max Query Records.
		@param MaxQueryRecords If defined, you cannot query more records as defined - the query criteria needs to be changed to query less records
	*/
	public void setMaxQueryRecords (int MaxQueryRecords)
	{
		set_Value (COLUMNNAME_MaxQueryRecords, Integer.valueOf(MaxQueryRecords));
	}

	/** Get Max Query Records.
		@return If defined, you cannot query more records as defined - the query criteria needs to be changed to query less records
	  */
	public int getMaxQueryRecords()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_MaxQueryRecords);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Name.
		@param Name Alphanumeric identifier of the entity
	*/
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName()
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), getName());
    }

	/** Set Sql ORDER BY.
		@param OrderByClause Fully qualified ORDER BY clause
	*/
	public void setOrderByClause (String OrderByClause)
	{
		set_Value (COLUMNNAME_OrderByClause, OrderByClause);
	}

	/** Get Sql ORDER BY.
		@return Fully qualified ORDER BY clause
	  */
	public String getOrderByClause()
	{
		return (String)get_Value(COLUMNNAME_OrderByClause);
	}

	/** Set Other SQL Clause.
		@param OtherClause Other SQL Clause
	*/
	public void setOtherClause (String OtherClause)
	{
		set_Value (COLUMNNAME_OtherClause, OtherClause);
	}

	/** Get Other SQL Clause.
		@return Other SQL Clause
	  */
	public String getOtherClause()
	{
		return (String)get_Value(COLUMNNAME_OtherClause);
	}

	public org.compiere.model.I_AD_Window getPO_Window() throws RuntimeException
	{
		return (org.compiere.model.I_AD_Window)MTable.get(getCtx(), org.compiere.model.I_AD_Window.Table_ID)
			.getPO(getPO_Window_ID(), get_TrxName());
	}

	/** Set PO Window.
		@param PO_Window_ID Purchase Order Window
	*/
	public void setPO_Window_ID (int PO_Window_ID)
	{
		if (PO_Window_ID < 1)
			set_Value (COLUMNNAME_PO_Window_ID, null);
		else
			set_Value (COLUMNNAME_PO_Window_ID, Integer.valueOf(PO_Window_ID));
	}

	/** Get PO Window.
		@return Purchase Order Window
	  */
	public int getPO_Window_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PO_Window_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Paging Size.
		@param PagingSize Paging Size
	*/
	public void setPagingSize (int PagingSize)
	{
		set_Value (COLUMNNAME_PagingSize, Integer.valueOf(PagingSize));
	}

	/** Get Paging Size.
		@return Paging Size	  */
	public int getPagingSize()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PagingSize);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Process Now.
		@param Processing Process Now
	*/
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing()
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Sequence.
		@param SeqNo Method of ordering records; lowest number comes first
	*/
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Sql WHERE.
		@param WhereClause Fully qualified SQL WHERE clause
	*/
	public void setWhereClause (String WhereClause)
	{
		set_Value (COLUMNNAME_WhereClause, WhereClause);
	}

	/** Get Sql WHERE.
		@return Fully qualified SQL WHERE clause
	  */
	public String getWhereClause()
	{
		return (String)get_Value(COLUMNNAME_WhereClause);
	}

	/** Set Load Page Num.
		@param isLoadPageNum When load data for info window, also load number of paging
	*/
	public void setisLoadPageNum (boolean isLoadPageNum)
	{
		set_Value (COLUMNNAME_isLoadPageNum, Boolean.valueOf(isLoadPageNum));
	}

	/** Get Load Page Num.
		@return When load data for info window, also load number of paging
	  */
	public boolean isLoadPageNum()
	{
		Object oo = get_Value(COLUMNNAME_isLoadPageNum);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}
}