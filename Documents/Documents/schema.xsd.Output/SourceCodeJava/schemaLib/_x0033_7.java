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
// This class represents the ComplexType _x0033_7
// </summary>
public class _x0033_7 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_7
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_7() {
		setElementName("_x0033_7");
		init();
	}
	public _x0033_7(String elementName) {
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
			__x0035_0 = null;
			__x0035_1 = null;
			__x0035_3 = null;
			__x0035_4 = null;
			__x0035_6 = null;
			__x0035_7 = null;
			__x0035_9 = null;
			__x0036_0 = null;
			__x0036_2 = null;
			__x0036_3 = null;
			__x0036_5 = null;

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
			schemaLib._x0033_7 newObject = (schemaLib._x0033_7)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_0 = null;
			if (__x0035_0 != null)
				newObject.__x0035_0 = (schemaLib._x0035_0)__x0035_0.clone();
			newObject.__x0035_1 = null;
			if (__x0035_1 != null)
				newObject.__x0035_1 = (schemaLib._x0035_1)__x0035_1.clone();
			newObject.__x0035_3 = null;
			if (__x0035_3 != null)
				newObject.__x0035_3 = (schemaLib._x0035_3)__x0035_3.clone();
			newObject.__x0035_4 = null;
			if (__x0035_4 != null)
				newObject.__x0035_4 = (schemaLib._x0035_4)__x0035_4.clone();
			newObject.__x0035_6 = null;
			if (__x0035_6 != null)
				newObject.__x0035_6 = (schemaLib._x0035_6)__x0035_6.clone();
			newObject.__x0035_7 = null;
			if (__x0035_7 != null)
				newObject.__x0035_7 = (schemaLib._x0035_7)__x0035_7.clone();
			newObject.__x0035_9 = null;
			if (__x0035_9 != null)
				newObject.__x0035_9 = (schemaLib._x0035_9)__x0035_9.clone();
			newObject.__x0036_0 = null;
			if (__x0036_0 != null)
				newObject.__x0036_0 = (schemaLib._x0036_0)__x0036_0.clone();
			newObject.__x0036_2 = null;
			if (__x0036_2 != null)
				newObject.__x0036_2 = (schemaLib._x0036_2)__x0036_2.clone();
			newObject.__x0036_3 = null;
			if (__x0036_3 != null)
				newObject.__x0036_3 = (schemaLib._x0036_3)__x0036_3.clone();
			newObject.__x0036_5 = null;
			if (__x0036_5 != null)
				newObject.__x0036_5 = (schemaLib._x0036_5)__x0036_5.clone();
	
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
	public schemaLib._x0035_0 get_x0035_0() {
		return __x0035_0;  
	}
	public void set_x0035_0(schemaLib._x0035_0 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_0 = null;
		else {
			setElementName(value.getBase(), "_x0035_0");
			__x0035_0 = value; 
		}
	}
	protected schemaLib._x0035_0 __x0035_0;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_1 get_x0035_1() {
		return __x0035_1;  
	}
	public void set_x0035_1(schemaLib._x0035_1 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_1 = null;
		else {
			setElementName(value.getBase(), "_x0035_1");
			__x0035_1 = value; 
		}
	}
	protected schemaLib._x0035_1 __x0035_1;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_3 get_x0035_3() {
		return __x0035_3;  
	}
	public void set_x0035_3(schemaLib._x0035_3 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_3 = null;
		else {
			setElementName(value.getBase(), "_x0035_3");
			__x0035_3 = value; 
		}
	}
	protected schemaLib._x0035_3 __x0035_3;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_4 get_x0035_4() {
		return __x0035_4;  
	}
	public void set_x0035_4(schemaLib._x0035_4 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_4 = null;
		else {
			setElementName(value.getBase(), "_x0035_4");
			__x0035_4 = value; 
		}
	}
	protected schemaLib._x0035_4 __x0035_4;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_6 get_x0035_6() {
		return __x0035_6;  
	}
	public void set_x0035_6(schemaLib._x0035_6 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_6 = null;
		else {
			setElementName(value.getBase(), "_x0035_6");
			__x0035_6 = value; 
		}
	}
	protected schemaLib._x0035_6 __x0035_6;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_7 get_x0035_7() {
		return __x0035_7;  
	}
	public void set_x0035_7(schemaLib._x0035_7 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_7 = null;
		else {
			setElementName(value.getBase(), "_x0035_7");
			__x0035_7 = value; 
		}
	}
	protected schemaLib._x0035_7 __x0035_7;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_9 get_x0035_9() {
		return __x0035_9;  
	}
	public void set_x0035_9(schemaLib._x0035_9 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_9 = null;
		else {
			setElementName(value.getBase(), "_x0035_9");
			__x0035_9 = value; 
		}
	}
	protected schemaLib._x0035_9 __x0035_9;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_0 get_x0036_0() {
		return __x0036_0;  
	}
	public void set_x0036_0(schemaLib._x0036_0 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_0 = null;
		else {
			setElementName(value.getBase(), "_x0036_0");
			__x0036_0 = value; 
		}
	}
	protected schemaLib._x0036_0 __x0036_0;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_2 get_x0036_2() {
		return __x0036_2;  
	}
	public void set_x0036_2(schemaLib._x0036_2 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_2 = null;
		else {
			setElementName(value.getBase(), "_x0036_2");
			__x0036_2 = value; 
		}
	}
	protected schemaLib._x0036_2 __x0036_2;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_3 get_x0036_3() {
		return __x0036_3;  
	}
	public void set_x0036_3(schemaLib._x0036_3 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_3 = null;
		else {
			setElementName(value.getBase(), "_x0036_3");
			__x0036_3 = value; 
		}
	}
	protected schemaLib._x0036_3 __x0036_3;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_5 get_x0036_5() {
		return __x0036_5;  
	}
	public void set_x0036_5(schemaLib._x0036_5 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_5 = null;
		else {
			setElementName(value.getBase(), "_x0036_5");
			__x0036_5 = value; 
		}
	}
	protected schemaLib._x0036_5 __x0036_5;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_7", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_0", "", findGetterMethod("schemaLib._x0033_7", "get_x0035_0"), findSetterMethod("schemaLib._x0033_7", "set_x0035_0", "schemaLib._x0035_0"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_0.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_1", "", findGetterMethod("schemaLib._x0033_7", "get_x0035_1"), findSetterMethod("schemaLib._x0033_7", "set_x0035_1", "schemaLib._x0035_1"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_1.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_3", "", findGetterMethod("schemaLib._x0033_7", "get_x0035_3"), findSetterMethod("schemaLib._x0033_7", "set_x0035_3", "schemaLib._x0035_3"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_3.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_4", "", findGetterMethod("schemaLib._x0033_7", "get_x0035_4"), findSetterMethod("schemaLib._x0033_7", "set_x0035_4", "schemaLib._x0035_4"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_4.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_6", "", findGetterMethod("schemaLib._x0033_7", "get_x0035_6"), findSetterMethod("schemaLib._x0033_7", "set_x0035_6", "schemaLib._x0035_6"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_6.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_7", "", findGetterMethod("schemaLib._x0033_7", "get_x0035_7"), findSetterMethod("schemaLib._x0033_7", "set_x0035_7", "schemaLib._x0035_7"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_7.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_9", "", findGetterMethod("schemaLib._x0033_7", "get_x0035_9"), findSetterMethod("schemaLib._x0033_7", "set_x0035_9", "schemaLib._x0035_9"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_9.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_0", "", findGetterMethod("schemaLib._x0033_7", "get_x0036_0"), findSetterMethod("schemaLib._x0033_7", "set_x0036_0", "schemaLib._x0036_0"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_0.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_2", "", findGetterMethod("schemaLib._x0033_7", "get_x0036_2"), findSetterMethod("schemaLib._x0033_7", "set_x0036_2", "schemaLib._x0036_2"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_2.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_3", "", findGetterMethod("schemaLib._x0033_7", "get_x0036_3"), findSetterMethod("schemaLib._x0033_7", "set_x0036_3", "schemaLib._x0036_3"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_3.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_5", "", findGetterMethod("schemaLib._x0033_7", "get_x0036_5"), findSetterMethod("schemaLib._x0033_7", "set_x0036_5", "schemaLib._x0036_5"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_5.class)
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


