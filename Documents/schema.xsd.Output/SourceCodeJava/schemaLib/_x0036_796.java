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
// This class represents the ComplexType _x0036_796
// </summary>
public class _x0036_796 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_796
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_796() {
		setElementName("_x0036_796");
		init();
	}
	public _x0036_796(String elementName) {
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
			__x0036_799 = null;
			__x0036_801 = null;
			__x0036_805 = null;
			__x0036_808 = null;
			__x0036_811 = null;
			__x0036_814 = null;

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
			schemaLib._x0036_796 newObject = (schemaLib._x0036_796)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_799 = null;
			if (__x0036_799 != null)
				newObject.__x0036_799 = (schemaLib._x0036_799A)__x0036_799.clone();
			newObject.__x0036_801 = null;
			if (__x0036_801 != null)
				newObject.__x0036_801 = (schemaLib._x0036_801)__x0036_801.clone();
			newObject.__x0036_805 = null;
			if (__x0036_805 != null)
				newObject.__x0036_805 = (schemaLib._x0036_805A)__x0036_805.clone();
			newObject.__x0036_808 = null;
			if (__x0036_808 != null)
				newObject.__x0036_808 = (schemaLib._x0036_808A)__x0036_808.clone();
			newObject.__x0036_811 = null;
			if (__x0036_811 != null)
				newObject.__x0036_811 = (schemaLib._x0036_811A)__x0036_811.clone();
			newObject.__x0036_814 = null;
			if (__x0036_814 != null)
				newObject.__x0036_814 = (schemaLib._x0036_814A)__x0036_814.clone();
	
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
	public schemaLib._x0036_799A get_x0036_799() {
		return __x0036_799;  
	}
	public void set_x0036_799(schemaLib._x0036_799A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_799 = null;
		else {
			setElementName(value.getBase(), "_x0036_799");
			__x0036_799 = value; 
		}
	}
	protected schemaLib._x0036_799A __x0036_799;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_801 get_x0036_801() {
		return __x0036_801;  
	}
	public void set_x0036_801(schemaLib._x0036_801 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_801 = null;
		else {
			setElementName(value.getBase(), "_x0036_801");
			__x0036_801 = value; 
		}
	}
	protected schemaLib._x0036_801 __x0036_801;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_805A get_x0036_805() {
		return __x0036_805;  
	}
	public void set_x0036_805(schemaLib._x0036_805A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_805 = null;
		else {
			setElementName(value.getBase(), "_x0036_805");
			__x0036_805 = value; 
		}
	}
	protected schemaLib._x0036_805A __x0036_805;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_808A get_x0036_808() {
		return __x0036_808;  
	}
	public void set_x0036_808(schemaLib._x0036_808A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_808 = null;
		else {
			setElementName(value.getBase(), "_x0036_808");
			__x0036_808 = value; 
		}
	}
	protected schemaLib._x0036_808A __x0036_808;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_811A get_x0036_811() {
		return __x0036_811;  
	}
	public void set_x0036_811(schemaLib._x0036_811A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_811 = null;
		else {
			setElementName(value.getBase(), "_x0036_811");
			__x0036_811 = value; 
		}
	}
	protected schemaLib._x0036_811A __x0036_811;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_814A get_x0036_814() {
		return __x0036_814;  
	}
	public void set_x0036_814(schemaLib._x0036_814A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_814 = null;
		else {
			setElementName(value.getBase(), "_x0036_814");
			__x0036_814 = value; 
		}
	}
	protected schemaLib._x0036_814A __x0036_814;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_796", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_799", "", findGetterMethod("schemaLib._x0036_796", "get_x0036_799"), findSetterMethod("schemaLib._x0036_796", "set_x0036_799", "schemaLib._x0036_799A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_799A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_801", "", findGetterMethod("schemaLib._x0036_796", "get_x0036_801"), findSetterMethod("schemaLib._x0036_796", "set_x0036_801", "schemaLib._x0036_801"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_801.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_805", "", findGetterMethod("schemaLib._x0036_796", "get_x0036_805"), findSetterMethod("schemaLib._x0036_796", "set_x0036_805", "schemaLib._x0036_805A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_805A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_808", "", findGetterMethod("schemaLib._x0036_796", "get_x0036_808"), findSetterMethod("schemaLib._x0036_796", "set_x0036_808", "schemaLib._x0036_808A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_808A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_811", "", findGetterMethod("schemaLib._x0036_796", "get_x0036_811"), findSetterMethod("schemaLib._x0036_796", "set_x0036_811", "schemaLib._x0036_811A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_811A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_814", "", findGetterMethod("schemaLib._x0036_796", "get_x0036_814"), findSetterMethod("schemaLib._x0036_796", "set_x0036_814", "schemaLib._x0036_814A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_814A.class)
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


