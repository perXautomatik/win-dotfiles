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
// This class represents the ComplexType _x0038_67
// </summary>
public class _x0038_67 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0038_67
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0038_67() {
		setElementName("_x0038_67");
		init();
	}
	public _x0038_67(String elementName) {
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
			__x0036_80 = null;
			__x0036_81 = null;
			__x0036_82 = null;
			__x0036_83 = null;
			__x0036_84 = null;
			__x0036_85 = null;
			__x0036_86 = null;
			__x0036_87 = null;
			__x0036_88 = null;
			__x0036_89 = null;
			__x0036_90 = null;

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
			schemaLib._x0038_67 newObject = (schemaLib._x0038_67)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_80 = null;
			if (__x0036_80 != null)
				newObject.__x0036_80 = (schemaLib._x0036_80)__x0036_80.clone();
			newObject.__x0036_81 = null;
			if (__x0036_81 != null)
				newObject.__x0036_81 = (schemaLib._x0036_81)__x0036_81.clone();
			newObject.__x0036_82 = null;
			if (__x0036_82 != null)
				newObject.__x0036_82 = (schemaLib._x0036_82)__x0036_82.clone();
			newObject.__x0036_83 = null;
			if (__x0036_83 != null)
				newObject.__x0036_83 = (schemaLib._x0036_83)__x0036_83.clone();
			newObject.__x0036_84 = null;
			if (__x0036_84 != null)
				newObject.__x0036_84 = (schemaLib._x0036_84)__x0036_84.clone();
			newObject.__x0036_85 = null;
			if (__x0036_85 != null)
				newObject.__x0036_85 = (schemaLib._x0036_85)__x0036_85.clone();
			newObject.__x0036_86 = null;
			if (__x0036_86 != null)
				newObject.__x0036_86 = (schemaLib._x0036_86)__x0036_86.clone();
			newObject.__x0036_87 = null;
			if (__x0036_87 != null)
				newObject.__x0036_87 = (schemaLib._x0036_87)__x0036_87.clone();
			newObject.__x0036_88 = null;
			if (__x0036_88 != null)
				newObject.__x0036_88 = (schemaLib._x0036_88)__x0036_88.clone();
			newObject.__x0036_89 = null;
			if (__x0036_89 != null)
				newObject.__x0036_89 = (schemaLib._x0036_89)__x0036_89.clone();
			newObject.__x0036_90 = null;
			if (__x0036_90 != null)
				newObject.__x0036_90 = (schemaLib._x0036_90)__x0036_90.clone();
	
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
	public schemaLib._x0036_80 get_x0036_80() {
		return __x0036_80;  
	}
	public void set_x0036_80(schemaLib._x0036_80 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_80 = null;
		else {
			setElementName(value.getBase(), "_x0036_80");
			__x0036_80 = value; 
		}
	}
	protected schemaLib._x0036_80 __x0036_80;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_81 get_x0036_81() {
		return __x0036_81;  
	}
	public void set_x0036_81(schemaLib._x0036_81 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_81 = null;
		else {
			setElementName(value.getBase(), "_x0036_81");
			__x0036_81 = value; 
		}
	}
	protected schemaLib._x0036_81 __x0036_81;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_82 get_x0036_82() {
		return __x0036_82;  
	}
	public void set_x0036_82(schemaLib._x0036_82 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_82 = null;
		else {
			setElementName(value.getBase(), "_x0036_82");
			__x0036_82 = value; 
		}
	}
	protected schemaLib._x0036_82 __x0036_82;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_83 get_x0036_83() {
		return __x0036_83;  
	}
	public void set_x0036_83(schemaLib._x0036_83 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_83 = null;
		else {
			setElementName(value.getBase(), "_x0036_83");
			__x0036_83 = value; 
		}
	}
	protected schemaLib._x0036_83 __x0036_83;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_84 get_x0036_84() {
		return __x0036_84;  
	}
	public void set_x0036_84(schemaLib._x0036_84 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_84 = null;
		else {
			setElementName(value.getBase(), "_x0036_84");
			__x0036_84 = value; 
		}
	}
	protected schemaLib._x0036_84 __x0036_84;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_85 get_x0036_85() {
		return __x0036_85;  
	}
	public void set_x0036_85(schemaLib._x0036_85 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_85 = null;
		else {
			setElementName(value.getBase(), "_x0036_85");
			__x0036_85 = value; 
		}
	}
	protected schemaLib._x0036_85 __x0036_85;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_86 get_x0036_86() {
		return __x0036_86;  
	}
	public void set_x0036_86(schemaLib._x0036_86 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_86 = null;
		else {
			setElementName(value.getBase(), "_x0036_86");
			__x0036_86 = value; 
		}
	}
	protected schemaLib._x0036_86 __x0036_86;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_87 get_x0036_87() {
		return __x0036_87;  
	}
	public void set_x0036_87(schemaLib._x0036_87 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_87 = null;
		else {
			setElementName(value.getBase(), "_x0036_87");
			__x0036_87 = value; 
		}
	}
	protected schemaLib._x0036_87 __x0036_87;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_88 get_x0036_88() {
		return __x0036_88;  
	}
	public void set_x0036_88(schemaLib._x0036_88 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_88 = null;
		else {
			setElementName(value.getBase(), "_x0036_88");
			__x0036_88 = value; 
		}
	}
	protected schemaLib._x0036_88 __x0036_88;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_89 get_x0036_89() {
		return __x0036_89;  
	}
	public void set_x0036_89(schemaLib._x0036_89 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_89 = null;
		else {
			setElementName(value.getBase(), "_x0036_89");
			__x0036_89 = value; 
		}
	}
	protected schemaLib._x0036_89 __x0036_89;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_90 get_x0036_90() {
		return __x0036_90;  
	}
	public void set_x0036_90(schemaLib._x0036_90 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_90 = null;
		else {
			setElementName(value.getBase(), "_x0036_90");
			__x0036_90 = value; 
		}
	}
	protected schemaLib._x0036_90 __x0036_90;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0038_67", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_80", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_80"), findSetterMethod("schemaLib._x0038_67", "set_x0036_80", "schemaLib._x0036_80"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_80.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_81", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_81"), findSetterMethod("schemaLib._x0038_67", "set_x0036_81", "schemaLib._x0036_81"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_81.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_82", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_82"), findSetterMethod("schemaLib._x0038_67", "set_x0036_82", "schemaLib._x0036_82"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_82.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_83", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_83"), findSetterMethod("schemaLib._x0038_67", "set_x0036_83", "schemaLib._x0036_83"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_83.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_84", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_84"), findSetterMethod("schemaLib._x0038_67", "set_x0036_84", "schemaLib._x0036_84"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_84.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_85", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_85"), findSetterMethod("schemaLib._x0038_67", "set_x0036_85", "schemaLib._x0036_85"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_85.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_86", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_86"), findSetterMethod("schemaLib._x0038_67", "set_x0036_86", "schemaLib._x0036_86"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_86.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_87", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_87"), findSetterMethod("schemaLib._x0038_67", "set_x0036_87", "schemaLib._x0036_87"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_87.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_88", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_88"), findSetterMethod("schemaLib._x0038_67", "set_x0036_88", "schemaLib._x0036_88"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_88.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_89", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_89"), findSetterMethod("schemaLib._x0038_67", "set_x0036_89", "schemaLib._x0036_89"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_89.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_90", "", findGetterMethod("schemaLib._x0038_67", "get_x0036_90"), findSetterMethod("schemaLib._x0038_67", "set_x0036_90", "schemaLib._x0036_90"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_90.class)
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


