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
// This class represents the ComplexType _x0034_168
// </summary>
public class _x0034_168 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_168
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_168() {
		setElementName("_x0034_168");
		init();
	}
	public _x0034_168(String elementName) {
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
			__x0034_209 = null;
			__x0034_237 = null;
			__x0034_336 = null;
			__x0034_382 = null;
			__x0034_420 = null;
			__x0034_479 = null;
			__x0034_495 = null;
			__x0034_506 = null;
			__x0034_515 = null;
			__x0034_521 = null;
			__x0034_528 = null;
			__x0034_545 = null;

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
			schemaLib._x0034_168 newObject = (schemaLib._x0034_168)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_209 = null;
			if (__x0034_209 != null)
				newObject.__x0034_209 = (schemaLib._x0034_209)__x0034_209.clone();
			newObject.__x0034_237 = null;
			if (__x0034_237 != null)
				newObject.__x0034_237 = (schemaLib._x0034_237)__x0034_237.clone();
			newObject.__x0034_336 = null;
			if (__x0034_336 != null)
				newObject.__x0034_336 = (schemaLib._x0034_336)__x0034_336.clone();
			newObject.__x0034_382 = null;
			if (__x0034_382 != null)
				newObject.__x0034_382 = (schemaLib._x0034_382)__x0034_382.clone();
			newObject.__x0034_420 = null;
			if (__x0034_420 != null)
				newObject.__x0034_420 = (schemaLib._x0034_420)__x0034_420.clone();
			newObject.__x0034_479 = null;
			if (__x0034_479 != null)
				newObject.__x0034_479 = (schemaLib._x0034_479)__x0034_479.clone();
			newObject.__x0034_495 = null;
			if (__x0034_495 != null)
				newObject.__x0034_495 = (schemaLib._x0034_495)__x0034_495.clone();
			newObject.__x0034_506 = null;
			if (__x0034_506 != null)
				newObject.__x0034_506 = (schemaLib._x0034_506B)__x0034_506.clone();
			newObject.__x0034_515 = null;
			if (__x0034_515 != null)
				newObject.__x0034_515 = (schemaLib._x0034_515)__x0034_515.clone();
			newObject.__x0034_521 = null;
			if (__x0034_521 != null)
				newObject.__x0034_521 = (schemaLib._x0034_521)__x0034_521.clone();
			newObject.__x0034_528 = null;
			if (__x0034_528 != null)
				newObject.__x0034_528 = (schemaLib._x0034_528)__x0034_528.clone();
			newObject.__x0034_545 = null;
			if (__x0034_545 != null)
				newObject.__x0034_545 = (schemaLib._x0034_545)__x0034_545.clone();
	
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
	public schemaLib._x0034_209 get_x0034_209() {
		return __x0034_209;  
	}
	public void set_x0034_209(schemaLib._x0034_209 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_209 = null;
		else {
			setElementName(value.getBase(), "_x0034_209");
			__x0034_209 = value; 
		}
	}
	protected schemaLib._x0034_209 __x0034_209;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_237 get_x0034_237() {
		return __x0034_237;  
	}
	public void set_x0034_237(schemaLib._x0034_237 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_237 = null;
		else {
			setElementName(value.getBase(), "_x0034_237");
			__x0034_237 = value; 
		}
	}
	protected schemaLib._x0034_237 __x0034_237;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_336 get_x0034_336() {
		return __x0034_336;  
	}
	public void set_x0034_336(schemaLib._x0034_336 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_336 = null;
		else {
			setElementName(value.getBase(), "_x0034_336");
			__x0034_336 = value; 
		}
	}
	protected schemaLib._x0034_336 __x0034_336;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_382 get_x0034_382() {
		return __x0034_382;  
	}
	public void set_x0034_382(schemaLib._x0034_382 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_382 = null;
		else {
			setElementName(value.getBase(), "_x0034_382");
			__x0034_382 = value; 
		}
	}
	protected schemaLib._x0034_382 __x0034_382;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_420 get_x0034_420() {
		return __x0034_420;  
	}
	public void set_x0034_420(schemaLib._x0034_420 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_420 = null;
		else {
			setElementName(value.getBase(), "_x0034_420");
			__x0034_420 = value; 
		}
	}
	protected schemaLib._x0034_420 __x0034_420;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_479 get_x0034_479() {
		return __x0034_479;  
	}
	public void set_x0034_479(schemaLib._x0034_479 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_479 = null;
		else {
			setElementName(value.getBase(), "_x0034_479");
			__x0034_479 = value; 
		}
	}
	protected schemaLib._x0034_479 __x0034_479;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_495 get_x0034_495() {
		return __x0034_495;  
	}
	public void set_x0034_495(schemaLib._x0034_495 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_495 = null;
		else {
			setElementName(value.getBase(), "_x0034_495");
			__x0034_495 = value; 
		}
	}
	protected schemaLib._x0034_495 __x0034_495;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_506B get_x0034_506() {
		return __x0034_506;  
	}
	public void set_x0034_506(schemaLib._x0034_506B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_506 = null;
		else {
			setElementName(value.getBase(), "_x0034_506");
			__x0034_506 = value; 
		}
	}
	protected schemaLib._x0034_506B __x0034_506;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_515 get_x0034_515() {
		return __x0034_515;  
	}
	public void set_x0034_515(schemaLib._x0034_515 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_515 = null;
		else {
			setElementName(value.getBase(), "_x0034_515");
			__x0034_515 = value; 
		}
	}
	protected schemaLib._x0034_515 __x0034_515;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_521 get_x0034_521() {
		return __x0034_521;  
	}
	public void set_x0034_521(schemaLib._x0034_521 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_521 = null;
		else {
			setElementName(value.getBase(), "_x0034_521");
			__x0034_521 = value; 
		}
	}
	protected schemaLib._x0034_521 __x0034_521;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_528 get_x0034_528() {
		return __x0034_528;  
	}
	public void set_x0034_528(schemaLib._x0034_528 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_528 = null;
		else {
			setElementName(value.getBase(), "_x0034_528");
			__x0034_528 = value; 
		}
	}
	protected schemaLib._x0034_528 __x0034_528;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_545 get_x0034_545() {
		return __x0034_545;  
	}
	public void set_x0034_545(schemaLib._x0034_545 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_545 = null;
		else {
			setElementName(value.getBase(), "_x0034_545");
			__x0034_545 = value; 
		}
	}
	protected schemaLib._x0034_545 __x0034_545;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_168", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_209", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_209"), findSetterMethod("schemaLib._x0034_168", "set_x0034_209", "schemaLib._x0034_209"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_209.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_237", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_237"), findSetterMethod("schemaLib._x0034_168", "set_x0034_237", "schemaLib._x0034_237"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_237.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_336", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_336"), findSetterMethod("schemaLib._x0034_168", "set_x0034_336", "schemaLib._x0034_336"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_336.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_382", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_382"), findSetterMethod("schemaLib._x0034_168", "set_x0034_382", "schemaLib._x0034_382"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_382.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_420", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_420"), findSetterMethod("schemaLib._x0034_168", "set_x0034_420", "schemaLib._x0034_420"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_420.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_479", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_479"), findSetterMethod("schemaLib._x0034_168", "set_x0034_479", "schemaLib._x0034_479"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_479.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_495", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_495"), findSetterMethod("schemaLib._x0034_168", "set_x0034_495", "schemaLib._x0034_495"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_495.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_506", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_506"), findSetterMethod("schemaLib._x0034_168", "set_x0034_506", "schemaLib._x0034_506B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_506B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_515", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_515"), findSetterMethod("schemaLib._x0034_168", "set_x0034_515", "schemaLib._x0034_515"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_515.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_521", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_521"), findSetterMethod("schemaLib._x0034_168", "set_x0034_521", "schemaLib._x0034_521"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_521.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_528", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_528"), findSetterMethod("schemaLib._x0034_168", "set_x0034_528", "schemaLib._x0034_528"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_528.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_545", "", findGetterMethod("schemaLib._x0034_168", "get_x0034_545"), findSetterMethod("schemaLib._x0034_168", "set_x0034_545", "schemaLib._x0034_545"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_545.class)
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


