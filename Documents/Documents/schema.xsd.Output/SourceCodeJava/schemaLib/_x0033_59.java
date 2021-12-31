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
// This class represents the ComplexType _x0033_59
// </summary>
public class _x0033_59 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_59
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_59() {
		setElementName("_x0033_59");
		init();
	}
	public _x0033_59(String elementName) {
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
			__x0033_61 = null;
			__x0033_62 = null;
			__x0033_63 = null;
			__x0033_64 = null;
			__x0033_65 = null;
			__x0033_66 = null;
			__x0033_67 = null;
			__x0033_68 = null;

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
			schemaLib._x0033_59 newObject = (schemaLib._x0033_59)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_61 = null;
			if (__x0033_61 != null)
				newObject.__x0033_61 = (schemaLib._x0033_61)__x0033_61.clone();
			newObject.__x0033_62 = null;
			if (__x0033_62 != null)
				newObject.__x0033_62 = (schemaLib._x0033_62)__x0033_62.clone();
			newObject.__x0033_63 = null;
			if (__x0033_63 != null)
				newObject.__x0033_63 = (schemaLib._x0033_63)__x0033_63.clone();
			newObject.__x0033_64 = null;
			if (__x0033_64 != null)
				newObject.__x0033_64 = (schemaLib._x0033_64)__x0033_64.clone();
			newObject.__x0033_65 = null;
			if (__x0033_65 != null)
				newObject.__x0033_65 = (schemaLib._x0033_65)__x0033_65.clone();
			newObject.__x0033_66 = null;
			if (__x0033_66 != null)
				newObject.__x0033_66 = (schemaLib._x0033_66)__x0033_66.clone();
			newObject.__x0033_67 = null;
			if (__x0033_67 != null)
				newObject.__x0033_67 = (schemaLib._x0033_67B)__x0033_67.clone();
			newObject.__x0033_68 = null;
			if (__x0033_68 != null)
				newObject.__x0033_68 = (schemaLib._x0033_68)__x0033_68.clone();
	
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
	public schemaLib._x0033_61 get_x0033_61() {
		return __x0033_61;  
	}
	public void set_x0033_61(schemaLib._x0033_61 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_61 = null;
		else {
			setElementName(value.getBase(), "_x0033_61");
			__x0033_61 = value; 
		}
	}
	protected schemaLib._x0033_61 __x0033_61;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_62 get_x0033_62() {
		return __x0033_62;  
	}
	public void set_x0033_62(schemaLib._x0033_62 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_62 = null;
		else {
			setElementName(value.getBase(), "_x0033_62");
			__x0033_62 = value; 
		}
	}
	protected schemaLib._x0033_62 __x0033_62;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_63 get_x0033_63() {
		return __x0033_63;  
	}
	public void set_x0033_63(schemaLib._x0033_63 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_63 = null;
		else {
			setElementName(value.getBase(), "_x0033_63");
			__x0033_63 = value; 
		}
	}
	protected schemaLib._x0033_63 __x0033_63;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_64 get_x0033_64() {
		return __x0033_64;  
	}
	public void set_x0033_64(schemaLib._x0033_64 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_64 = null;
		else {
			setElementName(value.getBase(), "_x0033_64");
			__x0033_64 = value; 
		}
	}
	protected schemaLib._x0033_64 __x0033_64;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_65 get_x0033_65() {
		return __x0033_65;  
	}
	public void set_x0033_65(schemaLib._x0033_65 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_65 = null;
		else {
			setElementName(value.getBase(), "_x0033_65");
			__x0033_65 = value; 
		}
	}
	protected schemaLib._x0033_65 __x0033_65;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_66 get_x0033_66() {
		return __x0033_66;  
	}
	public void set_x0033_66(schemaLib._x0033_66 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_66 = null;
		else {
			setElementName(value.getBase(), "_x0033_66");
			__x0033_66 = value; 
		}
	}
	protected schemaLib._x0033_66 __x0033_66;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_67B get_x0033_67() {
		return __x0033_67;  
	}
	public void set_x0033_67(schemaLib._x0033_67B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_67 = null;
		else {
			setElementName(value.getBase(), "_x0033_67");
			__x0033_67 = value; 
		}
	}
	protected schemaLib._x0033_67B __x0033_67;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_68 get_x0033_68() {
		return __x0033_68;  
	}
	public void set_x0033_68(schemaLib._x0033_68 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_68 = null;
		else {
			setElementName(value.getBase(), "_x0033_68");
			__x0033_68 = value; 
		}
	}
	protected schemaLib._x0033_68 __x0033_68;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_59", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_61", "", findGetterMethod("schemaLib._x0033_59", "get_x0033_61"), findSetterMethod("schemaLib._x0033_59", "set_x0033_61", "schemaLib._x0033_61"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_61.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_62", "", findGetterMethod("schemaLib._x0033_59", "get_x0033_62"), findSetterMethod("schemaLib._x0033_59", "set_x0033_62", "schemaLib._x0033_62"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_62.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_63", "", findGetterMethod("schemaLib._x0033_59", "get_x0033_63"), findSetterMethod("schemaLib._x0033_59", "set_x0033_63", "schemaLib._x0033_63"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_63.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_64", "", findGetterMethod("schemaLib._x0033_59", "get_x0033_64"), findSetterMethod("schemaLib._x0033_59", "set_x0033_64", "schemaLib._x0033_64"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_64.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_65", "", findGetterMethod("schemaLib._x0033_59", "get_x0033_65"), findSetterMethod("schemaLib._x0033_59", "set_x0033_65", "schemaLib._x0033_65"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_65.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_66", "", findGetterMethod("schemaLib._x0033_59", "get_x0033_66"), findSetterMethod("schemaLib._x0033_59", "set_x0033_66", "schemaLib._x0033_66"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_66.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_67", "", findGetterMethod("schemaLib._x0033_59", "get_x0033_67"), findSetterMethod("schemaLib._x0033_59", "set_x0033_67", "schemaLib._x0033_67B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_67B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_68", "", findGetterMethod("schemaLib._x0033_59", "get_x0033_68"), findSetterMethod("schemaLib._x0033_59", "set_x0033_68", "schemaLib._x0033_68"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_68.class)
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


