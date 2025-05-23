/******************************************************************************
 * Copyright (C) 2012 Heng Sin Low                                            *
 * Copyright (C) 2012 Trek Global                 							  *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempiere.webui.adwindow;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.adempiere.webui.AdempiereWebUI;
import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Menupopup;
import org.adempiere.webui.component.ToolBar;
import org.adempiere.webui.component.ToolBarButton;
import org.adempiere.webui.component.ZkCssHelper;
import org.adempiere.webui.event.ToolbarListener;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.theme.ITheme;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.util.Icon;
import org.adempiere.webui.window.WRecordInfo;
import org.compiere.model.DataStatusEvent;
import org.compiere.model.GridTab;
import org.compiere.model.MRole;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Util;
import org.zkoss.zk.au.out.AuScript;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.Page;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.event.KeyEvent;
import org.zkoss.zk.ui.util.Clients;
import org.zkoss.zul.Div;
import org.zkoss.zul.Hlayout;
import org.zkoss.zul.Menuitem;
import org.zkoss.zul.Window;

/**
 * Bread crumb component for AD Window.<br/>
 * Represent the hierarchical navigation path of a tab
 * @author hengsin
 */
public class BreadCrumb extends Div implements EventListener<Event> {

	/**
	 * Event echo after ON_MOUSE_OVER event.
	 */
	private static final String ON_MOUSE_OVER_ECHO_EVENT = "onMouseOverEcho";
	
	/**
	 * This is echo after some delay after ON_MOUSE_OUT event (to close linkPopup).
	 * Also use as attribute to allow a rapid ON_MOUSE_OVER event to cancel the delay ON_MOUSE_OUT_ECHO_EVENT, thus keeping linkPopup open.
	 **/
	private static final String ON_MOUSE_OUT_ECHO_EVENT = "onMouseOutEcho";

	/**
	 * generated serial id 
	 */
	private static final long serialVersionUID = 929253935475618911L;
	
	private static final String BTNPREFIX = "Btn";
	
	/** west layout for paths to a tab (for e.g "Business Partner > Location") **/
	private Hlayout layout;

	/** record navigation buttons **/
	private ToolBarButton btnFirst, btnPrevious, btnNext, btnLast, btnRecordInfo;
	
	/** Label:TabIndex. Link to other tabs at same level (i.e other child tabs of the same parent tab). **/
	private LinkedHashMap<String, String> links;

	@SuppressWarnings("unused")
	private int windowNo;
	
	/** BtnName:ToolBarButton. Map of all toolbar buttons. **/
	private HashMap<String, ToolBarButton> buttons = new HashMap<String, ToolBarButton>();

	/** Last DataStatusEvent from {@link AbstractADWindowContent#dataStatusChanged(DataStatusEvent)} **/
	private DataStatusEvent m_dse;

	/** Last data status text from {@link AbstractADWindowContent#dataStatusChanged(DataStatusEvent)} **/
	private String m_text;

	/** register ToolbarListener **/
	private ToolbarListener toolbarListener;

	/** east layout for record navigation buttons **/
	private Hlayout toolbarContainer;

	/** popup for link to other tabs at same level **/
	protected Menupopup linkPopup;

	private GridTab m_gridTab;

	/** AD Window content part that own this bread crumb **/
	private AbstractADWindowContent windowContent;

