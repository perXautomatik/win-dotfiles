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
// This class represents the ComplexType _x0033_685
// </summary>
public class _x0033_685 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_685
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_685() {
		setElementName("_x0033_685");
		init();
	}
	public _x0033_685(String elementName) {
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
			__x0033_723 = null;
			__x0033_740 = null;
			__x0033_809 = null;
			__x0033_852 = null;
			__x0033_890 = null;
			__x0033_925 = null;

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
			schemaLib._x0033_685 newObject = (schemaLib._x0033_685)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_723 = null;
			if (__x0033_723 != null)
				newObject.__x0033_723 = (schemaLib._x0033_723)__x0033_723.clone();
			newObject.__x0033_740 = null;
			if (__x0033_740 != null)
				newObject.__x0033_740 = (schemaLib._x0033_740)__x0033_740.clone();
			newObject.__x0033_809 = null;
			if (__x0033_809 != null)
				newObject.__x0033_809 = (schemaLib._x0033_809)__x0033_809.clone();
			newObject.__x0033_852 = null;
			if (__x0033_852 != null)
				newObject.__x0033_852 = (schemaLib._x0033_852)__x0033_852.clone();
			newObject.__x0033_890 = null;
			if (__x0033_890 != null)
				newObject.__x0033_890 = (schemaLib._x0033_890)__x0033_890.clone();
			newObject.__x0033_925 = null;
			if (__x0033_925 != null)
				newObject.__x0033_925 = (schemaLib._x0033_925)__x0033_925.clone();
	
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
	public schemaLib._x0033_723 get_x0033_723() {
		return __x0033_723;  
	}
	public void set_x0033_723(schemaLib._x0033_723 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_723 = null;
		else {
			setElementName(value.getBase(), "_x0033_723");
			__x0033_723 = value; 
		}
	}
	protected schemaLib._x0033_723 __x0033_723;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_740 get_x0033_740() {
		return __x0033_740;  
	}
	public void set_x0033_740(schemaLib._x0033_740 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_740 = null;
		else {
			setElementName(value.getBase(), "_x0033_740");
			__x0033_740 = value; 
		}
	}
	protected schemaLib._x0033_740 __x0033_740;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_809 get_x0033_809() {
		return __x0033_809;  
	}
	public void set_x0033_809(schemaLib._x0033_809 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_809 = null;
		else {
			setElementName(value.getBase(), "_x0033_809");
			__x0033_809 = value; 
		}
	}
	protected schemaLib._x0033_809 __x0033_809;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_852 get_x0033_852() {
		return __x0033_852;  
	}
	public void set_x0033_852(schemaLib._x0033_852 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_852 = null;
		else {
			setElementName(value.getBase(), "_x0033_852");
			__x0033_852 = value; 
		}
	}
	protected schemaLib._x0033_852 __x0033_852;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_890 get_x0033_890() {
		return __x0033_890;  
	}
	public void set_x0033_890(schemaLib._x0033_890 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_890 = null;
		else {
			setElementName(value.getBase(), "_x0033_890");
			__x0033_890 = value; 
		}
	}
	protected schemaLib._x0033_890 __x0033_890;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_925 get_x0033_925() {
		return __x0033_925;  
	}
	public void set_x0033_925(schemaLib._x0033_925 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_925 = null;
		else {
			setElementName(value.getBase(), "_x0033_925");
			__x0033_925 = value; 
		}
	}
	protected schemaLib._x0033_925 __x0033_925;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_685", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_723", "", findGetterMethod("schemaLib._x0033_685", "get_x0033_723"), findSetterMethod("schemaLib._x0033_685", "set_x0033_723", "schemaLib._x0033_723"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_723.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_740", "", findGetterMethod("schemaLib._x0033_685", "get_x0033_740"), findSetterMethod("schemaLib._x0033_685", "set_x0033_740", "schemaLib._x0033_740"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_740.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_809", "", findGetterMethod("schemaLib._x0033_685", "get_x0033_809"), findSetterMethod("schemaLib._x0033_685", "set_x0033_809", "schemaLib._x0033_809"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_809.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_852", "", findGetterMethod("schemaLib._x0033_685", "get_x0033_852"), findSetterMethod("schemaLib._x0033_685", "set_x0033_852", "schemaLib._x0033_852"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_852.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_890", "", findGetterMethod("schemaLib._x0033_685", "get_x0033_890"), findSetterMethod("schemaLib._x0033_685", "set_x0033_890", "schemaLib._x0033_890"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_890.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_925", "", findGetterMethod("schemaLib._x0033_685", "get_x0033_925"), findSetterMethod("schemaLib._x0033_685", "set_x0033_925", "schemaLib._x0033_925"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_925.class)
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


