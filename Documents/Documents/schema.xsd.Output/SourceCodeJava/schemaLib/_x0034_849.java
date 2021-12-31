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
// This class represents the ComplexType _x0034_849
// </summary>
public class _x0034_849 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_849
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_849() {
		setElementName("_x0034_849");
		init();
	}
	public _x0034_849(String elementName) {
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
			__x0034_851 = null;
			__x0034_852 = null;
			__x0034_853 = null;
			__x0034_854 = null;
			__x0034_855 = null;
			__x0034_856 = null;
			__x0034_880 = null;

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
			schemaLib._x0034_849 newObject = (schemaLib._x0034_849)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_851 = null;
			if (__x0034_851 != null)
				newObject.__x0034_851 = (schemaLib._x0034_851)__x0034_851.clone();
			newObject.__x0034_852 = null;
			if (__x0034_852 != null)
				newObject.__x0034_852 = (schemaLib._x0034_852)__x0034_852.clone();
			newObject.__x0034_853 = null;
			if (__x0034_853 != null)
				newObject.__x0034_853 = (schemaLib._x0034_853)__x0034_853.clone();
			newObject.__x0034_854 = null;
			if (__x0034_854 != null)
				newObject.__x0034_854 = (schemaLib._x0034_854)__x0034_854.clone();
			newObject.__x0034_855 = null;
			if (__x0034_855 != null)
				newObject.__x0034_855 = (schemaLib._x0034_855)__x0034_855.clone();
			newObject.__x0034_856 = null;
			if (__x0034_856 != null)
				newObject.__x0034_856 = (schemaLib._x0034_856)__x0034_856.clone();
			newObject.__x0034_880 = null;
			if (__x0034_880 != null)
				newObject.__x0034_880 = (schemaLib._x0034_880)__x0034_880.clone();
	
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
	public schemaLib._x0034_851 get_x0034_851() {
		return __x0034_851;  
	}
	public void set_x0034_851(schemaLib._x0034_851 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_851 = null;
		else {
			setElementName(value.getBase(), "_x0034_851");
			__x0034_851 = value; 
		}
	}
	protected schemaLib._x0034_851 __x0034_851;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_852 get_x0034_852() {
		return __x0034_852;  
	}
	public void set_x0034_852(schemaLib._x0034_852 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_852 = null;
		else {
			setElementName(value.getBase(), "_x0034_852");
			__x0034_852 = value; 
		}
	}
	protected schemaLib._x0034_852 __x0034_852;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_853 get_x0034_853() {
		return __x0034_853;  
	}
	public void set_x0034_853(schemaLib._x0034_853 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_853 = null;
		else {
			setElementName(value.getBase(), "_x0034_853");
			__x0034_853 = value; 
		}
	}
	protected schemaLib._x0034_853 __x0034_853;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_854 get_x0034_854() {
		return __x0034_854;  
	}
	public void set_x0034_854(schemaLib._x0034_854 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_854 = null;
		else {
			setElementName(value.getBase(), "_x0034_854");
			__x0034_854 = value; 
		}
	}
	protected schemaLib._x0034_854 __x0034_854;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_855 get_x0034_855() {
		return __x0034_855;  
	}
	public void set_x0034_855(schemaLib._x0034_855 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_855 = null;
		else {
			setElementName(value.getBase(), "_x0034_855");
			__x0034_855 = value; 
		}
	}
	protected schemaLib._x0034_855 __x0034_855;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_856 get_x0034_856() {
		return __x0034_856;  
	}
	public void set_x0034_856(schemaLib._x0034_856 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_856 = null;
		else {
			setElementName(value.getBase(), "_x0034_856");
			__x0034_856 = value; 
		}
	}
	protected schemaLib._x0034_856 __x0034_856;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_880 get_x0034_880() {
		return __x0034_880;  
	}
	public void set_x0034_880(schemaLib._x0034_880 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_880 = null;
		else {
			setElementName(value.getBase(), "_x0034_880");
			__x0034_880 = value; 
		}
	}
	protected schemaLib._x0034_880 __x0034_880;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_849", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_851", "", findGetterMethod("schemaLib._x0034_849", "get_x0034_851"), findSetterMethod("schemaLib._x0034_849", "set_x0034_851", "schemaLib._x0034_851"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_851.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_852", "", findGetterMethod("schemaLib._x0034_849", "get_x0034_852"), findSetterMethod("schemaLib._x0034_849", "set_x0034_852", "schemaLib._x0034_852"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_852.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_853", "", findGetterMethod("schemaLib._x0034_849", "get_x0034_853"), findSetterMethod("schemaLib._x0034_849", "set_x0034_853", "schemaLib._x0034_853"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_853.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_854", "", findGetterMethod("schemaLib._x0034_849", "get_x0034_854"), findSetterMethod("schemaLib._x0034_849", "set_x0034_854", "schemaLib._x0034_854"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_854.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_855", "", findGetterMethod("schemaLib._x0034_849", "get_x0034_855"), findSetterMethod("schemaLib._x0034_849", "set_x0034_855", "schemaLib._x0034_855"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_855.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_856", "", findGetterMethod("schemaLib._x0034_849", "get_x0034_856"), findSetterMethod("schemaLib._x0034_849", "set_x0034_856", "schemaLib._x0034_856"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_856.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_880", "", findGetterMethod("schemaLib._x0034_849", "get_x0034_880"), findSetterMethod("schemaLib._x0034_849", "set_x0034_880", "schemaLib._x0034_880"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_880.class)
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


