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
// This class represents the ComplexType _x0033_250
// </summary>
public class _x0033_250 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_250
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_250() {
		setElementName("_x0033_250");
		init();
	}
	public _x0033_250(String elementName) {
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
			__x0033_253 = null;
			__x0033_255 = null;
			__x0033_259 = null;
			__x0033_262 = null;
			__x0033_265 = null;
			__x0033_268 = null;
			__x0033_280 = null;

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
			schemaLib._x0033_250 newObject = (schemaLib._x0033_250)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_253 = null;
			if (__x0033_253 != null)
				newObject.__x0033_253 = (schemaLib._x0033_253)__x0033_253.clone();
			newObject.__x0033_255 = null;
			if (__x0033_255 != null)
				newObject.__x0033_255 = (schemaLib._x0033_255)__x0033_255.clone();
			newObject.__x0033_259 = null;
			if (__x0033_259 != null)
				newObject.__x0033_259 = (schemaLib._x0033_259)__x0033_259.clone();
			newObject.__x0033_262 = null;
			if (__x0033_262 != null)
				newObject.__x0033_262 = (schemaLib._x0033_262)__x0033_262.clone();
			newObject.__x0033_265 = null;
			if (__x0033_265 != null)
				newObject.__x0033_265 = (schemaLib._x0033_265)__x0033_265.clone();
			newObject.__x0033_268 = null;
			if (__x0033_268 != null)
				newObject.__x0033_268 = (schemaLib._x0033_268)__x0033_268.clone();
			newObject.__x0033_280 = null;
			if (__x0033_280 != null)
				newObject.__x0033_280 = (schemaLib._x0033_280)__x0033_280.clone();
	
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
	public schemaLib._x0033_253 get_x0033_253() {
		return __x0033_253;  
	}
	public void set_x0033_253(schemaLib._x0033_253 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_253 = null;
		else {
			setElementName(value.getBase(), "_x0033_253");
			__x0033_253 = value; 
		}
	}
	protected schemaLib._x0033_253 __x0033_253;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_255 get_x0033_255() {
		return __x0033_255;  
	}
	public void set_x0033_255(schemaLib._x0033_255 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_255 = null;
		else {
			setElementName(value.getBase(), "_x0033_255");
			__x0033_255 = value; 
		}
	}
	protected schemaLib._x0033_255 __x0033_255;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_259 get_x0033_259() {
		return __x0033_259;  
	}
	public void set_x0033_259(schemaLib._x0033_259 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_259 = null;
		else {
			setElementName(value.getBase(), "_x0033_259");
			__x0033_259 = value; 
		}
	}
	protected schemaLib._x0033_259 __x0033_259;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_262 get_x0033_262() {
		return __x0033_262;  
	}
	public void set_x0033_262(schemaLib._x0033_262 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_262 = null;
		else {
			setElementName(value.getBase(), "_x0033_262");
			__x0033_262 = value; 
		}
	}
	protected schemaLib._x0033_262 __x0033_262;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_265 get_x0033_265() {
		return __x0033_265;  
	}
	public void set_x0033_265(schemaLib._x0033_265 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_265 = null;
		else {
			setElementName(value.getBase(), "_x0033_265");
			__x0033_265 = value; 
		}
	}
	protected schemaLib._x0033_265 __x0033_265;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_268 get_x0033_268() {
		return __x0033_268;  
	}
	public void set_x0033_268(schemaLib._x0033_268 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_268 = null;
		else {
			setElementName(value.getBase(), "_x0033_268");
			__x0033_268 = value; 
		}
	}
	protected schemaLib._x0033_268 __x0033_268;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_280 get_x0033_280() {
		return __x0033_280;  
	}
	public void set_x0033_280(schemaLib._x0033_280 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_280 = null;
		else {
			setElementName(value.getBase(), "_x0033_280");
			__x0033_280 = value; 
		}
	}
	protected schemaLib._x0033_280 __x0033_280;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_250", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_253", "", findGetterMethod("schemaLib._x0033_250", "get_x0033_253"), findSetterMethod("schemaLib._x0033_250", "set_x0033_253", "schemaLib._x0033_253"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_253.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_255", "", findGetterMethod("schemaLib._x0033_250", "get_x0033_255"), findSetterMethod("schemaLib._x0033_250", "set_x0033_255", "schemaLib._x0033_255"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_255.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_259", "", findGetterMethod("schemaLib._x0033_250", "get_x0033_259"), findSetterMethod("schemaLib._x0033_250", "set_x0033_259", "schemaLib._x0033_259"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_259.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_262", "", findGetterMethod("schemaLib._x0033_250", "get_x0033_262"), findSetterMethod("schemaLib._x0033_250", "set_x0033_262", "schemaLib._x0033_262"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_262.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_265", "", findGetterMethod("schemaLib._x0033_250", "get_x0033_265"), findSetterMethod("schemaLib._x0033_250", "set_x0033_265", "schemaLib._x0033_265"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_265.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_268", "", findGetterMethod("schemaLib._x0033_250", "get_x0033_268"), findSetterMethod("schemaLib._x0033_250", "set_x0033_268", "schemaLib._x0033_268"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_268.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_280", "", findGetterMethod("schemaLib._x0033_250", "get_x0033_280"), findSetterMethod("schemaLib._x0033_250", "set_x0033_280", "schemaLib._x0033_280"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_280.class)
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


