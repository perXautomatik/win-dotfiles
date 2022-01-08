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
// This class represents the ComplexType _x0038_80
// </summary>
public class _x0038_80 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0038_80
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0038_80() {
		setElementName("_x0038_80");
		init();
	}
	public _x0038_80(String elementName) {
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
			__x0038_83 = null;
			__x0038_85 = null;
			__x0038_89 = null;
			__x0038_95 = null;
			__x0038_98 = null;
			__x0039_01 = null;
			__x0039_07 = null;
			__x0039_10 = null;

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
			schemaLib._x0038_80 newObject = (schemaLib._x0038_80)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0038_83 = null;
			if (__x0038_83 != null)
				newObject.__x0038_83 = (schemaLib._x0038_83)__x0038_83.clone();
			newObject.__x0038_85 = null;
			if (__x0038_85 != null)
				newObject.__x0038_85 = (schemaLib._x0038_85)__x0038_85.clone();
			newObject.__x0038_89 = null;
			if (__x0038_89 != null)
				newObject.__x0038_89 = (schemaLib._x0038_89)__x0038_89.clone();
			newObject.__x0038_95 = null;
			if (__x0038_95 != null)
				newObject.__x0038_95 = (schemaLib._x0038_95)__x0038_95.clone();
			newObject.__x0038_98 = null;
			if (__x0038_98 != null)
				newObject.__x0038_98 = (schemaLib._x0038_98)__x0038_98.clone();
			newObject.__x0039_01 = null;
			if (__x0039_01 != null)
				newObject.__x0039_01 = (schemaLib._x0039_01)__x0039_01.clone();
			newObject.__x0039_07 = null;
			if (__x0039_07 != null)
				newObject.__x0039_07 = (schemaLib._x0039_07)__x0039_07.clone();
			newObject.__x0039_10 = null;
			if (__x0039_10 != null)
				newObject.__x0039_10 = (schemaLib._x0039_10)__x0039_10.clone();
	
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
	public schemaLib._x0038_83 get_x0038_83() {
		return __x0038_83;  
	}
	public void set_x0038_83(schemaLib._x0038_83 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_83 = null;
		else {
			setElementName(value.getBase(), "_x0038_83");
			__x0038_83 = value; 
		}
	}
	protected schemaLib._x0038_83 __x0038_83;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_85 get_x0038_85() {
		return __x0038_85;  
	}
	public void set_x0038_85(schemaLib._x0038_85 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_85 = null;
		else {
			setElementName(value.getBase(), "_x0038_85");
			__x0038_85 = value; 
		}
	}
	protected schemaLib._x0038_85 __x0038_85;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_89 get_x0038_89() {
		return __x0038_89;  
	}
	public void set_x0038_89(schemaLib._x0038_89 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_89 = null;
		else {
			setElementName(value.getBase(), "_x0038_89");
			__x0038_89 = value; 
		}
	}
	protected schemaLib._x0038_89 __x0038_89;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_95 get_x0038_95() {
		return __x0038_95;  
	}
	public void set_x0038_95(schemaLib._x0038_95 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_95 = null;
		else {
			setElementName(value.getBase(), "_x0038_95");
			__x0038_95 = value; 
		}
	}
	protected schemaLib._x0038_95 __x0038_95;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_98 get_x0038_98() {
		return __x0038_98;  
	}
	public void set_x0038_98(schemaLib._x0038_98 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_98 = null;
		else {
			setElementName(value.getBase(), "_x0038_98");
			__x0038_98 = value; 
		}
	}
	protected schemaLib._x0038_98 __x0038_98;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_01 get_x0039_01() {
		return __x0039_01;  
	}
	public void set_x0039_01(schemaLib._x0039_01 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_01 = null;
		else {
			setElementName(value.getBase(), "_x0039_01");
			__x0039_01 = value; 
		}
	}
	protected schemaLib._x0039_01 __x0039_01;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_07 get_x0039_07() {
		return __x0039_07;  
	}
	public void set_x0039_07(schemaLib._x0039_07 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_07 = null;
		else {
			setElementName(value.getBase(), "_x0039_07");
			__x0039_07 = value; 
		}
	}
	protected schemaLib._x0039_07 __x0039_07;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_10 get_x0039_10() {
		return __x0039_10;  
	}
	public void set_x0039_10(schemaLib._x0039_10 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_10 = null;
		else {
			setElementName(value.getBase(), "_x0039_10");
			__x0039_10 = value; 
		}
	}
	protected schemaLib._x0039_10 __x0039_10;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0038_80", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_83", "", findGetterMethod("schemaLib._x0038_80", "get_x0038_83"), findSetterMethod("schemaLib._x0038_80", "set_x0038_83", "schemaLib._x0038_83"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_83.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_85", "", findGetterMethod("schemaLib._x0038_80", "get_x0038_85"), findSetterMethod("schemaLib._x0038_80", "set_x0038_85", "schemaLib._x0038_85"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_85.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_89", "", findGetterMethod("schemaLib._x0038_80", "get_x0038_89"), findSetterMethod("schemaLib._x0038_80", "set_x0038_89", "schemaLib._x0038_89"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_89.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_95", "", findGetterMethod("schemaLib._x0038_80", "get_x0038_95"), findSetterMethod("schemaLib._x0038_80", "set_x0038_95", "schemaLib._x0038_95"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_95.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_98", "", findGetterMethod("schemaLib._x0038_80", "get_x0038_98"), findSetterMethod("schemaLib._x0038_80", "set_x0038_98", "schemaLib._x0038_98"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_98.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_01", "", findGetterMethod("schemaLib._x0038_80", "get_x0039_01"), findSetterMethod("schemaLib._x0038_80", "set_x0039_01", "schemaLib._x0039_01"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_01.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_07", "", findGetterMethod("schemaLib._x0038_80", "get_x0039_07"), findSetterMethod("schemaLib._x0038_80", "set_x0039_07", "schemaLib._x0039_07"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_07.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_10", "", findGetterMethod("schemaLib._x0038_80", "get_x0039_10"), findSetterMethod("schemaLib._x0038_80", "set_x0039_10", "schemaLib._x0039_10"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_10.class)
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


