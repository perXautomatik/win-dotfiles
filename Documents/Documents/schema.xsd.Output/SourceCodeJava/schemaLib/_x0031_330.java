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
// This class represents the ComplexType _x0031_330
// </summary>
public class _x0031_330 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_330
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_330() {
		setElementName("_x0031_330");
		init();
	}
	public _x0031_330(String elementName) {
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
			__x0031_157 = null;
			__x0031_158 = null;
			__x0031_171 = null;
			__x0031_172 = null;
			__x0031_182 = null;
			__x0031_193 = null;

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
			schemaLib._x0031_330 newObject = (schemaLib._x0031_330)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_157 = null;
			if (__x0031_157 != null)
				newObject.__x0031_157 = (schemaLib._x0031_157)__x0031_157.clone();
			newObject.__x0031_158 = null;
			if (__x0031_158 != null)
				newObject.__x0031_158 = (schemaLib._x0031_158)__x0031_158.clone();
			newObject.__x0031_171 = null;
			if (__x0031_171 != null)
				newObject.__x0031_171 = (schemaLib._x0031_171)__x0031_171.clone();
			newObject.__x0031_172 = null;
			if (__x0031_172 != null)
				newObject.__x0031_172 = (schemaLib._x0031_172)__x0031_172.clone();
			newObject.__x0031_182 = null;
			if (__x0031_182 != null)
				newObject.__x0031_182 = (schemaLib._x0031_182)__x0031_182.clone();
			newObject.__x0031_193 = null;
			if (__x0031_193 != null)
				newObject.__x0031_193 = (schemaLib._x0031_193A)__x0031_193.clone();
	
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
	public schemaLib._x0031_157 get_x0031_157() {
		return __x0031_157;  
	}
	public void set_x0031_157(schemaLib._x0031_157 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_157 = null;
		else {
			setElementName(value.getBase(), "_x0031_157");
			__x0031_157 = value; 
		}
	}
	protected schemaLib._x0031_157 __x0031_157;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_158 get_x0031_158() {
		return __x0031_158;  
	}
	public void set_x0031_158(schemaLib._x0031_158 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_158 = null;
		else {
			setElementName(value.getBase(), "_x0031_158");
			__x0031_158 = value; 
		}
	}
	protected schemaLib._x0031_158 __x0031_158;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_171 get_x0031_171() {
		return __x0031_171;  
	}
	public void set_x0031_171(schemaLib._x0031_171 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_171 = null;
		else {
			setElementName(value.getBase(), "_x0031_171");
			__x0031_171 = value; 
		}
	}
	protected schemaLib._x0031_171 __x0031_171;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_172 get_x0031_172() {
		return __x0031_172;  
	}
	public void set_x0031_172(schemaLib._x0031_172 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_172 = null;
		else {
			setElementName(value.getBase(), "_x0031_172");
			__x0031_172 = value; 
		}
	}
	protected schemaLib._x0031_172 __x0031_172;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_182 get_x0031_182() {
		return __x0031_182;  
	}
	public void set_x0031_182(schemaLib._x0031_182 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_182 = null;
		else {
			setElementName(value.getBase(), "_x0031_182");
			__x0031_182 = value; 
		}
	}
	protected schemaLib._x0031_182 __x0031_182;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_193A get_x0031_193() {
		return __x0031_193;  
	}
	public void set_x0031_193(schemaLib._x0031_193A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_193 = null;
		else {
			setElementName(value.getBase(), "_x0031_193");
			__x0031_193 = value; 
		}
	}
	protected schemaLib._x0031_193A __x0031_193;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_330", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_157", "", findGetterMethod("schemaLib._x0031_330", "get_x0031_157"), findSetterMethod("schemaLib._x0031_330", "set_x0031_157", "schemaLib._x0031_157"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_157.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_158", "", findGetterMethod("schemaLib._x0031_330", "get_x0031_158"), findSetterMethod("schemaLib._x0031_330", "set_x0031_158", "schemaLib._x0031_158"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_158.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_171", "", findGetterMethod("schemaLib._x0031_330", "get_x0031_171"), findSetterMethod("schemaLib._x0031_330", "set_x0031_171", "schemaLib._x0031_171"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_171.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_172", "", findGetterMethod("schemaLib._x0031_330", "get_x0031_172"), findSetterMethod("schemaLib._x0031_330", "set_x0031_172", "schemaLib._x0031_172"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_172.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_182", "", findGetterMethod("schemaLib._x0031_330", "get_x0031_182"), findSetterMethod("schemaLib._x0031_330", "set_x0031_182", "schemaLib._x0031_182"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_182.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_193", "", findGetterMethod("schemaLib._x0031_330", "get_x0031_193"), findSetterMethod("schemaLib._x0031_330", "set_x0031_193", "schemaLib._x0031_193A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_193A.class)
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


