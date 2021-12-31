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
// This class represents the ComplexType _x0031_3528
// </summary>
public class _x0031_3528 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_3528
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_3528() {
		setElementName("_x0031_3528");
		init();
	}
	public _x0031_3528(String elementName) {
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
			__x0031_3533 = null;
			__x0031_3539 = null;
			__x0031_3542 = null;
			__x0031_3545 = null;
			__x0031_3548 = null;
			__x0031_3551 = null;
			__x0031_3554 = null;
			__x0031_3557 = null;
			__x0031_3560 = null;
			__x0031_3563 = null;
			__x0031_3566 = null;
			__x0031_3569 = null;
			__x0031_3572 = null;
			__x0031_3575 = null;
			__x0031_3578 = null;

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
			schemaLib._x0031_3528 newObject = (schemaLib._x0031_3528)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_3533 = null;
			if (__x0031_3533 != null)
				newObject.__x0031_3533 = (schemaLib._x0031_3533)__x0031_3533.clone();
			newObject.__x0031_3539 = null;
			if (__x0031_3539 != null)
				newObject.__x0031_3539 = (schemaLib._x0031_3539)__x0031_3539.clone();
			newObject.__x0031_3542 = null;
			if (__x0031_3542 != null)
				newObject.__x0031_3542 = (schemaLib._x0031_3542)__x0031_3542.clone();
			newObject.__x0031_3545 = null;
			if (__x0031_3545 != null)
				newObject.__x0031_3545 = (schemaLib._x0031_3545)__x0031_3545.clone();
			newObject.__x0031_3548 = null;
			if (__x0031_3548 != null)
				newObject.__x0031_3548 = (schemaLib._x0031_3548)__x0031_3548.clone();
			newObject.__x0031_3551 = null;
			if (__x0031_3551 != null)
				newObject.__x0031_3551 = (schemaLib._x0031_3551)__x0031_3551.clone();
			newObject.__x0031_3554 = null;
			if (__x0031_3554 != null)
				newObject.__x0031_3554 = (schemaLib._x0031_3554)__x0031_3554.clone();
			newObject.__x0031_3557 = null;
			if (__x0031_3557 != null)
				newObject.__x0031_3557 = (schemaLib._x0031_3557)__x0031_3557.clone();
			newObject.__x0031_3560 = null;
			if (__x0031_3560 != null)
				newObject.__x0031_3560 = (schemaLib._x0031_3560)__x0031_3560.clone();
			newObject.__x0031_3563 = null;
			if (__x0031_3563 != null)
				newObject.__x0031_3563 = (schemaLib._x0031_3563)__x0031_3563.clone();
			newObject.__x0031_3566 = null;
			if (__x0031_3566 != null)
				newObject.__x0031_3566 = (schemaLib._x0031_3566)__x0031_3566.clone();
			newObject.__x0031_3569 = null;
			if (__x0031_3569 != null)
				newObject.__x0031_3569 = (schemaLib._x0031_3569)__x0031_3569.clone();
			newObject.__x0031_3572 = null;
			if (__x0031_3572 != null)
				newObject.__x0031_3572 = (schemaLib._x0031_3572)__x0031_3572.clone();
			newObject.__x0031_3575 = null;
			if (__x0031_3575 != null)
				newObject.__x0031_3575 = (schemaLib._x0031_3575)__x0031_3575.clone();
			newObject.__x0031_3578 = null;
			if (__x0031_3578 != null)
				newObject.__x0031_3578 = (schemaLib._x0031_3578)__x0031_3578.clone();
	
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
	public schemaLib._x0031_3533 get_x0031_3533() {
		return __x0031_3533;  
	}
	public void set_x0031_3533(schemaLib._x0031_3533 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3533 = null;
		else {
			setElementName(value.getBase(), "_x0031_3533");
			__x0031_3533 = value; 
		}
	}
	protected schemaLib._x0031_3533 __x0031_3533;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3539 get_x0031_3539() {
		return __x0031_3539;  
	}
	public void set_x0031_3539(schemaLib._x0031_3539 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3539 = null;
		else {
			setElementName(value.getBase(), "_x0031_3539");
			__x0031_3539 = value; 
		}
	}
	protected schemaLib._x0031_3539 __x0031_3539;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3542 get_x0031_3542() {
		return __x0031_3542;  
	}
	public void set_x0031_3542(schemaLib._x0031_3542 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3542 = null;
		else {
			setElementName(value.getBase(), "_x0031_3542");
			__x0031_3542 = value; 
		}
	}
	protected schemaLib._x0031_3542 __x0031_3542;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3545 get_x0031_3545() {
		return __x0031_3545;  
	}
	public void set_x0031_3545(schemaLib._x0031_3545 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3545 = null;
		else {
			setElementName(value.getBase(), "_x0031_3545");
			__x0031_3545 = value; 
		}
	}
	protected schemaLib._x0031_3545 __x0031_3545;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3548 get_x0031_3548() {
		return __x0031_3548;  
	}
	public void set_x0031_3548(schemaLib._x0031_3548 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3548 = null;
		else {
			setElementName(value.getBase(), "_x0031_3548");
			__x0031_3548 = value; 
		}
	}
	protected schemaLib._x0031_3548 __x0031_3548;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3551 get_x0031_3551() {
		return __x0031_3551;  
	}
	public void set_x0031_3551(schemaLib._x0031_3551 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3551 = null;
		else {
			setElementName(value.getBase(), "_x0031_3551");
			__x0031_3551 = value; 
		}
	}
	protected schemaLib._x0031_3551 __x0031_3551;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3554 get_x0031_3554() {
		return __x0031_3554;  
	}
	public void set_x0031_3554(schemaLib._x0031_3554 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3554 = null;
		else {
			setElementName(value.getBase(), "_x0031_3554");
			__x0031_3554 = value; 
		}
	}
	protected schemaLib._x0031_3554 __x0031_3554;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3557 get_x0031_3557() {
		return __x0031_3557;  
	}
	public void set_x0031_3557(schemaLib._x0031_3557 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3557 = null;
		else {
			setElementName(value.getBase(), "_x0031_3557");
			__x0031_3557 = value; 
		}
	}
	protected schemaLib._x0031_3557 __x0031_3557;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3560 get_x0031_3560() {
		return __x0031_3560;  
	}
	public void set_x0031_3560(schemaLib._x0031_3560 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3560 = null;
		else {
			setElementName(value.getBase(), "_x0031_3560");
			__x0031_3560 = value; 
		}
	}
	protected schemaLib._x0031_3560 __x0031_3560;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3563 get_x0031_3563() {
		return __x0031_3563;  
	}
	public void set_x0031_3563(schemaLib._x0031_3563 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3563 = null;
		else {
			setElementName(value.getBase(), "_x0031_3563");
			__x0031_3563 = value; 
		}
	}
	protected schemaLib._x0031_3563 __x0031_3563;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3566 get_x0031_3566() {
		return __x0031_3566;  
	}
	public void set_x0031_3566(schemaLib._x0031_3566 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3566 = null;
		else {
			setElementName(value.getBase(), "_x0031_3566");
			__x0031_3566 = value; 
		}
	}
	protected schemaLib._x0031_3566 __x0031_3566;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3569 get_x0031_3569() {
		return __x0031_3569;  
	}
	public void set_x0031_3569(schemaLib._x0031_3569 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3569 = null;
		else {
			setElementName(value.getBase(), "_x0031_3569");
			__x0031_3569 = value; 
		}
	}
	protected schemaLib._x0031_3569 __x0031_3569;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3572 get_x0031_3572() {
		return __x0031_3572;  
	}
	public void set_x0031_3572(schemaLib._x0031_3572 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3572 = null;
		else {
			setElementName(value.getBase(), "_x0031_3572");
			__x0031_3572 = value; 
		}
	}
	protected schemaLib._x0031_3572 __x0031_3572;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3575 get_x0031_3575() {
		return __x0031_3575;  
	}
	public void set_x0031_3575(schemaLib._x0031_3575 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3575 = null;
		else {
			setElementName(value.getBase(), "_x0031_3575");
			__x0031_3575 = value; 
		}
	}
	protected schemaLib._x0031_3575 __x0031_3575;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3578 get_x0031_3578() {
		return __x0031_3578;  
	}
	public void set_x0031_3578(schemaLib._x0031_3578 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3578 = null;
		else {
			setElementName(value.getBase(), "_x0031_3578");
			__x0031_3578 = value; 
		}
	}
	protected schemaLib._x0031_3578 __x0031_3578;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_3528", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3533", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3533"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3533", "schemaLib._x0031_3533"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3533.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3539", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3539"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3539", "schemaLib._x0031_3539"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3539.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3542", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3542"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3542", "schemaLib._x0031_3542"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3542.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3545", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3545"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3545", "schemaLib._x0031_3545"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3545.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3548", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3548"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3548", "schemaLib._x0031_3548"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3548.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3551", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3551"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3551", "schemaLib._x0031_3551"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3551.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3554", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3554"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3554", "schemaLib._x0031_3554"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3554.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3557", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3557"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3557", "schemaLib._x0031_3557"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3557.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3560", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3560"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3560", "schemaLib._x0031_3560"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3560.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3563", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3563"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3563", "schemaLib._x0031_3563"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3563.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3566", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3566"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3566", "schemaLib._x0031_3566"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3566.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3569", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3569"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3569", "schemaLib._x0031_3569"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3569.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3572", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3572"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3572", "schemaLib._x0031_3572"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3572.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3575", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3575"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3575", "schemaLib._x0031_3575"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3575.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3578", "", findGetterMethod("schemaLib._x0031_3528", "get_x0031_3578"), findSetterMethod("schemaLib._x0031_3528", "set_x0031_3578", "schemaLib._x0031_3578"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3578.class)
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


