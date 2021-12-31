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
// This class represents the ComplexType _x0033_488
// </summary>
public class _x0033_488 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_488
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_488() {
		setElementName("_x0033_488");
		init();
	}
	public _x0033_488(String elementName) {
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
			__x0033_490 = null;
			__x0033_492 = null;
			__x0033_493 = null;
			__x0033_494 = null;
			__x0033_495 = null;
			__x0033_496 = null;
			__x0033_497 = null;
			__x0033_498 = null;
			__x0033_499 = null;
			__x0033_500 = null;
			__x0033_501 = null;
			__x0033_502 = null;
			__x0033_503 = null;
			__x0033_504 = null;
			__x0033_551 = null;

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
			schemaLib._x0033_488 newObject = (schemaLib._x0033_488)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_490 = null;
			if (__x0033_490 != null)
				newObject.__x0033_490 = (schemaLib._x0033_490)__x0033_490.clone();
			newObject.__x0033_492 = null;
			if (__x0033_492 != null)
				newObject.__x0033_492 = (schemaLib._x0033_492)__x0033_492.clone();
			newObject.__x0033_493 = null;
			if (__x0033_493 != null)
				newObject.__x0033_493 = (schemaLib._x0033_493)__x0033_493.clone();
			newObject.__x0033_494 = null;
			if (__x0033_494 != null)
				newObject.__x0033_494 = (schemaLib._x0033_494)__x0033_494.clone();
			newObject.__x0033_495 = null;
			if (__x0033_495 != null)
				newObject.__x0033_495 = (schemaLib._x0033_495)__x0033_495.clone();
			newObject.__x0033_496 = null;
			if (__x0033_496 != null)
				newObject.__x0033_496 = (schemaLib._x0033_496)__x0033_496.clone();
			newObject.__x0033_497 = null;
			if (__x0033_497 != null)
				newObject.__x0033_497 = (schemaLib._x0033_497)__x0033_497.clone();
			newObject.__x0033_498 = null;
			if (__x0033_498 != null)
				newObject.__x0033_498 = (schemaLib._x0033_498)__x0033_498.clone();
			newObject.__x0033_499 = null;
			if (__x0033_499 != null)
				newObject.__x0033_499 = (schemaLib._x0033_499)__x0033_499.clone();
			newObject.__x0033_500 = null;
			if (__x0033_500 != null)
				newObject.__x0033_500 = (schemaLib._x0033_500)__x0033_500.clone();
			newObject.__x0033_501 = null;
			if (__x0033_501 != null)
				newObject.__x0033_501 = (schemaLib._x0033_501)__x0033_501.clone();
			newObject.__x0033_502 = null;
			if (__x0033_502 != null)
				newObject.__x0033_502 = (schemaLib._x0033_502)__x0033_502.clone();
			newObject.__x0033_503 = null;
			if (__x0033_503 != null)
				newObject.__x0033_503 = (schemaLib._x0033_503)__x0033_503.clone();
			newObject.__x0033_504 = null;
			if (__x0033_504 != null)
				newObject.__x0033_504 = (schemaLib._x0033_504)__x0033_504.clone();
			newObject.__x0033_551 = null;
			if (__x0033_551 != null)
				newObject.__x0033_551 = (schemaLib._x0033_551)__x0033_551.clone();
	
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
	public schemaLib._x0033_490 get_x0033_490() {
		return __x0033_490;  
	}
	public void set_x0033_490(schemaLib._x0033_490 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_490 = null;
		else {
			setElementName(value.getBase(), "_x0033_490");
			__x0033_490 = value; 
		}
	}
	protected schemaLib._x0033_490 __x0033_490;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_492 get_x0033_492() {
		return __x0033_492;  
	}
	public void set_x0033_492(schemaLib._x0033_492 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_492 = null;
		else {
			setElementName(value.getBase(), "_x0033_492");
			__x0033_492 = value; 
		}
	}
	protected schemaLib._x0033_492 __x0033_492;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_493 get_x0033_493() {
		return __x0033_493;  
	}
	public void set_x0033_493(schemaLib._x0033_493 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_493 = null;
		else {
			setElementName(value.getBase(), "_x0033_493");
			__x0033_493 = value; 
		}
	}
	protected schemaLib._x0033_493 __x0033_493;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_494 get_x0033_494() {
		return __x0033_494;  
	}
	public void set_x0033_494(schemaLib._x0033_494 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_494 = null;
		else {
			setElementName(value.getBase(), "_x0033_494");
			__x0033_494 = value; 
		}
	}
	protected schemaLib._x0033_494 __x0033_494;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_495 get_x0033_495() {
		return __x0033_495;  
	}
	public void set_x0033_495(schemaLib._x0033_495 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_495 = null;
		else {
			setElementName(value.getBase(), "_x0033_495");
			__x0033_495 = value; 
		}
	}
	protected schemaLib._x0033_495 __x0033_495;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_496 get_x0033_496() {
		return __x0033_496;  
	}
	public void set_x0033_496(schemaLib._x0033_496 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_496 = null;
		else {
			setElementName(value.getBase(), "_x0033_496");
			__x0033_496 = value; 
		}
	}
	protected schemaLib._x0033_496 __x0033_496;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_497 get_x0033_497() {
		return __x0033_497;  
	}
	public void set_x0033_497(schemaLib._x0033_497 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_497 = null;
		else {
			setElementName(value.getBase(), "_x0033_497");
			__x0033_497 = value; 
		}
	}
	protected schemaLib._x0033_497 __x0033_497;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_498 get_x0033_498() {
		return __x0033_498;  
	}
	public void set_x0033_498(schemaLib._x0033_498 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_498 = null;
		else {
			setElementName(value.getBase(), "_x0033_498");
			__x0033_498 = value; 
		}
	}
	protected schemaLib._x0033_498 __x0033_498;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_499 get_x0033_499() {
		return __x0033_499;  
	}
	public void set_x0033_499(schemaLib._x0033_499 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_499 = null;
		else {
			setElementName(value.getBase(), "_x0033_499");
			__x0033_499 = value; 
		}
	}
	protected schemaLib._x0033_499 __x0033_499;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_500 get_x0033_500() {
		return __x0033_500;  
	}
	public void set_x0033_500(schemaLib._x0033_500 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_500 = null;
		else {
			setElementName(value.getBase(), "_x0033_500");
			__x0033_500 = value; 
		}
	}
	protected schemaLib._x0033_500 __x0033_500;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_501 get_x0033_501() {
		return __x0033_501;  
	}
	public void set_x0033_501(schemaLib._x0033_501 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_501 = null;
		else {
			setElementName(value.getBase(), "_x0033_501");
			__x0033_501 = value; 
		}
	}
	protected schemaLib._x0033_501 __x0033_501;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_502 get_x0033_502() {
		return __x0033_502;  
	}
	public void set_x0033_502(schemaLib._x0033_502 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_502 = null;
		else {
			setElementName(value.getBase(), "_x0033_502");
			__x0033_502 = value; 
		}
	}
	protected schemaLib._x0033_502 __x0033_502;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_503 get_x0033_503() {
		return __x0033_503;  
	}
	public void set_x0033_503(schemaLib._x0033_503 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_503 = null;
		else {
			setElementName(value.getBase(), "_x0033_503");
			__x0033_503 = value; 
		}
	}
	protected schemaLib._x0033_503 __x0033_503;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_504 get_x0033_504() {
		return __x0033_504;  
	}
	public void set_x0033_504(schemaLib._x0033_504 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_504 = null;
		else {
			setElementName(value.getBase(), "_x0033_504");
			__x0033_504 = value; 
		}
	}
	protected schemaLib._x0033_504 __x0033_504;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_551 get_x0033_551() {
		return __x0033_551;  
	}
	public void set_x0033_551(schemaLib._x0033_551 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_551 = null;
		else {
			setElementName(value.getBase(), "_x0033_551");
			__x0033_551 = value; 
		}
	}
	protected schemaLib._x0033_551 __x0033_551;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_488", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_490", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_490"), findSetterMethod("schemaLib._x0033_488", "set_x0033_490", "schemaLib._x0033_490"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_490.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_492", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_492"), findSetterMethod("schemaLib._x0033_488", "set_x0033_492", "schemaLib._x0033_492"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_492.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_493", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_493"), findSetterMethod("schemaLib._x0033_488", "set_x0033_493", "schemaLib._x0033_493"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_493.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_494", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_494"), findSetterMethod("schemaLib._x0033_488", "set_x0033_494", "schemaLib._x0033_494"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_494.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_495", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_495"), findSetterMethod("schemaLib._x0033_488", "set_x0033_495", "schemaLib._x0033_495"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_495.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_496", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_496"), findSetterMethod("schemaLib._x0033_488", "set_x0033_496", "schemaLib._x0033_496"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_496.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_497", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_497"), findSetterMethod("schemaLib._x0033_488", "set_x0033_497", "schemaLib._x0033_497"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_497.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_498", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_498"), findSetterMethod("schemaLib._x0033_488", "set_x0033_498", "schemaLib._x0033_498"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_498.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_499", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_499"), findSetterMethod("schemaLib._x0033_488", "set_x0033_499", "schemaLib._x0033_499"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_499.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_500", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_500"), findSetterMethod("schemaLib._x0033_488", "set_x0033_500", "schemaLib._x0033_500"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_500.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_501", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_501"), findSetterMethod("schemaLib._x0033_488", "set_x0033_501", "schemaLib._x0033_501"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_501.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_502", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_502"), findSetterMethod("schemaLib._x0033_488", "set_x0033_502", "schemaLib._x0033_502"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_502.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_503", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_503"), findSetterMethod("schemaLib._x0033_488", "set_x0033_503", "schemaLib._x0033_503"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_503.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_504", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_504"), findSetterMethod("schemaLib._x0033_488", "set_x0033_504", "schemaLib._x0033_504"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_504.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_551", "", findGetterMethod("schemaLib._x0033_488", "get_x0033_551"), findSetterMethod("schemaLib._x0033_488", "set_x0033_551", "schemaLib._x0033_551"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_551.class)
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


