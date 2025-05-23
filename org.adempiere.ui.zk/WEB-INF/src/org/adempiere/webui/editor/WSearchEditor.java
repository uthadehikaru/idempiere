/******************************************************************************
 * Product: Posterita Ajax UI 												  *
 * Copyright (C) 2007 Posterita Ltd.  All Rights Reserved.                    *
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
 * Posterita Ltd., 3, Draper Avenue, Quatre Bornes, Mauritius                 *
 * or via info@posterita.org or http://www.posterita.org/                     *
 *****************************************************************************/

package org.adempiere.webui.editor;

import static org.compiere.model.SystemIDs.COLUMN_C_INVOICELINE_M_PRODUCT_ID;
import static org.compiere.model.SystemIDs.COLUMN_C_INVOICE_C_BPARTNER_ID;

import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.webui.ClientInfo;
import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.ValuePreference;
import org.adempiere.webui.adwindow.ADWindow;
import org.adempiere.webui.adwindow.ADWindowContent;
import org.adempiere.webui.adwindow.QuickGridTabRowRenderer;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.ComboEditorBox;
import org.adempiere.webui.event.ContextMenuEvent;
import org.adempiere.webui.event.ContextMenuListener;
import org.adempiere.webui.event.DialogEvents;
import org.adempiere.webui.event.DrillEvent.DrillData;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.factory.InfoManager;
import org.adempiere.webui.grid.WQuickEntry;
import org.adempiere.webui.info.InfoWindow;
import org.adempiere.webui.panel.IHelpContext;
import org.adempiere.webui.panel.InfoPanel;
import org.adempiere.webui.part.WindowContainer;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.util.Icon;
import org.adempiere.webui.window.WFieldRecordInfo;
import org.compiere.model.GridField;
import org.compiere.model.Lookup;
import org.compiere.model.MColumn;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MQuery;
import org.compiere.model.MRole;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.X_AD_CtxHelp;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.NamePair;
import org.compiere.util.Util;
import org.zkoss.zk.au.out.AuScript;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.Page;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.event.InputEvent;
import org.zkoss.zk.ui.util.Clients;

/**
 * Default editor for {@link DisplayType#Search} and {@link DisplayType#SearchUU}.<br/>
 * Implemented with {@link CustomSearchBox} component and {@link InfoPanel}, {@link InfoWindow} dialog.
 *
 * @author Ashley G Ramdass
 *
 */
public class WSearchEditor extends WEditor implements ContextMenuListener, ValueChangeListener, IZoomableEditor
{
	private static final int DEFAULT_MAX_AUTO_COMPLETE_ROWS = 500;	
	private static final String[] LISTENER_EVENTS = {Events.ON_CLICK, Events.ON_CHANGE, Events.ON_OK};
	/** Boolean component attribute to store whether info panel is open */ 
	public static final String		ATTRIBUTE_IS_INFO_PANEL_OPEN	= "ATTRIBUTE_IS_INFO_PANEL_OPEN";
	protected Lookup 				lookup;
	/** Reference/target table name */
	private String				m_tableName = null;
	/** Reference/target key column name */
	private String				m_keyColumnName = null;
	/** Source/field column name */
	private String 				columnName;
	/** ID or UUID value */
    private Object              value;
    protected InfoPanel			infoPanel = null;
    /** Image URL or font icon sclass for CustomSearchbox button */
	private String imageUrl;
	/** Model for auto complete search */
	private InfoListSubModel listModel = null;

	private static final CLogger log = CLogger.getCLogger(WSearchEditor.class);

	private static final String IN_PROGRESS_IMAGE = "~./zk/img/progress3.gif";
	
	/** ADWindow instance that own this editor */
	protected ADWindow adwindow;
	private EventListener<InputEvent> autoCompleteListener;

	protected boolean multipleSelection = false;

	/**
	 * 
	 * @param gridField
	 */
	public WSearchEditor (GridField gridField)
	{
		this(gridField, false, null);
	}
	