	/**
	 * @param windowContent 
	 * @param windowNo
	 */
	public BreadCrumb(AbstractADWindowContent windowContent, int windowNo) {
		this.windowContent = windowContent;
		this.windowNo = windowNo;
		layout = new Hlayout();
		layout.setValign("middle");
		this.appendChild(layout);
		layout.setSclass("adwindow-breadcrumb-paths");

		this.setVisible(false);
		this.setSclass("adwindow-breadcrumb");
				
		toolbarContainer = new Hlayout();
		toolbarContainer.setSclass("adwindow-breadcrumb-toolbar");
		this.appendChild(toolbarContainer);
		
		ToolBar toolbar = new ToolBar();
		toolbarContainer.appendChild(toolbar);		
		btnFirst = createButton("First", "First", "First");
		btnFirst.setTooltiptext(btnFirst.getTooltiptext()+"    Alt+Home");
		toolbar.appendChild(btnFirst);
        btnPrevious = createButton("Previous", "Previous", "Previous");
        btnPrevious.setTooltiptext(btnPrevious.getTooltiptext()+"    Alt+Left");
        toolbar.appendChild(btnPrevious);
        btnRecordInfo = new ToolBarButton();
        btnRecordInfo.setLabel("");
        btnRecordInfo.setTooltiptext(Util.cleanAmp(Msg.getMsg(Env.getCtx(), "Who")));
        btnRecordInfo.addEventListener(Events.ON_CLICK, this);
        btnRecordInfo.setSclass("breadcrumb-record-info link");
        btnRecordInfo.setId("recordInfo");
        toolbar.appendChild(btnRecordInfo);
        btnNext = createButton("Next", "Next", "Next");
        btnNext.setTooltiptext(btnNext.getTooltiptext()+"    Alt+Right");
        toolbar.appendChild(btnNext);
        btnLast = createButton("Last", "Last", "Last");
        btnLast.setTooltiptext(btnLast.getTooltiptext()+"    Alt+End");
        toolbar.appendChild(btnLast);

		setClientAttribute(AdempiereWebUI.WIDGET_INSTANCE_NAME, "breadcrumb");
		
		this.addEventListener(ON_MOUSE_OUT_ECHO_EVENT, this);
	}

	/**
	 * Set toolbar listener
	 * @param listener
	 */
	public void setToolbarListener(ToolbarListener listener) {
		this.toolbarListener = listener;
	}
	
	/**
	 * Add path for tab
	 * @param label path label
	 * @param id path id
	 * @param clickable true to add clickable {@link BreadCrumbLink}, false to add text label
	 */
	public void addPath(String label, String id, boolean clickable) {
		if (clickable) {
			BreadCrumbLink a = new BreadCrumbLink();
			a.setLabel(label);
			a.setId("breadcrumb-"+id+"-"+label);
			a.setPathId(id);
			a.addEventListener(Events.ON_CLICK, this);
			if (layout.getChildren().size() > 0) {
				Label symbol = new Label();
				symbol.setValue(" > ");
				layout.appendChild(symbol);
			}
			layout.appendChild(a);
		} else {
			Label pathLabel = new Label();
			pathLabel.setId("breadcrumb-"+id+"-"+label);
			pathLabel.setValue(label);
			if (layout.getChildren().size() > 0) {
				Label symbol = new Label();
				symbol.setValue(" > ");
				layout.appendChild(symbol);
			}
			pathLabel.setStyle("font-weight: bold");
			layout.appendChild(pathLabel);
		}
	}
	
	/**
	 * Get parent BreadCrumbLinks
	 * @return list of parent links
	 */
	public List<BreadCrumbLink> getParentLinks() {
		List<BreadCrumbLink> parents = new ArrayList<BreadCrumbLink>();
		for(Component component : layout.getChildren()) {
			if (component instanceof BreadCrumbLink)
				parents.add((BreadCrumbLink) component);
		}
		return parents;
	}
	
