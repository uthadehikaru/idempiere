/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.report;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.X_PA_ReportColumn;
import org.compiere.util.Util;

/**
 *  Financial Report Column Model
 *
 *  @author Jorg Janke
 *  @version $Id: MReportColumn.java,v 1.3 2006/08/03 22:16:52 jjanke Exp $
 */
public class MReportColumn extends X_PA_ReportColumn
{
	/**
	 * generated serial id
	 */
	private static final long serialVersionUID = 2584173320087743126L;

    /**
     * UUID based Constructor
     * @param ctx  Context
     * @param PA_ReportColumn_UU  UUID key
     * @param trxName Transaction
     */
    public MReportColumn(Properties ctx, String PA_ReportColumn_UU, String trxName) {
        super(ctx, PA_ReportColumn_UU, trxName);
		if (Util.isEmpty(PA_ReportColumn_UU))
			setInitialDefaults();
    }

	/**
	 * 	Constructor
	 * 	@param ctx context
	 * 	@param PA_ReportColumn_ID id
	 * 	@param trxName transaction
	 */
	public MReportColumn (Properties ctx, int PA_ReportColumn_ID, String trxName)
	{
		super (ctx, PA_ReportColumn_ID, trxName);
		if (PA_ReportColumn_ID == 0)
			setInitialDefaults();
	}	//	MReportColumn

	/**
	 * Set the initial defaults for a new record
	 */
	private void setInitialDefaults() {
		setIsPrinted (true);
		setSeqNo (0);
	}

