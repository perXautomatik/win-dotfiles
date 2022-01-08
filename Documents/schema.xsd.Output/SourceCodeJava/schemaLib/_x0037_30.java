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
// This class represents the ComplexType _x0037_30
// </summary>
public class _x0037_30 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_30
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_30() {
		setElementName("_x0037_30");
		init();
	}
	public _x0037_30(String elementName) {
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
			__x0037_32 = null;
			__x0037_33 = null;
			__x0037_34 = null;
			__x0037_35 = null;
			__x0037_36 = null;
			__x0037_37 = null;

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
			schemaLib._x0037_30 newObject = (schemaLib._x0037_30)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_32 = null;
			if (__x0037_32 != null)
				newObject.__x0037_32 = (schemaLib._x0037_32)__x0037_32.clone();
			newObject.__x0037_33 = null;
			if (__x0037_33 != null)
				newObject.__x0037_33 = (schemaLib._x0037_33)__x0037_33.clone();
			newObject.__x0037_34 = null;
			if (__x0037_34 != null)
				newObject.__x0037_34 = (schemaLib._x0037_34)__x0037_34.clone();
			newObject.__x0037_35 = null;
			if (__x0037_35 != null)
				newObject.__x0037_35 = (schemaLib._x0037_35)__x0037_35.clone();
			newObject.__x0037_36 = null;
			if (__x0037_36 != null)
				newObject.__x0037_36 = (schemaLib._x0037_36B)__x0037_36.clone();
			newObject.__x0037_37 = null;
			if (__x0037_37 != null)
				newObject.__x0037_37 = (schemaLib._x0037_37)__x0037_37.clone();
	
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
	public schemaLib._x0037_32 get_x0037_32() {
		return __x0037_32;  
	}
	public void set_x0037_32(schemaLib._x0037_32 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_32 = null;
		else {
			setElementName(value.getBase(), "_x0037_32");
			__x0037_32 = value; 
		}
	}
	protected schemaLib._x0037_32 __x0037_32;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_33 get_x0037_33() {
		return __x0037_33;  
	}
	public void set_x0037_33(schemaLib._x0037_33 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_33 = null;
		else {
			setElementName(value.getBase(), "_x0037_33");
			__x0037_33 = value; 
		}
	}
	protected schemaLib._x0037_33 __x0037_33;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_34 get_x0037_34() {
		return __x0037_34;  
	}
	public void set_x0037_34(schemaLib._x0037_34 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_34 = null;
		else {
			setElementName(value.getBase(), "_x0037_34");
			__x0037_34 = value; 
		}
	}
	protected schemaLib._x0037_34 __x0037_34;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_35 get_x0037_35() {
		return __x0037_35;  
	}
	public void set_x0037_35(schemaLib._x0037_35 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_35 = null;
		else {
			setElementName(value.getBase(), "_x0037_35");
			__x0037_35 = value; 
		}
	}
	protected schemaLib._x0037_35 __x0037_35;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_36B get_x0037_36() {
		return __x0037_36;  
	}
	public void set_x0037_36(schemaLib._x0037_36B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_36 = null;
		else {
			setElementName(value.getBase(), "_x0037_36");
			__x0037_36 = value; 
		}
	}
	protected schemaLib._x0037_36B __x0037_36;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_37 get_x0037_37() {
		return __x0037_37;  
	}
	public void set_x0037_37(schemaLib._x0037_37 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_37 = null;
		else {
			setElementName(value.getBase(), "_x0037_37");
			__x0037_37 = value; 
		}
	}
	protected schemaLib._x0037_37 __x0037_37;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_30", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_32", "", findGetterMethod("schemaLib._x0037_30", "get_x0037_32"), findSetterMethod("schemaLib._x0037_30", "set_x0037_32", "schemaLib._x0037_32"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_32.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_33", "", findGetterMethod("schemaLib._x0037_30", "get_x0037_33"), findSetterMethod("schemaLib._x0037_30", "set_x0037_33", "schemaLib._x0037_33"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_33.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_34", "", findGetterMethod("schemaLib._x0037_30", "get_x0037_34"), findSetterMethod("schemaLib._x0037_30", "set_x0037_34", "schemaLib._x0037_34"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_34.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_35", "", findGetterMethod("schemaLib._x0037_30", "get_x0037_35"), findSetterMethod("schemaLib._x0037_30", "set_x0037_35", "schemaLib._x0037_35"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_35.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_36", "", findGetterMethod("schemaLib._x0037_30", "get_x0037_36"), findSetterMethod("schemaLib._x0037_30", "set_x0037_36", "schemaLib._x0037_36B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_36B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_37", "", findGetterMethod("schemaLib._x0037_30", "get_x0037_37"), findSetterMethod("schemaLib._x0037_30", "set_x0037_37", "schemaLib._x0037_37"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_37.class)
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