	/**
	 * Add links to other tabs at the same level
	 * @param links Label:TabIndex map
	 */
	public void addLinks(LinkedHashMap<String, String> links) {
		this.links = links;
		final Label pathLabel = (Label) layout.getChildren().get(layout.getChildren().size()-1);
		pathLabel.setStyle("cursor: pointer; font-weight: bold; padding-right: 10px;");
		EventListener<Event> listener = new EventListener<Event>() {
			@Override
			public void onEvent(Event event) throws Exception {
				if (linkPopup != null && linkPopup.getPage() != null && linkPopup.isVisible()) {
					if (event.getName().equals(Events.ON_MOUSE_OUT)) {
						linkPopup.setAttribute(ON_MOUSE_OUT_ECHO_EVENT, Boolean.TRUE);
						StringBuilder script = new StringBuilder("setTimeout(function(){let w=zk('#")
							.append(BreadCrumb.this.getUuid()).append("').$();")
							.append("let e=new zk.Event(w, '")
							.append(ON_MOUSE_OUT_ECHO_EVENT)
							.append("', null, {toServer:true});")
							.append("zAu.send(e);},500)");
						final AuScript response = new AuScript(script.toString());
						Clients.response(response);
					}
					return;
				}
				
				if (event.getName().equals(Events.ON_CLICK)) {
					if (linkPopup != null && linkPopup.getPage() != null)
						linkPopup.detach();
					linkPopup = new Menupopup();
					showLinksMenu(pathLabel);
				} else if (event.getName().equals(Events.ON_MOUSE_OVER)) {
					if (linkPopup == null || !linkPopup.isVisible()) {
						if (linkPopup != null && linkPopup.getPage() != null)
							linkPopup.detach();
						linkPopup = new Menupopup();
						StringBuilder script = new StringBuilder("setTimeout(function(){let w=zk('#")
							.append(event.getTarget().getUuid()).append("').$();")
							.append("let e=new zk.Event(w, '")
							.append(ON_MOUSE_OVER_ECHO_EVENT)
							.append("', null, {toServer:true});")
							.append("zAu.send(e);},500)");
						AuScript response = new AuScript(script.toString());
						Clients.response(response);
					}
				} else if (event.getName().equals(Events.ON_MOUSE_OUT)) {
					if (linkPopup != null && linkPopup.getPage() == null) {
						linkPopup = null;
					} 
				} else if (event.getName().equals(ON_MOUSE_OVER_ECHO_EVENT)) {
					if (linkPopup != null && linkPopup.getPage() == null) {
						showLinksMenu(pathLabel);
					}
				}
			}

			private void showLinksMenu(final Label pathLabel) {
				for(Map.Entry<String, String>entry : BreadCrumb.this.links.entrySet()) {
					final Menuitem item = new Menuitem();
					item.setLabel(entry.getValue());
					item.setValue(entry.getKey());
					item.addEventListener(Events.ON_CLICK, BreadCrumb.this);
					linkPopup.appendChild(item);
				}
				
				StringBuilder script = new StringBuilder("setTimeout(function(){let w=zk('#")
					.append(BreadCrumb.this.getUuid()).append("').$();")
					.append("let e=new zk.Event(w, '")
					.append(ON_MOUSE_OUT_ECHO_EVENT)
					.append("', null, {toServer:true});")
					.append("zAu.send(e);},500)");
				final AuScript response = new AuScript(script.toString());
				linkPopup.addEventListener(Events.ON_MOUSE_OUT, new EventListener<Event>() {
					@Override
					public void onEvent(Event event) throws Exception {
						if (linkPopup != null) {							
							linkPopup.setAttribute(ON_MOUSE_OUT_ECHO_EVENT, Boolean.TRUE);
							Clients.response(response);
						}
					}
				});
				linkPopup.addEventListener(Events.ON_MOUSE_OVER, new EventListener<Event>() {

					@Override
					public void onEvent(Event event) throws Exception {
						if (linkPopup != null && linkPopup.isVisible()) {
							linkPopup.removeAttribute(ON_MOUSE_OUT_ECHO_EVENT);
						}						
					}					
				});
				linkPopup.setPage(pathLabel.getPage());
				linkPopup.open(pathLabel, "after_start");
			}
		};
		pathLabel.addEventListener(Events.ON_CLICK, listener);
		pathLabel.addEventListener(Events.ON_MOUSE_OVER, listener);
		pathLabel.addEventListener(Events.ON_MOUSE_OUT, listener);
		pathLabel.addEventListener(ON_MOUSE_OVER_ECHO_EVENT, listener);
		if (ThemeManager.isUseFontIconForImage()) {
			pathLabel.setSclass("adwindow-breadcrumb-menu");
		} else {
			String imageUrl = Executions.getCurrent().encodeURL(ThemeManager.getThemeResource("images/downarrow.png"));		
			ZkCssHelper.appendStyle(pathLabel, "background: transparent url('" + imageUrl + "') no-repeat right center");
		}
	}

