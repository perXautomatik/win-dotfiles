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
// This class represents the ComplexType _x0032_16
// </summary>
public class _x0032_16 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0032_16
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0032_16() {
		setElementName("_x0032_16");
		init();
	}
	public _x0032_16(String elementName) {
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
			__x0035_59 = null;
			__x0035_85 = null;
			__x0035_88 = null;
			__x0035_91 = null;
			__x0035_95 = null;
			__x0035_98 = null;

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
			schemaLib._x0032_16 newObject = (schemaLib._x0032_16)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_59 = null;
			if (__x0035_59 != null)
				newObject.__x0035_59 = (schemaLib._x0035_59)__x0035_59.clone();
			newObject.__x0035_85 = null;
			if (__x0035_85 != null)
				newObject.__x0035_85 = (schemaLib._x0035_85)__x0035_85.clone();
			newObject.__x0035_88 = null;
			if (__x0035_88 != null)
				newObject.__x0035_88 = (schemaLib._x0035_88)__x0035_88.clone();
			newObject.__x0035_91 = null;
			if (__x0035_91 != null)
				newObject.__x0035_91 = (schemaLib._x0035_91B)__x0035_91.clone();
			newObject.__x0035_95 = null;
			if (__x0035_95 != null)
				newObject.__x0035_95 = (schemaLib._x0035_95)__x0035_95.clone();
			newObject.__x0035_98 = null;
			if (__x0035_98 != null)
				newObject.__x0035_98 = (schemaLib._x0035_98)__x0035_98.clone();
	
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
	public schemaLib._x0035_59 get_x0035_59() {
		return __x0035_59;  
	}
	public void set_x0035_59(schemaLib._x0035_59 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_59 = null;
		else {
			setElementName(value.getBase(), "_x0035_59");
			__x0035_59 = value; 
		}
	}
	protected schemaLib._x0035_59 __x0035_59;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_85 get_x0035_85() {
		return __x0035_85;  
	}
	public void set_x0035_85(schemaLib._x0035_85 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_85 = null;
		else {
			setElementName(value.getBase(), "_x0035_85");
			__x0035_85 = value; 
		}
	}
	protected schemaLib._x0035_85 __x0035_85;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_88 get_x0035_88() {
		return __x0035_88;  
	}
	public void set_x0035_88(schemaLib._x0035_88 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_88 = null;
		else {
			setElementName(value.getBase(), "_x0035_88");
			__x0035_88 = value; 
		}
	}
	protected schemaLib._x0035_88 __x0035_88;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_91B get_x0035_91() {
		return __x0035_91;  
	}
	public void set_x0035_91(schemaLib._x0035_91B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_91 = null;
		else {
			setElementName(value.getBase(), "_x0035_91");
			__x0035_91 = value; 
		}
	}
	protected schemaLib._x0035_91B __x0035_91;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_95 get_x0035_95() {
		return __x0035_95;  
	}
	public void set_x0035_95(schemaLib._x0035_95 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_95 = null;
		else {
			setElementName(value.getBase(), "_x0035_95");
			__x0035_95 = value; 
		}
	}
	protected schemaLib._x0035_95 __x0035_95;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_98 get_x0035_98() {
		return __x0035_98;  
	}
	public void set_x0035_98(schemaLib._x0035_98 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_98 = null;
		else {
			setElementName(value.getBase(), "_x0035_98");
			__x0035_98 = value; 
		}
	}
	protected schemaLib._x0035_98 __x0035_98;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0032_16", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_59", "", findGetterMethod("schemaLib._x0032_16", "get_x0035_59"), findSetterMethod("schemaLib._x0032_16", "set_x0035_59", "schemaLib._x0035_59"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_59.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_85", "", findGetterMethod("schemaLib._x0032_16", "get_x0035_85"), findSetterMethod("schemaLib._x0032_16", "set_x0035_85", "schemaLib._x0035_85"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_85.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_88", "", findGetterMethod("schemaLib._x0032_16", "get_x0035_88"), findSetterMethod("schemaLib._x0032_16", "set_x0035_88", "schemaLib._x0035_88"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_88.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_91", "", findGetterMethod("schemaLib._x0032_16", "get_x0035_91"), findSetterMethod("schemaLib._x0032_16", "set_x0035_91", "schemaLib._x0035_91B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_91B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_95", "", findGetterMethod("schemaLib._x0032_16", "get_x0035_95"), findSetterMethod("schemaLib._x0032_16", "set_x0035_95", "schemaLib._x0035_95"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_95.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_98", "", findGetterMethod("schemaLib._x0032_16", "get_x0035_98"), findSetterMethod("schemaLib._x0032_16", "set_x0035_98", "schemaLib._x0035_98"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_98.class)
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