	/**
	 * 
	 * @param gridField
	 * @param tableEditor
	 * @param editorConfiguration
	 */
	public WSearchEditor (GridField gridField, boolean tableEditor, IEditorConfiguration editorConfiguration)
	{
		super(new CustomSearchBox(), gridField, tableEditor, editorConfiguration);

		lookup = gridField.getLookup();

		if (lookup != null)
			columnName = lookup.getColumnName();

		init();
		getComponent().setAttribute(ATTRIBUTE_IS_INFO_PANEL_OPEN, false);
		multipleSelection = true;
	}


    @Override
	public ComboEditorBox getComponent() {
		return (ComboEditorBox) super.getComponent();
	}

	@Override
	public boolean isReadWrite() {
		return getComponent().isEnabled();
	}


	@Override
	public void setReadWrite(boolean readWrite) {
		getComponent().setEnabled(readWrite);
	}


	/**
	 * Constructor for use if a grid field is unavailable
	 *
	 * @param lookup		Store of selectable data
	 * @param label			field label
	 * @param description	description of component
	 * @param mandatory		whether field is mandatory
	 * @param readonly		whether or not the editor is read only
	 * @param updateable	whether the editor contents can be changed
	 */
	public WSearchEditor (Lookup lookup, String label, String description, boolean mandatory, boolean readonly, boolean updateable)
	{
		super(new CustomSearchBox() , label, description, mandatory, readonly, updateable);

		if (lookup == null)
		{
			throw new IllegalArgumentException("Lookup cannot be null");
		}

		this.lookup = lookup;
        columnName = lookup.getColumnName();
		super.setColumnName(columnName);
		init();
		multipleSelection = false;
	}

	/**
	 * 
	 * @param columnName
	 * @param mandatory
	 * @param readonly
	 * @param updateable
	 * @param lookup
	 */
	public WSearchEditor(String columnName, boolean mandatory, boolean readonly, boolean updateable,
    		Lookup lookup)
	{
		super(new CustomSearchBox(), null, null, mandatory, readonly, updateable);

		if (lookup == null)
		{
			throw new IllegalArgumentException("Lookup cannot be null");
		}

		this.lookup = lookup;
        this.columnName = columnName;
		super.setColumnName(columnName);
		init();
		multipleSelection = false;
	}


	/**
     * Initialise component and context menu
	 */
	private void init()
	{

		columnName = this.getColumnName();

		if (Util.isEmpty(m_tableName))
			setTableAndKeyColumn();
		
		boolean enableDrill = false;
		if(getGridField() != null && getGridField().getGridTab() != null && getGridField().getColumnName().endsWith("_ID")
				&& MRole.getDefault().isCanReport(getGridField().getGridTab().getAD_Table_ID()))
			enableDrill = true;
		
		if (m_tableName.equals("C_BPartner"))
		{
			popupMenu = new WEditorPopupMenu(true, true, isShowPreference(), true, true, false, enableDrill, lookup);
			if (ThemeManager.isUseFontIconForImage())
				imageUrl = Icon.getIconSclass(Icon.BPARTNER);
			else
				imageUrl = ThemeManager.getThemeResource("images/BPartner16.png");
		}
		else if (m_tableName.equals("M_Product"))
		{
			popupMenu = new WEditorPopupMenu(true, true, isShowPreference(), false, false, false, enableDrill, lookup);
			if (ThemeManager.isUseFontIconForImage())
				imageUrl = Icon.getIconSclass(Icon.PRODUCT);
			else
				imageUrl = ThemeManager.getThemeResource("images/Product16.png");
		}
		else
		{
			popupMenu = new WEditorPopupMenu(true, true, isShowPreference(), false, false, false, enableDrill, lookup);
			if (ThemeManager.isUseFontIconForImage())
				imageUrl = Icon.getIconSclass(Icon.MORE);
			else
				imageUrl = ThemeManager.getThemeResource("images/PickOpen16.png");
		}
		if (ThemeManager.isUseFontIconForImage())
			getComponent().getButton().setIconSclass(imageUrl);
		else
			getComponent().getButton().setImage(imageUrl);

		addChangeLogMenu(popupMenu);
		if (gridField != null)
			getComponent().getCombobox().setPlaceholder(gridField.getPlaceholder());
		
		if (gridField != null && gridField.isAutocomplete()) {
			enableAutoComplete();
		} else {
			getComponent().getCombobox().setAutodrop(false);
		}
		
		return;
	}

