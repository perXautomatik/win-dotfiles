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
// This class represents the ComplexType _x0034_35
// </summary>
public class _x0034_35 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_35
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_35() {
		setElementName("_x0034_35");
		init();
	}
	public _x0034_35(String elementName) {
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
			__x0034_37 = null;
			__x0034_38 = null;
			__x0034_39 = null;
			__x0034_40 = null;
			__x0034_41 = null;
			__x0034_42 = null;
			__x0034_43 = null;
			__x0034_44 = null;
			__x0034_45 = null;
			__x0034_46 = null;

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
			schemaLib._x0034_35 newObject = (schemaLib._x0034_35)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_37 = null;
			if (__x0034_37 != null)
				newObject.__x0034_37 = (schemaLib._x0034_37)__x0034_37.clone();
			newObject.__x0034_38 = null;
			if (__x0034_38 != null)
				newObject.__x0034_38 = (schemaLib._x0034_38)__x0034_38.clone();
			newObject.__x0034_39 = null;
			if (__x0034_39 != null)
				newObject.__x0034_39 = (schemaLib._x0034_39)__x0034_39.clone();
			newObject.__x0034_40 = null;
			if (__x0034_40 != null)
				newObject.__x0034_40 = (schemaLib._x0034_40)__x0034_40.clone();
			newObject.__x0034_41 = null;
			if (__x0034_41 != null)
				newObject.__x0034_41 = (schemaLib._x0034_41)__x0034_41.clone();
			newObject.__x0034_42 = null;
			if (__x0034_42 != null)
				newObject.__x0034_42 = (schemaLib._x0034_42)__x0034_42.clone();
			newObject.__x0034_43 = null;
			if (__x0034_43 != null)
				newObject.__x0034_43 = (schemaLib._x0034_43)__x0034_43.clone();
			newObject.__x0034_44 = null;
			if (__x0034_44 != null)
				newObject.__x0034_44 = (schemaLib._x0034_44)__x0034_44.clone();
			newObject.__x0034_45 = null;
			if (__x0034_45 != null)
				newObject.__x0034_45 = (schemaLib._x0034_45)__x0034_45.clone();
			newObject.__x0034_46 = null;
			if (__x0034_46 != null)
				newObject.__x0034_46 = (schemaLib._x0034_46)__x0034_46.clone();
	
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
	public schemaLib._x0034_37 get_x0034_37() {
		return __x0034_37;  
	}
	public void set_x0034_37(schemaLib._x0034_37 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_37 = null;
		else {
			setElementName(value.getBase(), "_x0034_37");
			__x0034_37 = value; 
		}
	}
	protected schemaLib._x0034_37 __x0034_37;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_38 get_x0034_38() {
		return __x0034_38;  
	}
	public void set_x0034_38(schemaLib._x0034_38 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_38 = null;
		else {
			setElementName(value.getBase(), "_x0034_38");
			__x0034_38 = value; 
		}
	}
	protected schemaLib._x0034_38 __x0034_38;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_39 get_x0034_39() {
		return __x0034_39;  
	}
	public void set_x0034_39(schemaLib._x0034_39 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_39 = null;
		else {
			setElementName(value.getBase(), "_x0034_39");
			__x0034_39 = value; 
		}
	}
	protected schemaLib._x0034_39 __x0034_39;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_40 get_x0034_40() {
		return __x0034_40;  
	}
	public void set_x0034_40(schemaLib._x0034_40 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_40 = null;
		else {
			setElementName(value.getBase(), "_x0034_40");
			__x0034_40 = value; 
		}
	}
	protected schemaLib._x0034_40 __x0034_40;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_41 get_x0034_41() {
		return __x0034_41;  
	}
	public void set_x0034_41(schemaLib._x0034_41 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_41 = null;
		else {
			setElementName(value.getBase(), "_x0034_41");
			__x0034_41 = value; 
		}
	}
	protected schemaLib._x0034_41 __x0034_41;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_42 get_x0034_42() {
		return __x0034_42;  
	}
	public void set_x0034_42(schemaLib._x0034_42 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_42 = null;
		else {
			setElementName(value.getBase(), "_x0034_42");
			__x0034_42 = value; 
		}
	}
	protected schemaLib._x0034_42 __x0034_42;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_43 get_x0034_43() {
		return __x0034_43;  
	}
	public void set_x0034_43(schemaLib._x0034_43 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_43 = null;
		else {
			setElementName(value.getBase(), "_x0034_43");
			__x0034_43 = value; 
		}
	}
	protected schemaLib._x0034_43 __x0034_43;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_44 get_x0034_44() {
		return __x0034_44;  
	}
	public void set_x0034_44(schemaLib._x0034_44 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_44 = null;
		else {
			setElementName(value.getBase(), "_x0034_44");
			__x0034_44 = value; 
		}
	}
	protected schemaLib._x0034_44 __x0034_44;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_45 get_x0034_45() {
		return __x0034_45;  
	}
	public void set_x0034_45(schemaLib._x0034_45 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_45 = null;
		else {
			setElementName(value.getBase(), "_x0034_45");
			__x0034_45 = value; 
		}
	}
	protected schemaLib._x0034_45 __x0034_45;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_46 get_x0034_46() {
		return __x0034_46;  
	}
	public void set_x0034_46(schemaLib._x0034_46 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_46 = null;
		else {
			setElementName(value.getBase(), "_x0034_46");
			__x0034_46 = value; 
		}
	}
	protected schemaLib._x0034_46 __x0034_46;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_35", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_37", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_37"), findSetterMethod("schemaLib._x0034_35", "set_x0034_37", "schemaLib._x0034_37"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_37.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_38", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_38"), findSetterMethod("schemaLib._x0034_35", "set_x0034_38", "schemaLib._x0034_38"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_38.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_39", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_39"), findSetterMethod("schemaLib._x0034_35", "set_x0034_39", "schemaLib._x0034_39"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_39.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_40", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_40"), findSetterMethod("schemaLib._x0034_35", "set_x0034_40", "schemaLib._x0034_40"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_40.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_41", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_41"), findSetterMethod("schemaLib._x0034_35", "set_x0034_41", "schemaLib._x0034_41"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_41.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_42", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_42"), findSetterMethod("schemaLib._x0034_35", "set_x0034_42", "schemaLib._x0034_42"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_42.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_43", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_43"), findSetterMethod("schemaLib._x0034_35", "set_x0034_43", "schemaLib._x0034_43"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_43.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_44", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_44"), findSetterMethod("schemaLib._x0034_35", "set_x0034_44", "schemaLib._x0034_44"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_44.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_45", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_45"), findSetterMethod("schemaLib._x0034_35", "set_x0034_45", "schemaLib._x0034_45"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_45.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_46", "", findGetterMethod("schemaLib._x0034_35", "get_x0034_46"), findSetterMethod("schemaLib._x0034_35", "set_x0034_46", "schemaLib._x0034_46"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_46.class)
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


