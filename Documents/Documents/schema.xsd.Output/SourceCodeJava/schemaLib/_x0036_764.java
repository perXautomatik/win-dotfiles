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
// This class represents the ComplexType _x0036_764
// </summary>
public class _x0036_764 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_764
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_764() {
		setElementName("_x0036_764");
		init();
	}
	public _x0036_764(String elementName) {
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
			__x0036_767 = null;
			__x0036_769 = null;
			__x0036_773 = null;
			__x0036_776 = null;
			__x0036_777 = null;
			__x0036_780 = null;
			__x0036_785 = null;
			__x0036_788 = null;
			__x0036_789 = null;

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
			schemaLib._x0036_764 newObject = (schemaLib._x0036_764)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_767 = null;
			if (__x0036_767 != null)
				newObject.__x0036_767 = (schemaLib._x0036_767)__x0036_767.clone();
			newObject.__x0036_769 = null;
			if (__x0036_769 != null)
				newObject.__x0036_769 = (schemaLib._x0036_769)__x0036_769.clone();
			newObject.__x0036_773 = null;
			if (__x0036_773 != null)
				newObject.__x0036_773 = (schemaLib._x0036_773)__x0036_773.clone();
			newObject.__x0036_776 = null;
			if (__x0036_776 != null)
				newObject.__x0036_776 = (schemaLib._x0036_776)__x0036_776.clone();
			newObject.__x0036_777 = null;
			if (__x0036_777 != null)
				newObject.__x0036_777 = (schemaLib._x0036_777)__x0036_777.clone();
			newObject.__x0036_780 = null;
			if (__x0036_780 != null)
				newObject.__x0036_780 = (schemaLib._x0036_780)__x0036_780.clone();
			newObject.__x0036_785 = null;
			if (__x0036_785 != null)
				newObject.__x0036_785 = (schemaLib._x0036_785)__x0036_785.clone();
			newObject.__x0036_788 = null;
			if (__x0036_788 != null)
				newObject.__x0036_788 = (schemaLib._x0036_788)__x0036_788.clone();
			newObject.__x0036_789 = null;
			if (__x0036_789 != null)
				newObject.__x0036_789 = (schemaLib._x0036_789)__x0036_789.clone();
	
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

	// </remarks>
	public schemaLib._x0036_767 get_x0036_767() {
		return __x0036_767;  
	}
	public void set_x0036_767(schemaLib._x0036_767 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_767 = null;
		else {
			setElementName(value.getBase(), "_x0036_767");
			__x0036_767 = value; 
		}
	}
	protected schemaLib._x0036_767 __x0036_767;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_769 get_x0036_769() {
		return __x0036_769;  
	}
	public void set_x0036_769(schemaLib._x0036_769 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_769 = null;
		else {
			setElementName(value.getBase(), "_x0036_769");
			__x0036_769 = value; 
		}
	}
	protected schemaLib._x0036_769 __x0036_769;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_773 get_x0036_773() {
		return __x0036_773;  
	}
	public void set_x0036_773(schemaLib._x0036_773 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_773 = null;
		else {
			setElementName(value.getBase(), "_x0036_773");
			__x0036_773 = value; 
		}
	}
	protected schemaLib._x0036_773 __x0036_773;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_776 get_x0036_776() {
		return __x0036_776;  
	}
	public void set_x0036_776(schemaLib._x0036_776 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_776 = null;
		else {
			setElementName(value.getBase(), "_x0036_776");
			__x0036_776 = value; 
		}
	}
	protected schemaLib._x0036_776 __x0036_776;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_777 get_x0036_777() {
		return __x0036_777;  
	}
	public void set_x0036_777(schemaLib._x0036_777 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_777 = null;
		else {
			setElementName(value.getBase(), "_x0036_777");
			__x0036_777 = value; 
		}
	}
	protected schemaLib._x0036_777 __x0036_777;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_780 get_x0036_780() {
		return __x0036_780;  
	}
	public void set_x0036_780(schemaLib._x0036_780 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_780 = null;
		else {
			setElementName(value.getBase(), "_x0036_780");
			__x0036_780 = value; 
		}
	}
	protected schemaLib._x0036_780 __x0036_780;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_785 get_x0036_785() {
		return __x0036_785;  
	}
	public void set_x0036_785(schemaLib._x0036_785 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_785 = null;
		else {
			setElementName(value.getBase(), "_x0036_785");
			__x0036_785 = value; 
		}
	}
	protected schemaLib._x0036_785 __x0036_785;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_788 get_x0036_788() {
		return __x0036_788;  
	}
	public void set_x0036_788(schemaLib._x0036_788 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_788 = null;
		else {
			setElementName(value.getBase(), "_x0036_788");
			__x0036_788 = value; 
		}
	}
	protected schemaLib._x0036_788 __x0036_788;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_789 get_x0036_789() {
		return __x0036_789;  
	}
	public void set_x0036_789(schemaLib._x0036_789 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_789 = null;
		else {
			setElementName(value.getBase(), "_x0036_789");
			__x0036_789 = value; 
		}
	}
	protected schemaLib._x0036_789 __x0036_789;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_764", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_767", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_767"), findSetterMethod("schemaLib._x0036_764", "set_x0036_767", "schemaLib._x0036_767"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_767.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_769", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_769"), findSetterMethod("schemaLib._x0036_764", "set_x0036_769", "schemaLib._x0036_769"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_769.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_773", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_773"), findSetterMethod("schemaLib._x0036_764", "set_x0036_773", "schemaLib._x0036_773"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_773.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_776", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_776"), findSetterMethod("schemaLib._x0036_764", "set_x0036_776", "schemaLib._x0036_776"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_776.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_777", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_777"), findSetterMethod("schemaLib._x0036_764", "set_x0036_777", "schemaLib._x0036_777"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_777.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_780", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_780"), findSetterMethod("schemaLib._x0036_764", "set_x0036_780", "schemaLib._x0036_780"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_780.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_785", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_785"), findSetterMethod("schemaLib._x0036_764", "set_x0036_785", "schemaLib._x0036_785"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_785.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_788", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_788"), findSetterMethod("schemaLib._x0036_764", "set_x0036_788", "schemaLib._x0036_788"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_788.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_789", "", findGetterMethod("schemaLib._x0036_764", "get_x0036_789"), findSetterMethod("schemaLib._x0036_764", "set_x0036_789", "schemaLib._x0036_789"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_789.class)
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


