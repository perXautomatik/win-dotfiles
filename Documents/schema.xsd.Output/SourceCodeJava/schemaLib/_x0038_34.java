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
// This class represents the ComplexType _x0038_34
// </summary>
public class _x0038_34 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0038_34
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0038_34() {
		setElementName("_x0038_34");
		init();
	}
	public _x0038_34(String elementName) {
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
			__x0038_37 = null;
			__x0038_39 = null;
			__x0038_43 = null;
			__x0038_44 = null;
			__x0038_49 = null;
			__x0038_52 = null;
			__x0038_55 = null;
			__x0038_58 = null;
			__x0038_61 = null;
			__x0038_64 = null;

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
			schemaLib._x0038_34 newObject = (schemaLib._x0038_34)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0038_37 = null;
			if (__x0038_37 != null)
				newObject.__x0038_37 = (schemaLib._x0038_37)__x0038_37.clone();
			newObject.__x0038_39 = null;
			if (__x0038_39 != null)
				newObject.__x0038_39 = (schemaLib._x0038_39A)__x0038_39.clone();
			newObject.__x0038_43 = null;
			if (__x0038_43 != null)
				newObject.__x0038_43 = (schemaLib._x0038_43)__x0038_43.clone();
			newObject.__x0038_44 = null;
			if (__x0038_44 != null)
				newObject.__x0038_44 = (schemaLib._x0038_44)__x0038_44.clone();
			newObject.__x0038_49 = null;
			if (__x0038_49 != null)
				newObject.__x0038_49 = (schemaLib._x0038_49)__x0038_49.clone();
			newObject.__x0038_52 = null;
			if (__x0038_52 != null)
				newObject.__x0038_52 = (schemaLib._x0038_52A)__x0038_52.clone();
			newObject.__x0038_55 = null;
			if (__x0038_55 != null)
				newObject.__x0038_55 = (schemaLib._x0038_55A)__x0038_55.clone();
			newObject.__x0038_58 = null;
			if (__x0038_58 != null)
				newObject.__x0038_58 = (schemaLib._x0038_58A)__x0038_58.clone();
			newObject.__x0038_61 = null;
			if (__x0038_61 != null)
				newObject.__x0038_61 = (schemaLib._x0038_61A)__x0038_61.clone();
			newObject.__x0038_64 = null;
			if (__x0038_64 != null)
				newObject.__x0038_64 = (schemaLib._x0038_64B)__x0038_64.clone();
	
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
	public schemaLib._x0038_37 get_x0038_37() {
		return __x0038_37;  
	}
	public void set_x0038_37(schemaLib._x0038_37 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_37 = null;
		else {
			setElementName(value.getBase(), "_x0038_37");
			__x0038_37 = value; 
		}
	}
	protected schemaLib._x0038_37 __x0038_37;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_39A get_x0038_39() {
		return __x0038_39;  
	}
	public void set_x0038_39(schemaLib._x0038_39A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_39 = null;
		else {
			setElementName(value.getBase(), "_x0038_39");
			__x0038_39 = value; 
		}
	}
	protected schemaLib._x0038_39A __x0038_39;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_43 get_x0038_43() {
		return __x0038_43;  
	}
	public void set_x0038_43(schemaLib._x0038_43 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_43 = null;
		else {
			setElementName(value.getBase(), "_x0038_43");
			__x0038_43 = value; 
		}
	}
	protected schemaLib._x0038_43 __x0038_43;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_44 get_x0038_44() {
		return __x0038_44;  
	}
	public void set_x0038_44(schemaLib._x0038_44 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_44 = null;
		else {
			setElementName(value.getBase(), "_x0038_44");
			__x0038_44 = value; 
		}
	}
	protected schemaLib._x0038_44 __x0038_44;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_49 get_x0038_49() {
		return __x0038_49;  
	}
	public void set_x0038_49(schemaLib._x0038_49 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_49 = null;
		else {
			setElementName(value.getBase(), "_x0038_49");
			__x0038_49 = value; 
		}
	}
	protected schemaLib._x0038_49 __x0038_49;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_52A get_x0038_52() {
		return __x0038_52;  
	}
	public void set_x0038_52(schemaLib._x0038_52A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_52 = null;
		else {
			setElementName(value.getBase(), "_x0038_52");
			__x0038_52 = value; 
		}
	}
	protected schemaLib._x0038_52A __x0038_52;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_55A get_x0038_55() {
		return __x0038_55;  
	}
	public void set_x0038_55(schemaLib._x0038_55A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_55 = null;
		else {
			setElementName(value.getBase(), "_x0038_55");
			__x0038_55 = value; 
		}
	}
	protected schemaLib._x0038_55A __x0038_55;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_58A get_x0038_58() {
		return __x0038_58;  
	}
	public void set_x0038_58(schemaLib._x0038_58A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_58 = null;
		else {
			setElementName(value.getBase(), "_x0038_58");
			__x0038_58 = value; 
		}
	}
	protected schemaLib._x0038_58A __x0038_58;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_61A get_x0038_61() {
		return __x0038_61;  
	}
	public void set_x0038_61(schemaLib._x0038_61A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_61 = null;
		else {
			setElementName(value.getBase(), "_x0038_61");
			__x0038_61 = value; 
		}
	}
	protected schemaLib._x0038_61A __x0038_61;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_64B get_x0038_64() {
		return __x0038_64;  
	}
	public void set_x0038_64(schemaLib._x0038_64B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_64 = null;
		else {
			setElementName(value.getBase(), "_x0038_64");
			__x0038_64 = value; 
		}
	}
	protected schemaLib._x0038_64B __x0038_64;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0038_34", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_37", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_37"), findSetterMethod("schemaLib._x0038_34", "set_x0038_37", "schemaLib._x0038_37"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_37.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_39", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_39"), findSetterMethod("schemaLib._x0038_34", "set_x0038_39", "schemaLib._x0038_39A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_39A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_43", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_43"), findSetterMethod("schemaLib._x0038_34", "set_x0038_43", "schemaLib._x0038_43"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_43.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_44", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_44"), findSetterMethod("schemaLib._x0038_34", "set_x0038_44", "schemaLib._x0038_44"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_44.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_49", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_49"), findSetterMethod("schemaLib._x0038_34", "set_x0038_49", "schemaLib._x0038_49"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_49.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_52", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_52"), findSetterMethod("schemaLib._x0038_34", "set_x0038_52", "schemaLib._x0038_52A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_52A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_55", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_55"), findSetterMethod("schemaLib._x0038_34", "set_x0038_55", "schemaLib._x0038_55A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_55A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_58", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_58"), findSetterMethod("schemaLib._x0038_34", "set_x0038_58", "schemaLib._x0038_58A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_58A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_61", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_61"), findSetterMethod("schemaLib._x0038_34", "set_x0038_61", "schemaLib._x0038_61A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_61A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_64", "", findGetterMethod("schemaLib._x0038_34", "get_x0038_64"), findSetterMethod("schemaLib._x0038_34", "set_x0038_64", "schemaLib._x0038_64B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_64B.class)
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


