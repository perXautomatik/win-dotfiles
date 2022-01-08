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
// This class represents the ComplexType _x0032_161
// </summary>
public class _x0032_161 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0032_161
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0032_161() {
		setElementName("_x0032_161");
		init();
	}
	public _x0032_161(String elementName) {
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
			__x0032_104 = null;
			__x0032_105 = null;
			__x0032_108 = null;
			__x0032_109 = null;
			__x0032_111 = null;
			__x0032_112 = null;
			__x0032_113 = null;
			__x0032_114 = null;
			__x0032_117 = null;
			__x0032_118 = null;
			__x0032_136 = null;
			__x0032_138 = null;

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
			schemaLib._x0032_161 newObject = (schemaLib._x0032_161)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0032_104 = null;
			if (__x0032_104 != null)
				newObject.__x0032_104 = (schemaLib._x0032_104)__x0032_104.clone();
			newObject.__x0032_105 = null;
			if (__x0032_105 != null)
				newObject.__x0032_105 = (schemaLib._x0032_105B)__x0032_105.clone();
			newObject.__x0032_108 = null;
			if (__x0032_108 != null)
				newObject.__x0032_108 = (schemaLib._x0032_108)__x0032_108.clone();
			newObject.__x0032_109 = null;
			if (__x0032_109 != null)
				newObject.__x0032_109 = (schemaLib._x0032_109)__x0032_109.clone();
			newObject.__x0032_111 = null;
			if (__x0032_111 != null)
				newObject.__x0032_111 = (schemaLib._x0032_111)__x0032_111.clone();
			newObject.__x0032_112 = null;
			if (__x0032_112 != null)
				newObject.__x0032_112 = (schemaLib._x0032_112)__x0032_112.clone();
			newObject.__x0032_113 = null;
			if (__x0032_113 != null)
				newObject.__x0032_113 = (schemaLib._x0032_113)__x0032_113.clone();
			newObject.__x0032_114 = null;
			if (__x0032_114 != null)
				newObject.__x0032_114 = (schemaLib._x0032_114)__x0032_114.clone();
			newObject.__x0032_117 = null;
			if (__x0032_117 != null)
				newObject.__x0032_117 = (schemaLib._x0032_117)__x0032_117.clone();
			newObject.__x0032_118 = null;
			if (__x0032_118 != null)
				newObject.__x0032_118 = (schemaLib._x0032_118)__x0032_118.clone();
			newObject.__x0032_136 = null;
			if (__x0032_136 != null)
				newObject.__x0032_136 = (schemaLib._x0032_136)__x0032_136.clone();
			newObject.__x0032_138 = null;
			if (__x0032_138 != null)
				newObject.__x0032_138 = (schemaLib._x0032_138)__x0032_138.clone();
	
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
	public schemaLib._x0032_104 get_x0032_104() {
		return __x0032_104;  
	}
	public void set_x0032_104(schemaLib._x0032_104 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_104 = null;
		else {
			setElementName(value.getBase(), "_x0032_104");
			__x0032_104 = value; 
		}
	}
	protected schemaLib._x0032_104 __x0032_104;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_105B get_x0032_105() {
		return __x0032_105;  
	}
	public void set_x0032_105(schemaLib._x0032_105B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_105 = null;
		else {
			setElementName(value.getBase(), "_x0032_105");
			__x0032_105 = value; 
		}
	}
	protected schemaLib._x0032_105B __x0032_105;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_108 get_x0032_108() {
		return __x0032_108;  
	}
	public void set_x0032_108(schemaLib._x0032_108 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_108 = null;
		else {
			setElementName(value.getBase(), "_x0032_108");
			__x0032_108 = value; 
		}
	}
	protected schemaLib._x0032_108 __x0032_108;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_109 get_x0032_109() {
		return __x0032_109;  
	}
	public void set_x0032_109(schemaLib._x0032_109 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_109 = null;
		else {
			setElementName(value.getBase(), "_x0032_109");
			__x0032_109 = value; 
		}
	}
	protected schemaLib._x0032_109 __x0032_109;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_111 get_x0032_111() {
		return __x0032_111;  
	}
	public void set_x0032_111(schemaLib._x0032_111 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_111 = null;
		else {
			setElementName(value.getBase(), "_x0032_111");
			__x0032_111 = value; 
		}
	}
	protected schemaLib._x0032_111 __x0032_111;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_112 get_x0032_112() {
		return __x0032_112;  
	}
	public void set_x0032_112(schemaLib._x0032_112 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_112 = null;
		else {
			setElementName(value.getBase(), "_x0032_112");
			__x0032_112 = value; 
		}
	}
	protected schemaLib._x0032_112 __x0032_112;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_113 get_x0032_113() {
		return __x0032_113;  
	}
	public void set_x0032_113(schemaLib._x0032_113 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_113 = null;
		else {
			setElementName(value.getBase(), "_x0032_113");
			__x0032_113 = value; 
		}
	}
	protected schemaLib._x0032_113 __x0032_113;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_114 get_x0032_114() {
		return __x0032_114;  
	}
	public void set_x0032_114(schemaLib._x0032_114 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_114 = null;
		else {
			setElementName(value.getBase(), "_x0032_114");
			__x0032_114 = value; 
		}
	}
	protected schemaLib._x0032_114 __x0032_114;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_117 get_x0032_117() {
		return __x0032_117;  
	}
	public void set_x0032_117(schemaLib._x0032_117 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_117 = null;
		else {
			setElementName(value.getBase(), "_x0032_117");
			__x0032_117 = value; 
		}
	}
	protected schemaLib._x0032_117 __x0032_117;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_118 get_x0032_118() {
		return __x0032_118;  
	}
	public void set_x0032_118(schemaLib._x0032_118 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_118 = null;
		else {
			setElementName(value.getBase(), "_x0032_118");
			__x0032_118 = value; 
		}
	}
	protected schemaLib._x0032_118 __x0032_118;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_136 get_x0032_136() {
		return __x0032_136;  
	}
	public void set_x0032_136(schemaLib._x0032_136 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_136 = null;
		else {
			setElementName(value.getBase(), "_x0032_136");
			__x0032_136 = value; 
		}
	}
	protected schemaLib._x0032_136 __x0032_136;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_138 get_x0032_138() {
		return __x0032_138;  
	}
	public void set_x0032_138(schemaLib._x0032_138 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_138 = null;
		else {
			setElementName(value.getBase(), "_x0032_138");
			__x0032_138 = value; 
		}
	}
	protected schemaLib._x0032_138 __x0032_138;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0032_161", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_104", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_104"), findSetterMethod("schemaLib._x0032_161", "set_x0032_104", "schemaLib._x0032_104"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_104.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_105", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_105"), findSetterMethod("schemaLib._x0032_161", "set_x0032_105", "schemaLib._x0032_105B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_105B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_108", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_108"), findSetterMethod("schemaLib._x0032_161", "set_x0032_108", "schemaLib._x0032_108"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_108.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_109", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_109"), findSetterMethod("schemaLib._x0032_161", "set_x0032_109", "schemaLib._x0032_109"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_109.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_111", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_111"), findSetterMethod("schemaLib._x0032_161", "set_x0032_111", "schemaLib._x0032_111"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_111.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_112", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_112"), findSetterMethod("schemaLib._x0032_161", "set_x0032_112", "schemaLib._x0032_112"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_112.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_113", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_113"), findSetterMethod("schemaLib._x0032_161", "set_x0032_113", "schemaLib._x0032_113"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_113.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_114", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_114"), findSetterMethod("schemaLib._x0032_161", "set_x0032_114", "schemaLib._x0032_114"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_114.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_117", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_117"), findSetterMethod("schemaLib._x0032_161", "set_x0032_117", "schemaLib._x0032_117"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_117.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_118", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_118"), findSetterMethod("schemaLib._x0032_161", "set_x0032_118", "schemaLib._x0032_118"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_118.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_136", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_136"), findSetterMethod("schemaLib._x0032_161", "set_x0032_136", "schemaLib._x0032_136"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_136.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_138", "", findGetterMethod("schemaLib._x0032_161", "get_x0032_138"), findSetterMethod("schemaLib._x0032_161", "set_x0032_138", "schemaLib._x0032_138"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_138.class)
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