	/**
	 * Turn on auto complete for editor
	 */
	public void enableAutoComplete() {
		if (autoCompleteListener != null)
			return;
		
		if (m_tableName == null)
			setTableAndKeyColumn();
		listModel = new InfoListSubModel(lookup, gridField, m_tableName, m_keyColumnName);
		int maxRows = MSysConfig.getIntValue(MSysConfig.ZK_SEARCH_AUTO_COMPLETE_MAX_ROWS, DEFAULT_MAX_AUTO_COMPLETE_ROWS, Env.getAD_Client_ID(Env.getCtx()));
		getComponent().getCombobox().setModel(listModel.getSubModel(null, maxRows));
		
		autoCompleteListener = e -> {
				if (!e.isChangingBySelectBack()) {
					listModel.setWhereClause(getWhereClause());
					String s = e.getValue();					
					getComponent().getCombobox().setModel(listModel.getSubModel(s, maxRows));
				}
		};
		
		getComponent().getCombobox().addEventListener(Events.ON_CHANGING, autoCompleteListener);
		getComponent().getCombobox().setAutodrop(true);
	}

	/**
	 * Turn off auto complete for editor
	 */
	public void disableAutoComplete() {
		if (autoCompleteListener != null) {
			getComponent().getCombobox().removeEventListener(Events.ON_CHANGING, autoCompleteListener);
			getComponent().getCombobox().setAutodrop(false);
			getComponent().getCombobox().setModel(null);
			listModel = null;
			autoCompleteListener = null;
		}
	}
	
	@Override
	public void setValue(Object value)
	{
		Object curValue = this.value;
        this.value = value;
        if (value != null && !"".equals(String.valueOf(value)))
		{		
			NamePair namePair = lookup.get(value);
			if (namePair != null)
			{
				String text = namePair.toString();

	            if (text.startsWith("_"))
	            {
	                text = text.substring(1);
	            }
	            getComponent().setText(text);
			}
			else
            {
				if (value instanceof Integer && gridField != null && gridField.getDisplayType() != DisplayType.ID && 
						(gridTab==null || !gridTab.getTableModel().isImporting())) // for IDs is ok to be out of the list
				{
					//if it is problem with record lock, just keep value (no trigger change) and set field readonly
					MRole role = MRole.getDefault(Env.getCtx(), false);
					int refTableID = -1;
					if (gridTab != null) // fields process para don't represent a column ID
					{
						MColumn col = MColumn.get(Env.getCtx(), gridField.getAD_Column_ID());
						if (col.get_ID() > 0) {
							String refTable = col.getReferenceTableName();
							if (refTable != null) {
								MTable table = MTable.get(Env.getCtx(), refTable);
								refTableID = table.getAD_Table_ID();
							}
						}
					}
					if (refTableID > 0 && ! role.isRecordAccess(refTableID, (int)value, false))
					{
						setReadWrite(false);
					}
					else
					{
						getComponent().setText("");
						if (curValue == null)
							curValue = value;
						ValueChangeEvent changeEvent = new ValueChangeEvent(this, this.getColumnName(), curValue, null);
						super.fireValueChange(changeEvent);
						this.value = null;
					}
				}
			}
		}
		else
		{
			getComponent().setText("");
		}
		popupMenu.showDrillAssistant(value != null);
	}

	@Override
	public Object getValue()
	{
		return value;
	}

	@Override
	public String getDisplay()
	{
		return getComponent().getText();
	}

