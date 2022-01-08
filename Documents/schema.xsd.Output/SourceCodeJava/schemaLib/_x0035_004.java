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
// This class represents the ComplexType _x0035_004
// </summary>
public class _x0035_004 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0035_004
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0035_004() {
		setElementName("_x0035_004");
		init();
	}
	public _x0035_004(String elementName) {
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
			__x0035_272 = null;
			__x0035_275 = null;
			__x0035_278 = null;
			__x0035_281 = null;
			__x0035_284 = null;
			__x0035_287 = null;
			__x0035_296 = null;

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
			schemaLib._x0035_004 newObject = (schemaLib._x0035_004)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_272 = null;
			if (__x0035_272 != null)
				newObject.__x0035_272 = (schemaLib._x0035_272)__x0035_272.clone();
			newObject.__x0035_275 = null;
			if (__x0035_275 != null)
				newObject.__x0035_275 = (schemaLib._x0035_275)__x0035_275.clone();
			newObject.__x0035_278 = null;
			if (__x0035_278 != null)
				newObject.__x0035_278 = (schemaLib._x0035_278B)__x0035_278.clone();
			newObject.__x0035_281 = null;
			if (__x0035_281 != null)
				newObject.__x0035_281 = (schemaLib._x0035_281)__x0035_281.clone();
			newObject.__x0035_284 = null;
			if (__x0035_284 != null)
				newObject.__x0035_284 = (schemaLib._x0035_284)__x0035_284.clone();
			newObject.__x0035_287 = null;
			if (__x0035_287 != null)
				newObject.__x0035_287 = (schemaLib._x0035_287)__x0035_287.clone();
			newObject.__x0035_296 = null;
			if (__x0035_296 != null)
				newObject.__x0035_296 = (schemaLib._x0035_296)__x0035_296.clone();
	
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
	public schemaLib._x0035_272 get_x0035_272() {
		return __x0035_272;  
	}
	public void set_x0035_272(schemaLib._x0035_272 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_272 = null;
		else {
			setElementName(value.getBase(), "_x0035_272");
			__x0035_272 = value; 
		}
	}
	protected schemaLib._x0035_272 __x0035_272;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_275 get_x0035_275() {
		return __x0035_275;  
	}
	public void set_x0035_275(schemaLib._x0035_275 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_275 = null;
		else {
			setElementName(value.getBase(), "_x0035_275");
			__x0035_275 = value; 
		}
	}
	protected schemaLib._x0035_275 __x0035_275;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_278B get_x0035_278() {
		return __x0035_278;  
	}
	public void set_x0035_278(schemaLib._x0035_278B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_278 = null;
		else {
			setElementName(value.getBase(), "_x0035_278");
			__x0035_278 = value; 
		}
	}
	protected schemaLib._x0035_278B __x0035_278;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_281 get_x0035_281() {
		return __x0035_281;  
	}
	public void set_x0035_281(schemaLib._x0035_281 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_281 = null;
		else {
			setElementName(value.getBase(), "_x0035_281");
			__x0035_281 = value; 
		}
	}
	protected schemaLib._x0035_281 __x0035_281;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_284 get_x0035_284() {
		return __x0035_284;  
	}
	public void set_x0035_284(schemaLib._x0035_284 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_284 = null;
		else {
			setElementName(value.getBase(), "_x0035_284");
			__x0035_284 = value; 
		}
	}
	protected schemaLib._x0035_284 __x0035_284;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_287 get_x0035_287() {
		return __x0035_287;  
	}
	public void set_x0035_287(schemaLib._x0035_287 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_287 = null;
		else {
			setElementName(value.getBase(), "_x0035_287");
			__x0035_287 = value; 
		}
	}
	protected schemaLib._x0035_287 __x0035_287;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_296 get_x0035_296() {
		return __x0035_296;  
	}
	public void set_x0035_296(schemaLib._x0035_296 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_296 = null;
		else {
			setElementName(value.getBase(), "_x0035_296");
			__x0035_296 = value; 
		}
	}
	protected schemaLib._x0035_296 __x0035_296;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0035_004", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_272", "", findGetterMethod("schemaLib._x0035_004", "get_x0035_272"), findSetterMethod("schemaLib._x0035_004", "set_x0035_272", "schemaLib._x0035_272"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_272.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_275", "", findGetterMethod("schemaLib._x0035_004", "get_x0035_275"), findSetterMethod("schemaLib._x0035_004", "set_x0035_275", "schemaLib._x0035_275"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_275.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_278", "", findGetterMethod("schemaLib._x0035_004", "get_x0035_278"), findSetterMethod("schemaLib._x0035_004", "set_x0035_278", "schemaLib._x0035_278B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_278B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_281", "", findGetterMethod("schemaLib._x0035_004", "get_x0035_281"), findSetterMethod("schemaLib._x0035_004", "set_x0035_281", "schemaLib._x0035_281"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_281.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_284", "", findGetterMethod("schemaLib._x0035_004", "get_x0035_284"), findSetterMethod("schemaLib._x0035_004", "set_x0035_284", "schemaLib._x0035_284"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_284.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_287", "", findGetterMethod("schemaLib._x0035_004", "get_x0035_287"), findSetterMethod("schemaLib._x0035_004", "set_x0035_287", "schemaLib._x0035_287"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_287.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_296", "", findGetterMethod("schemaLib._x0035_004", "get_x0035_296"), findSetterMethod("schemaLib._x0035_004", "set_x0035_296", "schemaLib._x0035_296"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_296.class)
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