	/**
	 * 	Constructor
	 * 	@param ctx context
	 * 	@param rs ResultSet to load from
	 * 	@param trxName transaction
	 */
	public MReportColumn (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MReportColumn

	/**
	 * 	Get Column SQL Select Clause.
	 * 	@param withSum with SUM() function
	 * 	@return column clause for select - AmtAcctCR+AmtAcctDR/etc or "null" if not defined
	 */
	public String getSelectClause (boolean withSum)
	{
		String amountType = getPAAmountType();	//	first character
		StringBuilder sb = new StringBuilder();
		if (withSum)
			sb.append("SUM(");
		if (PAAMOUNTTYPE_BalanceExpectedSign.equals(amountType))
			sb.append("acctBalance(Account_ID,AmtAcctDr,AmtAcctCr)");
		else if ( PAAMOUNTTYPE_BalanceAccountedSign.equals(amountType) )
			sb.append("AmtAcctDr-AmtAcctCr");
		else if (PAAMOUNTTYPE_CreditOnly.equals(amountType))
			sb.append("AmtAcctCr");
		else if (PAAMOUNTTYPE_DebitOnly.equals(amountType))
			sb.append("AmtAcctDr");
		else if (PAAMOUNTTYPE_QuantityAccountedSign.equals(amountType))
			sb.append("Qty");
		else if (PAAMOUNTTYPE_QuantityExpectedSign.equals(amountType))
			sb.append("acctBalance(Account_ID,Qty,0)");
		else
		{
			log.log(Level.SEVERE, "AmountType=" + getPAAmountType () + ", at=" + amountType);
			return "NULL";
		}
		if (withSum)
			sb.append(")");
		return sb.toString();
	}	//	getSelectClause

	/**
	 * 	Is it PAPERIODTYPE_Period
	 * 	@return true if PAPERIODTYPE_Period
	 */
	public boolean isPeriod()
	{
		String pt = getPAPeriodType();
		if (pt == null)
			return false;
		return PAPERIODTYPE_Period.equals(pt);
	}	//	isPeriod

	/**
	 * 	Is it PAPERIODTYPE_Year
	 * 	@return true if PAPERIODTYPE_Year
	 */
	public boolean isYear()
	{
		String pt = getPAPeriodType();
		if (pt == null)
			return false;
		return PAPERIODTYPE_Year.equals(pt);
	}	//	isYear

	/**
	 * 	Is it PAPERIODTYPE_Total
	 * 	@return true if PAPERIODTYPE_Total
	 */
	public boolean isTotal()
	{
		String pt = getPAPeriodType();
		if (pt == null)
			return false;
		return PAPERIODTYPE_Total.equals(pt);
	}	//	isTotalBalance

	/**
	 * Is it PAPERIODTYPE_Natural<br/>
	 * Natural balance means year balance for profit and loss a/c, total balance for balance sheet account
	 * @return true if Natural Balance Amount Type (PAPERIODTYPE_Natural)
	 */
	public boolean isNatural() {
		String pt = getPAPeriodType();
		if (pt == null)
			return false;
		return PAPERIODTYPE_Natural.equals(pt);
	}

	/**
	 * 	Get Segment Value Where Clause
	 * 	@param PA_Hierarchy_ID hierarchy
	 * 	@return where clause
	 */
	public String getWhereClause(int PA_Hierarchy_ID)
	{
		if (!isColumnTypeSegmentValue())
			return "";
		
		String et = getElementType();
		//	ID for Tree Leaf Value
		int ID = 0;
		//
		if (MReportColumn.ELEMENTTYPE_Account.equals(et))
			ID = getC_ElementValue_ID();
		else if (MReportColumn.ELEMENTTYPE_Activity.equals(et))
			ID = getC_Activity_ID();
		else if (MReportColumn.ELEMENTTYPE_BPartner.equals(et))
			ID = getC_BPartner_ID();
		else if (MReportColumn.ELEMENTTYPE_Campaign.equals(et))
			ID = getC_Campaign_ID();
		else if (MReportColumn.ELEMENTTYPE_LocationFrom.equals(et))
			ID = getC_Location_ID();
		else if (MReportColumn.ELEMENTTYPE_LocationTo.equals(et))
			ID = getC_Location_ID();
		else if (MReportColumn.ELEMENTTYPE_Organization.equals(et))
			ID = getOrg_ID();
		else if (MReportColumn.ELEMENTTYPE_Product.equals(et))
			ID = getM_Product_ID();
		else if (MReportColumn.ELEMENTTYPE_Project.equals(et))
			ID = getC_Project_ID();
		else if (MReportColumn.ELEMENTTYPE_SalesRegion.equals(et))
			ID = getC_SalesRegion_ID();
		else if (MReportColumn.ELEMENTTYPE_OrgTrx.equals(et))
			ID = getOrg_ID();	//	(re)uses Org_ID
		else if (MReportColumn.ELEMENTTYPE_UserElementList1.equals(et))
			ID = getC_ElementValue_ID();
		else if (MReportColumn.ELEMENTTYPE_UserElementList2.equals(et))
			ID = getC_ElementValue_ID();
		else if (MReportColumn.ELEMENTTYPE_UserColumn1.equals(et))
			return " AND UserElement1_ID="+getUserElement1_ID(); // Not Tree
		else if (MReportColumn.ELEMENTTYPE_UserColumn2.equals(et))
			return " AND UserElement2_ID="+getUserElement2_ID(); // Not Tree
		// Financial Report Source with Type Combination
		else if (MReportColumn.ELEMENTTYPE_Combination.equals(et))
			return getWhereCombination(PA_Hierarchy_ID);
		else
			log.warning("Unsupported Element Type=" + et);

		if (ID == 0)
		{
			if (log.isLoggable(Level.FINE)) log.fine("No Restrictions - No ID for EntityType=" + et);
			return "";
		}
				
		return " AND " + MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, et, ID);
	}	//	getWhereClause
	