	@Override
	public void onEvent(Event e)
	{
		if (Events.ON_CHANGE.equals(e.getName()))
		{
			if (infoPanel != null)
		 	{
				infoPanel.detach();
		 	 	infoPanel = null;
		 	}
			// hsv: fix to when switch has text => empty text, don't show info panel
			if ("".equals(getComponent().getText().trim())){
				actionCombo(null);
				resetButtonState();
				return;
			}
			actionText(getComponent().getText());
		}
		else if ((Events.ON_OK.equals(e.getName()))) {
			// Do not allow to open info panel if component text is empty & belongs to quick form.
			boolean isQuickFormComp = false;
			if (getComponent().getAttribute(QuickGridTabRowRenderer.IS_QUICK_FORM_COMPONENT) != null)
				isQuickFormComp = (boolean) getComponent().getAttribute(QuickGridTabRowRenderer.IS_QUICK_FORM_COMPONENT);

			if (   (getComponent().getText() == null || getComponent().getText().length() == 0)
				&& !isQuickFormComp
				&& isReadWrite())
			{
				// open Info window
				if (infoPanel != null)
			 	{
					infoPanel.detach();
			 	 	infoPanel = null;
			 	}
				actionText(getComponent().getText());
			} else {
				actionRefresh(getValue());
			}
		}
		else if (Events.ON_CLICK.equals(e.getName()))
		{
			if (infoPanel != null)
			{
				infoPanel.detach();
				infoPanel = null;
			}
			actionButton("");
		}
	}

	/**
	 * Refresh editor value
	 * @param value
	 */
	protected void actionRefresh(Object value)
	{
    	setValue(value);
	}

	/**
	 * Zoom to window for reference/target table
	 */
	public void actionZoom()
	{
   		AEnv.actionZoom(lookup, getValue());
	}

	/**
	 * Zoom to window for reference/target table
	 * @param value
	 */
	private void actionZoom(Object value)
    {
        AEnv.actionZoom(lookup, value);
    }

	@Override
	public void onMenu(ContextMenuEvent evt)
	{
		if (WEditorPopupMenu.REQUERY_EVENT.equals(evt.getContextEvent()))
		{
			actionRefresh(getValue());
		}
		else if (WEditorPopupMenu.ZOOM_EVENT.equals(evt.getContextEvent()))
		{
			actionZoom();
		}
		else if (WEditorPopupMenu.PREFERENCE_EVENT.equals(evt.getContextEvent()))
		{
			if (isShowPreference())
				ValuePreference.start (getComponent(), this.getGridField(), getValue());
			return;
		}
		else if (WEditorPopupMenu.NEW_EVENT.equals(evt.getContextEvent()))
		{
			if (infoPanel != null)
			{
				infoPanel.detach();
				infoPanel = null;
			}
			actionQuickEntry(true);
		}
		else if (WEditorPopupMenu.UPDATE_EVENT.equals(evt.getContextEvent()))
		{
			if (infoPanel != null)
			{
				infoPanel.detach();
				infoPanel = null;
			}
			actionQuickEntry(false);
		}
		else if (WEditorPopupMenu.CHANGE_LOG_EVENT.equals(evt.getContextEvent()))
		{
			WFieldRecordInfo.start(gridField);
		}
		else if (WEditorPopupMenu.DRILL_EVENT.equals(evt.getContextEvent()))
		{
			actionDrill();
		}
	}

	/**
	 * Process text input from user
	 * @param text
	 */
	protected void actionText(String text)
	{
		//	Nothing entered
		if (text == null || text.length() == 0 || text.equals("%"))
		{
			actionButton(text);
			resetButtonState();
			return;
		}
		if (log.isLoggable(Level.CONFIG)) log.config(getColumnName() + " - " + text);

		Object id = null;
		
		if (m_tableName == null)	//	sets table name & key column
			setTableAndKeyColumn();
		
		// process input text with infopanel/infowindow
		final InfoPanel ip = InfoManager.create(lookup, gridField, m_tableName, m_keyColumnName, getComponent().getText(), multipleSelection, getWhereClause());
		if (ip != null && ip.loadedOK() && ip.getRowCount() == 1)
		{
			if (ip.getFirstRowKey() instanceof Integer)
			{
				Integer key = (Integer) ip.getFirstRowKey();
				if (key != null && key.intValue() > 0)
				{
					id = key.intValue();
				}
			}
			else
			{
				Object key = ip.getFirstRowKey();
				if (key != null && key.toString().length() > 0)
				{
					id = key.toString();
				}
			}

		}
		
		//	No (unique) result
		if (id == null || (id instanceof Integer && ((Integer) id).intValue() <= 0))
		{
			//m_value = null;	// force re-display
			if (ip != null && ip.loadedOK()) 
			{
				showInfoPanel(ip);
			}
			else
			{
				actionButton(getComponent().getText());
			}
			resetButtonState();
			return;
		}
		if (log.isLoggable(Level.FINE))
			log.fine(getColumnName() + " - Unique ID=" + id);

		actionCombo(id);          //  data binding
		focusNext();

		//safety check: if focus is going no where, focus back to self
		String uid = getComponent().getCombobox().getUuid();
		String script = "setTimeout(function(){try{let e = zk.Widget.$('#" + uid +
				"').$n(); if (jq(':focus').size() == 0) e.focus();} catch(error){}}, 100);";
		Clients.response(new AuScript(script));
		
		resetButtonState();
	}	//	actionText

