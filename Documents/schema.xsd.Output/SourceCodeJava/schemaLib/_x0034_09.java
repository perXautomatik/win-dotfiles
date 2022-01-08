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
// This class represents the ComplexType _x0034_09
// </summary>
public class _x0034_09 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_09
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_09() {
		setElementName("_x0034_09");
		init();
	}
	public _x0034_09(String elementName) {
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
			__x0034_11 = null;
			__x0034_12 = null;
			__x0034_13 = null;
			__x0034_14 = null;
			__x0034_15 = null;
			__x0034_16 = null;
			__x0034_17 = null;
			__x0034_18 = null;
			__x0034_19 = null;
			__x0034_20 = null;
			__x0034_21 = null;
			__x0034_22 = null;
			__x0034_23 = null;
			__x0034_24 = null;
			__x0034_25 = null;
			__x0034_26 = null;
			__x0034_27 = null;
			__x0034_28 = null;
			__x0034_29 = null;

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
			schemaLib._x0034_09 newObject = (schemaLib._x0034_09)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_11 = null;
			if (__x0034_11 != null)
				newObject.__x0034_11 = (schemaLib._x0034_11A)__x0034_11.clone();
			newObject.__x0034_12 = null;
			if (__x0034_12 != null)
				newObject.__x0034_12 = (schemaLib._x0034_12A)__x0034_12.clone();
			newObject.__x0034_13 = null;
			if (__x0034_13 != null)
				newObject.__x0034_13 = (schemaLib._x0034_13A)__x0034_13.clone();
			newObject.__x0034_14 = null;
			if (__x0034_14 != null)
				newObject.__x0034_14 = (schemaLib._x0034_14A)__x0034_14.clone();
			newObject.__x0034_15 = null;
			if (__x0034_15 != null)
				newObject.__x0034_15 = (schemaLib._x0034_15A)__x0034_15.clone();
			newObject.__x0034_16 = null;
			if (__x0034_16 != null)
				newObject.__x0034_16 = (schemaLib._x0034_16A)__x0034_16.clone();
			newObject.__x0034_17 = null;
			if (__x0034_17 != null)
				newObject.__x0034_17 = (schemaLib._x0034_17A)__x0034_17.clone();
			newObject.__x0034_18 = null;
			if (__x0034_18 != null)
				newObject.__x0034_18 = (schemaLib._x0034_18A)__x0034_18.clone();
			newObject.__x0034_19 = null;
			if (__x0034_19 != null)
				newObject.__x0034_19 = (schemaLib._x0034_19A)__x0034_19.clone();
			newObject.__x0034_20 = null;
			if (__x0034_20 != null)
				newObject.__x0034_20 = (schemaLib._x0034_20A)__x0034_20.clone();
			newObject.__x0034_21 = null;
			if (__x0034_21 != null)
				newObject.__x0034_21 = (schemaLib._x0034_21A)__x0034_21.clone();
			newObject.__x0034_22 = null;
			if (__x0034_22 != null)
				newObject.__x0034_22 = (schemaLib._x0034_22A)__x0034_22.clone();
			newObject.__x0034_23 = null;
			if (__x0034_23 != null)
				newObject.__x0034_23 = (schemaLib._x0034_23C)__x0034_23.clone();
			newObject.__x0034_24 = null;
			if (__x0034_24 != null)
				newObject.__x0034_24 = (schemaLib._x0034_24A)__x0034_24.clone();
			newObject.__x0034_25 = null;
			if (__x0034_25 != null)
				newObject.__x0034_25 = (schemaLib._x0034_25A)__x0034_25.clone();
			newObject.__x0034_26 = null;
			if (__x0034_26 != null)
				newObject.__x0034_26 = (schemaLib._x0034_26)__x0034_26.clone();
			newObject.__x0034_27 = null;
			if (__x0034_27 != null)
				newObject.__x0034_27 = (schemaLib._x0034_27)__x0034_27.clone();
			newObject.__x0034_28 = null;
			if (__x0034_28 != null)
				newObject.__x0034_28 = (schemaLib._x0034_28)__x0034_28.clone();
			newObject.__x0034_29 = null;
			if (__x0034_29 != null)
				newObject.__x0034_29 = (schemaLib._x0034_29)__x0034_29.clone();
	
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
	public schemaLib._x0034_11A get_x0034_11() {
		return __x0034_11;  
	}
	public void set_x0034_11(schemaLib._x0034_11A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_11 = null;
		else {
			setElementName(value.getBase(), "_x0034_11");
			__x0034_11 = value; 
		}
	}
	protected schemaLib._x0034_11A __x0034_11;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_12A get_x0034_12() {
		return __x0034_12;  
	}
	public void set_x0034_12(schemaLib._x0034_12A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_12 = null;
		else {
			setElementName(value.getBase(), "_x0034_12");
			__x0034_12 = value; 
		}
	}
	protected schemaLib._x0034_12A __x0034_12;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_13A get_x0034_13() {
		return __x0034_13;  
	}
	public void set_x0034_13(schemaLib._x0034_13A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_13 = null;
		else {
			setElementName(value.getBase(), "_x0034_13");
			__x0034_13 = value; 
		}
	}
	protected schemaLib._x0034_13A __x0034_13;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_14A get_x0034_14() {
		return __x0034_14;  
	}
	public void set_x0034_14(schemaLib._x0034_14A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_14 = null;
		else {
			setElementName(value.getBase(), "_x0034_14");
			__x0034_14 = value; 
		}
	}
	protected schemaLib._x0034_14A __x0034_14;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_15A get_x0034_15() {
		return __x0034_15;  
	}
	public void set_x0034_15(schemaLib._x0034_15A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_15 = null;
		else {
			setElementName(value.getBase(), "_x0034_15");
			__x0034_15 = value; 
		}
	}
	protected schemaLib._x0034_15A __x0034_15;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_16A get_x0034_16() {
		return __x0034_16;  
	}
	public void set_x0034_16(schemaLib._x0034_16A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_16 = null;
		else {
			setElementName(value.getBase(), "_x0034_16");
			__x0034_16 = value; 
		}
	}
	protected schemaLib._x0034_16A __x0034_16;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_17A get_x0034_17() {
		return __x0034_17;  
	}
	public void set_x0034_17(schemaLib._x0034_17A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_17 = null;
		else {
			setElementName(value.getBase(), "_x0034_17");
			__x0034_17 = value; 
		}
	}
	protected schemaLib._x0034_17A __x0034_17;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_18A get_x0034_18() {
		return __x0034_18;  
	}
	public void set_x0034_18(schemaLib._x0034_18A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_18 = null;
		else {
			setElementName(value.getBase(), "_x0034_18");
			__x0034_18 = value; 
		}
	}
	protected schemaLib._x0034_18A __x0034_18;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_19A get_x0034_19() {
		return __x0034_19;  
	}
	public void set_x0034_19(schemaLib._x0034_19A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_19 = null;
		else {
			setElementName(value.getBase(), "_x0034_19");
			__x0034_19 = value; 
		}
	}
	protected schemaLib._x0034_19A __x0034_19;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_20A get_x0034_20() {
		return __x0034_20;  
	}
	public void set_x0034_20(schemaLib._x0034_20A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_20 = null;
		else {
			setElementName(value.getBase(), "_x0034_20");
			__x0034_20 = value; 
		}
	}
	protected schemaLib._x0034_20A __x0034_20;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_21A get_x0034_21() {
		return __x0034_21;  
	}
	public void set_x0034_21(schemaLib._x0034_21A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_21 = null;
		else {
			setElementName(value.getBase(), "_x0034_21");
			__x0034_21 = value; 
		}
	}
	protected schemaLib._x0034_21A __x0034_21;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_22A get_x0034_22() {
		return __x0034_22;  
	}
	public void set_x0034_22(schemaLib._x0034_22A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_22 = null;
		else {
			setElementName(value.getBase(), "_x0034_22");
			__x0034_22 = value; 
		}
	}
	protected schemaLib._x0034_22A __x0034_22;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_23C get_x0034_23() {
		return __x0034_23;  
	}
	public void set_x0034_23(schemaLib._x0034_23C value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_23 = null;
		else {
			setElementName(value.getBase(), "_x0034_23");
			__x0034_23 = value; 
		}
	}
	protected schemaLib._x0034_23C __x0034_23;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_24A get_x0034_24() {
		return __x0034_24;  
	}
	public void set_x0034_24(schemaLib._x0034_24A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_24 = null;
		else {
			setElementName(value.getBase(), "_x0034_24");
			__x0034_24 = value; 
		}
	}
	protected schemaLib._x0034_24A __x0034_24;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_25A get_x0034_25() {
		return __x0034_25;  
	}
	public void set_x0034_25(schemaLib._x0034_25A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_25 = null;
		else {
			setElementName(value.getBase(), "_x0034_25");
			__x0034_25 = value; 
		}
	}
	protected schemaLib._x0034_25A __x0034_25;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_26 get_x0034_26() {
		return __x0034_26;  
	}
	public void set_x0034_26(schemaLib._x0034_26 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_26 = null;
		else {
			setElementName(value.getBase(), "_x0034_26");
			__x0034_26 = value; 
		}
	}
	protected schemaLib._x0034_26 __x0034_26;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_27 get_x0034_27() {
		return __x0034_27;  
	}
	public void set_x0034_27(schemaLib._x0034_27 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_27 = null;
		else {
			setElementName(value.getBase(), "_x0034_27");
			__x0034_27 = value; 
		}
	}
	protected schemaLib._x0034_27 __x0034_27;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_28 get_x0034_28() {
		return __x0034_28;  
	}
	public void set_x0034_28(schemaLib._x0034_28 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_28 = null;
		else {
			setElementName(value.getBase(), "_x0034_28");
			__x0034_28 = value; 
		}
	}
	protected schemaLib._x0034_28 __x0034_28;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_29 get_x0034_29() {
		return __x0034_29;  
	}
	public void set_x0034_29(schemaLib._x0034_29 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_29 = null;
		else {
			setElementName(value.getBase(), "_x0034_29");
			__x0034_29 = value; 
		}
	}
	protected schemaLib._x0034_29 __x0034_29;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_09", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_11", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_11"), findSetterMethod("schemaLib._x0034_09", "set_x0034_11", "schemaLib._x0034_11A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_11A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_12", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_12"), findSetterMethod("schemaLib._x0034_09", "set_x0034_12", "schemaLib._x0034_12A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_12A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_13", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_13"), findSetterMethod("schemaLib._x0034_09", "set_x0034_13", "schemaLib._x0034_13A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_13A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_14", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_14"), findSetterMethod("schemaLib._x0034_09", "set_x0034_14", "schemaLib._x0034_14A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_14A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_15", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_15"), findSetterMethod("schemaLib._x0034_09", "set_x0034_15", "schemaLib._x0034_15A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_15A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_16", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_16"), findSetterMethod("schemaLib._x0034_09", "set_x0034_16", "schemaLib._x0034_16A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_16A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_17", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_17"), findSetterMethod("schemaLib._x0034_09", "set_x0034_17", "schemaLib._x0034_17A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_17A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_18", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_18"), findSetterMethod("schemaLib._x0034_09", "set_x0034_18", "schemaLib._x0034_18A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_18A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_19", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_19"), findSetterMethod("schemaLib._x0034_09", "set_x0034_19", "schemaLib._x0034_19A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_19A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_20", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_20"), findSetterMethod("schemaLib._x0034_09", "set_x0034_20", "schemaLib._x0034_20A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_20A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_21", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_21"), findSetterMethod("schemaLib._x0034_09", "set_x0034_21", "schemaLib._x0034_21A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_21A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_22", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_22"), findSetterMethod("schemaLib._x0034_09", "set_x0034_22", "schemaLib._x0034_22A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_22A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_23", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_23"), findSetterMethod("schemaLib._x0034_09", "set_x0034_23", "schemaLib._x0034_23C"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_23C.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_24", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_24"), findSetterMethod("schemaLib._x0034_09", "set_x0034_24", "schemaLib._x0034_24A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_24A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_25", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_25"), findSetterMethod("schemaLib._x0034_09", "set_x0034_25", "schemaLib._x0034_25A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_25A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_26", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_26"), findSetterMethod("schemaLib._x0034_09", "set_x0034_26", "schemaLib._x0034_26"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_26.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_27", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_27"), findSetterMethod("schemaLib._x0034_09", "set_x0034_27", "schemaLib._x0034_27"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_27.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_28", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_28"), findSetterMethod("schemaLib._x0034_09", "set_x0034_28", "schemaLib._x0034_28"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_28.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_29", "", findGetterMethod("schemaLib._x0034_09", "get_x0034_29"), findSetterMethod("schemaLib._x0034_09", "set_x0034_29", "schemaLib._x0034_29"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_29.class)
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


