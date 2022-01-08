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
// This class represents the ComplexType _x0036_058
// </summary>
public class _x0036_058 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_058
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_058() {
		setElementName("_x0036_058");
		init();
	}
	public _x0036_058(String elementName) {
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
			__x0036_066 = null;
			__x0036_072 = null;
			__x0036_075 = null;
			__x0036_078 = null;
			__x0036_074 = null;
			__x0036_077 = null;
			__x0036_080 = null;

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
			schemaLib._x0036_058 newObject = (schemaLib._x0036_058)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_066 = null;
			if (__x0036_066 != null)
				newObject.__x0036_066 = (schemaLib._x0036_066)__x0036_066.clone();
			newObject.__x0036_072 = null;
			if (__x0036_072 != null)
				newObject.__x0036_072 = (schemaLib._x0036_072)__x0036_072.clone();
			newObject.__x0036_075 = null;
			if (__x0036_075 != null)
				newObject.__x0036_075 = (schemaLib._x0036_075)__x0036_075.clone();
			newObject.__x0036_078 = null;
			if (__x0036_078 != null)
				newObject.__x0036_078 = (schemaLib._x0036_078)__x0036_078.clone();
			newObject.__x0036_074 = null;
			if (__x0036_074 != null)
				newObject.__x0036_074 = (schemaLib._x0036_074)__x0036_074.clone();
			newObject.__x0036_077 = null;
			if (__x0036_077 != null)
				newObject.__x0036_077 = (schemaLib._x0036_077)__x0036_077.clone();
			newObject.__x0036_080 = null;
			if (__x0036_080 != null)
				newObject.__x0036_080 = (schemaLib._x0036_080)__x0036_080.clone();
	
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
	public schemaLib._x0036_066 get_x0036_066() {
		return __x0036_066;  
	}
	public void set_x0036_066(schemaLib._x0036_066 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_066 = null;
		else {
			setElementName(value.getBase(), "_x0036_066");
			__x0036_066 = value; 
		}
	}
	protected schemaLib._x0036_066 __x0036_066;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_072 get_x0036_072() {
		return __x0036_072;  
	}
	public void set_x0036_072(schemaLib._x0036_072 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_072 = null;
		else {
			setElementName(value.getBase(), "_x0036_072");
			__x0036_072 = value; 
		}
	}
	protected schemaLib._x0036_072 __x0036_072;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_075 get_x0036_075() {
		return __x0036_075;  
	}
	public void set_x0036_075(schemaLib._x0036_075 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_075 = null;
		else {
			setElementName(value.getBase(), "_x0036_075");
			__x0036_075 = value; 
		}
	}
	protected schemaLib._x0036_075 __x0036_075;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_078 get_x0036_078() {
		return __x0036_078;  
	}
	public void set_x0036_078(schemaLib._x0036_078 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_078 = null;
		else {
			setElementName(value.getBase(), "_x0036_078");
			__x0036_078 = value; 
		}
	}
	protected schemaLib._x0036_078 __x0036_078;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_074 get_x0036_074() {
		return __x0036_074;  
	}
	public void set_x0036_074(schemaLib._x0036_074 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_074 = null;
		else {
			setElementName(value.getBase(), "_x0036_074");
			__x0036_074 = value; 
		}
	}
	protected schemaLib._x0036_074 __x0036_074;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_077 get_x0036_077() {
		return __x0036_077;  
	}
	public void set_x0036_077(schemaLib._x0036_077 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_077 = null;
		else {
			setElementName(value.getBase(), "_x0036_077");
			__x0036_077 = value; 
		}
	}
	protected schemaLib._x0036_077 __x0036_077;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_080 get_x0036_080() {
		return __x0036_080;  
	}
	public void set_x0036_080(schemaLib._x0036_080 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_080 = null;
		else {
			setElementName(value.getBase(), "_x0036_080");
			__x0036_080 = value; 
		}
	}
	protected schemaLib._x0036_080 __x0036_080;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_058", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_066", "", findGetterMethod("schemaLib._x0036_058", "get_x0036_066"), findSetterMethod("schemaLib._x0036_058", "set_x0036_066", "schemaLib._x0036_066"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_066.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_072", "", findGetterMethod("schemaLib._x0036_058", "get_x0036_072"), findSetterMethod("schemaLib._x0036_058", "set_x0036_072", "schemaLib._x0036_072"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_072.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_075", "", findGetterMethod("schemaLib._x0036_058", "get_x0036_075"), findSetterMethod("schemaLib._x0036_058", "set_x0036_075", "schemaLib._x0036_075"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_075.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_078", "", findGetterMethod("schemaLib._x0036_058", "get_x0036_078"), findSetterMethod("schemaLib._x0036_058", "set_x0036_078", "schemaLib._x0036_078"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_078.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_074", "", findGetterMethod("schemaLib._x0036_058", "get_x0036_074"), findSetterMethod("schemaLib._x0036_058", "set_x0036_074", "schemaLib._x0036_074"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_074.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_077", "", findGetterMethod("schemaLib._x0036_058", "get_x0036_077"), findSetterMethod("schemaLib._x0036_058", "set_x0036_077", "schemaLib._x0036_077"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_077.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_080", "", findGetterMethod("schemaLib._x0036_058", "get_x0036_080"), findSetterMethod("schemaLib._x0036_058", "set_x0036_080", "schemaLib._x0036_080"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_080.class)
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