	/**
	 * Open drill assistant dialog
	 */
	protected void actionDrill() {
		if(getGridField() == null || getGridField().getGridTab() == null)
    		return;
    	
		if(!m_keyColumnName.endsWith("_ID"))
    		return;
		MQuery query = new MQuery(m_tableName);
		query.addRestriction(m_keyColumnName, MQuery.EQUAL, value);
		int windowNo = getGridField().getGridTab().getWindowNo();
		DrillData data = new DrillData(query, m_keyColumnName, value, null, null);
		
		AEnv.actionDrill(data, windowNo);
	}
	
	/**
	 * Reset state of {@link CustomSearchBox} button to default
	 */
	protected void resetButtonState() {
		getComponent().getButton().setEnabled(true);
		if (ThemeManager.isUseFontIconForImage())
			getComponent().getButton().setIconSclass(imageUrl);
		else
			getComponent().getButton().setImage(imageUrl);
		getComponent().invalidate();
	}

	/**
	 * Process value from InfoPanel/InfoWindow.<br/>
	 * Fire ValueChangeEvent.
	 * @param value
	 */
	protected void actionCombo (Object value)
	{
		if (log.isLoggable(Level.FINE))
			log.fine("Value=" + value);
	
		try 
		{
			if (gridField != null)
				gridField.setLookupEditorSettingValue(true);
			
			ValueChangeEvent evt = new ValueChangeEvent(this, this.getColumnName(), getValue(), value);
			// -> ADTabpanel - valuechange
			fireValueChange(evt);
	
			//  is the value updated ?
			boolean updated = false;
			if (value instanceof Object[] && ((Object[])value).length > 0)
			{
				value = ((Object[])value)[0];
			}
	
			if (value == null && getValue() == null) {
				updated = true;
			} else if (value != null && value.equals(getValue())) {
				updated = true;
				getComponent().setText(lookup.getDisplay(value));
			}
			if (!updated)
			{
				setValue(value);
			}				
		} 
		finally 
		{
			if (gridField != null)
				gridField.setLookupEditorSettingValue(false);
		}
		
	}	//	actionCombo

