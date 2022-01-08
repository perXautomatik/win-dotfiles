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
// This class represents the ComplexType _x0031_033
// </summary>
public class _x0031_033 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_033
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_033() {
		setElementName("_x0031_033");
		init();
	}
	public _x0031_033(String elementName) {
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
			__x0031_039 = null;
			__x0031_052 = null;
			__x0031_062 = null;
			__x0031_065 = null;
			__x0031_068 = null;
			__x0031_071 = null;

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
			schemaLib._x0031_033 newObject = (schemaLib._x0031_033)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_039 = null;
			if (__x0031_039 != null)
				newObject.__x0031_039 = (schemaLib._x0031_039)__x0031_039.clone();
			newObject.__x0031_052 = null;
			if (__x0031_052 != null)
				newObject.__x0031_052 = (schemaLib._x0031_052)__x0031_052.clone();
			newObject.__x0031_062 = null;
			if (__x0031_062 != null)
				newObject.__x0031_062 = (schemaLib._x0031_062)__x0031_062.clone();
			newObject.__x0031_065 = null;
			if (__x0031_065 != null)
				newObject.__x0031_065 = (schemaLib._x0031_065)__x0031_065.clone();
			newObject.__x0031_068 = null;
			if (__x0031_068 != null)
				newObject.__x0031_068 = (schemaLib._x0031_068)__x0031_068.clone();
			newObject.__x0031_071 = null;
			if (__x0031_071 != null)
				newObject.__x0031_071 = (schemaLib._x0031_071)__x0031_071.clone();
	
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
	public schemaLib._x0031_039 get_x0031_039() {
		return __x0031_039;  
	}
	public void set_x0031_039(schemaLib._x0031_039 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_039 = null;
		else {
			setElementName(value.getBase(), "_x0031_039");
			__x0031_039 = value; 
		}
	}
	protected schemaLib._x0031_039 __x0031_039;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_052 get_x0031_052() {
		return __x0031_052;  
	}
	public void set_x0031_052(schemaLib._x0031_052 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_052 = null;
		else {
			setElementName(value.getBase(), "_x0031_052");
			__x0031_052 = value; 
		}
	}
	protected schemaLib._x0031_052 __x0031_052;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_062 get_x0031_062() {
		return __x0031_062;  
	}
	public void set_x0031_062(schemaLib._x0031_062 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_062 = null;
		else {
			setElementName(value.getBase(), "_x0031_062");
			__x0031_062 = value; 
		}
	}
	protected schemaLib._x0031_062 __x0031_062;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_065 get_x0031_065() {
		return __x0031_065;  
	}
	public void set_x0031_065(schemaLib._x0031_065 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_065 = null;
		else {
			setElementName(value.getBase(), "_x0031_065");
			__x0031_065 = value; 
		}
	}
	protected schemaLib._x0031_065 __x0031_065;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_068 get_x0031_068() {
		return __x0031_068;  
	}
	public void set_x0031_068(schemaLib._x0031_068 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_068 = null;
		else {
			setElementName(value.getBase(), "_x0031_068");
			__x0031_068 = value; 
		}
	}
	protected schemaLib._x0031_068 __x0031_068;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_071 get_x0031_071() {
		return __x0031_071;  
	}
	public void set_x0031_071(schemaLib._x0031_071 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_071 = null;
		else {
			setElementName(value.getBase(), "_x0031_071");
			__x0031_071 = value; 
		}
	}
	protected schemaLib._x0031_071 __x0031_071;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_033", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_039", "", findGetterMethod("schemaLib._x0031_033", "get_x0031_039"), findSetterMethod("schemaLib._x0031_033", "set_x0031_039", "schemaLib._x0031_039"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_039.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_052", "", findGetterMethod("schemaLib._x0031_033", "get_x0031_052"), findSetterMethod("schemaLib._x0031_033", "set_x0031_052", "schemaLib._x0031_052"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_052.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_062", "", findGetterMethod("schemaLib._x0031_033", "get_x0031_062"), findSetterMethod("schemaLib._x0031_033", "set_x0031_062", "schemaLib._x0031_062"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_062.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_065", "", findGetterMethod("schemaLib._x0031_033", "get_x0031_065"), findSetterMethod("schemaLib._x0031_033", "set_x0031_065", "schemaLib._x0031_065"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_065.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_068", "", findGetterMethod("schemaLib._x0031_033", "get_x0031_068"), findSetterMethod("schemaLib._x0031_033", "set_x0031_068", "schemaLib._x0031_068"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_068.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_071", "", findGetterMethod("schemaLib._x0031_033", "get_x0031_071"), findSetterMethod("schemaLib._x0031_033", "set_x0031_071", "schemaLib._x0031_071"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_071.class)
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


