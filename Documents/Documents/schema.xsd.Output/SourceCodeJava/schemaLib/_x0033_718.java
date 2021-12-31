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
// This class represents the ComplexType _x0033_718
// </summary>
public class _x0033_718 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_718
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_718() {
		setElementName("_x0033_718");
		init();
	}
	public _x0033_718(String elementName) {
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
			__x0033_734 = null;
			__x0033_762 = null;
			__x0033_844 = null;
			__x0033_882 = null;
			__x0033_917 = null;
			__x0033_946 = null;
			__x0033_966 = null;
			__x0033_978 = null;

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
			schemaLib._x0033_718 newObject = (schemaLib._x0033_718)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_734 = null;
			if (__x0033_734 != null)
				newObject.__x0033_734 = (schemaLib._x0033_734)__x0033_734.clone();
			newObject.__x0033_762 = null;
			if (__x0033_762 != null)
				newObject.__x0033_762 = (schemaLib._x0033_762)__x0033_762.clone();
			newObject.__x0033_844 = null;
			if (__x0033_844 != null)
				newObject.__x0033_844 = (schemaLib._x0033_844)__x0033_844.clone();
			newObject.__x0033_882 = null;
			if (__x0033_882 != null)
				newObject.__x0033_882 = (schemaLib._x0033_882)__x0033_882.clone();
			newObject.__x0033_917 = null;
			if (__x0033_917 != null)
				newObject.__x0033_917 = (schemaLib._x0033_917)__x0033_917.clone();
			newObject.__x0033_946 = null;
			if (__x0033_946 != null)
				newObject.__x0033_946 = (schemaLib._x0033_946A)__x0033_946.clone();
			newObject.__x0033_966 = null;
			if (__x0033_966 != null)
				newObject.__x0033_966 = (schemaLib._x0033_966)__x0033_966.clone();
			newObject.__x0033_978 = null;
			if (__x0033_978 != null)
				newObject.__x0033_978 = (schemaLib._x0033_978)__x0033_978.clone();
	
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
	public schemaLib._x0033_734 get_x0033_734() {
		return __x0033_734;  
	}
	public void set_x0033_734(schemaLib._x0033_734 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_734 = null;
		else {
			setElementName(value.getBase(), "_x0033_734");
			__x0033_734 = value; 
		}
	}
	protected schemaLib._x0033_734 __x0033_734;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_762 get_x0033_762() {
		return __x0033_762;  
	}
	public void set_x0033_762(schemaLib._x0033_762 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_762 = null;
		else {
			setElementName(value.getBase(), "_x0033_762");
			__x0033_762 = value; 
		}
	}
	protected schemaLib._x0033_762 __x0033_762;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_844 get_x0033_844() {
		return __x0033_844;  
	}
	public void set_x0033_844(schemaLib._x0033_844 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_844 = null;
		else {
			setElementName(value.getBase(), "_x0033_844");
			__x0033_844 = value; 
		}
	}
	protected schemaLib._x0033_844 __x0033_844;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_882 get_x0033_882() {
		return __x0033_882;  
	}
	public void set_x0033_882(schemaLib._x0033_882 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_882 = null;
		else {
			setElementName(value.getBase(), "_x0033_882");
			__x0033_882 = value; 
		}
	}
	protected schemaLib._x0033_882 __x0033_882;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_917 get_x0033_917() {
		return __x0033_917;  
	}
	public void set_x0033_917(schemaLib._x0033_917 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_917 = null;
		else {
			setElementName(value.getBase(), "_x0033_917");
			__x0033_917 = value; 
		}
	}
	protected schemaLib._x0033_917 __x0033_917;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_946A get_x0033_946() {
		return __x0033_946;  
	}
	public void set_x0033_946(schemaLib._x0033_946A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_946 = null;
		else {
			setElementName(value.getBase(), "_x0033_946");
			__x0033_946 = value; 
		}
	}
	protected schemaLib._x0033_946A __x0033_946;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_966 get_x0033_966() {
		return __x0033_966;  
	}
	public void set_x0033_966(schemaLib._x0033_966 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_966 = null;
		else {
			setElementName(value.getBase(), "_x0033_966");
			__x0033_966 = value; 
		}
	}
	protected schemaLib._x0033_966 __x0033_966;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_978 get_x0033_978() {
		return __x0033_978;  
	}
	public void set_x0033_978(schemaLib._x0033_978 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_978 = null;
		else {
			setElementName(value.getBase(), "_x0033_978");
			__x0033_978 = value; 
		}
	}
	protected schemaLib._x0033_978 __x0033_978;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_718", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_734", "", findGetterMethod("schemaLib._x0033_718", "get_x0033_734"), findSetterMethod("schemaLib._x0033_718", "set_x0033_734", "schemaLib._x0033_734"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_734.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_762", "", findGetterMethod("schemaLib._x0033_718", "get_x0033_762"), findSetterMethod("schemaLib._x0033_718", "set_x0033_762", "schemaLib._x0033_762"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_762.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_844", "", findGetterMethod("schemaLib._x0033_718", "get_x0033_844"), findSetterMethod("schemaLib._x0033_718", "set_x0033_844", "schemaLib._x0033_844"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_844.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_882", "", findGetterMethod("schemaLib._x0033_718", "get_x0033_882"), findSetterMethod("schemaLib._x0033_718", "set_x0033_882", "schemaLib._x0033_882"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_882.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_917", "", findGetterMethod("schemaLib._x0033_718", "get_x0033_917"), findSetterMethod("schemaLib._x0033_718", "set_x0033_917", "schemaLib._x0033_917"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_917.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_946", "", findGetterMethod("schemaLib._x0033_718", "get_x0033_946"), findSetterMethod("schemaLib._x0033_718", "set_x0033_946", "schemaLib._x0033_946A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_946A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_966", "", findGetterMethod("schemaLib._x0033_718", "get_x0033_966"), findSetterMethod("schemaLib._x0033_718", "set_x0033_966", "schemaLib._x0033_966"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_966.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_978", "", findGetterMethod("schemaLib._x0033_718", "get_x0033_978"), findSetterMethod("schemaLib._x0033_718", "set_x0033_978", "schemaLib._x0033_978"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_978.class)
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