	/**
	 *	Action - Special Quick Entry Screen
	 *  @param newRecord true if new record should be created
	 */
	protected void actionQuickEntry (boolean newRecord)
	{
		if(!getComponent().isEnabled())
			return;

		int zoomWindowId = -1;

		int Record_ID = 0;

		//  if update, get current value
		if (!newRecord)
		{
			if (value instanceof Integer)
				Record_ID = ((Integer)value).intValue();
			else if (value != null && "".compareTo(value.toString())!= 0)
				Record_ID = Integer.parseInt(value.toString());
		}

    	if (lookup.getColumnName() != null) {
    		String tableName = lookup.getColumnName().substring(0, lookup.getColumnName().indexOf("."));
    		int zoomWinID = Env.getZoomWindowID(MTable.getTable_ID(tableName), Record_ID, lookup.getWindowNo());
    		if (zoomWinID > 0)
    			zoomWindowId = zoomWinID;
    	}
    	
    	if (zoomWindowId < 0) {
    		zoomWindowId = gridField != null ? lookup.getZoom(Env.isSOTrx(Env.getCtx(), gridField.getWindowNo())) : lookup.getZoom(Env.isSOTrx(Env.getCtx()));
    	}

    	int tabNo = gridField != null && gridField.getGridTab() != null ? gridField.getGridTab().getTabNo() : 0;
    	final WQuickEntry vqe = new WQuickEntry(lookup.getWindowNo(), tabNo, zoomWindowId);
		if (vqe.getQuickFields()<=0)
			return;
		vqe.loadRecord (Record_ID);

		final int finalRecord_ID = Record_ID;
		vqe.addEventListener(DialogEvents.ON_WINDOW_CLOSE, new EventListener<Event>() {
			@Override
			public void onEvent(Event event) throws Exception {
				if (adwindow != null)
				{
					adwindow.getADWindowContent().hideBusyMask();
					adwindow = null;
				}
				// get result
				int result = vqe.getRecord_ID();

				if (result == 0					//	0 = not saved
					&& result == finalRecord_ID)	//	the same
					return;

				//  Maybe new Record - put in cache
				lookup.getDirect(Integer.valueOf(result), false, true);
				setValue(Integer.valueOf(result));
				actionCombo (Integer.valueOf(result));      //  data binding
				lookup.refresh();
			}
		});

		vqe.setSizable(true);
		adwindow = ADWindow.findADWindow(getComponent());
		if (adwindow != null && !ClientInfo.isMobile()) {
			ADWindowContent content = adwindow.getADWindowContent();				
			content.getComponent().getParent().appendChild(vqe);
			content.showBusyMask(vqe);
			LayoutUtils.openOverlappedWindow(content.getComponent().getParent(), vqe, "middle_center");
		} else {
			AEnv.showWindow(vqe);
		}
	}	//	actionQuickEntry

	/**
	 * Handle onClick event from {@link CustomSearchBox} button. 
	 * @param queryValue
	 */
	protected  void actionButton(String queryValue)
	{
		if (lookup == null)
			return;		//	leave button disabled

		/**
		 *  Three return options:
		 *  - Value Selected & OK pressed   => store result => result has value
		 *  - Cancel pressed                => store null   => result == null && cancelled
		 *  - Window closed                 -> ignore       => result == null && !cancalled
		 */

		//  Zoom / Validation
		String whereClause = getWhereClause();

		if (log.isLoggable(Level.FINE))
			log.fine(lookup.getColumnName() + ", Zoom=" + lookup.getZoom() + " (" + whereClause + ")");

		//  Replace Value with name if no value exists
		if (queryValue.length() == 0 && getComponent().getText().length() > 0)
			queryValue = getComponent().getText();

		if (m_tableName == null)	//	sets table name & key column
			setTableAndKeyColumn();

		final InfoPanel ip = InfoManager.create(lookup, gridField, m_tableName, m_keyColumnName, queryValue, multipleSelection, whereClause);
		if (ip != null)
			showInfoPanel(ip);
	}

	/**
	 * Open InfoPanel/InfoWindow dialog
	 * @param ip InfoPanel
	 */
	public void showInfoPanel(final InfoPanel ip) {
		ip.setVisible(true);
		ip.setStyle("border: 2px");
		ip.setClosable(true);
		ip.addValueChangeListener(this);
		infoPanel = ip;
		getComponent().setAttribute(ATTRIBUTE_IS_INFO_PANEL_OPEN, true);
		ip.addEventListener(DialogEvents.ON_WINDOW_CLOSE, new EventListener<Event>() {

			@Override
			public void onEvent(Event event) throws Exception {
				Component component = SessionManager.getAppDesktop().getActiveWindow();
				if (component instanceof IHelpContext)
					Events.sendEvent(new Event(WindowContainer.ON_WINDOW_CONTAINER_SELECTION_CHANGED_EVENT, component));
				else
					SessionManager.getAppDesktop().updateHelpContext(X_AD_CtxHelp.CTXTYPE_Home, 0);
				
				boolean cancelled = ip.isCancelled();
				Object[] result = ip.getSelectedKeys();

				infoPanel = null;
				//  Result
				if (result != null && result.length > 0)
				{
					//ensure data binding happen
					if (result.length > 1)
						actionCombo (result);
					else
						actionCombo (result[0]);
					focusNext();
				}
				else if (cancelled)
				{
					if (log.isLoggable(Level.CONFIG)) log.config(getColumnName() + " - Result = null (cancelled)");
					if (value != null) 
					{
						if (!lookup.getDisplay(value).equals(getComponent().getText())){
							getComponent().setText(lookup.getDisplay(value));
							
						}
					}else{
						getComponent().setText("");
						actionCombo(null);
					}
					getComponent().getCombobox().focus();
				}
				else
				{
					if (log.isLoggable(Level.CONFIG)) log.config(getColumnName() + " - Result = null (not cancelled)");
					getComponent().getCombobox().focus();
					getComponent().setAttribute(ATTRIBUTE_IS_INFO_PANEL_OPEN, false);
				}
			}
		});
		ip.setId(ip.getTitle()+"_"+ip.getWindowNo());
		AEnv.showWindow(ip);
	}

