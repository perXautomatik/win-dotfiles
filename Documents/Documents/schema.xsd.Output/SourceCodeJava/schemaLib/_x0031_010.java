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
// This class represents the ComplexType _x0031_010
// </summary>
public class _x0031_010 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_010
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_010() {
		setElementName("_x0031_010");
		init();
	}
	public _x0031_010(String elementName) {
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
			__x0031_013 = null;
			__x0031_015 = null;
			__x0031_019 = null;
			__x0031_022 = null;
			__x0031_028 = null;
			__x0031_031 = null;

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
			schemaLib._x0031_010 newObject = (schemaLib._x0031_010)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_013 = null;
			if (__x0031_013 != null)
				newObject.__x0031_013 = (schemaLib._x0031_013)__x0031_013.clone();
			newObject.__x0031_015 = null;
			if (__x0031_015 != null)
				newObject.__x0031_015 = (schemaLib._x0031_015)__x0031_015.clone();
			newObject.__x0031_019 = null;
			if (__x0031_019 != null)
				newObject.__x0031_019 = (schemaLib._x0031_019A)__x0031_019.clone();
			newObject.__x0031_022 = null;
			if (__x0031_022 != null)
				newObject.__x0031_022 = (schemaLib._x0031_022)__x0031_022.clone();
			newObject.__x0031_028 = null;
			if (__x0031_028 != null)
				newObject.__x0031_028 = (schemaLib._x0031_028)__x0031_028.clone();
			newObject.__x0031_031 = null;
			if (__x0031_031 != null)
				newObject.__x0031_031 = (schemaLib._x0031_031A)__x0031_031.clone();
	
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
	public schemaLib._x0031_013 get_x0031_013() {
		return __x0031_013;  
	}
	public void set_x0031_013(schemaLib._x0031_013 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_013 = null;
		else {
			setElementName(value.getBase(), "_x0031_013");
			__x0031_013 = value; 
		}
	}
	protected schemaLib._x0031_013 __x0031_013;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_015 get_x0031_015() {
		return __x0031_015;  
	}
	public void set_x0031_015(schemaLib._x0031_015 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_015 = null;
		else {
			setElementName(value.getBase(), "_x0031_015");
			__x0031_015 = value; 
		}
	}
	protected schemaLib._x0031_015 __x0031_015;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_019A get_x0031_019() {
		return __x0031_019;  
	}
	public void set_x0031_019(schemaLib._x0031_019A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_019 = null;
		else {
			setElementName(value.getBase(), "_x0031_019");
			__x0031_019 = value; 
		}
	}
	protected schemaLib._x0031_019A __x0031_019;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_022 get_x0031_022() {
		return __x0031_022;  
	}
	public void set_x0031_022(schemaLib._x0031_022 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_022 = null;
		else {
			setElementName(value.getBase(), "_x0031_022");
			__x0031_022 = value; 
		}
	}
	protected schemaLib._x0031_022 __x0031_022;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_028 get_x0031_028() {
		return __x0031_028;  
	}
	public void set_x0031_028(schemaLib._x0031_028 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_028 = null;
		else {
			setElementName(value.getBase(), "_x0031_028");
			__x0031_028 = value; 
		}
	}
	protected schemaLib._x0031_028 __x0031_028;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_031A get_x0031_031() {
		return __x0031_031;  
	}
	public void set_x0031_031(schemaLib._x0031_031A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_031 = null;
		else {
			setElementName(value.getBase(), "_x0031_031");
			__x0031_031 = value; 
		}
	}
	protected schemaLib._x0031_031A __x0031_031;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_010", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_013", "", findGetterMethod("schemaLib._x0031_010", "get_x0031_013"), findSetterMethod("schemaLib._x0031_010", "set_x0031_013", "schemaLib._x0031_013"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_013.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_015", "", findGetterMethod("schemaLib._x0031_010", "get_x0031_015"), findSetterMethod("schemaLib._x0031_010", "set_x0031_015", "schemaLib._x0031_015"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_015.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_019", "", findGetterMethod("schemaLib._x0031_010", "get_x0031_019"), findSetterMethod("schemaLib._x0031_010", "set_x0031_019", "schemaLib._x0031_019A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_019A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_022", "", findGetterMethod("schemaLib._x0031_010", "get_x0031_022"), findSetterMethod("schemaLib._x0031_010", "set_x0031_022", "schemaLib._x0031_022"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_022.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_028", "", findGetterMethod("schemaLib._x0031_010", "get_x0031_028"), findSetterMethod("schemaLib._x0031_010", "set_x0031_028", "schemaLib._x0031_028"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_028.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_031", "", findGetterMethod("schemaLib._x0031_010", "get_x0031_031"), findSetterMethod("schemaLib._x0031_010", "set_x0031_031", "schemaLib._x0031_031A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_031A.class)
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


