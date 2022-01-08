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
// This class represents the ComplexType _x0033_70
// </summary>
public class _x0033_70B extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_70B
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_70B() {
		setElementName("_x0033_70");
		init();
	}
	public _x0033_70B(String elementName) {
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
			_active = false;
			_isValidActive = false;
			_audible = false;
			_isValidAudible = false;
			_autoDiscardable = false;
			_isValidAutoDiscardable = false;
			_discarded = false;
			_isValidDiscarded = false;
			_favIconUrl = "";
			_isValidFavIconUrl = false;
			_height = 0;
			_isValidHeight = false;
			_highlighted = false;
			_isValidHighlighted = false;
			_id = 0;
			_isValidId = false;
			_incognito = false;
			_isValidIncognito = false;
			_index = (short)0;
			_isValidIndex = false;
			_mutedInfo = null;
			_pinned = false;
			_isValidPinned = false;
			_selected = false;
			_isValidSelected = false;
			_status = "";
			_isValidStatus = false;
			_title = "";
			_isValidTitle = false;
			_url = "";
			_isValidUrl = false;
			_width = 0;
			_isValidWidth = false;
			_windowId = 0;
			_isValidWindowId = false;

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
			schemaLib._x0033_70B newObject = (schemaLib._x0033_70B)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			if (_isValidActive)
				newObject._active = _active;
			newObject._isValidActive = _isValidActive;
			if (_isValidAudible)
				newObject._audible = _audible;
			newObject._isValidAudible = _isValidAudible;
			if (_isValidAutoDiscardable)
				newObject._autoDiscardable = _autoDiscardable;
			newObject._isValidAutoDiscardable = _isValidAutoDiscardable;
			if (_isValidDiscarded)
				newObject._discarded = _discarded;
			newObject._isValidDiscarded = _isValidDiscarded;
			if (_isValidFavIconUrl)
				newObject._favIconUrl = _favIconUrl;
			newObject._isValidFavIconUrl = _isValidFavIconUrl;
			if (_isValidHeight)
				newObject._height = _height;
			newObject._isValidHeight = _isValidHeight;
			if (_isValidHighlighted)
				newObject._highlighted = _highlighted;
			newObject._isValidHighlighted = _isValidHighlighted;
			if (_isValidId)
				newObject._id = _id;
			newObject._isValidId = _isValidId;
			if (_isValidIncognito)
				newObject._incognito = _incognito;
			newObject._isValidIncognito = _isValidIncognito;
			if (_isValidIndex)
				newObject._index = _index;
			newObject._isValidIndex = _isValidIndex;
			newObject._mutedInfo = null;
			if (_mutedInfo != null)
				newObject._mutedInfo = (schemaLib.MutedInfoLK)_mutedInfo.clone();
			if (_isValidPinned)
				newObject._pinned = _pinned;
			newObject._isValidPinned = _isValidPinned;
			if (_isValidSelected)
				newObject._selected = _selected;
			newObject._isValidSelected = _isValidSelected;
			if (_isValidStatus)
				newObject._status = _status;
			newObject._isValidStatus = _isValidStatus;
			if (_isValidTitle)
				newObject._title = _title;
			newObject._isValidTitle = _isValidTitle;
			if (_isValidUrl)
				newObject._url = _url;
			newObject._isValidUrl = _isValidUrl;
			if (_isValidWidth)
				newObject._width = _width;
			newObject._isValidWidth = _isValidWidth;
			if (_isValidWindowId)
				newObject._windowId = _windowId;
			newObject._isValidWindowId = _isValidWindowId;
	
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
	public boolean getActive() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidActive == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property active is not valid. Set activeValid = true");
		return _active;  
	}
	public void setActive(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidActive = true;
		_active = value;
	}

	// <summary>
	// Indicates if active contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for active is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get active
	// will raise an exception.
	// </remarks>
	public boolean isValidActive() {
		return _isValidActive;
	}
	public void setValidActive(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidActive) {
			_active = false;
			_isValidActive = value;
		}
	}
	protected boolean _isValidActive;
	protected boolean _active;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public boolean getAudible() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidAudible == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property audible is not valid. Set audibleValid = true");
		return _audible;  
	}
	public void setAudible(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidAudible = true;
		_audible = value;
	}

	// <summary>
	// Indicates if audible contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for audible is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get audible
	// will raise an exception.
	// </remarks>
	public boolean isValidAudible() {
		return _isValidAudible;
	}
	public void setValidAudible(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidAudible) {
			_audible = false;
			_isValidAudible = value;
		}
	}
	protected boolean _isValidAudible;
	protected boolean _audible;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public boolean getAutoDiscardable() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidAutoDiscardable == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property autoDiscardable is not valid. Set autoDiscardableValid = true");
		return _autoDiscardable;  
	}
	public void setAutoDiscardable(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidAutoDiscardable = true;
		_autoDiscardable = value;
	}

	// <summary>
	// Indicates if autoDiscardable contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for autoDiscardable is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get autoDiscardable
	// will raise an exception.
	// </remarks>
	public boolean isValidAutoDiscardable() {
		return _isValidAutoDiscardable;
	}
	public void setValidAutoDiscardable(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidAutoDiscardable) {
			_autoDiscardable = false;
			_isValidAutoDiscardable = value;
		}
	}
	protected boolean _isValidAutoDiscardable;
	protected boolean _autoDiscardable;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public boolean getDiscarded() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidDiscarded == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property discarded is not valid. Set discardedValid = true");
		return _discarded;  
	}
	public void setDiscarded(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidDiscarded = true;
		_discarded = value;
	}

	// <summary>
	// Indicates if discarded contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for discarded is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get discarded
	// will raise an exception.
	// </remarks>
	public boolean isValidDiscarded() {
		return _isValidDiscarded;
	}
	public void setValidDiscarded(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidDiscarded) {
			_discarded = false;
			_isValidDiscarded = value;
		}
	}
	protected boolean _isValidDiscarded;
	protected boolean _discarded;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public java.lang.String getFavIconUrl() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidFavIconUrl == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property favIconUrl is not valid. Set favIconUrlValid = true");
		return _favIconUrl;  
	}
	public void setFavIconUrl(java.lang.String value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// Apply whitespace rules appropriately
		value = com.liquid_technologies.ltxmllib19.WhitespaceUtils.preserve(value); 
		_isValidFavIconUrl = true;
		_favIconUrl = value;
	}

	// <summary>
	// Indicates if favIconUrl contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for favIconUrl is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ("").
	// If its set to false then its made invalid, and subsequent calls to get favIconUrl
	// will raise an exception.
	// </remarks>
	public boolean isValidFavIconUrl() {
		return _isValidFavIconUrl;
	}
	public void setValidFavIconUrl(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidFavIconUrl) {
			_favIconUrl = "";
			_isValidFavIconUrl = value;
		}
	}
	protected boolean _isValidFavIconUrl;
	protected java.lang.String _favIconUrl;

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
	public boolean getHighlighted() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidHighlighted == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property highlighted is not valid. Set highlightedValid = true");
		return _highlighted;  
	}
	public void setHighlighted(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidHighlighted = true;
		_highlighted = value;
	}

	// <summary>
	// Indicates if highlighted contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for highlighted is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get highlighted
	// will raise an exception.
	// </remarks>
	public boolean isValidHighlighted() {
		return _isValidHighlighted;
	}
	public void setValidHighlighted(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidHighlighted) {
			_highlighted = false;
			_isValidHighlighted = value;
		}
	}
	protected boolean _isValidHighlighted;
	protected boolean _highlighted;

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
	public short getIndex() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidIndex == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property index is not valid. Set indexValid = true");
		return _index;  
	}
	public void setIndex(short value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidIndex = true;
		_index = value;
	}

	// <summary>
	// Indicates if index contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for index is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ((short)0).
	// If its set to false then its made invalid, and subsequent calls to get index
	// will raise an exception.
	// </remarks>
	public boolean isValidIndex() {
		return _isValidIndex;
	}
	public void setValidIndex(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidIndex) {
			_index = (short)0;
			_isValidIndex = value;
		}
	}
	protected boolean _isValidIndex;
	protected short _index;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib.MutedInfoLK getMutedInfo() {
		return _mutedInfo;  
	}
	public void setMutedInfo(schemaLib.MutedInfoLK value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			_mutedInfo = null;
		else {
			setElementName(value.getBase(), "mutedInfo");
			_mutedInfo = value; 
		}
	}
	protected schemaLib.MutedInfoLK _mutedInfo;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public boolean getPinned() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidPinned == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property pinned is not valid. Set pinnedValid = true");
		return _pinned;  
	}
	public void setPinned(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidPinned = true;
		_pinned = value;
	}

	// <summary>
	// Indicates if pinned contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for pinned is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get pinned
	// will raise an exception.
	// </remarks>
	public boolean isValidPinned() {
		return _isValidPinned;
	}
	public void setValidPinned(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidPinned) {
			_pinned = false;
			_isValidPinned = value;
		}
	}
	protected boolean _isValidPinned;
	protected boolean _pinned;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public boolean getSelected() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidSelected == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property selected is not valid. Set selectedValid = true");
		return _selected;  
	}
	public void setSelected(boolean value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidSelected = true;
		_selected = value;
	}

	// <summary>
	// Indicates if selected contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for selected is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (false).
	// If its set to false then its made invalid, and subsequent calls to get selected
	// will raise an exception.
	// </remarks>
	public boolean isValidSelected() {
		return _isValidSelected;
	}
	public void setValidSelected(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidSelected) {
			_selected = false;
			_isValidSelected = value;
		}
	}
	protected boolean _isValidSelected;
	protected boolean _selected;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public java.lang.String getStatus() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidStatus == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property status is not valid. Set statusValid = true");
		return _status;  
	}
	public void setStatus(java.lang.String value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// Apply whitespace rules appropriately
		value = com.liquid_technologies.ltxmllib19.WhitespaceUtils.preserve(value); 
		_isValidStatus = true;
		_status = value;
	}

	// <summary>
	// Indicates if status contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for status is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ("").
	// If its set to false then its made invalid, and subsequent calls to get status
	// will raise an exception.
	// </remarks>
	public boolean isValidStatus() {
		return _isValidStatus;
	}
	public void setValidStatus(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidStatus) {
			_status = "";
			_isValidStatus = value;
		}
	}
	protected boolean _isValidStatus;
	protected java.lang.String _status;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public java.lang.String getTitle() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidTitle == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property title is not valid. Set titleValid = true");
		return _title;  
	}
	public void setTitle(java.lang.String value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// Apply whitespace rules appropriately
		value = com.liquid_technologies.ltxmllib19.WhitespaceUtils.preserve(value); 
		_isValidTitle = true;
		_title = value;
	}

	// <summary>
	// Indicates if title contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for title is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ("").
	// If its set to false then its made invalid, and subsequent calls to get title
	// will raise an exception.
	// </remarks>
	public boolean isValidTitle() {
		return _isValidTitle;
	}
	public void setValidTitle(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidTitle) {
			_title = "";
			_isValidTitle = value;
		}
	}
	protected boolean _isValidTitle;
	protected java.lang.String _title;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public java.lang.String getUrl() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidUrl == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property url is not valid. Set urlValid = true");
		return _url;  
	}
	public void setUrl(java.lang.String value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		// Apply whitespace rules appropriately
		value = com.liquid_technologies.ltxmllib19.WhitespaceUtils.preserve(value); 
		_isValidUrl = true;
		_url = value;
	}

	// <summary>
	// Indicates if url contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for url is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value ("").
	// If its set to false then its made invalid, and subsequent calls to get url
	// will raise an exception.
	// </remarks>
	public boolean isValidUrl() {
		return _isValidUrl;
	}
	public void setValidUrl(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidUrl) {
			_url = "";
			_isValidUrl = value;
		}
	}
	protected boolean _isValidUrl;
	protected java.lang.String _url;

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

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is not valid.
	// </remarks>
	public int getWindowId() throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (_isValidWindowId == false)
			throw new com.liquid_technologies.ltxmllib19.exceptions.LtInvalidStateException("The Property windowId is not valid. Set windowIdValid = true");
		return _windowId;  
	}
	public void setWindowId(int value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		_isValidWindowId = true;
		_windowId = value;
	}

	// <summary>
	// Indicates if windowId contains a valid value.
	// </summary>
	// <remarks>
	// true if the value for windowId is valid, false if not.
	// If this is set to true then the property is considered valid, and assigned its
	// default value (0).
	// If its set to false then its made invalid, and subsequent calls to get windowId
	// will raise an exception.
	// </remarks>
	public boolean isValidWindowId() {
		return _isValidWindowId;
	}
	public void setValidWindowId(boolean value)  throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value != _isValidWindowId) {
			_windowId = 0;
			_isValidWindowId = value;
		}
	}
	protected boolean _isValidWindowId;
	protected int _windowId;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_70", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("active", "", findGetterMethod("schemaLib._x0033_70B", "getActive"), findSetterMethod("schemaLib._x0033_70B", "setActive", "boolean"), findGetterMethod("schemaLib._x0033_70B", "isValidActive"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("audible", "", findGetterMethod("schemaLib._x0033_70B", "getAudible"), findSetterMethod("schemaLib._x0033_70B", "setAudible", "boolean"), findGetterMethod("schemaLib._x0033_70B", "isValidAudible"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("autoDiscardable", "", findGetterMethod("schemaLib._x0033_70B", "getAutoDiscardable"), findSetterMethod("schemaLib._x0033_70B", "setAutoDiscardable", "boolean"), findGetterMethod("schemaLib._x0033_70B", "isValidAutoDiscardable"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("discarded", "", findGetterMethod("schemaLib._x0033_70B", "getDiscarded"), findSetterMethod("schemaLib._x0033_70B", "setDiscarded", "boolean"), findGetterMethod("schemaLib._x0033_70B", "isValidDiscarded"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("favIconUrl", "", findGetterMethod("schemaLib._x0033_70B", "getFavIconUrl"), findSetterMethod("schemaLib._x0033_70B", "setFavIconUrl", "java.lang.String"), findGetterMethod("schemaLib._x0033_70B", "isValidFavIconUrl"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("height", "", findGetterMethod("schemaLib._x0033_70B", "getHeight"), findSetterMethod("schemaLib._x0033_70B", "setHeight", "int"), findGetterMethod("schemaLib._x0033_70B", "isValidHeight"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI2, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("highlighted", "", findGetterMethod("schemaLib._x0033_70B", "getHighlighted"), findSetterMethod("schemaLib._x0033_70B", "setHighlighted", "boolean"), findGetterMethod("schemaLib._x0033_70B", "isValidHighlighted"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("id", "", findGetterMethod("schemaLib._x0033_70B", "getId"), findSetterMethod("schemaLib._x0033_70B", "setId", "int"), findGetterMethod("schemaLib._x0033_70B", "isValidId"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI2, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("incognito", "", findGetterMethod("schemaLib._x0033_70B", "getIncognito"), findSetterMethod("schemaLib._x0033_70B", "setIncognito", "boolean"), findGetterMethod("schemaLib._x0033_70B", "isValidIncognito"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("index", "", findGetterMethod("schemaLib._x0033_70B", "getIndex"), findSetterMethod("schemaLib._x0033_70B", "setIndex", "short"), findGetterMethod("schemaLib._x0033_70B", "isValidIndex"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI1, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("mutedInfo", "", findGetterMethod("schemaLib._x0033_70B", "getMutedInfo"), findSetterMethod("schemaLib._x0033_70B", "setMutedInfo", "schemaLib.MutedInfoLK"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib.MutedInfoLK.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("pinned", "", findGetterMethod("schemaLib._x0033_70B", "getPinned"), findSetterMethod("schemaLib._x0033_70B", "setPinned", "boolean"), findGetterMethod("schemaLib._x0033_70B", "isValidPinned"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("selected", "", findGetterMethod("schemaLib._x0033_70B", "getSelected"), findSetterMethod("schemaLib._x0033_70B", "setSelected", "boolean"), findGetterMethod("schemaLib._x0033_70B", "isValidSelected"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_BOOLEAN, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("status", "", findGetterMethod("schemaLib._x0033_70B", "getStatus"), findSetterMethod("schemaLib._x0033_70B", "setStatus", "java.lang.String"), findGetterMethod("schemaLib._x0033_70B", "isValidStatus"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("title", "", findGetterMethod("schemaLib._x0033_70B", "getTitle"), findSetterMethod("schemaLib._x0033_70B", "setTitle", "java.lang.String"), findGetterMethod("schemaLib._x0033_70B", "isValidTitle"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("url", "", findGetterMethod("schemaLib._x0033_70B", "getUrl"), findSetterMethod("schemaLib._x0033_70B", "setUrl", "java.lang.String"), findGetterMethod("schemaLib._x0033_70B", "isValidUrl"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_STRING, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.PRESERVE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("width", "", findGetterMethod("schemaLib._x0033_70B", "getWidth"), findSetterMethod("schemaLib._x0033_70B", "setWidth", "int"), findGetterMethod("schemaLib._x0033_70B", "isValidWidth"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI2, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqPrimOpt("windowId", "", findGetterMethod("schemaLib._x0033_70B", "getWindowId"), findSetterMethod("schemaLib._x0033_70B", "setWindowId", "int"), findGetterMethod("schemaLib._x0033_70B", "isValidWindowId"), null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_UI2, null, com.liquid_technologies.ltxmllib19.WhitespaceRule.COLLAPSE, new com.liquid_technologies.ltxmllib19.PrimitiveRestrictions("", -1, -1, "", "", "", "", -1, -1, -1), null)
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


