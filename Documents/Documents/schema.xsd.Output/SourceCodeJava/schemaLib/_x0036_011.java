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
// This class represents the ComplexType _x0036_011
// </summary>
public class _x0036_011 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_011
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_011() {
		setElementName("_x0036_011");
		init();
	}
	public _x0036_011(String elementName) {
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
			__x0036_017 = null;
			__x0036_018 = null;
			__x0036_020 = null;
			__x0036_022 = null;
			__x0036_026 = null;
			__x0036_035 = null;
			__x0036_041 = null;
			__x0036_044 = null;
			__x0036_049 = null;
			__x0036_052 = null;

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
			schemaLib._x0036_011 newObject = (schemaLib._x0036_011)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_017 = null;
			if (__x0036_017 != null)
				newObject.__x0036_017 = (schemaLib._x0036_017)__x0036_017.clone();
			newObject.__x0036_018 = null;
			if (__x0036_018 != null)
				newObject.__x0036_018 = (schemaLib._x0036_018A)__x0036_018.clone();
			newObject.__x0036_020 = null;
			if (__x0036_020 != null)
				newObject.__x0036_020 = (schemaLib._x0036_020)__x0036_020.clone();
			newObject.__x0036_022 = null;
			if (__x0036_022 != null)
				newObject.__x0036_022 = (schemaLib._x0036_022)__x0036_022.clone();
			newObject.__x0036_026 = null;
			if (__x0036_026 != null)
				newObject.__x0036_026 = (schemaLib._x0036_026A)__x0036_026.clone();
			newObject.__x0036_035 = null;
			if (__x0036_035 != null)
				newObject.__x0036_035 = (schemaLib._x0036_035)__x0036_035.clone();
			newObject.__x0036_041 = null;
			if (__x0036_041 != null)
				newObject.__x0036_041 = (schemaLib._x0036_041)__x0036_041.clone();
			newObject.__x0036_044 = null;
			if (__x0036_044 != null)
				newObject.__x0036_044 = (schemaLib._x0036_044A)__x0036_044.clone();
			newObject.__x0036_049 = null;
			if (__x0036_049 != null)
				newObject.__x0036_049 = (schemaLib._x0036_049)__x0036_049.clone();
			newObject.__x0036_052 = null;
			if (__x0036_052 != null)
				newObject.__x0036_052 = (schemaLib._x0036_052)__x0036_052.clone();
	
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
	public schemaLib._x0036_017 get_x0036_017() {
		return __x0036_017;  
	}
	public void set_x0036_017(schemaLib._x0036_017 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_017 = null;
		else {
			setElementName(value.getBase(), "_x0036_017");
			__x0036_017 = value; 
		}
	}
	protected schemaLib._x0036_017 __x0036_017;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_018A get_x0036_018() {
		return __x0036_018;  
	}
	public void set_x0036_018(schemaLib._x0036_018A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_018 = null;
		else {
			setElementName(value.getBase(), "_x0036_018");
			__x0036_018 = value; 
		}
	}
	protected schemaLib._x0036_018A __x0036_018;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_020 get_x0036_020() {
		return __x0036_020;  
	}
	public void set_x0036_020(schemaLib._x0036_020 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_020 = null;
		else {
			setElementName(value.getBase(), "_x0036_020");
			__x0036_020 = value; 
		}
	}
	protected schemaLib._x0036_020 __x0036_020;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_022 get_x0036_022() {
		return __x0036_022;  
	}
	public void set_x0036_022(schemaLib._x0036_022 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_022 = null;
		else {
			setElementName(value.getBase(), "_x0036_022");
			__x0036_022 = value; 
		}
	}
	protected schemaLib._x0036_022 __x0036_022;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_026A get_x0036_026() {
		return __x0036_026;  
	}
	public void set_x0036_026(schemaLib._x0036_026A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_026 = null;
		else {
			setElementName(value.getBase(), "_x0036_026");
			__x0036_026 = value; 
		}
	}
	protected schemaLib._x0036_026A __x0036_026;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_035 get_x0036_035() {
		return __x0036_035;  
	}
	public void set_x0036_035(schemaLib._x0036_035 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_035 = null;
		else {
			setElementName(value.getBase(), "_x0036_035");
			__x0036_035 = value; 
		}
	}
	protected schemaLib._x0036_035 __x0036_035;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_041 get_x0036_041() {
		return __x0036_041;  
	}
	public void set_x0036_041(schemaLib._x0036_041 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_041 = null;
		else {
			setElementName(value.getBase(), "_x0036_041");
			__x0036_041 = value; 
		}
	}
	protected schemaLib._x0036_041 __x0036_041;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_044A get_x0036_044() {
		return __x0036_044;  
	}
	public void set_x0036_044(schemaLib._x0036_044A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_044 = null;
		else {
			setElementName(value.getBase(), "_x0036_044");
			__x0036_044 = value; 
		}
	}
	protected schemaLib._x0036_044A __x0036_044;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_049 get_x0036_049() {
		return __x0036_049;  
	}
	public void set_x0036_049(schemaLib._x0036_049 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_049 = null;
		else {
			setElementName(value.getBase(), "_x0036_049");
			__x0036_049 = value; 
		}
	}
	protected schemaLib._x0036_049 __x0036_049;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_052 get_x0036_052() {
		return __x0036_052;  
	}
	public void set_x0036_052(schemaLib._x0036_052 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_052 = null;
		else {
			setElementName(value.getBase(), "_x0036_052");
			__x0036_052 = value; 
		}
	}
	protected schemaLib._x0036_052 __x0036_052;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_011", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_017", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_017"), findSetterMethod("schemaLib._x0036_011", "set_x0036_017", "schemaLib._x0036_017"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_017.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_018", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_018"), findSetterMethod("schemaLib._x0036_011", "set_x0036_018", "schemaLib._x0036_018A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_018A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_020", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_020"), findSetterMethod("schemaLib._x0036_011", "set_x0036_020", "schemaLib._x0036_020"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_020.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_022", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_022"), findSetterMethod("schemaLib._x0036_011", "set_x0036_022", "schemaLib._x0036_022"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_022.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_026", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_026"), findSetterMethod("schemaLib._x0036_011", "set_x0036_026", "schemaLib._x0036_026A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_026A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_035", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_035"), findSetterMethod("schemaLib._x0036_011", "set_x0036_035", "schemaLib._x0036_035"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_035.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_041", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_041"), findSetterMethod("schemaLib._x0036_011", "set_x0036_041", "schemaLib._x0036_041"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_041.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_044", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_044"), findSetterMethod("schemaLib._x0036_011", "set_x0036_044", "schemaLib._x0036_044A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_044A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_049", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_049"), findSetterMethod("schemaLib._x0036_011", "set_x0036_049", "schemaLib._x0036_049"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_049.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_052", "", findGetterMethod("schemaLib._x0036_011", "get_x0036_052"), findSetterMethod("schemaLib._x0036_011", "set_x0036_052", "schemaLib._x0036_052"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_052.class)
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