	/**
	 * Get where clause for the combination type
	 * @param PA_Hierarchy_ID
	 * @return where clause
	 */
	private String getWhereCombination(int PA_Hierarchy_ID) {
		StringBuilder whcomb = new StringBuilder();
		if (getC_ElementValue_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_Account, getC_ElementValue_ID());
			if (isIncludeNullsElementValue())
				whcomb.append(" AND (Account_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsElementValue())
				whcomb.append(" AND Account_ID IS NULL");

		if (getC_Activity_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_Activity, getC_Activity_ID());
			if (isIncludeNullsActivity())
				whcomb.append(" AND (C_Activity_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsActivity())
				whcomb.append(" AND C_Activity_ID IS NULL");

		if (getC_BPartner_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_BPartner, getC_BPartner_ID());
			if (isIncludeNullsBPartner())
				whcomb.append(" AND (C_BPartner_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsBPartner())
				whcomb.append(" AND C_BPartner_ID IS NULL");

		if (getC_Campaign_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_Campaign, getC_Campaign_ID());
			if (isIncludeNullsCampaign())
				whcomb.append(" AND (C_Campaign_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsCampaign())
				whcomb.append(" AND C_Campaign_ID IS NULL");

		if (getC_Location_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_LocationFrom, getC_Location_ID());
			if (isIncludeNullsLocation())
				whcomb.append(" AND (C_LocFrom_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsLocation())
				whcomb.append(" AND C_LocFrom_ID IS NULL");

		if (getOrg_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_Organization, getOrg_ID());
			if (isIncludeNullsOrg())
				whcomb.append(" AND (AD_Org_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsOrg())
				whcomb.append(" AND AD_Org_ID IS NULL");
		
		if (getAD_OrgTrx_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_OrgTrx, getAD_OrgTrx_ID());
			if (isIncludeNullsOrgTrx())
				whcomb.append(" AND (AD_OrgTrx_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsOrgTrx())
				whcomb.append(" AND AD_OrgTrx_ID IS NULL");
		

		if (getM_Product_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_Product, getM_Product_ID());
			if (isIncludeNullsProduct())
				whcomb.append(" AND (M_Product_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsProduct())
				whcomb.append(" AND M_Product_ID IS NULL");

		if (getC_Project_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_Project, getC_Project_ID());
			if (isIncludeNullsProject())
				whcomb.append(" AND (C_Project_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsProject())
				whcomb.append(" AND C_Project_ID IS NULL");

		if (getC_SalesRegion_ID() > 0) {
			String whtree = MReportTree.getWhereClause (getCtx(), PA_Hierarchy_ID, MReportColumn.ELEMENTTYPE_SalesRegion, getC_SalesRegion_ID());
			if (isIncludeNullsSalesRegion())
				whcomb.append(" AND (C_SalesRegion_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsSalesRegion())
				whcomb.append(" AND C_SalesRegion_ID IS NULL");

		if (getUserElement1_ID() > 0) {
			String whtree = "UserElement1_ID=" + getUserElement1_ID(); // No Tree
			if (isIncludeNullsUserElement1())
				whcomb.append(" AND (UserElement1_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsUserElement1())
				whcomb.append(" AND UserElement1_ID IS NULL");

		if (getUserElement2_ID() > 0) {
			String whtree = "UserElement2_ID=" + getUserElement2_ID(); // No Tree
			if (isIncludeNullsUserElement2())
				whcomb.append(" AND (UserElement2_ID IS NULL OR ").append(whtree).append(")");
			else
				whcomb.append(" AND ").append(whtree);
		} else
			if (isIncludeNullsUserElement2())
				whcomb.append(" AND UserElement2_ID IS NULL");

		return whcomb.toString();
	}
	
	/**
	 * 	Get String Representation
	 * 	@return	String Representation
	 */
	 @Override
	public String toString ()
	{
		StringBuilder sb = new StringBuilder ("MReportColumn[")
			.append(get_ID()).append(" - ").append(getName()).append(" - ").append(getDescription())
			.append(", SeqNo=").append(getSeqNo()).append(", AmountType=").append(getPAAmountType())
			.append(", PeriodType=").append(getPAPeriodType())
			.append(", CurrencyType=").append(getCurrencyType()).append("/").append(getC_Currency_ID())
			.append(" - ColumnType=").append(getColumnType());
		if (isColumnTypeCalculation())
			sb.append(" - Calculation=").append(getCalculationType())
				.append(" - ").append(getOper_1_ID()).append(" - ").append(getOper_2_ID());
		else if (isColumnTypeRelativePeriod())
			sb.append(" - Period=").append(getRelativePeriod());
		else
			sb.append(" - SegmentValue ElementType=").append(getElementType());
		sb.append ("]");
		return sb.toString ();
	}	//	toString

	/**
	 * 	Is Calculation Type Range
	 *	@return true if range
	 */
	public boolean isCalculationTypeRange()
	{
		return CALCULATIONTYPE_AddRangeOp1ToOp2.equals(getCalculationType());
	}
	/**
	 * 	Is Calculation Type Add
	 *	@return true if add
	 */
	public boolean isCalculationTypeAdd()
	{
		return CALCULATIONTYPE_AddOp1PlusOp2.equals(getCalculationType());
	}
	/**
	 * 	Is Calculation Type Subtract
	 *	@return true if subtract
	 */
	public boolean isCalculationTypeSubtract()
	{
		return CALCULATIONTYPE_SubtractOp1_Op2.equals(getCalculationType());
	}
	/**
	 * 	Is Calculation Type Percent
	 *	@return true if percent
	 */
	public boolean isCalculationTypePercent()
	{
		return CALCULATIONTYPE_PercentageOp1OfOp2.equals(getCalculationType());
	}

	/**
	 * 	Is Column Type Calculation
	 *	@return true if calculation
	 */
	public boolean isColumnTypeCalculation()
	{
		return COLUMNTYPE_Calculation.equals(getColumnType());
	}
	
	/**
	 * 	Is Column Type Relative Period
	 *	@return true if relative period
	 */
	public boolean isColumnTypeRelativePeriod()
	{
		return COLUMNTYPE_RelativePeriod.equals(getColumnType());
	}
	
	/**
	 * 	Is Column Type Segment Value
	 *	@return true if segment value
	 */
	public boolean isColumnTypeSegmentValue()
	{
		return COLUMNTYPE_SegmentValue.equals(getColumnType());
	}
	/**
	 * 	Get Relative Period As Int
	 *	@return relative period
	 */
	public int getRelativePeriodAsInt ()
	{
		BigDecimal bd = getRelativePeriod();
		if (bd == null)
			return 0;
		return bd.intValue();
	}	//	getRelativePeriodAsInt

	/**
	 *	Get Relative Period
	 *	@return relative period
	 */
	@Override
	public BigDecimal getRelativePeriod()
	{
		if (getColumnType().equals(COLUMNTYPE_RelativePeriod)
			|| getColumnType().equals(COLUMNTYPE_SegmentValue))
			return super.getRelativePeriod();
		return null;
	}	//	getRelativePeriod

	/**
	 * Get Relative Period To
	 * 
	 * @return relative period to
	 */
	@Override
	public BigDecimal getRelativePeriodTo()
	{
		if (getColumnType().equals(COLUMNTYPE_RelativePeriod) || getColumnType().equals(COLUMNTYPE_SegmentValue))
			return (BigDecimal) get_Value(COLUMNNAME_RelativePeriodTo);
		return null;
	} // getRelativePeriodTo

	/**
	 *	Get Element Type
	 */
	@Override
	public String getElementType()
	{
		if (getColumnType().equals(COLUMNTYPE_SegmentValue))
			return super.getElementType();
		return null;
	}	//	getElementType
	
	/**
	 *	Get Calculation Type
	 */
	@Override
	public String getCalculationType()
	{
		if (getColumnType().equals(COLUMNTYPE_Calculation))
			return super.getCalculationType();
		return null;
	}	//	getCalculationType
	
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		//	Validate Column Type
		String ct = getColumnType();
		if (ct.equals(COLUMNTYPE_RelativePeriod))
		{
			setElementType(null);
			setCalculationType(null);
		}
		else if (ct.equals(COLUMNTYPE_Calculation))
		{
			setElementType(null);
			setRelativePeriod(null);
		}
		else if (ct.equals(COLUMNTYPE_SegmentValue))
		{
			setCalculationType(null);
		}
		return true;
	}	//	beforeSave

	/**
	 * 	Create a new Report Column instance from source
	 * 	@param ctx context
	 * 	@param AD_Client_ID parent
	 * 	@param AD_Org_ID parent
	 * 	@param PA_ReportColumnSet_ID parent
	 * 	@param source source to copy from
	 * 	@param trxName transaction
	 * 	@return new Report Column instance
	 */
	public static MReportColumn copy (Properties ctx, int AD_Client_ID, int AD_Org_ID, 
		int PA_ReportColumnSet_ID, MReportColumn source, String trxName)
	{
		MReportColumn retValue = new MReportColumn (ctx, 0, trxName);
		MReportColumn.copyValues(source, retValue, AD_Client_ID, AD_Org_ID);
		//
		retValue.setPA_ReportColumnSet_ID(PA_ReportColumnSet_ID);	//	parent
		retValue.setOper_1_ID(0);
		retValue.setOper_2_ID(0);
		return retValue;
	}	//	copy
}	//	MReportColumn
