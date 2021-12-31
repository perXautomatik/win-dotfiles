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
// This class represents the ComplexType _x0035_299
// </summary>
public class _x0035_299 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0035_299
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0035_299() {
		setElementName("_x0035_299");
		init();
	}
	public _x0035_299(String elementName) {
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
			__x0035_319 = null;
			__x0035_328 = null;
			__x0035_806 = null;
			__x0035_832 = null;
			__x0035_837 = null;
			__x0035_841 = null;

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
			schemaLib._x0035_299 newObject = (schemaLib._x0035_299)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_319 = null;
			if (__x0035_319 != null)
				newObject.__x0035_319 = (schemaLib._x0035_319)__x0035_319.clone();
			newObject.__x0035_328 = null;
			if (__x0035_328 != null)
				newObject.__x0035_328 = (schemaLib._x0035_328)__x0035_328.clone();
			newObject.__x0035_806 = null;
			if (__x0035_806 != null)
				newObject.__x0035_806 = (schemaLib._x0035_806)__x0035_806.clone();
			newObject.__x0035_832 = null;
			if (__x0035_832 != null)
				newObject.__x0035_832 = (schemaLib._x0035_832)__x0035_832.clone();
			newObject.__x0035_837 = null;
			if (__x0035_837 != null)
				newObject.__x0035_837 = (schemaLib._x0035_837)__x0035_837.clone();
			newObject.__x0035_841 = null;
			if (__x0035_841 != null)
				newObject.__x0035_841 = (schemaLib._x0035_841)__x0035_841.clone();
	
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
	public schemaLib._x0035_319 get_x0035_319() {
		return __x0035_319;  
	}
	public void set_x0035_319(schemaLib._x0035_319 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_319 = null;
		else {
			setElementName(value.getBase(), "_x0035_319");
			__x0035_319 = value; 
		}
	}
	protected schemaLib._x0035_319 __x0035_319;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_328 get_x0035_328() {
		return __x0035_328;  
	}
	public void set_x0035_328(schemaLib._x0035_328 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_328 = null;
		else {
			setElementName(value.getBase(), "_x0035_328");
			__x0035_328 = value; 
		}
	}
	protected schemaLib._x0035_328 __x0035_328;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_806 get_x0035_806() {
		return __x0035_806;  
	}
	public void set_x0035_806(schemaLib._x0035_806 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_806 = null;
		else {
			setElementName(value.getBase(), "_x0035_806");
			__x0035_806 = value; 
		}
	}
	protected schemaLib._x0035_806 __x0035_806;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_832 get_x0035_832() {
		return __x0035_832;  
	}
	public void set_x0035_832(schemaLib._x0035_832 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_832 = null;
		else {
			setElementName(value.getBase(), "_x0035_832");
			__x0035_832 = value; 
		}
	}
	protected schemaLib._x0035_832 __x0035_832;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_837 get_x0035_837() {
		return __x0035_837;  
	}
	public void set_x0035_837(schemaLib._x0035_837 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_837 = null;
		else {
			setElementName(value.getBase(), "_x0035_837");
			__x0035_837 = value; 
		}
	}
	protected schemaLib._x0035_837 __x0035_837;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_841 get_x0035_841() {
		return __x0035_841;  
	}
	public void set_x0035_841(schemaLib._x0035_841 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_841 = null;
		else {
			setElementName(value.getBase(), "_x0035_841");
			__x0035_841 = value; 
		}
	}
	protected schemaLib._x0035_841 __x0035_841;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0035_299", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_319", "", findGetterMethod("schemaLib._x0035_299", "get_x0035_319"), findSetterMethod("schemaLib._x0035_299", "set_x0035_319", "schemaLib._x0035_319"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_319.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_328", "", findGetterMethod("schemaLib._x0035_299", "get_x0035_328"), findSetterMethod("schemaLib._x0035_299", "set_x0035_328", "schemaLib._x0035_328"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_328.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_806", "", findGetterMethod("schemaLib._x0035_299", "get_x0035_806"), findSetterMethod("schemaLib._x0035_299", "set_x0035_806", "schemaLib._x0035_806"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_806.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_832", "", findGetterMethod("schemaLib._x0035_299", "get_x0035_832"), findSetterMethod("schemaLib._x0035_299", "set_x0035_832", "schemaLib._x0035_832"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_832.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_837", "", findGetterMethod("schemaLib._x0035_299", "get_x0035_837"), findSetterMethod("schemaLib._x0035_299", "set_x0035_837", "schemaLib._x0035_837"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_837.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_841", "", findGetterMethod("schemaLib._x0035_299", "get_x0035_841"), findSetterMethod("schemaLib._x0035_299", "set_x0035_841", "schemaLib._x0035_841"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_841.class)
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


