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
// This class represents the ComplexType _x0031_8228
// </summary>
public class _x0031_8228A extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_8228A
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_8228A() {
		setElementName("_x0031_8228");
		init();
	}
	public _x0031_8228A(String elementName) {
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
			_alwaysOnTop = false;
			_isValidAlwaysOnTop = false;
			_focused = false;
			_isValidFocused = false;
			_height = 0;
			_isValidHeight = false;
			_id = 0;
			_isValidId = false;
			_incognito = false;
			_isValidIncognito = false;
			_left = 0;
			_isValidLeft = false;
			_state = "";
			_isValidState = false;
			_top = (short)0;
			_isValidTop = false;
			_type = "";
			_isValidType = false;
			_width = 0;
			_isValidWidth = false;

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



	// <summary>
	// Allows the class to be copied
	// </summary>
	// <remarks>
	// Performs a 'deep copy' of all the data in the class (and its children)
	// </remarks>
	@Override
	public Object clone() throws CloneNotSupportedException {
		try {
			schemaLib._x0031_8228A newObject = (schemaLib._x0031_8228A)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			if (_isValidAlwaysOnTop)
				newObject._alwaysOnTop = _alwaysOnTop;
			newObject._isValidAlwaysOnTop = _isValidAlwaysOnTop;
			if (_isValidFocused)
				newObject._focused = _focused;
			newObject._isValidFocused = _isValidFocused;
			if (_isValidHeight)
				newObject._height = _height;
			newObject._isValidHeight = _isValidHeight;
			if (_isValidId)
				newObject._id = _id;
			newObject._isValidId = _isValidId;
			if (_isValidIncognito)
				newObject._incognito = _incognito;
			newObject._isValidIncognito = _isValidIncognito;
			if (_isValidLeft)
				newObject._left = _left;
			newObject._isValidLeft = _isValidLeft;
			if (_isValidState)
				newObject._state = _state;
			newObject._isValidState = _isValidState;
			if (_isValidTop)
				newObject._top = _top;
			newObject._isValidTop = _isValidTop;
			if (_isValidType)
				newObject._type = _type;
			newObject._isValidType = _isValidType;
			if (_isValidWidth)
				newObject._width = _width;
			newObject._isValidWidth = _isValidWidth;
	
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
	// It is optional, initially it is not valid.
	// </remarks>
	public boolean getAlwaysOnTop() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidAlwaysOnTop == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property alwaysOnTop is not valid. Set alwaysOnTopValid = true");
		return _alwaysOnTop;  
	}
	public void setAlwaysOnTop(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidAlwaysOnTop = true;
		_alwaysOnTop = value;
	}

	// <summary>
	// Indicates if alwaysOnTop contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for alwaysOnTop is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get alwaysOnTop
	// will raise an exception.
	// </remarks>
	public boolean isValidAlwaysOnTop() {
		return _isValidAlwaysOnTop;
	}
	public void setValidAlwaysOnTop(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidAlwaysOnTop) {
			_alwaysOnTop = false;
			_isValidAlwaysOnTop = value;
		}
	}
	protected boolean _isValidAlwaysOnTop;
	protected boolean _alwaysOnTop;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public boolean getFocused() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidFocused == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property focused is not valid. Set focusedValid = true");
		return _focused;  
	}
	public void setFocused(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidFocused = true;
		_focused = value;
	}

	// <summary>
	// Indicates if focused contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for focused is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get focused
	// will raise an exception.
	// </remarks>
	public boolean isValidFocused() {
		return _isValidFocused;
	}
	public void setValidFocused(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidFocused) {
			_focused = false;
			_isValidFocused = value;
		}
	}
	protected boolean _isValidFocused;
	protected boolean _focused;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public int getHeight() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidHeight == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property height is not valid. Set heightValid = true");
		return _height;  
	}
	public void setHeight(int value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidHeight = true;
		_height = value;
	}

	// <summary>
	// Indicates if height contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for height is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (0).
	// If its set to false then its made invalid, and subsequent calls to get height
	// will raise an exception.
	// </remarks>
	public boolean isValidHeight() {
		return _isValidHeight;
	}
	public void setValidHeight(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidHeight) {
			_height = 0;
			_isValidHeight = value;
		}
	}
	protected boolean _isValidHeight;
	protected int _height;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public int getId() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidId == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property id is not valid. Set idValid = true");
		return _id;  
	}
	public void setId(int value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidId = true;
		_id = value;
	}

	// <summary>
	// Indicates if id contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for id is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (0).
	// If its set to false then its made invalid, and subsequent calls to get id
	// will raise an exception.
	// </remarks>
	public boolean isValidId() {
		return _isValidId;
	}
	public void setValidId(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidId) {
			_id = 0;
			_isValidId = value;
		}
	}
	protected boolean _isValidId;
	protected int _id;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public boolean getIncognito() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidIncognito == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property incognito is not valid. Set incognitoValid = true");
		return _incognito;  
	}
	public void setIncognito(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidIncognito = true;
		_incognito = value;
	}

	// <summary>
	// Indicates if incognito contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for incognito is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get incognito
	// will raise an exception.
	// </remarks>
	public boolean isValidIncognito() {
		return _isValidIncognito;
	}
	public void setValidIncognito(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidIncognito) {
			_incognito = false;
			_isValidIncognito = value;
		}
	}
	protected boolean _isValidIncognito;
	protected boolean _incognito;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public int getLeft() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidLeft == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property left is not valid. Set leftValid = true");
		return _left;  
	}
	public void setLeft(int value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidLeft = true;
		_left = value;
	}

	// <summary>
	// Indicates if left contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for left is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (0).
	// If its set to false then its made invalid, and subsequent calls to get left
	// will raise an exception.
	// </remarks>
	public boolean isValidLeft() {
		return _isValidLeft;
	}
	public void setValidLeft(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidLeft) {
			_left = 0;
			_isValidLeft = value;
		}
	}
	protected boolean _isValidLeft;
	protected int _left;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public java.lang.String getState() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidState == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property state is not valid. Set stateValid = true");
		return _state;  
	}
	public void setState(java.lang.String value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// Apply whitespace rules appropriately
		value = com.liquid_technologies.ltxmllib19.WhitespaceUtils.preserve(value); 
		_isValidState = true;
		_state = value;
	}

	// <summary>
	// Indicates if state contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for state is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ("").
	// If its set to false then its made invalid, and subsequent calls to get state
	// will raise an exception.
	// </remarks>
	public boolean isValidState() {
		return _isValidState;
	}
	public void setValidState(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidState) {
			_state = "";
			_isValidState = value;
		}
	}
	protected boolean _isValidState;
	protected java.lang.String _state;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public short getTop() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidTop == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property top is not valid. Set topValid = true");
		return _top;  
	}
	public void setTop(short value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidTop = true;
		_top = value;
	}

	// <summary>
	// Indicates if top contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for top is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ((short)0).
	// If its set to false then its made invalid, and subsequent calls to get top
	// will raise an exception.
	// </remarks>
	public boolean isValidTop() {
		return _isValidTop;
	}
	public void setValidTop(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidTop) {
			_top = (short)0;
			_isValidTop = value;
		}
	}
	protected boolean _isValidTop;
	protected short _top;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public java.lang.String getType() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidType == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property type is not valid. Set typeValid = true");
		return _type;  
	}
	public void setType(java.lang.String value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// Apply whitespace rules appropriately
		value = com.liquid_technologies.ltxmllib19.WhitespaceUtils.preserve(value); 
		_isValidType = true;
		_type = value;
	}

	// <summary>
	// Indicates if type contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for type is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ("").
	// If its set to false then its made invalid, and subsequent calls to get type
	// will raise an exception.
	// </remarks>
	public boolean isValidType() {
		return _isValidType;
	}
	public void setValidType(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidType) {
			_type = "";
			_isValidType = value;
		}
	}
	protected boolean _isValidType;
	protected java.lang.String _type;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public int getWidth() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidWidth == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property width is not valid. Set widthValid = true");
		return _width;  
	}
	public void setWidth(int value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidWidth = true;
		_width = value;
	}

	// <summary>
	// Indicates if width contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for width is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (0).
	// If its set to false then its made invalid, and subsequent calls to get width
	// will raise an exception.
	// </remarks>
	public boolean isValidWidth() {
		return _isValidWidth;
	}
	public void setValidWidth(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidWidth) {
			_width = 0;
			_isValidWidth = value;
		}
	}
	protected boolean _isValidWidth;
	protected int _width;

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
		}
	}

	private static com.liquid_technologies.ltxmllib19.ParentElementInfo __parentElementInfo = null;
	private static com.liquid_technologies.ltxmllib19.ElementInfo[] __elementInfo = null;
	private static com.liquid_technologies.ltxmllib19.AttributeInfo[] __attributeInfo = null;
		
	protected com.liquid_technologies.ltxmllib19.ParentElementInfo getClassInfo() throws Exception {
		if (__parentElementInfo == null) {
			__parentElementInfo = new com.liquid_technologies.ltxmllib19.ParentElementInfo(	
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementGroupType.SEQUENCE,
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_8228", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("alwaysOnTop", "", findGetterMethod("schemaLib._x0031_8228A", "getAlwaysOnTop"), findSetterMethod("schemaLib._x0031_8228A", "setAlwaysOnTop", "boolean"), findGetterMethod("schemaLib._x0031_8228A", "isValidAlwaysOnTop"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("focused", "", findGetterMethod("schemaLib._x0031_8228A", "getFocused"), findSetterMethod("schemaLib._x0031_8228A", "setFocused", "boolean"), findGetterMethod("schemaLib._x0031_8228A", "isValidFocused"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("height", "", findGetterMethod("schemaLib._x0031_8228A", "getHeight"), findSetterMethod("schemaLib._x0031_8228A", "setHeight", "int"), findGetterMethod("schemaLib._x0031_8228A", "isValidHeight"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI2, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("id", "", findGetterMethod("schemaLib._x0031_8228A", "getId"), findSetterMethod("schemaLib._x0031_8228A", "setId", "int"), findGetterMethod("schemaLib._x0031_8228A", "isValidId"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI2, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("incognito", "", findGetterMethod("schemaLib._x0031_8228A", "getIncognito"), findSetterMethod("schemaLib._x0031_8228A", "setIncognito", "boolean"), findGetterMethod("schemaLib._x0031_8228A", "isValidIncognito"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("left", "", findGetterMethod("schemaLib._x0031_8228A", "getLeft"), findSetterMethod("schemaLib._x0031_8228A", "setLeft", "int"), findGetterMethod("schemaLib._x0031_8228A", "isValidLeft"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI2, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("state", "", findGetterMethod("schemaLib._x0031_8228A", "getState"), findSetterMethod("schemaLib._x0031_8228A", "setState", "java.lang.String"), findGetterMethod("schemaLib._x0031_8228A", "isValidState"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("top", "", findGetterMethod("schemaLib._x0031_8228A", "getTop"), findSetterMethod("schemaLib._x0031_8228A", "setTop", "short"), findGetterMethod("schemaLib._x0031_8228A", "isValidTop"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI1, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("type", "", findGetterMethod("schemaLib._x0031_8228A", "getType"), findSetterMethod("schemaLib._x0031_8228A", "setType", "java.lang.String"), findGetterMethod("schemaLib._x0031_8228A", "isValidType"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("width", "", findGetterMethod("schemaLib._x0031_8228A", "getWidth"), findSetterMethod("schemaLib._x0031_8228A", "setWidth", "int"), findGetterMethod("schemaLib._x0031_8228A", "isValidWidth"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI2, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
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