	/**
	 * Set {@link #m_tableName} and {@link #m_keyColumnName}.
	 */
	private void setTableAndKeyColumn() {
		if (lookup != null && lookup instanceof MLookup) {
			// foreign table defined in lookup
			m_keyColumnName = ((MLookup)lookup).getColumnName();
			if (m_keyColumnName.contains(".")) {
				m_tableName = m_keyColumnName.substring(0, m_keyColumnName.indexOf("."));
				m_keyColumnName = m_keyColumnName.substring(m_keyColumnName.indexOf(".")+1);
			} else {
				m_tableName = m_keyColumnName.substring(0, m_keyColumnName.length()-3);
			}
		} else if (getGridField() != null && getGridField().getGridTab() != null && getGridField().getAD_Column_ID() > 0) {
			// field - this search editor comes from a window, when it comes from process parameter it doesn't have a gridtab
			MColumn column = MColumn.get(Env.getCtx(), getGridField().getAD_Column_ID());
			m_tableName = column.getReferenceTableName();
			MTable table = MTable.get(Env.getCtx(), m_tableName);
			m_keyColumnName = table.getKeyColumns()[0];
		} else {
			// no field - the search editor is defined programmatically
			m_keyColumnName = getColumnName();
			m_tableName = m_keyColumnName.substring(0, m_keyColumnName.length()-3);
		}
		if (m_keyColumnName.equals("M_Product_ID")) {
			//	Reset
			Env.setContext(Env.getCtx(), lookup.getWindowNo(), Env.TAB_INFO, "M_Product_ID", "0");
			Env.setContext(Env.getCtx(), lookup.getWindowNo(), Env.TAB_INFO, "M_AttributeSetInstance_ID", "0");
			Env.setContext(Env.getCtx(), lookup.getWindowNo(), Env.TAB_INFO, "M_Locator_ID", "0");
		}
	}

	/**
	 * Parse where clause from lookup validation code.
	 * @return where clause
	 */
	private String getWhereClause()
	{
		String whereClause = "";

		if (lookup == null)
			return "";

		if (lookup.getZoomQuery() != null)
			whereClause = lookup.getZoomQuery().getWhereClause();

		String validation = lookup.getValidation();

		if (validation == null)
			validation = "";

		if (whereClause.length() == 0)
			whereClause = validation;
		else if (validation.length() > 0)
			whereClause += " AND " + validation;

		if (whereClause.indexOf('@') != -1)
		{
			String validated = Env.parseContext(Env.getCtx(), lookup.getWindowNo(), whereClause, false);

			if (validated.length() == 0)
				log.severe(getColumnName() + " - Cannot Parse=" + whereClause);
			else
			{
				if (log.isLoggable(Level.FINE))
					log.fine(getColumnName() + " - Parsed: " + validated);
				return validated;
			}
		}
		return whereClause;
	}	//	getWhereClause

	@Override
	public String[] getEvents()
    {
        return LISTENER_EVENTS;
    }

	@Override
	public void valueChange(ValueChangeEvent evt)
	{
        if ("zoom".equals(evt.getPropertyName()))
        {
            actionZoom(evt.getNewValue());
        }
        else
        {
        	if (evt.getNewValue() != null)
			{
				actionCombo(evt.getNewValue());
			}
        }

	}

