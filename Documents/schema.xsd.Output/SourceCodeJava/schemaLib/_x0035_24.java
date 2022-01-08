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
// This class represents the ComplexType _x0035_24
// </summary>
public class _x0035_24 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0035_24
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0035_24() {
		setElementName("_x0035_24");
		init();
	}
	public _x0035_24(String elementName) {
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
			__x0035_76 = null;
			__x0035_77 = null;
			__x0035_78 = null;
			__x0035_79 = null;
			__x0035_80 = null;
			__x0035_81 = null;
			__x0036_18 = null;
			__x0036_19 = null;

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
			schemaLib._x0035_24 newObject = (schemaLib._x0035_24)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_76 = null;
			if (__x0035_76 != null)
				newObject.__x0035_76 = (schemaLib._x0035_76)__x0035_76.clone();
			newObject.__x0035_77 = null;
			if (__x0035_77 != null)
				newObject.__x0035_77 = (schemaLib._x0035_77)__x0035_77.clone();
			newObject.__x0035_78 = null;
			if (__x0035_78 != null)
				newObject.__x0035_78 = (schemaLib._x0035_78)__x0035_78.clone();
			newObject.__x0035_79 = null;
			if (__x0035_79 != null)
				newObject.__x0035_79 = (schemaLib._x0035_79)__x0035_79.clone();
			newObject.__x0035_80 = null;
			if (__x0035_80 != null)
				newObject.__x0035_80 = (schemaLib._x0035_80)__x0035_80.clone();
			newObject.__x0035_81 = null;
			if (__x0035_81 != null)
				newObject.__x0035_81 = (schemaLib._x0035_81)__x0035_81.clone();
			newObject.__x0036_18 = null;
			if (__x0036_18 != null)
				newObject.__x0036_18 = (schemaLib._x0036_18)__x0036_18.clone();
			newObject.__x0036_19 = null;
			if (__x0036_19 != null)
				newObject.__x0036_19 = (schemaLib._x0036_19)__x0036_19.clone();
	
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
	public schemaLib._x0035_76 get_x0035_76() {
		return __x0035_76;  
	}
	public void set_x0035_76(schemaLib._x0035_76 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_76 = null;
		else {
			setElementName(value.getBase(), "_x0035_76");
			__x0035_76 = value; 
		}
	}
	protected schemaLib._x0035_76 __x0035_76;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_77 get_x0035_77() {
		return __x0035_77;  
	}
	public void set_x0035_77(schemaLib._x0035_77 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_77 = null;
		else {
			setElementName(value.getBase(), "_x0035_77");
			__x0035_77 = value; 
		}
	}
	protected schemaLib._x0035_77 __x0035_77;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_78 get_x0035_78() {
		return __x0035_78;  
	}
	public void set_x0035_78(schemaLib._x0035_78 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_78 = null;
		else {
			setElementName(value.getBase(), "_x0035_78");
			__x0035_78 = value; 
		}
	}
	protected schemaLib._x0035_78 __x0035_78;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_79 get_x0035_79() {
		return __x0035_79;  
	}
	public void set_x0035_79(schemaLib._x0035_79 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_79 = null;
		else {
			setElementName(value.getBase(), "_x0035_79");
			__x0035_79 = value; 
		}
	}
	protected schemaLib._x0035_79 __x0035_79;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_80 get_x0035_80() {
		return __x0035_80;  
	}
	public void set_x0035_80(schemaLib._x0035_80 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_80 = null;
		else {
			setElementName(value.getBase(), "_x0035_80");
			__x0035_80 = value; 
		}
	}
	protected schemaLib._x0035_80 __x0035_80;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_81 get_x0035_81() {
		return __x0035_81;  
	}
	public void set_x0035_81(schemaLib._x0035_81 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_81 = null;
		else {
			setElementName(value.getBase(), "_x0035_81");
			__x0035_81 = value; 
		}
	}
	protected schemaLib._x0035_81 __x0035_81;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_18 get_x0036_18() {
		return __x0036_18;  
	}
	public void set_x0036_18(schemaLib._x0036_18 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_18 = null;
		else {
			setElementName(value.getBase(), "_x0036_18");
			__x0036_18 = value; 
		}
	}
	protected schemaLib._x0036_18 __x0036_18;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_19 get_x0036_19() {
		return __x0036_19;  
	}
	public void set_x0036_19(schemaLib._x0036_19 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_19 = null;
		else {
			setElementName(value.getBase(), "_x0036_19");
			__x0036_19 = value; 
		}
	}
	protected schemaLib._x0036_19 __x0036_19;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0035_24", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_76", "", findGetterMethod("schemaLib._x0035_24", "get_x0035_76"), findSetterMethod("schemaLib._x0035_24", "set_x0035_76", "schemaLib._x0035_76"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_76.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_77", "", findGetterMethod("schemaLib._x0035_24", "get_x0035_77"), findSetterMethod("schemaLib._x0035_24", "set_x0035_77", "schemaLib._x0035_77"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_77.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_78", "", findGetterMethod("schemaLib._x0035_24", "get_x0035_78"), findSetterMethod("schemaLib._x0035_24", "set_x0035_78", "schemaLib._x0035_78"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_78.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_79", "", findGetterMethod("schemaLib._x0035_24", "get_x0035_79"), findSetterMethod("schemaLib._x0035_24", "set_x0035_79", "schemaLib._x0035_79"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_79.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_80", "", findGetterMethod("schemaLib._x0035_24", "get_x0035_80"), findSetterMethod("schemaLib._x0035_24", "set_x0035_80", "schemaLib._x0035_80"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_80.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_81", "", findGetterMethod("schemaLib._x0035_24", "get_x0035_81"), findSetterMethod("schemaLib._x0035_24", "set_x0035_81", "schemaLib._x0035_81"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_81.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_18", "", findGetterMethod("schemaLib._x0035_24", "get_x0036_18"), findSetterMethod("schemaLib._x0035_24", "set_x0036_18", "schemaLib._x0036_18"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_18.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_19", "", findGetterMethod("schemaLib._x0035_24", "get_x0036_19"), findSetterMethod("schemaLib._x0035_24", "set_x0036_19", "schemaLib._x0036_19"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_19.class)
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


