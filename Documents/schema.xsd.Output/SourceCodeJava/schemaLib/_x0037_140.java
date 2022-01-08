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
// This class represents the ComplexType _x0037_140
// </summary>
public class _x0037_140 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_140
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_140() {
		setElementName("_x0037_140");
		init();
	}
	public _x0037_140(String elementName) {
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
			__x0037_143 = null;
			__x0037_145 = null;
			__x0037_149 = null;
			__x0037_152 = null;
			__x0037_153 = null;
			__x0037_156 = null;

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
			schemaLib._x0037_140 newObject = (schemaLib._x0037_140)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_143 = null;
			if (__x0037_143 != null)
				newObject.__x0037_143 = (schemaLib._x0037_143)__x0037_143.clone();
			newObject.__x0037_145 = null;
			if (__x0037_145 != null)
				newObject.__x0037_145 = (schemaLib._x0037_145)__x0037_145.clone();
			newObject.__x0037_149 = null;
			if (__x0037_149 != null)
				newObject.__x0037_149 = (schemaLib._x0037_149)__x0037_149.clone();
			newObject.__x0037_152 = null;
			if (__x0037_152 != null)
				newObject.__x0037_152 = (schemaLib._x0037_152)__x0037_152.clone();
			newObject.__x0037_153 = null;
			if (__x0037_153 != null)
				newObject.__x0037_153 = (schemaLib._x0037_153)__x0037_153.clone();
			newObject.__x0037_156 = null;
			if (__x0037_156 != null)
				newObject.__x0037_156 = (schemaLib._x0037_156)__x0037_156.clone();
	
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
	public schemaLib._x0037_143 get_x0037_143() {
		return __x0037_143;  
	}
	public void set_x0037_143(schemaLib._x0037_143 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_143 = null;
		else {
			setElementName(value.getBase(), "_x0037_143");
			__x0037_143 = value; 
		}
	}
	protected schemaLib._x0037_143 __x0037_143;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_145 get_x0037_145() {
		return __x0037_145;  
	}
	public void set_x0037_145(schemaLib._x0037_145 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_145 = null;
		else {
			setElementName(value.getBase(), "_x0037_145");
			__x0037_145 = value; 
		}
	}
	protected schemaLib._x0037_145 __x0037_145;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_149 get_x0037_149() {
		return __x0037_149;  
	}
	public void set_x0037_149(schemaLib._x0037_149 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_149 = null;
		else {
			setElementName(value.getBase(), "_x0037_149");
			__x0037_149 = value; 
		}
	}
	protected schemaLib._x0037_149 __x0037_149;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_152 get_x0037_152() {
		return __x0037_152;  
	}
	public void set_x0037_152(schemaLib._x0037_152 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_152 = null;
		else {
			setElementName(value.getBase(), "_x0037_152");
			__x0037_152 = value; 
		}
	}
	protected schemaLib._x0037_152 __x0037_152;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_153 get_x0037_153() {
		return __x0037_153;  
	}
	public void set_x0037_153(schemaLib._x0037_153 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_153 = null;
		else {
			setElementName(value.getBase(), "_x0037_153");
			__x0037_153 = value; 
		}
	}
	protected schemaLib._x0037_153 __x0037_153;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_156 get_x0037_156() {
		return __x0037_156;  
	}
	public void set_x0037_156(schemaLib._x0037_156 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_156 = null;
		else {
			setElementName(value.getBase(), "_x0037_156");
			__x0037_156 = value; 
		}
	}
	protected schemaLib._x0037_156 __x0037_156;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_140", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_143", "", findGetterMethod("schemaLib._x0037_140", "get_x0037_143"), findSetterMethod("schemaLib._x0037_140", "set_x0037_143", "schemaLib._x0037_143"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_143.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_145", "", findGetterMethod("schemaLib._x0037_140", "get_x0037_145"), findSetterMethod("schemaLib._x0037_140", "set_x0037_145", "schemaLib._x0037_145"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_145.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_149", "", findGetterMethod("schemaLib._x0037_140", "get_x0037_149"), findSetterMethod("schemaLib._x0037_140", "set_x0037_149", "schemaLib._x0037_149"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_149.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_152", "", findGetterMethod("schemaLib._x0037_140", "get_x0037_152"), findSetterMethod("schemaLib._x0037_140", "set_x0037_152", "schemaLib._x0037_152"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_152.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_153", "", findGetterMethod("schemaLib._x0037_140", "get_x0037_153"), findSetterMethod("schemaLib._x0037_140", "set_x0037_153", "schemaLib._x0037_153"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_153.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_156", "", findGetterMethod("schemaLib._x0037_140", "get_x0037_156"), findSetterMethod("schemaLib._x0037_140", "set_x0037_156", "schemaLib._x0037_156"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_156.class)
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


