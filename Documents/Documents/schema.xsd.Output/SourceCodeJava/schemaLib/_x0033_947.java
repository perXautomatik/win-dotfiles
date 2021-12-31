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
// This class represents the ComplexType _x0033_947
// </summary>
public class _x0033_947 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_947
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_947() {
		setElementName("_x0033_947");
		init();
	}
	public _x0033_947(String elementName) {
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
			__x0033_937 = null;
			__x0033_938 = null;
			__x0033_939 = null;
			__x0033_941 = null;
			__x0033_942 = null;
			__x0033_944 = null;
			__x0033_945 = null;
			__x0033_946 = null;

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
			schemaLib._x0033_947 newObject = (schemaLib._x0033_947)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_937 = null;
			if (__x0033_937 != null)
				newObject.__x0033_937 = (schemaLib._x0033_937)__x0033_937.clone();
			newObject.__x0033_938 = null;
			if (__x0033_938 != null)
				newObject.__x0033_938 = (schemaLib._x0033_938)__x0033_938.clone();
			newObject.__x0033_939 = null;
			if (__x0033_939 != null)
				newObject.__x0033_939 = (schemaLib._x0033_939)__x0033_939.clone();
			newObject.__x0033_941 = null;
			if (__x0033_941 != null)
				newObject.__x0033_941 = (schemaLib._x0033_941)__x0033_941.clone();
			newObject.__x0033_942 = null;
			if (__x0033_942 != null)
				newObject.__x0033_942 = (schemaLib._x0033_942)__x0033_942.clone();
			newObject.__x0033_944 = null;
			if (__x0033_944 != null)
				newObject.__x0033_944 = (schemaLib._x0033_944)__x0033_944.clone();
			newObject.__x0033_945 = null;
			if (__x0033_945 != null)
				newObject.__x0033_945 = (schemaLib._x0033_945)__x0033_945.clone();
			newObject.__x0033_946 = null;
			if (__x0033_946 != null)
				newObject.__x0033_946 = (schemaLib._x0033_946)__x0033_946.clone();
	
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
	public schemaLib._x0033_937 get_x0033_937() {
		return __x0033_937;  
	}
	public void set_x0033_937(schemaLib._x0033_937 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_937 = null;
		else {
			setElementName(value.getBase(), "_x0033_937");
			__x0033_937 = value; 
		}
	}
	protected schemaLib._x0033_937 __x0033_937;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_938 get_x0033_938() {
		return __x0033_938;  
	}
	public void set_x0033_938(schemaLib._x0033_938 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_938 = null;
		else {
			setElementName(value.getBase(), "_x0033_938");
			__x0033_938 = value; 
		}
	}
	protected schemaLib._x0033_938 __x0033_938;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_939 get_x0033_939() {
		return __x0033_939;  
	}
	public void set_x0033_939(schemaLib._x0033_939 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_939 = null;
		else {
			setElementName(value.getBase(), "_x0033_939");
			__x0033_939 = value; 
		}
	}
	protected schemaLib._x0033_939 __x0033_939;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_941 get_x0033_941() {
		return __x0033_941;  
	}
	public void set_x0033_941(schemaLib._x0033_941 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_941 = null;
		else {
			setElementName(value.getBase(), "_x0033_941");
			__x0033_941 = value; 
		}
	}
	protected schemaLib._x0033_941 __x0033_941;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_942 get_x0033_942() {
		return __x0033_942;  
	}
	public void set_x0033_942(schemaLib._x0033_942 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_942 = null;
		else {
			setElementName(value.getBase(), "_x0033_942");
			__x0033_942 = value; 
		}
	}
	protected schemaLib._x0033_942 __x0033_942;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_944 get_x0033_944() {
		return __x0033_944;  
	}
	public void set_x0033_944(schemaLib._x0033_944 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_944 = null;
		else {
			setElementName(value.getBase(), "_x0033_944");
			__x0033_944 = value; 
		}
	}
	protected schemaLib._x0033_944 __x0033_944;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_945 get_x0033_945() {
		return __x0033_945;  
	}
	public void set_x0033_945(schemaLib._x0033_945 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_945 = null;
		else {
			setElementName(value.getBase(), "_x0033_945");
			__x0033_945 = value; 
		}
	}
	protected schemaLib._x0033_945 __x0033_945;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_946 get_x0033_946() {
		return __x0033_946;  
	}
	public void set_x0033_946(schemaLib._x0033_946 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_946 = null;
		else {
			setElementName(value.getBase(), "_x0033_946");
			__x0033_946 = value; 
		}
	}
	protected schemaLib._x0033_946 __x0033_946;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_947", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_937", "", findGetterMethod("schemaLib._x0033_947", "get_x0033_937"), findSetterMethod("schemaLib._x0033_947", "set_x0033_937", "schemaLib._x0033_937"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_937.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_938", "", findGetterMethod("schemaLib._x0033_947", "get_x0033_938"), findSetterMethod("schemaLib._x0033_947", "set_x0033_938", "schemaLib._x0033_938"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_938.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_939", "", findGetterMethod("schemaLib._x0033_947", "get_x0033_939"), findSetterMethod("schemaLib._x0033_947", "set_x0033_939", "schemaLib._x0033_939"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_939.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_941", "", findGetterMethod("schemaLib._x0033_947", "get_x0033_941"), findSetterMethod("schemaLib._x0033_947", "set_x0033_941", "schemaLib._x0033_941"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_941.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_942", "", findGetterMethod("schemaLib._x0033_947", "get_x0033_942"), findSetterMethod("schemaLib._x0033_947", "set_x0033_942", "schemaLib._x0033_942"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_942.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_944", "", findGetterMethod("schemaLib._x0033_947", "get_x0033_944"), findSetterMethod("schemaLib._x0033_947", "set_x0033_944", "schemaLib._x0033_944"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_944.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_945", "", findGetterMethod("schemaLib._x0033_947", "get_x0033_945"), findSetterMethod("schemaLib._x0033_947", "set_x0033_945", "schemaLib._x0033_945"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_945.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_946", "", findGetterMethod("schemaLib._x0033_947", "get_x0033_946"), findSetterMethod("schemaLib._x0033_947", "set_x0033_946", "schemaLib._x0033_946"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_946.class)
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


