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
// This class represents the ComplexType _x0039_55
// </summary>
public class _x0039_55 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0039_55
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0039_55() {
		setElementName("_x0039_55");
		init();
	}
	public _x0039_55(String elementName) {
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
			__x0037_78 = null;
			__x0037_79 = null;
			__x0037_80 = null;
			__x0037_81 = null;
			__x0037_82 = null;
			__x0037_83 = null;
			__x0037_84 = null;
			__x0037_85 = null;
			__x0037_86 = null;
			__x0037_87 = null;
			__x0037_88 = null;

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
			schemaLib._x0039_55 newObject = (schemaLib._x0039_55)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_78 = null;
			if (__x0037_78 != null)
				newObject.__x0037_78 = (schemaLib._x0037_78)__x0037_78.clone();
			newObject.__x0037_79 = null;
			if (__x0037_79 != null)
				newObject.__x0037_79 = (schemaLib._x0037_79)__x0037_79.clone();
			newObject.__x0037_80 = null;
			if (__x0037_80 != null)
				newObject.__x0037_80 = (schemaLib._x0037_80)__x0037_80.clone();
			newObject.__x0037_81 = null;
			if (__x0037_81 != null)
				newObject.__x0037_81 = (schemaLib._x0037_81)__x0037_81.clone();
			newObject.__x0037_82 = null;
			if (__x0037_82 != null)
				newObject.__x0037_82 = (schemaLib._x0037_82)__x0037_82.clone();
			newObject.__x0037_83 = null;
			if (__x0037_83 != null)
				newObject.__x0037_83 = (schemaLib._x0037_83)__x0037_83.clone();
			newObject.__x0037_84 = null;
			if (__x0037_84 != null)
				newObject.__x0037_84 = (schemaLib._x0037_84)__x0037_84.clone();
			newObject.__x0037_85 = null;
			if (__x0037_85 != null)
				newObject.__x0037_85 = (schemaLib._x0037_85)__x0037_85.clone();
			newObject.__x0037_86 = null;
			if (__x0037_86 != null)
				newObject.__x0037_86 = (schemaLib._x0037_86B)__x0037_86.clone();
			newObject.__x0037_87 = null;
			if (__x0037_87 != null)
				newObject.__x0037_87 = (schemaLib._x0037_87)__x0037_87.clone();
			newObject.__x0037_88 = null;
			if (__x0037_88 != null)
				newObject.__x0037_88 = (schemaLib._x0037_88)__x0037_88.clone();
	
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
	public schemaLib._x0037_78 get_x0037_78() {
		return __x0037_78;  
	}
	public void set_x0037_78(schemaLib._x0037_78 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_78 = null;
		else {
			setElementName(value.getBase(), "_x0037_78");
			__x0037_78 = value; 
		}
	}
	protected schemaLib._x0037_78 __x0037_78;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_79 get_x0037_79() {
		return __x0037_79;  
	}
	public void set_x0037_79(schemaLib._x0037_79 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_79 = null;
		else {
			setElementName(value.getBase(), "_x0037_79");
			__x0037_79 = value; 
		}
	}
	protected schemaLib._x0037_79 __x0037_79;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_80 get_x0037_80() {
		return __x0037_80;  
	}
	public void set_x0037_80(schemaLib._x0037_80 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_80 = null;
		else {
			setElementName(value.getBase(), "_x0037_80");
			__x0037_80 = value; 
		}
	}
	protected schemaLib._x0037_80 __x0037_80;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_81 get_x0037_81() {
		return __x0037_81;  
	}
	public void set_x0037_81(schemaLib._x0037_81 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_81 = null;
		else {
			setElementName(value.getBase(), "_x0037_81");
			__x0037_81 = value; 
		}
	}
	protected schemaLib._x0037_81 __x0037_81;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_82 get_x0037_82() {
		return __x0037_82;  
	}
	public void set_x0037_82(schemaLib._x0037_82 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_82 = null;
		else {
			setElementName(value.getBase(), "_x0037_82");
			__x0037_82 = value; 
		}
	}
	protected schemaLib._x0037_82 __x0037_82;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_83 get_x0037_83() {
		return __x0037_83;  
	}
	public void set_x0037_83(schemaLib._x0037_83 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_83 = null;
		else {
			setElementName(value.getBase(), "_x0037_83");
			__x0037_83 = value; 
		}
	}
	protected schemaLib._x0037_83 __x0037_83;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_84 get_x0037_84() {
		return __x0037_84;  
	}
	public void set_x0037_84(schemaLib._x0037_84 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_84 = null;
		else {
			setElementName(value.getBase(), "_x0037_84");
			__x0037_84 = value; 
		}
	}
	protected schemaLib._x0037_84 __x0037_84;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_85 get_x0037_85() {
		return __x0037_85;  
	}
	public void set_x0037_85(schemaLib._x0037_85 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_85 = null;
		else {
			setElementName(value.getBase(), "_x0037_85");
			__x0037_85 = value; 
		}
	}
	protected schemaLib._x0037_85 __x0037_85;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_86B get_x0037_86() {
		return __x0037_86;  
	}
	public void set_x0037_86(schemaLib._x0037_86B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_86 = null;
		else {
			setElementName(value.getBase(), "_x0037_86");
			__x0037_86 = value; 
		}
	}
	protected schemaLib._x0037_86B __x0037_86;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_87 get_x0037_87() {
		return __x0037_87;  
	}
	public void set_x0037_87(schemaLib._x0037_87 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_87 = null;
		else {
			setElementName(value.getBase(), "_x0037_87");
			__x0037_87 = value; 
		}
	}
	protected schemaLib._x0037_87 __x0037_87;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_88 get_x0037_88() {
		return __x0037_88;  
	}
	public void set_x0037_88(schemaLib._x0037_88 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_88 = null;
		else {
			setElementName(value.getBase(), "_x0037_88");
			__x0037_88 = value; 
		}
	}
	protected schemaLib._x0037_88 __x0037_88;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0039_55", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_78", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_78"), findSetterMethod("schemaLib._x0039_55", "set_x0037_78", "schemaLib._x0037_78"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_78.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_79", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_79"), findSetterMethod("schemaLib._x0039_55", "set_x0037_79", "schemaLib._x0037_79"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_79.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_80", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_80"), findSetterMethod("schemaLib._x0039_55", "set_x0037_80", "schemaLib._x0037_80"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_80.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_81", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_81"), findSetterMethod("schemaLib._x0039_55", "set_x0037_81", "schemaLib._x0037_81"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_81.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_82", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_82"), findSetterMethod("schemaLib._x0039_55", "set_x0037_82", "schemaLib._x0037_82"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_82.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_83", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_83"), findSetterMethod("schemaLib._x0039_55", "set_x0037_83", "schemaLib._x0037_83"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_83.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_84", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_84"), findSetterMethod("schemaLib._x0039_55", "set_x0037_84", "schemaLib._x0037_84"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_84.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_85", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_85"), findSetterMethod("schemaLib._x0039_55", "set_x0037_85", "schemaLib._x0037_85"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_85.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_86", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_86"), findSetterMethod("schemaLib._x0039_55", "set_x0037_86", "schemaLib._x0037_86B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_86B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_87", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_87"), findSetterMethod("schemaLib._x0039_55", "set_x0037_87", "schemaLib._x0037_87"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_87.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_88", "", findGetterMethod("schemaLib._x0039_55", "get_x0037_88"), findSetterMethod("schemaLib._x0039_55", "set_x0037_88", "schemaLib._x0037_88"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_88.class)
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


