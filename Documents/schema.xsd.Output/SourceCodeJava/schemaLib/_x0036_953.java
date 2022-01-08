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
// This class represents the ComplexType _x0036_953
// </summary>
public class _x0036_953 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_953
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_953() {
		setElementName("_x0036_953");
		init();
	}
	public _x0036_953(String elementName) {
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
			__x0036_956 = null;
			__x0036_958 = null;
			__x0036_959 = null;
			__x0036_963 = null;
			__x0036_966 = null;
			__x0036_971 = null;

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
			schemaLib._x0036_953 newObject = (schemaLib._x0036_953)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_956 = null;
			if (__x0036_956 != null)
				newObject.__x0036_956 = (schemaLib._x0036_956)__x0036_956.clone();
			newObject.__x0036_958 = null;
			if (__x0036_958 != null)
				newObject.__x0036_958 = (schemaLib._x0036_958)__x0036_958.clone();
			newObject.__x0036_959 = null;
			if (__x0036_959 != null)
				newObject.__x0036_959 = (schemaLib._x0036_959)__x0036_959.clone();
			newObject.__x0036_963 = null;
			if (__x0036_963 != null)
				newObject.__x0036_963 = (schemaLib._x0036_963A)__x0036_963.clone();
			newObject.__x0036_966 = null;
			if (__x0036_966 != null)
				newObject.__x0036_966 = (schemaLib._x0036_966A)__x0036_966.clone();
			newObject.__x0036_971 = null;
			if (__x0036_971 != null)
				newObject.__x0036_971 = (schemaLib._x0036_971)__x0036_971.clone();
	
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
	public schemaLib._x0036_956 get_x0036_956() {
		return __x0036_956;  
	}
	public void set_x0036_956(schemaLib._x0036_956 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_956 = null;
		else {
			setElementName(value.getBase(), "_x0036_956");
			__x0036_956 = value; 
		}
	}
	protected schemaLib._x0036_956 __x0036_956;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_958 get_x0036_958() {
		return __x0036_958;  
	}
	public void set_x0036_958(schemaLib._x0036_958 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_958 = null;
		else {
			setElementName(value.getBase(), "_x0036_958");
			__x0036_958 = value; 
		}
	}
	protected schemaLib._x0036_958 __x0036_958;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_959 get_x0036_959() {
		return __x0036_959;  
	}
	public void set_x0036_959(schemaLib._x0036_959 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_959 = null;
		else {
			setElementName(value.getBase(), "_x0036_959");
			__x0036_959 = value; 
		}
	}
	protected schemaLib._x0036_959 __x0036_959;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_963A get_x0036_963() {
		return __x0036_963;  
	}
	public void set_x0036_963(schemaLib._x0036_963A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_963 = null;
		else {
			setElementName(value.getBase(), "_x0036_963");
			__x0036_963 = value; 
		}
	}
	protected schemaLib._x0036_963A __x0036_963;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_966A get_x0036_966() {
		return __x0036_966;  
	}
	public void set_x0036_966(schemaLib._x0036_966A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_966 = null;
		else {
			setElementName(value.getBase(), "_x0036_966");
			__x0036_966 = value; 
		}
	}
	protected schemaLib._x0036_966A __x0036_966;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_971 get_x0036_971() {
		return __x0036_971;  
	}
	public void set_x0036_971(schemaLib._x0036_971 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_971 = null;
		else {
			setElementName(value.getBase(), "_x0036_971");
			__x0036_971 = value; 
		}
	}
	protected schemaLib._x0036_971 __x0036_971;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_953", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_956", "", findGetterMethod("schemaLib._x0036_953", "get_x0036_956"), findSetterMethod("schemaLib._x0036_953", "set_x0036_956", "schemaLib._x0036_956"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_956.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_958", "", findGetterMethod("schemaLib._x0036_953", "get_x0036_958"), findSetterMethod("schemaLib._x0036_953", "set_x0036_958", "schemaLib._x0036_958"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_958.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_959", "", findGetterMethod("schemaLib._x0036_953", "get_x0036_959"), findSetterMethod("schemaLib._x0036_953", "set_x0036_959", "schemaLib._x0036_959"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_959.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_963", "", findGetterMethod("schemaLib._x0036_953", "get_x0036_963"), findSetterMethod("schemaLib._x0036_953", "set_x0036_963", "schemaLib._x0036_963A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_963A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_966", "", findGetterMethod("schemaLib._x0036_953", "get_x0036_966"), findSetterMethod("schemaLib._x0036_953", "set_x0036_966", "schemaLib._x0036_966A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_966A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_971", "", findGetterMethod("schemaLib._x0036_953", "get_x0036_971"), findSetterMethod("schemaLib._x0036_953", "set_x0036_971", "schemaLib._x0036_971"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_971.class)
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