	@Override
	public void setTableEditor(boolean b) {
		super.setTableEditor(b);
		getComponent().setTableEditorMode(b);
	}

	/**
	 * @return true if InfoPanel/InfoWindow dialog is active
	 */
	public boolean isShowingDialog (){
		return infoPanel != null;
	}
	
	/**
	 * Create new WSearhEditor instance for C_Invoice.C_BPartner_ID column.
	 * @param windowNo
	 * @return WSearchEditor
	 */
	public static WSearchEditor createBPartner(int windowNo) {
		int AD_Column_ID = COLUMN_C_INVOICE_C_BPARTNER_ID;    //  C_Invoice.C_BPartner_ID
		try
		{
			Lookup lookup = MLookupFactory.get (Env.getCtx(), windowNo,
				0, AD_Column_ID, DisplayType.Search);
			return new WSearchEditor ("C_BPartner_ID", false, false, true, lookup);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		return null;
	}

	/**
	 * Create new WSearchEditor instance for C_InvoiceLine.M_Product_ID column.
	 * @param windowNo
	 * @return WSearchEditor
	 */
	public static WSearchEditor createProduct(int windowNo) {
		int AD_Column_ID = COLUMN_C_INVOICELINE_M_PRODUCT_ID;    //  C_InvoiceLine.M_Product_ID
		try
		{
			Lookup lookup = MLookupFactory.get (Env.getCtx(), windowNo, 0,
				AD_Column_ID, DisplayType.Search);
			return new WSearchEditor("M_Product_ID", false, false, true, lookup);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		return null;
	}
		
	@Override
	public void dynamicDisplay(Properties ctx) {
		if (lookup instanceof MLookup) {
			((MLookup) lookup).getLookupInfo().ctx = ctx;
		}
		super.dynamicDisplay(ctx);
	}

	@Override
	public String getDisplayTextForGridView(Object value) {
		String s = super.getDisplayTextForGridView(value);
		if (s != null && ClientInfo.isMobile() && MSysConfig.getBooleanValue(MSysConfig.ZK_GRID_MOBILE_LINE_BREAK_AS_IDENTIFIER_SEPARATOR, true)) {
			String separator = MSysConfig.getValue(MSysConfig.IDENTIFIER_SEPARATOR, null, Env.getAD_Client_ID(Env.getCtx()));
			if (!Util.isEmpty(separator, true) && s.indexOf(separator) >= 0) {
				s = s.replace(separator, "\n");
			}
		}
		return s;
	}
	
	/**
	 * @return true if info window allow multiple selection
	 */
	public boolean isMultipleSelection() {
		return multipleSelection;
	}
	
	/**
	 * @param multipleSelection
	 */
	public void setMultipleSelection(boolean multipleSelection) {
		this.multipleSelection = multipleSelection;
	}
	
	/**
	 * Search box component 
	 */
	static class CustomSearchBox extends ComboEditorBox {

		/**
		 * generated serial id
		 */
		private static final long serialVersionUID = 7490301044763375829L;

		/**
		 * Set script for spin animation when editor is processing user input text
		 */
		@Override
		public void onPageAttached(Page newpage, Page oldpage) {
			super.onPageAttached(newpage, oldpage);
			if (newpage != null) {
				String w = "try{let btn=jq('#'+this.parent.uuid+' @button').zk.$();}catch(err){}";
				if (ThemeManager.isUseFontIconForImage()) {
					String sclass = "z-icon-spinner z-icon-spin";
					getCombobox().setWidgetListener("onChange", "try{"+w+"btn.setIconSclass('" + sclass + "');"
							+ "btn.setDisabled(true, {adbs: false, skip: false});}catch(err){}");
				} else {
					getCombobox().setWidgetListener("onChange", "try{"+w+"btn.setImage(\""
						+ Executions.getCurrent().encodeURL(IN_PROGRESS_IMAGE)+"\");"
						+ "btn.setDisabled(true, {adbs: false, skip: false});}catch(err){}");
				}
			}
		}

		@Override
		public void onPageDetached(Page page) {
			setWidgetListener("onChange", null);
			super.onPageDetached(page);
		}
		
	}	
}
