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
// This class represents the ComplexType _x0036_926
// </summary>
public class _x0036_926 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_926
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_926() {
		setElementName("_x0036_926");
		init();
	}
	public _x0036_926(String elementName) {
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
			__x0036_963 = null;
			__x0036_966 = null;
			__x0036_988 = null;
			__x0036_991 = null;
			__x0036_994 = null;
			__x0037_028 = null;
			__x0037_034 = null;
			__x0037_036 = null;
			__x0037_047 = null;
			__x0037_421 = null;
			__x0037_438 = null;
			__x0037_475 = null;

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
			schemaLib._x0036_926 newObject = (schemaLib._x0036_926)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_963 = null;
			if (__x0036_963 != null)
				newObject.__x0036_963 = (schemaLib._x0036_963)__x0036_963.clone();
			newObject.__x0036_966 = null;
			if (__x0036_966 != null)
				newObject.__x0036_966 = (schemaLib._x0036_966)__x0036_966.clone();
			newObject.__x0036_988 = null;
			if (__x0036_988 != null)
				newObject.__x0036_988 = (schemaLib._x0036_988)__x0036_988.clone();
			newObject.__x0036_991 = null;
			if (__x0036_991 != null)
				newObject.__x0036_991 = (schemaLib._x0036_991)__x0036_991.clone();
			newObject.__x0036_994 = null;
			if (__x0036_994 != null)
				newObject.__x0036_994 = (schemaLib._x0036_994)__x0036_994.clone();
			newObject.__x0037_028 = null;
			if (__x0037_028 != null)
				newObject.__x0037_028 = (schemaLib._x0037_028)__x0037_028.clone();
			newObject.__x0037_034 = null;
			if (__x0037_034 != null)
				newObject.__x0037_034 = (schemaLib._x0037_034)__x0037_034.clone();
			newObject.__x0037_036 = null;
			if (__x0037_036 != null)
				newObject.__x0037_036 = (schemaLib._x0037_036)__x0037_036.clone();
			newObject.__x0037_047 = null;
			if (__x0037_047 != null)
				newObject.__x0037_047 = (schemaLib._x0037_047)__x0037_047.clone();
			newObject.__x0037_421 = null;
			if (__x0037_421 != null)
				newObject.__x0037_421 = (schemaLib._x0037_421)__x0037_421.clone();
			newObject.__x0037_438 = null;
			if (__x0037_438 != null)
				newObject.__x0037_438 = (schemaLib._x0037_438)__x0037_438.clone();
			newObject.__x0037_475 = null;
			if (__x0037_475 != null)
				newObject.__x0037_475 = (schemaLib._x0037_475)__x0037_475.clone();
	
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
	public schemaLib._x0036_963 get_x0036_963() {
		return __x0036_963;  
	}
	public void set_x0036_963(schemaLib._x0036_963 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_963 = null;
		else {
			setElementName(value.getBase(), "_x0036_963");
			__x0036_963 = value; 
		}
	}
	protected schemaLib._x0036_963 __x0036_963;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_966 get_x0036_966() {
		return __x0036_966;  
	}
	public void set_x0036_966(schemaLib._x0036_966 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_966 = null;
		else {
			setElementName(value.getBase(), "_x0036_966");
			__x0036_966 = value; 
		}
	}
	protected schemaLib._x0036_966 __x0036_966;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_988 get_x0036_988() {
		return __x0036_988;  
	}
	public void set_x0036_988(schemaLib._x0036_988 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_988 = null;
		else {
			setElementName(value.getBase(), "_x0036_988");
			__x0036_988 = value; 
		}
	}
	protected schemaLib._x0036_988 __x0036_988;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_991 get_x0036_991() {
		return __x0036_991;  
	}
	public void set_x0036_991(schemaLib._x0036_991 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_991 = null;
		else {
			setElementName(value.getBase(), "_x0036_991");
			__x0036_991 = value; 
		}
	}
	protected schemaLib._x0036_991 __x0036_991;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_994 get_x0036_994() {
		return __x0036_994;  
	}
	public void set_x0036_994(schemaLib._x0036_994 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_994 = null;
		else {
			setElementName(value.getBase(), "_x0036_994");
			__x0036_994 = value; 
		}
	}
	protected schemaLib._x0036_994 __x0036_994;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_028 get_x0037_028() {
		return __x0037_028;  
	}
	public void set_x0037_028(schemaLib._x0037_028 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_028 = null;
		else {
			setElementName(value.getBase(), "_x0037_028");
			__x0037_028 = value; 
		}
	}
	protected schemaLib._x0037_028 __x0037_028;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_034 get_x0037_034() {
		return __x0037_034;  
	}
	public void set_x0037_034(schemaLib._x0037_034 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_034 = null;
		else {
			setElementName(value.getBase(), "_x0037_034");
			__x0037_034 = value; 
		}
	}
	protected schemaLib._x0037_034 __x0037_034;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_036 get_x0037_036() {
		return __x0037_036;  
	}
	public void set_x0037_036(schemaLib._x0037_036 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_036 = null;
		else {
			setElementName(value.getBase(), "_x0037_036");
			__x0037_036 = value; 
		}
	}
	protected schemaLib._x0037_036 __x0037_036;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_047 get_x0037_047() {
		return __x0037_047;  
	}
	public void set_x0037_047(schemaLib._x0037_047 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_047 = null;
		else {
			setElementName(value.getBase(), "_x0037_047");
			__x0037_047 = value; 
		}
	}
	protected schemaLib._x0037_047 __x0037_047;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_421 get_x0037_421() {
		return __x0037_421;  
	}
	public void set_x0037_421(schemaLib._x0037_421 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_421 = null;
		else {
			setElementName(value.getBase(), "_x0037_421");
			__x0037_421 = value; 
		}
	}
	protected schemaLib._x0037_421 __x0037_421;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_438 get_x0037_438() {
		return __x0037_438;  
	}
	public void set_x0037_438(schemaLib._x0037_438 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_438 = null;
		else {
			setElementName(value.getBase(), "_x0037_438");
			__x0037_438 = value; 
		}
	}
	protected schemaLib._x0037_438 __x0037_438;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_475 get_x0037_475() {
		return __x0037_475;  
	}
	public void set_x0037_475(schemaLib._x0037_475 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_475 = null;
		else {
			setElementName(value.getBase(), "_x0037_475");
			__x0037_475 = value; 
		}
	}
	protected schemaLib._x0037_475 __x0037_475;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_926", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_963", "", findGetterMethod("schemaLib._x0036_926", "get_x0036_963"), findSetterMethod("schemaLib._x0036_926", "set_x0036_963", "schemaLib._x0036_963"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_963.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_966", "", findGetterMethod("schemaLib._x0036_926", "get_x0036_966"), findSetterMethod("schemaLib._x0036_926", "set_x0036_966", "schemaLib._x0036_966"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_966.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_988", "", findGetterMethod("schemaLib._x0036_926", "get_x0036_988"), findSetterMethod("schemaLib._x0036_926", "set_x0036_988", "schemaLib._x0036_988"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_988.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_991", "", findGetterMethod("schemaLib._x0036_926", "get_x0036_991"), findSetterMethod("schemaLib._x0036_926", "set_x0036_991", "schemaLib._x0036_991"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_991.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_994", "", findGetterMethod("schemaLib._x0036_926", "get_x0036_994"), findSetterMethod("schemaLib._x0036_926", "set_x0036_994", "schemaLib._x0036_994"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_994.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_028", "", findGetterMethod("schemaLib._x0036_926", "get_x0037_028"), findSetterMethod("schemaLib._x0036_926", "set_x0037_028", "schemaLib._x0037_028"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_028.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_034", "", findGetterMethod("schemaLib._x0036_926", "get_x0037_034"), findSetterMethod("schemaLib._x0036_926", "set_x0037_034", "schemaLib._x0037_034"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_034.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_036", "", findGetterMethod("schemaLib._x0036_926", "get_x0037_036"), findSetterMethod("schemaLib._x0036_926", "set_x0037_036", "schemaLib._x0037_036"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_036.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_047", "", findGetterMethod("schemaLib._x0036_926", "get_x0037_047"), findSetterMethod("schemaLib._x0036_926", "set_x0037_047", "schemaLib._x0037_047"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_047.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_421", "", findGetterMethod("schemaLib._x0036_926", "get_x0037_421"), findSetterMethod("schemaLib._x0036_926", "set_x0037_421", "schemaLib._x0037_421"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_421.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_438", "", findGetterMethod("schemaLib._x0036_926", "get_x0037_438"), findSetterMethod("schemaLib._x0036_926", "set_x0037_438", "schemaLib._x0037_438"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_438.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_475", "", findGetterMethod("schemaLib._x0036_926", "get_x0037_475"), findSetterMethod("schemaLib._x0036_926", "set_x0037_475", "schemaLib._x0037_475"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_475.class)
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


