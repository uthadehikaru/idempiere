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
package org.eevolution.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for DD_NetworkDistributionLine
 *  @author iDempiere (generated)
 *  @version Release 12 - $Id$ */
@org.adempiere.base.Model(table="DD_NetworkDistributionLine")
public class X_DD_NetworkDistributionLine extends PO implements I_DD_NetworkDistributionLine, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20241222L;

    /** Standard Constructor */
    public X_DD_NetworkDistributionLine (Properties ctx, int DD_NetworkDistributionLine_ID, String trxName)
    {
      super (ctx, DD_NetworkDistributionLine_ID, trxName);
      /** if (DD_NetworkDistributionLine_ID == 0)
        {
			setDD_NetworkDistributionLine_ID (0);
			setDD_NetworkDistribution_ID (0);
			setM_Shipper_ID (0);
			setM_WarehouseSource_ID (0);
			setM_Warehouse_ID (0);
// @M_Warehouse_ID@
        } */
    }

    /** Standard Constructor */
    public X_DD_NetworkDistributionLine (Properties ctx, int DD_NetworkDistributionLine_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, DD_NetworkDistributionLine_ID, trxName, virtualColumns);
      /** if (DD_NetworkDistributionLine_ID == 0)
        {
			setDD_NetworkDistributionLine_ID (0);
			setDD_NetworkDistribution_ID (0);
			setM_Shipper_ID (0);
			setM_WarehouseSource_ID (0);
			setM_Warehouse_ID (0);
// @M_Warehouse_ID@
        } */
    }

    /** Standard Constructor */
    public X_DD_NetworkDistributionLine (Properties ctx, String DD_NetworkDistributionLine_UU, String trxName)
    {
      super (ctx, DD_NetworkDistributionLine_UU, trxName);
      /** if (DD_NetworkDistributionLine_UU == null)
        {
			setDD_NetworkDistributionLine_ID (0);
			setDD_NetworkDistribution_ID (0);
			setM_Shipper_ID (0);
			setM_WarehouseSource_ID (0);
			setM_Warehouse_ID (0);
// @M_Warehouse_ID@
        } */
    }

    /** Standard Constructor */
    public X_DD_NetworkDistributionLine (Properties ctx, String DD_NetworkDistributionLine_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, DD_NetworkDistributionLine_UU, trxName, virtualColumns);
      /** if (DD_NetworkDistributionLine_UU == null)
        {
			setDD_NetworkDistributionLine_ID (0);
			setDD_NetworkDistribution_ID (0);
			setM_Shipper_ID (0);
			setM_WarehouseSource_ID (0);
			setM_Warehouse_ID (0);
// @M_Warehouse_ID@
        } */
    }

    /** Load Constructor */
    public X_DD_NetworkDistributionLine (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org
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
      StringBuilder sb = new StringBuilder ("X_DD_NetworkDistributionLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Network Distribution Line.
		@param DD_NetworkDistributionLine_ID Network Distribution Line
	*/
	public void setDD_NetworkDistributionLine_ID (int DD_NetworkDistributionLine_ID)
	{
		if (DD_NetworkDistributionLine_ID < 1)
			set_ValueNoCheck (COLUMNNAME_DD_NetworkDistributionLine_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_DD_NetworkDistributionLine_ID, Integer.valueOf(DD_NetworkDistributionLine_ID));
	}

	/** Get Network Distribution Line.
		@return Network Distribution Line	  */
	public int getDD_NetworkDistributionLine_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_DD_NetworkDistributionLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set DD_NetworkDistributionLine_UU.
		@param DD_NetworkDistributionLine_UU DD_NetworkDistributionLine_UU
	*/
	public void setDD_NetworkDistributionLine_UU (String DD_NetworkDistributionLine_UU)
	{
		set_Value (COLUMNNAME_DD_NetworkDistributionLine_UU, DD_NetworkDistributionLine_UU);
	}

	/** Get DD_NetworkDistributionLine_UU.
		@return DD_NetworkDistributionLine_UU	  */
	public String getDD_NetworkDistributionLine_UU()
	{
		return (String)get_Value(COLUMNNAME_DD_NetworkDistributionLine_UU);
	}

	public org.eevolution.model.I_DD_NetworkDistribution getDD_NetworkDistribution() throws RuntimeException
	{
		return (org.eevolution.model.I_DD_NetworkDistribution)MTable.get(getCtx(), org.eevolution.model.I_DD_NetworkDistribution.Table_ID)
			.getPO(getDD_NetworkDistribution_ID(), get_TrxName());
	}

	/** Set Network Distribution.
		@param DD_NetworkDistribution_ID Network Distribution
	*/
	public void setDD_NetworkDistribution_ID (int DD_NetworkDistribution_ID)
	{
		if (DD_NetworkDistribution_ID < 1)
			set_ValueNoCheck (COLUMNNAME_DD_NetworkDistribution_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_DD_NetworkDistribution_ID, Integer.valueOf(DD_NetworkDistribution_ID));
	}

	/** Get Network Distribution.
		@return Network Distribution	  */
	public int getDD_NetworkDistribution_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_DD_NetworkDistribution_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_M_Shipper getM_Shipper() throws RuntimeException
	{
		return (org.compiere.model.I_M_Shipper)MTable.get(getCtx(), org.compiere.model.I_M_Shipper.Table_ID)
			.getPO(getM_Shipper_ID(), get_TrxName());
	}

	/** Set Shipper.
		@param M_Shipper_ID Method or manner of product delivery
	*/
	public void setM_Shipper_ID (int M_Shipper_ID)
	{
		if (M_Shipper_ID < 1)
			set_Value (COLUMNNAME_M_Shipper_ID, null);
		else
			set_Value (COLUMNNAME_M_Shipper_ID, Integer.valueOf(M_Shipper_ID));
	}

	/** Get Shipper.
		@return Method or manner of product delivery
	  */
	public int getM_Shipper_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Shipper_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_M_Warehouse getM_WarehouseSource() throws RuntimeException
	{
		return (org.compiere.model.I_M_Warehouse)MTable.get(getCtx(), org.compiere.model.I_M_Warehouse.Table_ID)
			.getPO(getM_WarehouseSource_ID(), get_TrxName());
	}

	/** Set Source Warehouse.
		@param M_WarehouseSource_ID Optional Warehouse to replenish from
	*/
	public void setM_WarehouseSource_ID (int M_WarehouseSource_ID)
	{
		if (M_WarehouseSource_ID < 1)
			set_Value (COLUMNNAME_M_WarehouseSource_ID, null);
		else
			set_Value (COLUMNNAME_M_WarehouseSource_ID, Integer.valueOf(M_WarehouseSource_ID));
	}

	/** Get Source Warehouse.
		@return Optional Warehouse to replenish from
	  */
	public int getM_WarehouseSource_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_WarehouseSource_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_M_Warehouse getM_Warehouse() throws RuntimeException
	{
		return (org.compiere.model.I_M_Warehouse)MTable.get(getCtx(), org.compiere.model.I_M_Warehouse.Table_ID)
			.getPO(getM_Warehouse_ID(), get_TrxName());
	}

	/** Set Warehouse.
		@param M_Warehouse_ID Storage Warehouse and Service Point
	*/
	public void setM_Warehouse_ID (int M_Warehouse_ID)
	{
		if (M_Warehouse_ID < 1)
			set_Value (COLUMNNAME_M_Warehouse_ID, null);
		else
			set_Value (COLUMNNAME_M_Warehouse_ID, Integer.valueOf(M_Warehouse_ID));
	}

	/** Get Warehouse.
		@return Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Warehouse_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Percent.
		@param Percent Percentage
	*/
	public void setPercent (BigDecimal Percent)
	{
		set_Value (COLUMNNAME_Percent, Percent);
	}

	/** Get Percent.
		@return Percentage
	  */
	public BigDecimal getPercent()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Percent);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Relative Priority.
		@param PriorityNo Where inventory should be picked from first
	*/
	public void setPriorityNo (int PriorityNo)
	{
		set_Value (COLUMNNAME_PriorityNo, Integer.valueOf(PriorityNo));
	}

	/** Get Relative Priority.
		@return Where inventory should be picked from first
	  */
	public int getPriorityNo()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PriorityNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Transfer Time.
		@param TransfertTime Transfer Time
	*/
	public void setTransfertTime (BigDecimal TransfertTime)
	{
		set_Value (COLUMNNAME_TransfertTime, TransfertTime);
	}

	/** Get Transfer Time.
		@return Transfer Time	  */
	public BigDecimal getTransfertTime()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TransfertTime);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valid from.
		@param ValidFrom Valid from including this date (first day)
	*/
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom()
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}

	/** Set Valid to.
		@param ValidTo Valid to including this date (last day)
	*/
	public void setValidTo (Timestamp ValidTo)
	{
		set_Value (COLUMNNAME_ValidTo, ValidTo);
	}

	/** Get Valid to.
		@return Valid to including this date (last day)
	  */
	public Timestamp getValidTo()
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidTo);
	}
}