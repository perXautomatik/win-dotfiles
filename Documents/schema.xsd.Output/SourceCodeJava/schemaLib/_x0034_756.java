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
// This class represents the ComplexType _x0034_756
// </summary>
public class _x0034_756 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_756
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_756() {
		setElementName("_x0034_756");
		init();
	}
	public _x0034_756(String elementName) {
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
			__x0034_759 = null;
			__x0034_761 = null;
			__x0034_768 = null;
			__x0034_774 = null;
			__x0034_777 = null;
			__x0034_780 = null;
			__x0034_783 = null;

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
			schemaLib._x0034_756 newObject = (schemaLib._x0034_756)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_759 = null;
			if (__x0034_759 != null)
				newObject.__x0034_759 = (schemaLib._x0034_759)__x0034_759.clone();
			newObject.__x0034_761 = null;
			if (__x0034_761 != null)
				newObject.__x0034_761 = (schemaLib._x0034_761)__x0034_761.clone();
			newObject.__x0034_768 = null;
			if (__x0034_768 != null)
				newObject.__x0034_768 = (schemaLib._x0034_768)__x0034_768.clone();
			newObject.__x0034_774 = null;
			if (__x0034_774 != null)
				newObject.__x0034_774 = (schemaLib._x0034_774)__x0034_774.clone();
			newObject.__x0034_777 = null;
			if (__x0034_777 != null)
				newObject.__x0034_777 = (schemaLib._x0034_777)__x0034_777.clone();
			newObject.__x0034_780 = null;
			if (__x0034_780 != null)
				newObject.__x0034_780 = (schemaLib._x0034_780)__x0034_780.clone();
			newObject.__x0034_783 = null;
			if (__x0034_783 != null)
				newObject.__x0034_783 = (schemaLib._x0034_783)__x0034_783.clone();
	
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
	public schemaLib._x0034_759 get_x0034_759() {
		return __x0034_759;  
	}
	public void set_x0034_759(schemaLib._x0034_759 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_759 = null;
		else {
			setElementName(value.getBase(), "_x0034_759");
			__x0034_759 = value; 
		}
	}
	protected schemaLib._x0034_759 __x0034_759;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_761 get_x0034_761() {
		return __x0034_761;  
	}
	public void set_x0034_761(schemaLib._x0034_761 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_761 = null;
		else {
			setElementName(value.getBase(), "_x0034_761");
			__x0034_761 = value; 
		}
	}
	protected schemaLib._x0034_761 __x0034_761;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_768 get_x0034_768() {
		return __x0034_768;  
	}
	public void set_x0034_768(schemaLib._x0034_768 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_768 = null;
		else {
			setElementName(value.getBase(), "_x0034_768");
			__x0034_768 = value; 
		}
	}
	protected schemaLib._x0034_768 __x0034_768;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_774 get_x0034_774() {
		return __x0034_774;  
	}
	public void set_x0034_774(schemaLib._x0034_774 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_774 = null;
		else {
			setElementName(value.getBase(), "_x0034_774");
			__x0034_774 = value; 
		}
	}
	protected schemaLib._x0034_774 __x0034_774;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_777 get_x0034_777() {
		return __x0034_777;  
	}
	public void set_x0034_777(schemaLib._x0034_777 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_777 = null;
		else {
			setElementName(value.getBase(), "_x0034_777");
			__x0034_777 = value; 
		}
	}
	protected schemaLib._x0034_777 __x0034_777;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_780 get_x0034_780() {
		return __x0034_780;  
	}
	public void set_x0034_780(schemaLib._x0034_780 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_780 = null;
		else {
			setElementName(value.getBase(), "_x0034_780");
			__x0034_780 = value; 
		}
	}
	protected schemaLib._x0034_780 __x0034_780;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_783 get_x0034_783() {
		return __x0034_783;  
	}
	public void set_x0034_783(schemaLib._x0034_783 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_783 = null;
		else {
			setElementName(value.getBase(), "_x0034_783");
			__x0034_783 = value; 
		}
	}
	protected schemaLib._x0034_783 __x0034_783;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_756", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_759", "", findGetterMethod("schemaLib._x0034_756", "get_x0034_759"), findSetterMethod("schemaLib._x0034_756", "set_x0034_759", "schemaLib._x0034_759"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_759.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_761", "", findGetterMethod("schemaLib._x0034_756", "get_x0034_761"), findSetterMethod("schemaLib._x0034_756", "set_x0034_761", "schemaLib._x0034_761"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_761.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_768", "", findGetterMethod("schemaLib._x0034_756", "get_x0034_768"), findSetterMethod("schemaLib._x0034_756", "set_x0034_768", "schemaLib._x0034_768"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_768.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_774", "", findGetterMethod("schemaLib._x0034_756", "get_x0034_774"), findSetterMethod("schemaLib._x0034_756", "set_x0034_774", "schemaLib._x0034_774"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_774.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_777", "", findGetterMethod("schemaLib._x0034_756", "get_x0034_777"), findSetterMethod("schemaLib._x0034_756", "set_x0034_777", "schemaLib._x0034_777"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_777.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_780", "", findGetterMethod("schemaLib._x0034_756", "get_x0034_780"), findSetterMethod("schemaLib._x0034_756", "set_x0034_780", "schemaLib._x0034_780"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_780.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_783", "", findGetterMethod("schemaLib._x0034_756", "get_x0034_783"), findSetterMethod("schemaLib._x0034_756", "set_x0034_783", "schemaLib._x0034_783"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_783.class)
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


