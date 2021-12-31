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
// This class represents the ComplexType _x0036_5374
// </summary>
public class _x0036_5374 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_5374
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_5374() {
		setElementName("_x0036_5374");
		init();
	}
	public _x0036_5374(String elementName) {
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
			__x0031_7586 = null;
			__x0032_7071 = null;
			__x0033_5166 = null;
			__x0033_7860 = null;
			__x0034_0701 = null;
			__x0034_4928 = null;
			__x0035_2203 = null;
			__x0036_2507 = null;
			__x0036_2527 = null;

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
			schemaLib._x0036_5374 newObject = (schemaLib._x0036_5374)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_7586 = null;
			if (__x0031_7586 != null)
				newObject.__x0031_7586 = (schemaLib._x0031_7586)__x0031_7586.clone();
			newObject.__x0032_7071 = null;
			if (__x0032_7071 != null)
				newObject.__x0032_7071 = (schemaLib._x0032_7071)__x0032_7071.clone();
			newObject.__x0033_5166 = null;
			if (__x0033_5166 != null)
				newObject.__x0033_5166 = (schemaLib._x0033_5166)__x0033_5166.clone();
			newObject.__x0033_7860 = null;
			if (__x0033_7860 != null)
				newObject.__x0033_7860 = (schemaLib._x0033_7860)__x0033_7860.clone();
			newObject.__x0034_0701 = null;
			if (__x0034_0701 != null)
				newObject.__x0034_0701 = (schemaLib._x0034_0701)__x0034_0701.clone();
			newObject.__x0034_4928 = null;
			if (__x0034_4928 != null)
				newObject.__x0034_4928 = (schemaLib._x0034_4928)__x0034_4928.clone();
			newObject.__x0035_2203 = null;
			if (__x0035_2203 != null)
				newObject.__x0035_2203 = (schemaLib._x0035_2203)__x0035_2203.clone();
			newObject.__x0036_2507 = null;
			if (__x0036_2507 != null)
				newObject.__x0036_2507 = (schemaLib._x0036_2507)__x0036_2507.clone();
			newObject.__x0036_2527 = null;
			if (__x0036_2527 != null)
				newObject.__x0036_2527 = (schemaLib._x0036_2527)__x0036_2527.clone();
	
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
	public schemaLib._x0031_7586 get_x0031_7586() {
		return __x0031_7586;  
	}
	public void set_x0031_7586(schemaLib._x0031_7586 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7586 = null;
		else {
			setElementName(value.getBase(), "_x0031_7586");
			__x0031_7586 = value; 
		}
	}
	protected schemaLib._x0031_7586 __x0031_7586;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_7071 get_x0032_7071() {
		return __x0032_7071;  
	}
	public void set_x0032_7071(schemaLib._x0032_7071 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_7071 = null;
		else {
			setElementName(value.getBase(), "_x0032_7071");
			__x0032_7071 = value; 
		}
	}
	protected schemaLib._x0032_7071 __x0032_7071;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_5166 get_x0033_5166() {
		return __x0033_5166;  
	}
	public void set_x0033_5166(schemaLib._x0033_5166 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_5166 = null;
		else {
			setElementName(value.getBase(), "_x0033_5166");
			__x0033_5166 = value; 
		}
	}
	protected schemaLib._x0033_5166 __x0033_5166;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_7860 get_x0033_7860() {
		return __x0033_7860;  
	}
	public void set_x0033_7860(schemaLib._x0033_7860 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_7860 = null;
		else {
			setElementName(value.getBase(), "_x0033_7860");
			__x0033_7860 = value; 
		}
	}
	protected schemaLib._x0033_7860 __x0033_7860;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_0701 get_x0034_0701() {
		return __x0034_0701;  
	}
	public void set_x0034_0701(schemaLib._x0034_0701 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_0701 = null;
		else {
			setElementName(value.getBase(), "_x0034_0701");
			__x0034_0701 = value; 
		}
	}
	protected schemaLib._x0034_0701 __x0034_0701;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_4928 get_x0034_4928() {
		return __x0034_4928;  
	}
	public void set_x0034_4928(schemaLib._x0034_4928 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_4928 = null;
		else {
			setElementName(value.getBase(), "_x0034_4928");
			__x0034_4928 = value; 
		}
	}
	protected schemaLib._x0034_4928 __x0034_4928;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_2203 get_x0035_2203() {
		return __x0035_2203;  
	}
	public void set_x0035_2203(schemaLib._x0035_2203 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_2203 = null;
		else {
			setElementName(value.getBase(), "_x0035_2203");
			__x0035_2203 = value; 
		}
	}
	protected schemaLib._x0035_2203 __x0035_2203;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_2507 get_x0036_2507() {
		return __x0036_2507;  
	}
	public void set_x0036_2507(schemaLib._x0036_2507 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_2507 = null;
		else {
			setElementName(value.getBase(), "_x0036_2507");
			__x0036_2507 = value; 
		}
	}
	protected schemaLib._x0036_2507 __x0036_2507;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_2527 get_x0036_2527() {
		return __x0036_2527;  
	}
	public void set_x0036_2527(schemaLib._x0036_2527 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_2527 = null;
		else {
			setElementName(value.getBase(), "_x0036_2527");
			__x0036_2527 = value; 
		}
	}
	protected schemaLib._x0036_2527 __x0036_2527;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_5374", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7586", "", findGetterMethod("schemaLib._x0036_5374", "get_x0031_7586"), findSetterMethod("schemaLib._x0036_5374", "set_x0031_7586", "schemaLib._x0031_7586"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7586.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_7071", "", findGetterMethod("schemaLib._x0036_5374", "get_x0032_7071"), findSetterMethod("schemaLib._x0036_5374", "set_x0032_7071", "schemaLib._x0032_7071"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_7071.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_5166", "", findGetterMethod("schemaLib._x0036_5374", "get_x0033_5166"), findSetterMethod("schemaLib._x0036_5374", "set_x0033_5166", "schemaLib._x0033_5166"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_5166.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_7860", "", findGetterMethod("schemaLib._x0036_5374", "get_x0033_7860"), findSetterMethod("schemaLib._x0036_5374", "set_x0033_7860", "schemaLib._x0033_7860"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_7860.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_0701", "", findGetterMethod("schemaLib._x0036_5374", "get_x0034_0701"), findSetterMethod("schemaLib._x0036_5374", "set_x0034_0701", "schemaLib._x0034_0701"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_0701.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_4928", "", findGetterMethod("schemaLib._x0036_5374", "get_x0034_4928"), findSetterMethod("schemaLib._x0036_5374", "set_x0034_4928", "schemaLib._x0034_4928"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_4928.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_2203", "", findGetterMethod("schemaLib._x0036_5374", "get_x0035_2203"), findSetterMethod("schemaLib._x0036_5374", "set_x0035_2203", "schemaLib._x0035_2203"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_2203.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_2507", "", findGetterMethod("schemaLib._x0036_5374", "get_x0036_2507"), findSetterMethod("schemaLib._x0036_5374", "set_x0036_2507", "schemaLib._x0036_2507"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_2507.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_2527", "", findGetterMethod("schemaLib._x0036_5374", "get_x0036_2527"), findSetterMethod("schemaLib._x0036_5374", "set_x0036_2527", "schemaLib._x0036_2527"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_2527.class)
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


