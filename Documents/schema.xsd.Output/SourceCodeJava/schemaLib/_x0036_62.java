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
// This class represents the ComplexType _x0036_62
// </summary>
public class _x0036_62 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_62
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_62() {
		setElementName("_x0036_62");
		init();
	}
	public _x0036_62(String elementName) {
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
			__x0036_67 = null;
			__x0036_68 = null;
			__x0036_69 = null;
			__x0036_70 = null;
			__x0036_71 = null;
			__x0036_74 = null;

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
			schemaLib._x0036_62 newObject = (schemaLib._x0036_62)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_67 = null;
			if (__x0036_67 != null)
				newObject.__x0036_67 = (schemaLib._x0036_67)__x0036_67.clone();
			newObject.__x0036_68 = null;
			if (__x0036_68 != null)
				newObject.__x0036_68 = (schemaLib._x0036_68)__x0036_68.clone();
			newObject.__x0036_69 = null;
			if (__x0036_69 != null)
				newObject.__x0036_69 = (schemaLib._x0036_69)__x0036_69.clone();
			newObject.__x0036_70 = null;
			if (__x0036_70 != null)
				newObject.__x0036_70 = (schemaLib._x0036_70)__x0036_70.clone();
			newObject.__x0036_71 = null;
			if (__x0036_71 != null)
				newObject.__x0036_71 = (schemaLib._x0036_71)__x0036_71.clone();
			newObject.__x0036_74 = null;
			if (__x0036_74 != null)
				newObject.__x0036_74 = (schemaLib._x0036_74)__x0036_74.clone();
	
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
	public schemaLib._x0036_67 get_x0036_67() {
		return __x0036_67;  
	}
	public void set_x0036_67(schemaLib._x0036_67 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_67 = null;
		else {
			setElementName(value.getBase(), "_x0036_67");
			__x0036_67 = value; 
		}
	}
	protected schemaLib._x0036_67 __x0036_67;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_68 get_x0036_68() {
		return __x0036_68;  
	}
	public void set_x0036_68(schemaLib._x0036_68 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_68 = null;
		else {
			setElementName(value.getBase(), "_x0036_68");
			__x0036_68 = value; 
		}
	}
	protected schemaLib._x0036_68 __x0036_68;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_69 get_x0036_69() {
		return __x0036_69;  
	}
	public void set_x0036_69(schemaLib._x0036_69 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_69 = null;
		else {
			setElementName(value.getBase(), "_x0036_69");
			__x0036_69 = value; 
		}
	}
	protected schemaLib._x0036_69 __x0036_69;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_70 get_x0036_70() {
		return __x0036_70;  
	}
	public void set_x0036_70(schemaLib._x0036_70 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_70 = null;
		else {
			setElementName(value.getBase(), "_x0036_70");
			__x0036_70 = value; 
		}
	}
	protected schemaLib._x0036_70 __x0036_70;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_71 get_x0036_71() {
		return __x0036_71;  
	}
	public void set_x0036_71(schemaLib._x0036_71 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_71 = null;
		else {
			setElementName(value.getBase(), "_x0036_71");
			__x0036_71 = value; 
		}
	}
	protected schemaLib._x0036_71 __x0036_71;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_74 get_x0036_74() {
		return __x0036_74;  
	}
	public void set_x0036_74(schemaLib._x0036_74 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_74 = null;
		else {
			setElementName(value.getBase(), "_x0036_74");
			__x0036_74 = value; 
		}
	}
	protected schemaLib._x0036_74 __x0036_74;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_62", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_67", "", findGetterMethod("schemaLib._x0036_62", "get_x0036_67"), findSetterMethod("schemaLib._x0036_62", "set_x0036_67", "schemaLib._x0036_67"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_67.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_68", "", findGetterMethod("schemaLib._x0036_62", "get_x0036_68"), findSetterMethod("schemaLib._x0036_62", "set_x0036_68", "schemaLib._x0036_68"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_68.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_69", "", findGetterMethod("schemaLib._x0036_62", "get_x0036_69"), findSetterMethod("schemaLib._x0036_62", "set_x0036_69", "schemaLib._x0036_69"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_69.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_70", "", findGetterMethod("schemaLib._x0036_62", "get_x0036_70"), findSetterMethod("schemaLib._x0036_62", "set_x0036_70", "schemaLib._x0036_70"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_70.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_71", "", findGetterMethod("schemaLib._x0036_62", "get_x0036_71"), findSetterMethod("schemaLib._x0036_62", "set_x0036_71", "schemaLib._x0036_71"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_71.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_74", "", findGetterMethod("schemaLib._x0036_62", "get_x0036_74"), findSetterMethod("schemaLib._x0036_62", "set_x0036_74", "schemaLib._x0036_74"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_74.class)
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


