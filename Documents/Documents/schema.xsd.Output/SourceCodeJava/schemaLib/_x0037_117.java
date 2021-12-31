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
// This class represents the ComplexType _x0037_117
// </summary>
public class _x0037_117 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_117
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_117() {
		setElementName("_x0037_117");
		init();
	}
	public _x0037_117(String elementName) {
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
			__x0037_120 = null;
			__x0037_122 = null;
			__x0037_126 = null;
			__x0037_129 = null;
			__x0037_132 = null;
			__x0037_135 = null;

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
			schemaLib._x0037_117 newObject = (schemaLib._x0037_117)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_120 = null;
			if (__x0037_120 != null)
				newObject.__x0037_120 = (schemaLib._x0037_120)__x0037_120.clone();
			newObject.__x0037_122 = null;
			if (__x0037_122 != null)
				newObject.__x0037_122 = (schemaLib._x0037_122)__x0037_122.clone();
			newObject.__x0037_126 = null;
			if (__x0037_126 != null)
				newObject.__x0037_126 = (schemaLib._x0037_126)__x0037_126.clone();
			newObject.__x0037_129 = null;
			if (__x0037_129 != null)
				newObject.__x0037_129 = (schemaLib._x0037_129)__x0037_129.clone();
			newObject.__x0037_132 = null;
			if (__x0037_132 != null)
				newObject.__x0037_132 = (schemaLib._x0037_132)__x0037_132.clone();
			newObject.__x0037_135 = null;
			if (__x0037_135 != null)
				newObject.__x0037_135 = (schemaLib._x0037_135)__x0037_135.clone();
	
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
	public schemaLib._x0037_120 get_x0037_120() {
		return __x0037_120;  
	}
	public void set_x0037_120(schemaLib._x0037_120 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_120 = null;
		else {
			setElementName(value.getBase(), "_x0037_120");
			__x0037_120 = value; 
		}
	}
	protected schemaLib._x0037_120 __x0037_120;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_122 get_x0037_122() {
		return __x0037_122;  
	}
	public void set_x0037_122(schemaLib._x0037_122 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_122 = null;
		else {
			setElementName(value.getBase(), "_x0037_122");
			__x0037_122 = value; 
		}
	}
	protected schemaLib._x0037_122 __x0037_122;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_126 get_x0037_126() {
		return __x0037_126;  
	}
	public void set_x0037_126(schemaLib._x0037_126 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_126 = null;
		else {
			setElementName(value.getBase(), "_x0037_126");
			__x0037_126 = value; 
		}
	}
	protected schemaLib._x0037_126 __x0037_126;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_129 get_x0037_129() {
		return __x0037_129;  
	}
	public void set_x0037_129(schemaLib._x0037_129 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_129 = null;
		else {
			setElementName(value.getBase(), "_x0037_129");
			__x0037_129 = value; 
		}
	}
	protected schemaLib._x0037_129 __x0037_129;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_132 get_x0037_132() {
		return __x0037_132;  
	}
	public void set_x0037_132(schemaLib._x0037_132 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_132 = null;
		else {
			setElementName(value.getBase(), "_x0037_132");
			__x0037_132 = value; 
		}
	}
	protected schemaLib._x0037_132 __x0037_132;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_135 get_x0037_135() {
		return __x0037_135;  
	}
	public void set_x0037_135(schemaLib._x0037_135 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_135 = null;
		else {
			setElementName(value.getBase(), "_x0037_135");
			__x0037_135 = value; 
		}
	}
	protected schemaLib._x0037_135 __x0037_135;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_117", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_120", "", findGetterMethod("schemaLib._x0037_117", "get_x0037_120"), findSetterMethod("schemaLib._x0037_117", "set_x0037_120", "schemaLib._x0037_120"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_120.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_122", "", findGetterMethod("schemaLib._x0037_117", "get_x0037_122"), findSetterMethod("schemaLib._x0037_117", "set_x0037_122", "schemaLib._x0037_122"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_122.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_126", "", findGetterMethod("schemaLib._x0037_117", "get_x0037_126"), findSetterMethod("schemaLib._x0037_117", "set_x0037_126", "schemaLib._x0037_126"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_126.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_129", "", findGetterMethod("schemaLib._x0037_117", "get_x0037_129"), findSetterMethod("schemaLib._x0037_117", "set_x0037_129", "schemaLib._x0037_129"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_129.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_132", "", findGetterMethod("schemaLib._x0037_117", "get_x0037_132"), findSetterMethod("schemaLib._x0037_117", "set_x0037_132", "schemaLib._x0037_132"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_132.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_135", "", findGetterMethod("schemaLib._x0037_117", "get_x0037_135"), findSetterMethod("schemaLib._x0037_117", "set_x0037_135", "schemaLib._x0037_135"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_135.class)
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