	@Override
	public void onEvent(Event event) throws Exception {
		if (event.getTarget() == btnRecordInfo) {
			if (m_dse == null
				|| m_dse.CreatedBy == null
				|| !MRole.getDefault().isShowPreference())
				return;

			String title = Msg.getMsg(Env.getCtx(), "Who") + m_text;
			WRecordInfo winfo = new WRecordInfo (title, m_dse, m_gridTab);
			winfo.addCallback(Window.AFTER_PAGE_DETACHED, t -> {
				ADWindow adwindow = ADWindow.findADWindow(BreadCrumb.this);
				if (adwindow != null)
					adwindow.getADWindowContent().focusToLastFocusEditor();
			});
		} else if (event.getTarget() == btnFirst) {
			if (toolbarListener != null)
				toolbarListener.onFirst();
		} else if (event.getTarget() == btnPrevious) {
			if (toolbarListener != null)
				toolbarListener.onPrevious();
		} else if (event.getTarget() == btnNext) {
			if (toolbarListener != null)
				toolbarListener.onNext();
		} else if (event.getTarget() == btnLast) {
			if (toolbarListener != null)
				toolbarListener.onLast();
		} else if (event.getName().equals(ON_MOUSE_OUT_ECHO_EVENT)) {
			if (linkPopup != null && linkPopup.getPage() != null && linkPopup.isVisible()
				&& linkPopup.getAttribute(ON_MOUSE_OUT_ECHO_EVENT) != null) {
				linkPopup.detach();
				linkPopup = null;
			}
		} else if (event.getName().equals(Events.ON_CTRL_KEY)) {
			if (!LayoutUtils.isReallyVisible(this)) return;

			// If Quick form is opened then prevent navigation keyEvent
			if (windowContent != null && windowContent.getOpenQuickFormTabs().size() > 0)
				return;

			if (windowContent != null && windowContent.isBlock())
				return;
			
			KeyEvent keyEvent = (KeyEvent) event;
			if (keyEvent.isAltKey()) {
				if (keyEvent.getKeyCode() == KeyEvent.LEFT) {
					if (toolbarListener != null) {
						toolbarListener.onPrevious();
					}
				} else if (keyEvent.getKeyCode() == KeyEvent.RIGHT) {
					if (toolbarListener != null) {
						toolbarListener.onNext();
					}
				} else if (keyEvent.getKeyCode() == KeyEvent.HOME) {
					if (toolbarListener != null) {
						toolbarListener.onFirst();
					}
				} else if (keyEvent.getKeyCode() == KeyEvent.END) {
					if (toolbarListener != null) {
						toolbarListener.onLast();
					}
				}
			}
		} else {
			Events.sendEvent(this, event);
		}
	}

	/**
	 * Remove all path and links
	 */
	public void reset() {
		layout.getChildren().clear();
		this.links = null;
	}

	/**
	 * Enable/disable first record and previous record toolbar button 
	 * @param enabled
	 */
    public void enableFirstNavigation(boolean enabled)
    {
        this.btnFirst.setDisabled(!enabled);
        this.btnPrevious.setDisabled(!enabled);
    }

    /**
     * Enable or disable the next record and last record toolbar button
     * @param enabled
     */
    public void enableLastNavigation(boolean enabled)
    {
        this.btnLast.setDisabled(!enabled);
        this.btnNext.setDisabled(!enabled);
    }

