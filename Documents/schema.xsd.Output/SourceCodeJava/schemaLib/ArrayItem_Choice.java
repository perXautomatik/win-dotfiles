package schemaLib;
 
/**********************************************************************************************
 * Copyright (c) 2001-2021 Liquid Technologies Limited. All rights reserved.
 * See www.liquid-technologies.com for product details.
 *
 * Please see products End User License Agreement for distribution permissions.
 *
 * WARNING: THIS FILE IS GENERATED
 * Changes made outside of ##HAND_CODED_BLOCK_START blocks will be overwritten
 *
 * Generation  :  by Liquid XML Data Binder 19.0.9.10834
 * Using Schema: C:/Users/chris/OneDrive/Dokument/schema.xsd
 **********************************************************************************************/
	
// <summary>
// This class represents the Element ArrayItem_Choice
// </summary>
public class ArrayItem_Choice extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for ArrayItem_Choice
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public ArrayItem_Choice() {
		setElementName("ArrayItem_Choice");
		init();
	}
	public ArrayItem_Choice(String elementName) {
		setElementName(elementName);
		init();
	}		

	// <summary>
	// 	Initializes the class
	// </summary>
	// <remarks>
	// This creates all the mandatory fields (populated with the default data) 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd.
	// </remarks>
	@Override
	protected void init() {
		try {
			schemaLib.Registration.iRegistrationIndicator = 0; // causes registration to take place
			_windows = null;
			_windowsNumber = (short)0;
			_isValidWindowsNumber = false;
			_windowsInfo = null;
			_tabsNumber = (short)0;
			_isValidTabsNumber = false;
			_name = "";
			_isValidName = false;
			_date = (long)0;
			_isValidDate = false;
			_lastEditedTime = (long)0;
			_isValidLastEditedTime = false;
			_tag = new schemaLib.XmlSimpleTypeCollection<java.lang.String>("tag", "", com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, 0, -1, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1));
			_tag.addEventListener(this);
			_sessionStartTime = (long)0;
			_isValidSessionStartTime = false;
			_id = "";
			_isValidId = false;

			_validElement = "";
			// ##HAND_CODED_BLOCK_START ID="Additional Inits"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS
			// Add Additional initialization code here...
			// ##HAND_CODED_BLOCK_END ID="Additional Inits"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS

			getClassAttributeInfo();
			getClassElementInfo();
		} catch (Exception ex) {
			// should never happen
			ex.printStackTrace();
			throw new InternalError();
		}
	}

	protected void ClearChoice(String selectedElement) {
		try {
			_windows = null;
			_windowsNumber = (short)0;
			_isValidWindowsNumber = false;
			_windowsInfo = null;
			_tabsNumber = (short)0;
			_isValidTabsNumber = false;
			_name = "";
			_isValidName = false;
			_date = (long)0;
			_isValidDate = false;
			_lastEditedTime = (long)0;
			_isValidLastEditedTime = false;
			if (_tag != null) {
				if (!selectedElement.equals("tag"))
					_tag.clear();
			}
			_sessionStartTime = (long)0;
			_isValidSessionStartTime = false;
			_id = "";
			_isValidId = false;
	
			_validElement = selectedElement;
		} catch (Exception ex) {
			// should never happen
			ex.printStackTrace();
			throw new InternalError();
		}
	}


	// <summary>
	// Allows the class to be copied
	// </summary>
	// <remarks>
	// Performs a 'deep copy' of all the data in the class (and its children)
	// </remarks>
	@Override
	public Object clone() throws CloneNotSupportedException {
		try {
			schemaLib.ArrayItem_Choice newObject = (schemaLib.ArrayItem_Choice)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject._windows = null;
			if (_windows != null)
				newObject._windows = (schemaLib.Windows)_windows.clone();
			if (_isValidWindowsNumber)
				newObject._windowsNumber = _windowsNumber;
			newObject._isValidWindowsNumber = _isValidWindowsNumber;
			newObject._windowsInfo = null;
			if (_windowsInfo != null)
				newObject._windowsInfo = (schemaLib.WindowsInfo)_windowsInfo.clone();
			if (_isValidTabsNumber)
				newObject._tabsNumber = _tabsNumber;
			newObject._isValidTabsNumber = _isValidTabsNumber;
			if (_isValidName)
				newObject._name = _name;
			newObject._isValidName = _isValidName;
			if (_isValidDate)
				newObject._date = _date;
			newObject._isValidDate = _isValidDate;
			if (_isValidLastEditedTime)
				newObject._lastEditedTime = _lastEditedTime;
			newObject._isValidLastEditedTime = _isValidLastEditedTime;
			for(int i=0; i<_tag.size(); i++)
				newObject._tag.add(_tag.get(i));
			if (_isValidSessionStartTime)
				newObject._sessionStartTime = _sessionStartTime;
			newObject._isValidSessionStartTime = _isValidSessionStartTime;
			if (_isValidId)
				newObject._id = _id;
			newObject._isValidId = _isValidId;
	
			newObject._validElement = _validElement;
// ##HAND_CODED_BLOCK_START ID="Additional clone"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS

// Add Additional clone code here...

// ##HAND_CODED_BLOCK_END ID="Additional clone"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS

			return newObject;
		} catch (CloneNotSupportedException e) {
			// should never happen
			e.printStackTrace();
			throw new InternalError();
		}
	}

	@Override
	public String getTargetNamespace() {
		return "";
	}

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception. setting this property to null will allow another element to be selected

	// </remarks>
	public schemaLib.Windows getWindows() {
		return _windows;  
	}
	public void setWindows(schemaLib.Windows value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice((value == null)?"":"windows"); // remove selection
		if (value == null)
			_windows = null;
		else {
			setElementName(value.getBase(), "windows");
			_windows = value; 
		}
	}
	protected schemaLib.Windows _windows;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception
	// </remarks>
	public short getWindowsNumber() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidWindowsNumber == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property windowsNumber is not valid. Set windowsNumberValid = true");
		return _windowsNumber;  
	}
	public void setWindowsNumber(short value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice("windowsNumber"); // remove selection
		_isValidWindowsNumber = true;
		_windowsNumber = value;
	}

	// <summary>
	// Indicates if windowsNumber contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for windowsNumber is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ((short)0).
	// If its set to false then its made invalid, and subsequent calls to get windowsNumber
	// will raise an exception.
	// </remarks>
	public boolean isValidWindowsNumber() {
		return _isValidWindowsNumber;
	}
	public void setValidWindowsNumber(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidWindowsNumber) {
			_windowsNumber = (short)0;
			_isValidWindowsNumber = value;
		}
	}
	protected boolean _isValidWindowsNumber;
	protected short _windowsNumber;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception. setting this property to null will allow another element to be selected

	// </remarks>
	public schemaLib.WindowsInfo getWindowsInfo() {
		return _windowsInfo;  
	}
	public void setWindowsInfo(schemaLib.WindowsInfo value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice((value == null)?"":"windowsInfo"); // remove selection
		if (value == null)
			_windowsInfo = null;
		else {
			setElementName(value.getBase(), "windowsInfo");
			_windowsInfo = value; 
		}
	}
	protected schemaLib.WindowsInfo _windowsInfo;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception
	// </remarks>
	public short getTabsNumber() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidTabsNumber == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property tabsNumber is not valid. Set tabsNumberValid = true");
		return _tabsNumber;  
	}
	public void setTabsNumber(short value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice("tabsNumber"); // remove selection
		_isValidTabsNumber = true;
		_tabsNumber = value;
	}

	// <summary>
	// Indicates if tabsNumber contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for tabsNumber is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ((short)0).
	// If its set to false then its made invalid, and subsequent calls to get tabsNumber
	// will raise an exception.
	// </remarks>
	public boolean isValidTabsNumber() {
		return _isValidTabsNumber;
	}
	public void setValidTabsNumber(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidTabsNumber) {
			_tabsNumber = (short)0;
			_isValidTabsNumber = value;
		}
	}
	protected boolean _isValidTabsNumber;
	protected short _tabsNumber;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception
	// </remarks>
	public java.lang.String getName() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidName == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property name is not valid. Set nameValid = true");
		return _name;  
	}
	public void setName(java.lang.String value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// Apply whitespace rules appropriately
		value = com.liquid_technologies.ltxmllib19.WhitespaceUtils.preserve(value); 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice("name"); // remove selection
		_isValidName = true;
		_name = value;
	}

	// <summary>
	// Indicates if name contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for name is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ("").
	// If its set to false then its made invalid, and subsequent calls to get name
	// will raise an exception.
	// </remarks>
	public boolean isValidName() {
		return _isValidName;
	}
	public void setValidName(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidName) {
			_name = "";
			_isValidName = value;
		}
	}
	protected boolean _isValidName;
	protected java.lang.String _name;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception
	// </remarks>
	public long getDate() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidDate == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property date is not valid. Set dateValid = true");
		return _date;  
	}
	public void setDate(long value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice("date"); // remove selection
		_isValidDate = true;
		_date = value;
	}

	// <summary>
	// Indicates if date contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for date is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ((long)0).
	// If its set to false then its made invalid, and subsequent calls to get date
	// will raise an exception.
	// </remarks>
	public boolean isValidDate() {
		return _isValidDate;
	}
	public void setValidDate(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidDate) {
			_date = (long)0;
			_isValidDate = value;
		}
	}
	protected boolean _isValidDate;
	protected long _date;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception
	// </remarks>
	public long getLastEditedTime() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidLastEditedTime == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property lastEditedTime is not valid. Set lastEditedTimeValid = true");
		return _lastEditedTime;  
	}
	public void setLastEditedTime(long value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice("lastEditedTime"); // remove selection
		_isValidLastEditedTime = true;
		_lastEditedTime = value;
	}

	// <summary>
	// Indicates if lastEditedTime contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for lastEditedTime is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ((long)0).
	// If its set to false then its made invalid, and subsequent calls to get lastEditedTime
	// will raise an exception.
	// </remarks>
	public boolean isValidLastEditedTime() {
		return _isValidLastEditedTime;
	}
	public void setValidLastEditedTime(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidLastEditedTime) {
			_lastEditedTime = (long)0;
			_isValidLastEditedTime = value;
		}
	}
	protected boolean _isValidLastEditedTime;
	protected long _lastEditedTime;

	// <summary>
	// A collection of java.lang.Strings
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// This collection may contain 0 to Many java.lang.Strings.
	// Only one Element within this class may be set at a time. This collection (as a whole is counted as an element) may contain 0 or 0 to Many entries. Emptying the collection allows a different element to be the selected one. If there is already a selected item, and an item is added to this collection then an exception will be raised
	// </remarks>
	public schemaLib.XmlSimpleTypeCollection<java.lang.String> getTag() {
		return _tag;
	}
	protected schemaLib.XmlSimpleTypeCollection<java.lang.String> _tag;
		

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception
	// </remarks>
	public long getSessionStartTime() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidSessionStartTime == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property sessionStartTime is not valid. Set sessionStartTimeValid = true");
		return _sessionStartTime;  
	}
	public void setSessionStartTime(long value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice("sessionStartTime"); // remove selection
		_isValidSessionStartTime = true;
		_sessionStartTime = value;
	}

	// <summary>
	// Indicates if sessionStartTime contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for sessionStartTime is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ((long)0).
	// If its set to false then its made invalid, and subsequent calls to get sessionStartTime
	// will raise an exception.
	// </remarks>
	public boolean isValidSessionStartTime() {
		return _isValidSessionStartTime;
	}
	public void setValidSessionStartTime(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidSessionStartTime) {
			_sessionStartTime = (long)0;
			_isValidSessionStartTime = value;
		}
	}
	protected boolean _isValidSessionStartTime;
	protected long _sessionStartTime;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// Only one Element within this class may be set at a time, setting this property when another element is already set will raise an exception
	// </remarks>
	public java.lang.String getId() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidId == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property id is not valid. Set idValid = true");
		return _id;  
	}
	public void setId(java.lang.String value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// Apply whitespace rules appropriately
		value = com.liquid_technologies.ltxmllib19.WhitespaceUtils.preserve(value); 
		// The class represents a choice, so prevent more than one element from being selected
		ClearChoice("id"); // remove selection
		_isValidId = true;
		_id = value;
	}

	// <summary>
	// Indicates if id contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for id is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ("").
	// If its set to false then its made invalid, and subsequent calls to get id
	// will raise an exception.
	// </remarks>
	public boolean isValidId() {
		return _isValidId;
	}
	public void setValidId(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidId) {
			_id = "";
			_isValidId = value;
		}
	}
	protected boolean _isValidId;
	protected java.lang.String _id;

	public String getChoiceSelectedElement() {
		return _validElement;
	}
	protected String _validElement;

	@Override
	public String getNamespace() {
		return "";
	}	

	@Override
	public com.liquid_technologies.ltxmllib19.XmlObjectBase getBase() {
		return this;
	}
	protected void onEvent(com.liquid_technologies.ltxmllib19.XmlObjectBase msgSource, int msgType, Object data) {
		if (msgType == CollectionChangeEvent) {
			if (msgSource.equals(_tag)) {
				if (!_validElement.equals("tag")) {
					ClearChoice(((com.liquid_technologies.ltxmllib19.XmlCollectionBase)msgSource).size() == 0 ? "" : "tag"); // remove selection
				}
			}
		}
	}

	private static com.liquid_technologies.ltxmllib19.ParentElementInfo __parentElementInfo = null;
	private static com.liquid_technologies.ltxmllib19.ElementInfo[] __elementInfo = null;
	private static com.liquid_technologies.ltxmllib19.AttributeInfo[] __attributeInfo = null;
		
	protected com.liquid_technologies.ltxmllib19.ParentElementInfo getClassInfo() throws Exception {
		if (__parentElementInfo == null) {
			__parentElementInfo = new com.liquid_technologies.ltxmllib19.ParentElementInfo(	
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementGroupType.CHOICE,
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.PSEUDO_ELEMENT, "ArrayItem_Choice", "", false, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoChoiceClsOpt("windows", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getWindows"), findSetterMethod("schemaLib.ArrayItem_Choice", "setWindows", "schemaLib.Windows"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib.Windows.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoicePrimOpt("windowsNumber", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getWindowsNumber"), findSetterMethod("schemaLib.ArrayItem_Choice", "setWindowsNumber", "short"), findGetterMethod("schemaLib.ArrayItem_Choice", "isValidWindowsNumber"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI1, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoiceClsOpt("windowsInfo", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getWindowsInfo"), findSetterMethod("schemaLib.ArrayItem_Choice", "setWindowsInfo", "schemaLib.WindowsInfo"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib.WindowsInfo.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoicePrimOpt("tabsNumber", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getTabsNumber"), findSetterMethod("schemaLib.ArrayItem_Choice", "setTabsNumber", "short"), findGetterMethod("schemaLib.ArrayItem_Choice", "isValidTabsNumber"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI1, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoicePrimOpt("name", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getName"), findSetterMethod("schemaLib.ArrayItem_Choice", "setName", "java.lang.String"), findGetterMethod("schemaLib.ArrayItem_Choice", "isValidName"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoicePrimOpt("date", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getDate"), findSetterMethod("schemaLib.ArrayItem_Choice", "setDate", "long"), findGetterMethod("schemaLib.ArrayItem_Choice", "isValidDate"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI8, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoicePrimOpt("lastEditedTime", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getLastEditedTime"), findSetterMethod("schemaLib.ArrayItem_Choice", "setLastEditedTime", "long"), findGetterMethod("schemaLib.ArrayItem_Choice", "isValidLastEditedTime"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI8, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoicePrimCol("tag", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getTag"))
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoicePrimOpt("sessionStartTime", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getSessionStartTime"), findSetterMethod("schemaLib.ArrayItem_Choice", "setSessionStartTime", "long"), findGetterMethod("schemaLib.ArrayItem_Choice", "isValidSessionStartTime"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI8, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoChoicePrimOpt("id", "", findGetterMethod("schemaLib.ArrayItem_Choice", "getId"), findSetterMethod("schemaLib.ArrayItem_Choice", "setId", "java.lang.String"), findGetterMethod("schemaLib.ArrayItem_Choice", "isValidId"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
			};
		}
		return __elementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.AttributeInfo[] getClassAttributeInfo() throws Exception {
		if (__attributeInfo==null) {
			__attributeInfo = new com.liquid_technologies.ltxmllib19.AttributeInfo[] {
			};
		}
		return __attributeInfo;
	}

// ##HAND_CODED_BLOCK_START ID="Additional Methods"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS

// Add Additional Methods and members here...

// ##HAND_CODED_BLOCK_END ID="Additional Methods"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS
}


