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
// This class represents the ComplexType _x0036_207
// </summary>
public class _x0036_207 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_207
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_207() {
		setElementName("_x0036_207");
		init();
	}
	public _x0036_207(String elementName) {
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
			__x0036_210 = null;
			__x0036_212 = null;
			__x0036_216 = null;
			__x0036_219 = null;
			__x0036_222 = null;
			__x0036_223 = null;
			__x0036_229 = null;
			__x0036_234 = null;
			__x0036_237 = null;

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
			schemaLib._x0036_207 newObject = (schemaLib._x0036_207)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_210 = null;
			if (__x0036_210 != null)
				newObject.__x0036_210 = (schemaLib._x0036_210)__x0036_210.clone();
			newObject.__x0036_212 = null;
			if (__x0036_212 != null)
				newObject.__x0036_212 = (schemaLib._x0036_212)__x0036_212.clone();
			newObject.__x0036_216 = null;
			if (__x0036_216 != null)
				newObject.__x0036_216 = (schemaLib._x0036_216)__x0036_216.clone();
			newObject.__x0036_219 = null;
			if (__x0036_219 != null)
				newObject.__x0036_219 = (schemaLib._x0036_219)__x0036_219.clone();
			newObject.__x0036_222 = null;
			if (__x0036_222 != null)
				newObject.__x0036_222 = (schemaLib._x0036_222)__x0036_222.clone();
			newObject.__x0036_223 = null;
			if (__x0036_223 != null)
				newObject.__x0036_223 = (schemaLib._x0036_223)__x0036_223.clone();
			newObject.__x0036_229 = null;
			if (__x0036_229 != null)
				newObject.__x0036_229 = (schemaLib._x0036_229)__x0036_229.clone();
			newObject.__x0036_234 = null;
			if (__x0036_234 != null)
				newObject.__x0036_234 = (schemaLib._x0036_234)__x0036_234.clone();
			newObject.__x0036_237 = null;
			if (__x0036_237 != null)
				newObject.__x0036_237 = (schemaLib._x0036_237)__x0036_237.clone();
	
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
	public schemaLib._x0036_210 get_x0036_210() {
		return __x0036_210;  
	}
	public void set_x0036_210(schemaLib._x0036_210 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_210 = null;
		else {
			setElementName(value.getBase(), "_x0036_210");
			__x0036_210 = value; 
		}
	}
	protected schemaLib._x0036_210 __x0036_210;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_212 get_x0036_212() {
		return __x0036_212;  
	}
	public void set_x0036_212(schemaLib._x0036_212 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_212 = null;
		else {
			setElementName(value.getBase(), "_x0036_212");
			__x0036_212 = value; 
		}
	}
	protected schemaLib._x0036_212 __x0036_212;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_216 get_x0036_216() {
		return __x0036_216;  
	}
	public void set_x0036_216(schemaLib._x0036_216 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_216 = null;
		else {
			setElementName(value.getBase(), "_x0036_216");
			__x0036_216 = value; 
		}
	}
	protected schemaLib._x0036_216 __x0036_216;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_219 get_x0036_219() {
		return __x0036_219;  
	}
	public void set_x0036_219(schemaLib._x0036_219 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_219 = null;
		else {
			setElementName(value.getBase(), "_x0036_219");
			__x0036_219 = value; 
		}
	}
	protected schemaLib._x0036_219 __x0036_219;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_222 get_x0036_222() {
		return __x0036_222;  
	}
	public void set_x0036_222(schemaLib._x0036_222 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_222 = null;
		else {
			setElementName(value.getBase(), "_x0036_222");
			__x0036_222 = value; 
		}
	}
	protected schemaLib._x0036_222 __x0036_222;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_223 get_x0036_223() {
		return __x0036_223;  
	}
	public void set_x0036_223(schemaLib._x0036_223 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_223 = null;
		else {
			setElementName(value.getBase(), "_x0036_223");
			__x0036_223 = value; 
		}
	}
	protected schemaLib._x0036_223 __x0036_223;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_229 get_x0036_229() {
		return __x0036_229;  
	}
	public void set_x0036_229(schemaLib._x0036_229 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_229 = null;
		else {
			setElementName(value.getBase(), "_x0036_229");
			__x0036_229 = value; 
		}
	}
	protected schemaLib._x0036_229 __x0036_229;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_234 get_x0036_234() {
		return __x0036_234;  
	}
	public void set_x0036_234(schemaLib._x0036_234 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_234 = null;
		else {
			setElementName(value.getBase(), "_x0036_234");
			__x0036_234 = value; 
		}
	}
	protected schemaLib._x0036_234 __x0036_234;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_237 get_x0036_237() {
		return __x0036_237;  
	}
	public void set_x0036_237(schemaLib._x0036_237 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_237 = null;
		else {
			setElementName(value.getBase(), "_x0036_237");
			__x0036_237 = value; 
		}
	}
	protected schemaLib._x0036_237 __x0036_237;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_207", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_210", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_210"), findSetterMethod("schemaLib._x0036_207", "set_x0036_210", "schemaLib._x0036_210"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_210.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_212", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_212"), findSetterMethod("schemaLib._x0036_207", "set_x0036_212", "schemaLib._x0036_212"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_212.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_216", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_216"), findSetterMethod("schemaLib._x0036_207", "set_x0036_216", "schemaLib._x0036_216"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_216.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_219", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_219"), findSetterMethod("schemaLib._x0036_207", "set_x0036_219", "schemaLib._x0036_219"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_219.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_222", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_222"), findSetterMethod("schemaLib._x0036_207", "set_x0036_222", "schemaLib._x0036_222"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_222.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_223", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_223"), findSetterMethod("schemaLib._x0036_207", "set_x0036_223", "schemaLib._x0036_223"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_223.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_229", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_229"), findSetterMethod("schemaLib._x0036_207", "set_x0036_229", "schemaLib._x0036_229"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_229.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_234", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_234"), findSetterMethod("schemaLib._x0036_207", "set_x0036_234", "schemaLib._x0036_234"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_234.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_237", "", findGetterMethod("schemaLib._x0036_207", "get_x0036_237"), findSetterMethod("schemaLib._x0036_207", "set_x0036_237", "schemaLib._x0036_237"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_237.class)
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


