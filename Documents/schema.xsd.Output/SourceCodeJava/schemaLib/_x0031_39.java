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
// This class represents the ComplexType _x0031_39
// </summary>
public class _x0031_39 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_39
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_39() {
		setElementName("_x0031_39");
		init();
	}
	public _x0031_39(String elementName) {
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
			__x0031_41 = null;
			__x0031_77 = null;
			__x0031_78 = null;
			__x0031_79 = null;
			__x0031_80 = null;
			__x0031_81 = null;
			__x0031_82 = null;

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
			schemaLib._x0031_39 newObject = (schemaLib._x0031_39)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_41 = null;
			if (__x0031_41 != null)
				newObject.__x0031_41 = (schemaLib._x0031_41)__x0031_41.clone();
			newObject.__x0031_77 = null;
			if (__x0031_77 != null)
				newObject.__x0031_77 = (schemaLib._x0031_77)__x0031_77.clone();
			newObject.__x0031_78 = null;
			if (__x0031_78 != null)
				newObject.__x0031_78 = (schemaLib._x0031_78)__x0031_78.clone();
			newObject.__x0031_79 = null;
			if (__x0031_79 != null)
				newObject.__x0031_79 = (schemaLib._x0031_79)__x0031_79.clone();
			newObject.__x0031_80 = null;
			if (__x0031_80 != null)
				newObject.__x0031_80 = (schemaLib._x0031_80)__x0031_80.clone();
			newObject.__x0031_81 = null;
			if (__x0031_81 != null)
				newObject.__x0031_81 = (schemaLib._x0031_81)__x0031_81.clone();
			newObject.__x0031_82 = null;
			if (__x0031_82 != null)
				newObject.__x0031_82 = (schemaLib._x0031_82)__x0031_82.clone();
	
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
	public schemaLib._x0031_41 get_x0031_41() {
		return __x0031_41;  
	}
	public void set_x0031_41(schemaLib._x0031_41 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_41 = null;
		else {
			setElementName(value.getBase(), "_x0031_41");
			__x0031_41 = value; 
		}
	}
	protected schemaLib._x0031_41 __x0031_41;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_77 get_x0031_77() {
		return __x0031_77;  
	}
	public void set_x0031_77(schemaLib._x0031_77 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_77 = null;
		else {
			setElementName(value.getBase(), "_x0031_77");
			__x0031_77 = value; 
		}
	}
	protected schemaLib._x0031_77 __x0031_77;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_78 get_x0031_78() {
		return __x0031_78;  
	}
	public void set_x0031_78(schemaLib._x0031_78 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_78 = null;
		else {
			setElementName(value.getBase(), "_x0031_78");
			__x0031_78 = value; 
		}
	}
	protected schemaLib._x0031_78 __x0031_78;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_79 get_x0031_79() {
		return __x0031_79;  
	}
	public void set_x0031_79(schemaLib._x0031_79 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_79 = null;
		else {
			setElementName(value.getBase(), "_x0031_79");
			__x0031_79 = value; 
		}
	}
	protected schemaLib._x0031_79 __x0031_79;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_80 get_x0031_80() {
		return __x0031_80;  
	}
	public void set_x0031_80(schemaLib._x0031_80 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_80 = null;
		else {
			setElementName(value.getBase(), "_x0031_80");
			__x0031_80 = value; 
		}
	}
	protected schemaLib._x0031_80 __x0031_80;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_81 get_x0031_81() {
		return __x0031_81;  
	}
	public void set_x0031_81(schemaLib._x0031_81 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_81 = null;
		else {
			setElementName(value.getBase(), "_x0031_81");
			__x0031_81 = value; 
		}
	}
	protected schemaLib._x0031_81 __x0031_81;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_82 get_x0031_82() {
		return __x0031_82;  
	}
	public void set_x0031_82(schemaLib._x0031_82 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_82 = null;
		else {
			setElementName(value.getBase(), "_x0031_82");
			__x0031_82 = value; 
		}
	}
	protected schemaLib._x0031_82 __x0031_82;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_39", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_41", "", findGetterMethod("schemaLib._x0031_39", "get_x0031_41"), findSetterMethod("schemaLib._x0031_39", "set_x0031_41", "schemaLib._x0031_41"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_41.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_77", "", findGetterMethod("schemaLib._x0031_39", "get_x0031_77"), findSetterMethod("schemaLib._x0031_39", "set_x0031_77", "schemaLib._x0031_77"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_77.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_78", "", findGetterMethod("schemaLib._x0031_39", "get_x0031_78"), findSetterMethod("schemaLib._x0031_39", "set_x0031_78", "schemaLib._x0031_78"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_78.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_79", "", findGetterMethod("schemaLib._x0031_39", "get_x0031_79"), findSetterMethod("schemaLib._x0031_39", "set_x0031_79", "schemaLib._x0031_79"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_79.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_80", "", findGetterMethod("schemaLib._x0031_39", "get_x0031_80"), findSetterMethod("schemaLib._x0031_39", "set_x0031_80", "schemaLib._x0031_80"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_80.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_81", "", findGetterMethod("schemaLib._x0031_39", "get_x0031_81"), findSetterMethod("schemaLib._x0031_39", "set_x0031_81", "schemaLib._x0031_81"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_81.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_82", "", findGetterMethod("schemaLib._x0031_39", "get_x0031_82"), findSetterMethod("schemaLib._x0031_39", "set_x0031_82", "schemaLib._x0031_82"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_82.class)
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


