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
// This class represents the ComplexType _x0036_522
// </summary>
public class _x0036_522 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_522
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_522() {
		setElementName("_x0036_522");
		init();
	}
	public _x0036_522(String elementName) {
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
			__x0036_531 = null;
			__x0036_544 = null;
			__x0036_578 = null;
			__x0036_595 = null;
			__x0036_610 = null;
			__x0036_701 = null;

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
			schemaLib._x0036_522 newObject = (schemaLib._x0036_522)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_531 = null;
			if (__x0036_531 != null)
				newObject.__x0036_531 = (schemaLib._x0036_531)__x0036_531.clone();
			newObject.__x0036_544 = null;
			if (__x0036_544 != null)
				newObject.__x0036_544 = (schemaLib._x0036_544)__x0036_544.clone();
			newObject.__x0036_578 = null;
			if (__x0036_578 != null)
				newObject.__x0036_578 = (schemaLib._x0036_578)__x0036_578.clone();
			newObject.__x0036_595 = null;
			if (__x0036_595 != null)
				newObject.__x0036_595 = (schemaLib._x0036_595)__x0036_595.clone();
			newObject.__x0036_610 = null;
			if (__x0036_610 != null)
				newObject.__x0036_610 = (schemaLib._x0036_610)__x0036_610.clone();
			newObject.__x0036_701 = null;
			if (__x0036_701 != null)
				newObject.__x0036_701 = (schemaLib._x0036_701)__x0036_701.clone();
	
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
	public schemaLib._x0036_531 get_x0036_531() {
		return __x0036_531;  
	}
	public void set_x0036_531(schemaLib._x0036_531 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_531 = null;
		else {
			setElementName(value.getBase(), "_x0036_531");
			__x0036_531 = value; 
		}
	}
	protected schemaLib._x0036_531 __x0036_531;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_544 get_x0036_544() {
		return __x0036_544;  
	}
	public void set_x0036_544(schemaLib._x0036_544 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_544 = null;
		else {
			setElementName(value.getBase(), "_x0036_544");
			__x0036_544 = value; 
		}
	}
	protected schemaLib._x0036_544 __x0036_544;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_578 get_x0036_578() {
		return __x0036_578;  
	}
	public void set_x0036_578(schemaLib._x0036_578 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_578 = null;
		else {
			setElementName(value.getBase(), "_x0036_578");
			__x0036_578 = value; 
		}
	}
	protected schemaLib._x0036_578 __x0036_578;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_595 get_x0036_595() {
		return __x0036_595;  
	}
	public void set_x0036_595(schemaLib._x0036_595 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_595 = null;
		else {
			setElementName(value.getBase(), "_x0036_595");
			__x0036_595 = value; 
		}
	}
	protected schemaLib._x0036_595 __x0036_595;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_610 get_x0036_610() {
		return __x0036_610;  
	}
	public void set_x0036_610(schemaLib._x0036_610 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_610 = null;
		else {
			setElementName(value.getBase(), "_x0036_610");
			__x0036_610 = value; 
		}
	}
	protected schemaLib._x0036_610 __x0036_610;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_701 get_x0036_701() {
		return __x0036_701;  
	}
	public void set_x0036_701(schemaLib._x0036_701 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_701 = null;
		else {
			setElementName(value.getBase(), "_x0036_701");
			__x0036_701 = value; 
		}
	}
	protected schemaLib._x0036_701 __x0036_701;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_522", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_531", "", findGetterMethod("schemaLib._x0036_522", "get_x0036_531"), findSetterMethod("schemaLib._x0036_522", "set_x0036_531", "schemaLib._x0036_531"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_531.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_544", "", findGetterMethod("schemaLib._x0036_522", "get_x0036_544"), findSetterMethod("schemaLib._x0036_522", "set_x0036_544", "schemaLib._x0036_544"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_544.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_578", "", findGetterMethod("schemaLib._x0036_522", "get_x0036_578"), findSetterMethod("schemaLib._x0036_522", "set_x0036_578", "schemaLib._x0036_578"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_578.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_595", "", findGetterMethod("schemaLib._x0036_522", "get_x0036_595"), findSetterMethod("schemaLib._x0036_522", "set_x0036_595", "schemaLib._x0036_595"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_595.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_610", "", findGetterMethod("schemaLib._x0036_522", "get_x0036_610"), findSetterMethod("schemaLib._x0036_522", "set_x0036_610", "schemaLib._x0036_610"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_610.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_701", "", findGetterMethod("schemaLib._x0036_522", "get_x0036_701"), findSetterMethod("schemaLib._x0036_522", "set_x0036_701", "schemaLib._x0036_701"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_701.class)
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


