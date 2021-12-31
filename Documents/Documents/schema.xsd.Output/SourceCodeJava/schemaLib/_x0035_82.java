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
// This class represents the ComplexType _x0035_82
// </summary>
public class _x0035_82 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0035_82
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0035_82() {
		setElementName("_x0035_82");
		init();
	}
	public _x0035_82(String elementName) {
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
			__x0035_66 = null;
			__x0035_73 = null;
			__x0035_74 = null;
			__x0035_75 = null;
			__x0035_94 = null;
			__x0036_05 = null;
			__x0036_06 = null;

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
			schemaLib._x0035_82 newObject = (schemaLib._x0035_82)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_66 = null;
			if (__x0035_66 != null)
				newObject.__x0035_66 = (schemaLib._x0035_66)__x0035_66.clone();
			newObject.__x0035_73 = null;
			if (__x0035_73 != null)
				newObject.__x0035_73 = (schemaLib._x0035_73)__x0035_73.clone();
			newObject.__x0035_74 = null;
			if (__x0035_74 != null)
				newObject.__x0035_74 = (schemaLib._x0035_74)__x0035_74.clone();
			newObject.__x0035_75 = null;
			if (__x0035_75 != null)
				newObject.__x0035_75 = (schemaLib._x0035_75B)__x0035_75.clone();
			newObject.__x0035_94 = null;
			if (__x0035_94 != null)
				newObject.__x0035_94 = (schemaLib._x0035_94)__x0035_94.clone();
			newObject.__x0036_05 = null;
			if (__x0036_05 != null)
				newObject.__x0036_05 = (schemaLib._x0036_05)__x0036_05.clone();
			newObject.__x0036_06 = null;
			if (__x0036_06 != null)
				newObject.__x0036_06 = (schemaLib._x0036_06)__x0036_06.clone();
	
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
	public schemaLib._x0035_66 get_x0035_66() {
		return __x0035_66;  
	}
	public void set_x0035_66(schemaLib._x0035_66 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_66 = null;
		else {
			setElementName(value.getBase(), "_x0035_66");
			__x0035_66 = value; 
		}
	}
	protected schemaLib._x0035_66 __x0035_66;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_73 get_x0035_73() {
		return __x0035_73;  
	}
	public void set_x0035_73(schemaLib._x0035_73 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_73 = null;
		else {
			setElementName(value.getBase(), "_x0035_73");
			__x0035_73 = value; 
		}
	}
	protected schemaLib._x0035_73 __x0035_73;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_74 get_x0035_74() {
		return __x0035_74;  
	}
	public void set_x0035_74(schemaLib._x0035_74 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_74 = null;
		else {
			setElementName(value.getBase(), "_x0035_74");
			__x0035_74 = value; 
		}
	}
	protected schemaLib._x0035_74 __x0035_74;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_75B get_x0035_75() {
		return __x0035_75;  
	}
	public void set_x0035_75(schemaLib._x0035_75B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_75 = null;
		else {
			setElementName(value.getBase(), "_x0035_75");
			__x0035_75 = value; 
		}
	}
	protected schemaLib._x0035_75B __x0035_75;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_94 get_x0035_94() {
		return __x0035_94;  
	}
	public void set_x0035_94(schemaLib._x0035_94 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_94 = null;
		else {
			setElementName(value.getBase(), "_x0035_94");
			__x0035_94 = value; 
		}
	}
	protected schemaLib._x0035_94 __x0035_94;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_05 get_x0036_05() {
		return __x0036_05;  
	}
	public void set_x0036_05(schemaLib._x0036_05 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_05 = null;
		else {
			setElementName(value.getBase(), "_x0036_05");
			__x0036_05 = value; 
		}
	}
	protected schemaLib._x0036_05 __x0036_05;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_06 get_x0036_06() {
		return __x0036_06;  
	}
	public void set_x0036_06(schemaLib._x0036_06 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_06 = null;
		else {
			setElementName(value.getBase(), "_x0036_06");
			__x0036_06 = value; 
		}
	}
	protected schemaLib._x0036_06 __x0036_06;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0035_82", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_66", "", findGetterMethod("schemaLib._x0035_82", "get_x0035_66"), findSetterMethod("schemaLib._x0035_82", "set_x0035_66", "schemaLib._x0035_66"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_66.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_73", "", findGetterMethod("schemaLib._x0035_82", "get_x0035_73"), findSetterMethod("schemaLib._x0035_82", "set_x0035_73", "schemaLib._x0035_73"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_73.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_74", "", findGetterMethod("schemaLib._x0035_82", "get_x0035_74"), findSetterMethod("schemaLib._x0035_82", "set_x0035_74", "schemaLib._x0035_74"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_74.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_75", "", findGetterMethod("schemaLib._x0035_82", "get_x0035_75"), findSetterMethod("schemaLib._x0035_82", "set_x0035_75", "schemaLib._x0035_75B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_75B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_94", "", findGetterMethod("schemaLib._x0035_82", "get_x0035_94"), findSetterMethod("schemaLib._x0035_82", "set_x0035_94", "schemaLib._x0035_94"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_94.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_05", "", findGetterMethod("schemaLib._x0035_82", "get_x0036_05"), findSetterMethod("schemaLib._x0035_82", "set_x0036_05", "schemaLib._x0036_05"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_05.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_06", "", findGetterMethod("schemaLib._x0035_82", "get_x0036_06"), findSetterMethod("schemaLib._x0035_82", "set_x0036_06", "schemaLib._x0036_06"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_06.class)
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