    /**
     * Create toolbar button.
     * @param name
     * @param image
     * @param tooltip
     * @return {@link ToolBarButton}
     */
	private ToolBarButton createButton(String name, String image, String tooltip)
    {
    	ToolBarButton btn = new ToolBarButton("");
        btn.setName(BTNPREFIX+name);
        btn.setId(name);
        Executions.createComponents(ThemeManager.getPreference(), this, null);
        String size = Env.getContext(Env.getCtx(), ITheme.ZK_TOOLBAR_BUTTON_SIZE);
    	String suffix = "24.png";
    	if (!Util.isEmpty(size)) 
    	{
    		suffix = size + ".png";
    	}
    	if (ThemeManager.isUseFontIconForImage())
    		btn.setIconSclass(Icon.getIconSclass(image+"Record"));
    	else
    		btn.setImage(ThemeManager.getThemeResource("images/"+image + suffix));
        btn.setTooltiptext(Msg.getMsg(Env.getCtx(),tooltip));
        btn.setSclass("breadcrumb-toolbar-button");
        
        buttons.put(name, btn);
        this.appendChild(btn);
        //make toolbar button last to receive focus
        btn.setTabindex(0);
        btn.addEventListener(Events.ON_CLICK, this);
        btn.setDisabled(true);

        return btn;
    }
	
	/**
	 * Set record info text
     * @param text
     */
    public void setStatusDB (String text)
    {
        setStatusDB(text, null, null);
    }

    /**
     * Data status from {@link AbstractADWindowContent#dataStatusChanged(DataStatusEvent)}
     * @param text record info text (for e.g 1/1)
     * @param dse
     * @param gridTab 
     */
    public void setStatusDB (String text, DataStatusEvent dse, GridTab gridTab)
    {
        if (text == null || text.length() == 0)
        {
            btnRecordInfo.setLabel("");
        }
        else
        {
        	if (text.indexOf("-1/0") >= 0)
        		text = text.replace("-1/0", "0/0");
        	btnRecordInfo.setLabel(text);
        }

        m_text = text;
        m_dse = dse;
        if (m_dse != null) {
        	enableFirstNavigation(m_dse.getCurrentRow() > 0);
        	enableLastNavigation(m_dse.getTotalRows() > m_dse.getCurrentRow()+1);
        }
        m_gridTab = gridTab;
    }
        
	@Override
	public void onPageDetached(Page page) {
		super.onPageDetached(page);
		if (linkPopup != null)
			linkPopup.detach();
		
		try {
			SessionManager.getSessionApplication().getKeylistener().removeEventListener(Events.ON_CTRL_KEY, this);
		} catch (Exception e){}
	}

	/**
	 * Set visibility of record navigation toolbar
	 * @param visible
	 */
	public void setNavigationToolbarVisibility(boolean visible) {
		toolbarContainer.setVisible(visible);
	}

	/**
	 * Are there one or more parent link
	 * @return true if there are one or more parent link
	 */
	public boolean hasParentLink() {
		for(Component c : layout.getChildren()) {
			if (c instanceof BreadCrumbLink) {
				return true;
			}
		}
		return false;
	}
	
	@Override
	public void onPageAttached(Page newpage, Page oldpage) {
		super.onPageAttached(newpage, oldpage);
		if (newpage != null) {
			SessionManager.getSessionApplication().getKeylistener().addEventListener(Events.ON_CTRL_KEY, this);
		}
	}
	
	/**
	 * Is previous button enable
	 * @return true if previous button is enable
	 */
	public boolean isPreviousEnabled() {
		return !btnPrevious.isDisabled();
	}
	
	/**
	 * Is next button enable
	 * @return true if next button is enable
	 */
	public boolean isNextEnabled() {
		return !btnNext.isDisabled();
	}
	
	/**
	 * Get next button component
	 * @return next ToolBarButton
	 */
	public ToolBarButton getNextButton() {
		return btnNext;
	}
	
	/**
	 * Get previous button component
	 * @return previous ToolBarButton
	 */
	public ToolBarButton getPreviousButton() {
		return btnPrevious;
	}
	
	/**
	 * @return true if path/link is empty
	 */
	public boolean isEmpty() {
		return layout == null || layout.getChildren().isEmpty();
	}
}
