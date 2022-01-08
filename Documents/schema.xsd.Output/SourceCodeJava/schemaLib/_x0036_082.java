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
// This class represents the ComplexType _x0036_082
// </summary>
public class _x0036_082 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_082
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_082() {
		setElementName("_x0036_082");
		init();
	}
	public _x0036_082(String elementName) {
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
			__x0036_085 = null;
			__x0036_087 = null;
			__x0036_091 = null;
			__x0036_094 = null;
			__x0036_095 = null;
			__x0036_098 = null;
			__x0036_103 = null;
			__x0036_106 = null;
			__x0036_109 = null;

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
			schemaLib._x0036_082 newObject = (schemaLib._x0036_082)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_085 = null;
			if (__x0036_085 != null)
				newObject.__x0036_085 = (schemaLib._x0036_085)__x0036_085.clone();
			newObject.__x0036_087 = null;
			if (__x0036_087 != null)
				newObject.__x0036_087 = (schemaLib._x0036_087)__x0036_087.clone();
			newObject.__x0036_091 = null;
			if (__x0036_091 != null)
				newObject.__x0036_091 = (schemaLib._x0036_091)__x0036_091.clone();
			newObject.__x0036_094 = null;
			if (__x0036_094 != null)
				newObject.__x0036_094 = (schemaLib._x0036_094)__x0036_094.clone();
			newObject.__x0036_095 = null;
			if (__x0036_095 != null)
				newObject.__x0036_095 = (schemaLib._x0036_095)__x0036_095.clone();
			newObject.__x0036_098 = null;
			if (__x0036_098 != null)
				newObject.__x0036_098 = (schemaLib._x0036_098)__x0036_098.clone();
			newObject.__x0036_103 = null;
			if (__x0036_103 != null)
				newObject.__x0036_103 = (schemaLib._x0036_103)__x0036_103.clone();
			newObject.__x0036_106 = null;
			if (__x0036_106 != null)
				newObject.__x0036_106 = (schemaLib._x0036_106)__x0036_106.clone();
			newObject.__x0036_109 = null;
			if (__x0036_109 != null)
				newObject.__x0036_109 = (schemaLib._x0036_109)__x0036_109.clone();
	
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
	public schemaLib._x0036_085 get_x0036_085() {
		return __x0036_085;  
	}
	public void set_x0036_085(schemaLib._x0036_085 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_085 = null;
		else {
			setElementName(value.getBase(), "_x0036_085");
			__x0036_085 = value; 
		}
	}
	protected schemaLib._x0036_085 __x0036_085;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_087 get_x0036_087() {
		return __x0036_087;  
	}
	public void set_x0036_087(schemaLib._x0036_087 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_087 = null;
		else {
			setElementName(value.getBase(), "_x0036_087");
			__x0036_087 = value; 
		}
	}
	protected schemaLib._x0036_087 __x0036_087;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_091 get_x0036_091() {
		return __x0036_091;  
	}
	public void set_x0036_091(schemaLib._x0036_091 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_091 = null;
		else {
			setElementName(value.getBase(), "_x0036_091");
			__x0036_091 = value; 
		}
	}
	protected schemaLib._x0036_091 __x0036_091;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_094 get_x0036_094() {
		return __x0036_094;  
	}
	public void set_x0036_094(schemaLib._x0036_094 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_094 = null;
		else {
			setElementName(value.getBase(), "_x0036_094");
			__x0036_094 = value; 
		}
	}
	protected schemaLib._x0036_094 __x0036_094;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_095 get_x0036_095() {
		return __x0036_095;  
	}
	public void set_x0036_095(schemaLib._x0036_095 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_095 = null;
		else {
			setElementName(value.getBase(), "_x0036_095");
			__x0036_095 = value; 
		}
	}
	protected schemaLib._x0036_095 __x0036_095;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_098 get_x0036_098() {
		return __x0036_098;  
	}
	public void set_x0036_098(schemaLib._x0036_098 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_098 = null;
		else {
			setElementName(value.getBase(), "_x0036_098");
			__x0036_098 = value; 
		}
	}
	protected schemaLib._x0036_098 __x0036_098;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_103 get_x0036_103() {
		return __x0036_103;  
	}
	public void set_x0036_103(schemaLib._x0036_103 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_103 = null;
		else {
			setElementName(value.getBase(), "_x0036_103");
			__x0036_103 = value; 
		}
	}
	protected schemaLib._x0036_103 __x0036_103;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_106 get_x0036_106() {
		return __x0036_106;  
	}
	public void set_x0036_106(schemaLib._x0036_106 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_106 = null;
		else {
			setElementName(value.getBase(), "_x0036_106");
			__x0036_106 = value; 
		}
	}
	protected schemaLib._x0036_106 __x0036_106;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_109 get_x0036_109() {
		return __x0036_109;  
	}
	public void set_x0036_109(schemaLib._x0036_109 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_109 = null;
		else {
			setElementName(value.getBase(), "_x0036_109");
			__x0036_109 = value; 
		}
	}
	protected schemaLib._x0036_109 __x0036_109;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_082", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_085", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_085"), findSetterMethod("schemaLib._x0036_082", "set_x0036_085", "schemaLib._x0036_085"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_085.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_087", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_087"), findSetterMethod("schemaLib._x0036_082", "set_x0036_087", "schemaLib._x0036_087"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_087.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_091", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_091"), findSetterMethod("schemaLib._x0036_082", "set_x0036_091", "schemaLib._x0036_091"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_091.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_094", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_094"), findSetterMethod("schemaLib._x0036_082", "set_x0036_094", "schemaLib._x0036_094"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_094.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_095", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_095"), findSetterMethod("schemaLib._x0036_082", "set_x0036_095", "schemaLib._x0036_095"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_095.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_098", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_098"), findSetterMethod("schemaLib._x0036_082", "set_x0036_098", "schemaLib._x0036_098"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_098.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_103", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_103"), findSetterMethod("schemaLib._x0036_082", "set_x0036_103", "schemaLib._x0036_103"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_103.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_106", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_106"), findSetterMethod("schemaLib._x0036_082", "set_x0036_106", "schemaLib._x0036_106"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_106.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_109", "", findGetterMethod("schemaLib._x0036_082", "get_x0036_109"), findSetterMethod("schemaLib._x0036_082", "set_x0036_109", "schemaLib._x0036_109"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_109.class)
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


