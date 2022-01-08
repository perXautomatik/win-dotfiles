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
// This class represents the ComplexType _x0031_7571
// </summary>
public class _x0031_7571 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_7571
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_7571() {
		setElementName("_x0031_7571");
		init();
	}
	public _x0031_7571(String elementName) {
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
			__x0031_7592 = null;
			__x0031_7601 = null;
			__x0031_7609 = null;
			__x0031_7629 = null;
			__x0031_7645 = null;
			__x0031_7654 = null;
			__x0031_7657 = null;
			__x0031_7681 = null;
			__x0031_7698 = null;

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
			schemaLib._x0031_7571 newObject = (schemaLib._x0031_7571)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_7592 = null;
			if (__x0031_7592 != null)
				newObject.__x0031_7592 = (schemaLib._x0031_7592)__x0031_7592.clone();
			newObject.__x0031_7601 = null;
			if (__x0031_7601 != null)
				newObject.__x0031_7601 = (schemaLib._x0031_7601)__x0031_7601.clone();
			newObject.__x0031_7609 = null;
			if (__x0031_7609 != null)
				newObject.__x0031_7609 = (schemaLib._x0031_7609)__x0031_7609.clone();
			newObject.__x0031_7629 = null;
			if (__x0031_7629 != null)
				newObject.__x0031_7629 = (schemaLib._x0031_7629)__x0031_7629.clone();
			newObject.__x0031_7645 = null;
			if (__x0031_7645 != null)
				newObject.__x0031_7645 = (schemaLib._x0031_7645)__x0031_7645.clone();
			newObject.__x0031_7654 = null;
			if (__x0031_7654 != null)
				newObject.__x0031_7654 = (schemaLib._x0031_7654)__x0031_7654.clone();
			newObject.__x0031_7657 = null;
			if (__x0031_7657 != null)
				newObject.__x0031_7657 = (schemaLib._x0031_7657)__x0031_7657.clone();
			newObject.__x0031_7681 = null;
			if (__x0031_7681 != null)
				newObject.__x0031_7681 = (schemaLib._x0031_7681)__x0031_7681.clone();
			newObject.__x0031_7698 = null;
			if (__x0031_7698 != null)
				newObject.__x0031_7698 = (schemaLib._x0031_7698)__x0031_7698.clone();
	
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
	public schemaLib._x0031_7592 get_x0031_7592() {
		return __x0031_7592;  
	}
	public void set_x0031_7592(schemaLib._x0031_7592 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7592 = null;
		else {
			setElementName(value.getBase(), "_x0031_7592");
			__x0031_7592 = value; 
		}
	}
	protected schemaLib._x0031_7592 __x0031_7592;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7601 get_x0031_7601() {
		return __x0031_7601;  
	}
	public void set_x0031_7601(schemaLib._x0031_7601 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7601 = null;
		else {
			setElementName(value.getBase(), "_x0031_7601");
			__x0031_7601 = value; 
		}
	}
	protected schemaLib._x0031_7601 __x0031_7601;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7609 get_x0031_7609() {
		return __x0031_7609;  
	}
	public void set_x0031_7609(schemaLib._x0031_7609 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7609 = null;
		else {
			setElementName(value.getBase(), "_x0031_7609");
			__x0031_7609 = value; 
		}
	}
	protected schemaLib._x0031_7609 __x0031_7609;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7629 get_x0031_7629() {
		return __x0031_7629;  
	}
	public void set_x0031_7629(schemaLib._x0031_7629 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7629 = null;
		else {
			setElementName(value.getBase(), "_x0031_7629");
			__x0031_7629 = value; 
		}
	}
	protected schemaLib._x0031_7629 __x0031_7629;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7645 get_x0031_7645() {
		return __x0031_7645;  
	}
	public void set_x0031_7645(schemaLib._x0031_7645 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7645 = null;
		else {
			setElementName(value.getBase(), "_x0031_7645");
			__x0031_7645 = value; 
		}
	}
	protected schemaLib._x0031_7645 __x0031_7645;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7654 get_x0031_7654() {
		return __x0031_7654;  
	}
	public void set_x0031_7654(schemaLib._x0031_7654 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7654 = null;
		else {
			setElementName(value.getBase(), "_x0031_7654");
			__x0031_7654 = value; 
		}
	}
	protected schemaLib._x0031_7654 __x0031_7654;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7657 get_x0031_7657() {
		return __x0031_7657;  
	}
	public void set_x0031_7657(schemaLib._x0031_7657 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7657 = null;
		else {
			setElementName(value.getBase(), "_x0031_7657");
			__x0031_7657 = value; 
		}
	}
	protected schemaLib._x0031_7657 __x0031_7657;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7681 get_x0031_7681() {
		return __x0031_7681;  
	}
	public void set_x0031_7681(schemaLib._x0031_7681 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7681 = null;
		else {
			setElementName(value.getBase(), "_x0031_7681");
			__x0031_7681 = value; 
		}
	}
	protected schemaLib._x0031_7681 __x0031_7681;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7698 get_x0031_7698() {
		return __x0031_7698;  
	}
	public void set_x0031_7698(schemaLib._x0031_7698 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7698 = null;
		else {
			setElementName(value.getBase(), "_x0031_7698");
			__x0031_7698 = value; 
		}
	}
	protected schemaLib._x0031_7698 __x0031_7698;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_7571", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7592", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7592"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7592", "schemaLib._x0031_7592"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7592.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7601", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7601"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7601", "schemaLib._x0031_7601"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7601.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7609", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7609"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7609", "schemaLib._x0031_7609"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7609.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7629", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7629"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7629", "schemaLib._x0031_7629"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7629.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7645", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7645"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7645", "schemaLib._x0031_7645"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7645.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7654", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7654"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7654", "schemaLib._x0031_7654"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7654.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7657", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7657"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7657", "schemaLib._x0031_7657"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7657.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7681", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7681"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7681", "schemaLib._x0031_7681"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7681.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7698", "", findGetterMethod("schemaLib._x0031_7571", "get_x0031_7698"), findSetterMethod("schemaLib._x0031_7571", "set_x0031_7698", "schemaLib._x0031_7698"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7698.class)
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


