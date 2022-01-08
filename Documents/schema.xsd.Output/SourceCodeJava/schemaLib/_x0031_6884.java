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
// This class represents the ComplexType _x0031_6884
// </summary>
public class _x0031_6884 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_6884
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_6884() {
		setElementName("_x0031_6884");
		init();
	}
	public _x0031_6884(String elementName) {
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
			__x0031_6941 = null;
			__x0031_6944 = null;
			__x0031_6958 = null;
			__x0031_6961 = null;
			__x0031_6967 = null;
			__x0031_6970 = null;
			__x0031_6976 = null;
			__x0031_6979 = null;

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
			schemaLib._x0031_6884 newObject = (schemaLib._x0031_6884)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_6941 = null;
			if (__x0031_6941 != null)
				newObject.__x0031_6941 = (schemaLib._x0031_6941)__x0031_6941.clone();
			newObject.__x0031_6944 = null;
			if (__x0031_6944 != null)
				newObject.__x0031_6944 = (schemaLib._x0031_6944)__x0031_6944.clone();
			newObject.__x0031_6958 = null;
			if (__x0031_6958 != null)
				newObject.__x0031_6958 = (schemaLib._x0031_6958)__x0031_6958.clone();
			newObject.__x0031_6961 = null;
			if (__x0031_6961 != null)
				newObject.__x0031_6961 = (schemaLib._x0031_6961)__x0031_6961.clone();
			newObject.__x0031_6967 = null;
			if (__x0031_6967 != null)
				newObject.__x0031_6967 = (schemaLib._x0031_6967)__x0031_6967.clone();
			newObject.__x0031_6970 = null;
			if (__x0031_6970 != null)
				newObject.__x0031_6970 = (schemaLib._x0031_6970)__x0031_6970.clone();
			newObject.__x0031_6976 = null;
			if (__x0031_6976 != null)
				newObject.__x0031_6976 = (schemaLib._x0031_6976)__x0031_6976.clone();
			newObject.__x0031_6979 = null;
			if (__x0031_6979 != null)
				newObject.__x0031_6979 = (schemaLib._x0031_6979)__x0031_6979.clone();
	
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
	public schemaLib._x0031_6941 get_x0031_6941() {
		return __x0031_6941;  
	}
	public void set_x0031_6941(schemaLib._x0031_6941 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6941 = null;
		else {
			setElementName(value.getBase(), "_x0031_6941");
			__x0031_6941 = value; 
		}
	}
	protected schemaLib._x0031_6941 __x0031_6941;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6944 get_x0031_6944() {
		return __x0031_6944;  
	}
	public void set_x0031_6944(schemaLib._x0031_6944 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6944 = null;
		else {
			setElementName(value.getBase(), "_x0031_6944");
			__x0031_6944 = value; 
		}
	}
	protected schemaLib._x0031_6944 __x0031_6944;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6958 get_x0031_6958() {
		return __x0031_6958;  
	}
	public void set_x0031_6958(schemaLib._x0031_6958 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6958 = null;
		else {
			setElementName(value.getBase(), "_x0031_6958");
			__x0031_6958 = value; 
		}
	}
	protected schemaLib._x0031_6958 __x0031_6958;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6961 get_x0031_6961() {
		return __x0031_6961;  
	}
	public void set_x0031_6961(schemaLib._x0031_6961 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6961 = null;
		else {
			setElementName(value.getBase(), "_x0031_6961");
			__x0031_6961 = value; 
		}
	}
	protected schemaLib._x0031_6961 __x0031_6961;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6967 get_x0031_6967() {
		return __x0031_6967;  
	}
	public void set_x0031_6967(schemaLib._x0031_6967 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6967 = null;
		else {
			setElementName(value.getBase(), "_x0031_6967");
			__x0031_6967 = value; 
		}
	}
	protected schemaLib._x0031_6967 __x0031_6967;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6970 get_x0031_6970() {
		return __x0031_6970;  
	}
	public void set_x0031_6970(schemaLib._x0031_6970 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6970 = null;
		else {
			setElementName(value.getBase(), "_x0031_6970");
			__x0031_6970 = value; 
		}
	}
	protected schemaLib._x0031_6970 __x0031_6970;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6976 get_x0031_6976() {
		return __x0031_6976;  
	}
	public void set_x0031_6976(schemaLib._x0031_6976 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6976 = null;
		else {
			setElementName(value.getBase(), "_x0031_6976");
			__x0031_6976 = value; 
		}
	}
	protected schemaLib._x0031_6976 __x0031_6976;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6979 get_x0031_6979() {
		return __x0031_6979;  
	}
	public void set_x0031_6979(schemaLib._x0031_6979 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6979 = null;
		else {
			setElementName(value.getBase(), "_x0031_6979");
			__x0031_6979 = value; 
		}
	}
	protected schemaLib._x0031_6979 __x0031_6979;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_6884", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6941", "", findGetterMethod("schemaLib._x0031_6884", "get_x0031_6941"), findSetterMethod("schemaLib._x0031_6884", "set_x0031_6941", "schemaLib._x0031_6941"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6941.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6944", "", findGetterMethod("schemaLib._x0031_6884", "get_x0031_6944"), findSetterMethod("schemaLib._x0031_6884", "set_x0031_6944", "schemaLib._x0031_6944"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6944.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6958", "", findGetterMethod("schemaLib._x0031_6884", "get_x0031_6958"), findSetterMethod("schemaLib._x0031_6884", "set_x0031_6958", "schemaLib._x0031_6958"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6958.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6961", "", findGetterMethod("schemaLib._x0031_6884", "get_x0031_6961"), findSetterMethod("schemaLib._x0031_6884", "set_x0031_6961", "schemaLib._x0031_6961"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6961.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6967", "", findGetterMethod("schemaLib._x0031_6884", "get_x0031_6967"), findSetterMethod("schemaLib._x0031_6884", "set_x0031_6967", "schemaLib._x0031_6967"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6967.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6970", "", findGetterMethod("schemaLib._x0031_6884", "get_x0031_6970"), findSetterMethod("schemaLib._x0031_6884", "set_x0031_6970", "schemaLib._x0031_6970"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6970.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6976", "", findGetterMethod("schemaLib._x0031_6884", "get_x0031_6976"), findSetterMethod("schemaLib._x0031_6884", "set_x0031_6976", "schemaLib._x0031_6976"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6976.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6979", "", findGetterMethod("schemaLib._x0031_6884", "get_x0031_6979"), findSetterMethod("schemaLib._x0031_6884", "set_x0031_6979", "schemaLib._x0031_6979"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6979.class)
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


