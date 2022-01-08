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
// This class represents the ComplexType _x0035_484
// </summary>
public class _x0035_484 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0035_484
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0035_484() {
		setElementName("_x0035_484");
		init();
	}
	public _x0035_484(String elementName) {
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
			__x0035_486 = null;
			__x0035_488 = null;
			__x0035_489 = null;
			__x0035_490 = null;
			__x0035_491 = null;
			__x0035_492 = null;
			__x0035_493 = null;
			__x0035_494 = null;
			__x0035_521 = null;

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
			schemaLib._x0035_484 newObject = (schemaLib._x0035_484)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_486 = null;
			if (__x0035_486 != null)
				newObject.__x0035_486 = (schemaLib._x0035_486)__x0035_486.clone();
			newObject.__x0035_488 = null;
			if (__x0035_488 != null)
				newObject.__x0035_488 = (schemaLib._x0035_488)__x0035_488.clone();
			newObject.__x0035_489 = null;
			if (__x0035_489 != null)
				newObject.__x0035_489 = (schemaLib._x0035_489)__x0035_489.clone();
			newObject.__x0035_490 = null;
			if (__x0035_490 != null)
				newObject.__x0035_490 = (schemaLib._x0035_490)__x0035_490.clone();
			newObject.__x0035_491 = null;
			if (__x0035_491 != null)
				newObject.__x0035_491 = (schemaLib._x0035_491)__x0035_491.clone();
			newObject.__x0035_492 = null;
			if (__x0035_492 != null)
				newObject.__x0035_492 = (schemaLib._x0035_492)__x0035_492.clone();
			newObject.__x0035_493 = null;
			if (__x0035_493 != null)
				newObject.__x0035_493 = (schemaLib._x0035_493)__x0035_493.clone();
			newObject.__x0035_494 = null;
			if (__x0035_494 != null)
				newObject.__x0035_494 = (schemaLib._x0035_494)__x0035_494.clone();
			newObject.__x0035_521 = null;
			if (__x0035_521 != null)
				newObject.__x0035_521 = (schemaLib._x0035_521)__x0035_521.clone();
	
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
	public schemaLib._x0035_486 get_x0035_486() {
		return __x0035_486;  
	}
	public void set_x0035_486(schemaLib._x0035_486 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_486 = null;
		else {
			setElementName(value.getBase(), "_x0035_486");
			__x0035_486 = value; 
		}
	}
	protected schemaLib._x0035_486 __x0035_486;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_488 get_x0035_488() {
		return __x0035_488;  
	}
	public void set_x0035_488(schemaLib._x0035_488 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_488 = null;
		else {
			setElementName(value.getBase(), "_x0035_488");
			__x0035_488 = value; 
		}
	}
	protected schemaLib._x0035_488 __x0035_488;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_489 get_x0035_489() {
		return __x0035_489;  
	}
	public void set_x0035_489(schemaLib._x0035_489 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_489 = null;
		else {
			setElementName(value.getBase(), "_x0035_489");
			__x0035_489 = value; 
		}
	}
	protected schemaLib._x0035_489 __x0035_489;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_490 get_x0035_490() {
		return __x0035_490;  
	}
	public void set_x0035_490(schemaLib._x0035_490 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_490 = null;
		else {
			setElementName(value.getBase(), "_x0035_490");
			__x0035_490 = value; 
		}
	}
	protected schemaLib._x0035_490 __x0035_490;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_491 get_x0035_491() {
		return __x0035_491;  
	}
	public void set_x0035_491(schemaLib._x0035_491 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_491 = null;
		else {
			setElementName(value.getBase(), "_x0035_491");
			__x0035_491 = value; 
		}
	}
	protected schemaLib._x0035_491 __x0035_491;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_492 get_x0035_492() {
		return __x0035_492;  
	}
	public void set_x0035_492(schemaLib._x0035_492 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_492 = null;
		else {
			setElementName(value.getBase(), "_x0035_492");
			__x0035_492 = value; 
		}
	}
	protected schemaLib._x0035_492 __x0035_492;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_493 get_x0035_493() {
		return __x0035_493;  
	}
	public void set_x0035_493(schemaLib._x0035_493 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_493 = null;
		else {
			setElementName(value.getBase(), "_x0035_493");
			__x0035_493 = value; 
		}
	}
	protected schemaLib._x0035_493 __x0035_493;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_494 get_x0035_494() {
		return __x0035_494;  
	}
	public void set_x0035_494(schemaLib._x0035_494 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_494 = null;
		else {
			setElementName(value.getBase(), "_x0035_494");
			__x0035_494 = value; 
		}
	}
	protected schemaLib._x0035_494 __x0035_494;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_521 get_x0035_521() {
		return __x0035_521;  
	}
	public void set_x0035_521(schemaLib._x0035_521 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_521 = null;
		else {
			setElementName(value.getBase(), "_x0035_521");
			__x0035_521 = value; 
		}
	}
	protected schemaLib._x0035_521 __x0035_521;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0035_484", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_486", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_486"), findSetterMethod("schemaLib._x0035_484", "set_x0035_486", "schemaLib._x0035_486"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_486.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_488", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_488"), findSetterMethod("schemaLib._x0035_484", "set_x0035_488", "schemaLib._x0035_488"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_488.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_489", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_489"), findSetterMethod("schemaLib._x0035_484", "set_x0035_489", "schemaLib._x0035_489"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_489.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_490", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_490"), findSetterMethod("schemaLib._x0035_484", "set_x0035_490", "schemaLib._x0035_490"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_490.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_491", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_491"), findSetterMethod("schemaLib._x0035_484", "set_x0035_491", "schemaLib._x0035_491"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_491.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_492", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_492"), findSetterMethod("schemaLib._x0035_484", "set_x0035_492", "schemaLib._x0035_492"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_492.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_493", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_493"), findSetterMethod("schemaLib._x0035_484", "set_x0035_493", "schemaLib._x0035_493"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_493.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_494", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_494"), findSetterMethod("schemaLib._x0035_484", "set_x0035_494", "schemaLib._x0035_494"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_494.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_521", "", findGetterMethod("schemaLib._x0035_484", "get_x0035_521"), findSetterMethod("schemaLib._x0035_484", "set_x0035_521", "schemaLib._x0035_521"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_521.class)
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


