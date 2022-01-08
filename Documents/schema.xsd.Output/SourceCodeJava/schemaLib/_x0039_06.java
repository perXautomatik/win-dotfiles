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
// This class represents the ComplexType _x0039_06
// </summary>
public class _x0039_06 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0039_06
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0039_06() {
		setElementName("_x0039_06");
		init();
	}
	public _x0039_06(String elementName) {
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
			__x0039_09 = null;
			__x0038_50 = null;
			__x0038_51 = null;
			__x0038_52 = null;
			__x0038_53 = null;
			__x0038_54 = null;
			__x0038_55 = null;
			__x0038_56 = null;
			__x0038_57 = null;
			__x0038_58 = null;
			__x0038_60 = null;
			__x0038_61 = null;
			__x0038_62 = null;
			__x0038_63 = null;
			__x0038_64 = null;
			__x0038_65 = null;
			__x0038_66 = null;
			__x0038_67 = null;

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
			schemaLib._x0039_06 newObject = (schemaLib._x0039_06)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0039_09 = null;
			if (__x0039_09 != null)
				newObject.__x0039_09 = (schemaLib._x0039_09)__x0039_09.clone();
			newObject.__x0038_50 = null;
			if (__x0038_50 != null)
				newObject.__x0038_50 = (schemaLib._x0038_50)__x0038_50.clone();
			newObject.__x0038_51 = null;
			if (__x0038_51 != null)
				newObject.__x0038_51 = (schemaLib._x0038_51)__x0038_51.clone();
			newObject.__x0038_52 = null;
			if (__x0038_52 != null)
				newObject.__x0038_52 = (schemaLib._x0038_52)__x0038_52.clone();
			newObject.__x0038_53 = null;
			if (__x0038_53 != null)
				newObject.__x0038_53 = (schemaLib._x0038_53)__x0038_53.clone();
			newObject.__x0038_54 = null;
			if (__x0038_54 != null)
				newObject.__x0038_54 = (schemaLib._x0038_54)__x0038_54.clone();
			newObject.__x0038_55 = null;
			if (__x0038_55 != null)
				newObject.__x0038_55 = (schemaLib._x0038_55)__x0038_55.clone();
			newObject.__x0038_56 = null;
			if (__x0038_56 != null)
				newObject.__x0038_56 = (schemaLib._x0038_56)__x0038_56.clone();
			newObject.__x0038_57 = null;
			if (__x0038_57 != null)
				newObject.__x0038_57 = (schemaLib._x0038_57)__x0038_57.clone();
			newObject.__x0038_58 = null;
			if (__x0038_58 != null)
				newObject.__x0038_58 = (schemaLib._x0038_58)__x0038_58.clone();
			newObject.__x0038_60 = null;
			if (__x0038_60 != null)
				newObject.__x0038_60 = (schemaLib._x0038_60)__x0038_60.clone();
			newObject.__x0038_61 = null;
			if (__x0038_61 != null)
				newObject.__x0038_61 = (schemaLib._x0038_61)__x0038_61.clone();
			newObject.__x0038_62 = null;
			if (__x0038_62 != null)
				newObject.__x0038_62 = (schemaLib._x0038_62)__x0038_62.clone();
			newObject.__x0038_63 = null;
			if (__x0038_63 != null)
				newObject.__x0038_63 = (schemaLib._x0038_63)__x0038_63.clone();
			newObject.__x0038_64 = null;
			if (__x0038_64 != null)
				newObject.__x0038_64 = (schemaLib._x0038_64A)__x0038_64.clone();
			newObject.__x0038_65 = null;
			if (__x0038_65 != null)
				newObject.__x0038_65 = (schemaLib._x0038_65)__x0038_65.clone();
			newObject.__x0038_66 = null;
			if (__x0038_66 != null)
				newObject.__x0038_66 = (schemaLib._x0038_66)__x0038_66.clone();
			newObject.__x0038_67 = null;
			if (__x0038_67 != null)
				newObject.__x0038_67 = (schemaLib._x0038_67B)__x0038_67.clone();
	
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
	public schemaLib._x0039_09 get_x0039_09() {
		return __x0039_09;  
	}
	public void set_x0039_09(schemaLib._x0039_09 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_09 = null;
		else {
			setElementName(value.getBase(), "_x0039_09");
			__x0039_09 = value; 
		}
	}
	protected schemaLib._x0039_09 __x0039_09;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_50 get_x0038_50() {
		return __x0038_50;  
	}
	public void set_x0038_50(schemaLib._x0038_50 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_50 = null;
		else {
			setElementName(value.getBase(), "_x0038_50");
			__x0038_50 = value; 
		}
	}
	protected schemaLib._x0038_50 __x0038_50;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_51 get_x0038_51() {
		return __x0038_51;  
	}
	public void set_x0038_51(schemaLib._x0038_51 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_51 = null;
		else {
			setElementName(value.getBase(), "_x0038_51");
			__x0038_51 = value; 
		}
	}
	protected schemaLib._x0038_51 __x0038_51;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_52 get_x0038_52() {
		return __x0038_52;  
	}
	public void set_x0038_52(schemaLib._x0038_52 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_52 = null;
		else {
			setElementName(value.getBase(), "_x0038_52");
			__x0038_52 = value; 
		}
	}
	protected schemaLib._x0038_52 __x0038_52;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_53 get_x0038_53() {
		return __x0038_53;  
	}
	public void set_x0038_53(schemaLib._x0038_53 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_53 = null;
		else {
			setElementName(value.getBase(), "_x0038_53");
			__x0038_53 = value; 
		}
	}
	protected schemaLib._x0038_53 __x0038_53;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_54 get_x0038_54() {
		return __x0038_54;  
	}
	public void set_x0038_54(schemaLib._x0038_54 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_54 = null;
		else {
			setElementName(value.getBase(), "_x0038_54");
			__x0038_54 = value; 
		}
	}
	protected schemaLib._x0038_54 __x0038_54;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_55 get_x0038_55() {
		return __x0038_55;  
	}
	public void set_x0038_55(schemaLib._x0038_55 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_55 = null;
		else {
			setElementName(value.getBase(), "_x0038_55");
			__x0038_55 = value; 
		}
	}
	protected schemaLib._x0038_55 __x0038_55;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_56 get_x0038_56() {
		return __x0038_56;  
	}
	public void set_x0038_56(schemaLib._x0038_56 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_56 = null;
		else {
			setElementName(value.getBase(), "_x0038_56");
			__x0038_56 = value; 
		}
	}
	protected schemaLib._x0038_56 __x0038_56;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_57 get_x0038_57() {
		return __x0038_57;  
	}
	public void set_x0038_57(schemaLib._x0038_57 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_57 = null;
		else {
			setElementName(value.getBase(), "_x0038_57");
			__x0038_57 = value; 
		}
	}
	protected schemaLib._x0038_57 __x0038_57;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_58 get_x0038_58() {
		return __x0038_58;  
	}
	public void set_x0038_58(schemaLib._x0038_58 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_58 = null;
		else {
			setElementName(value.getBase(), "_x0038_58");
			__x0038_58 = value; 
		}
	}
	protected schemaLib._x0038_58 __x0038_58;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_60 get_x0038_60() {
		return __x0038_60;  
	}
	public void set_x0038_60(schemaLib._x0038_60 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_60 = null;
		else {
			setElementName(value.getBase(), "_x0038_60");
			__x0038_60 = value; 
		}
	}
	protected schemaLib._x0038_60 __x0038_60;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_61 get_x0038_61() {
		return __x0038_61;  
	}
	public void set_x0038_61(schemaLib._x0038_61 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_61 = null;
		else {
			setElementName(value.getBase(), "_x0038_61");
			__x0038_61 = value; 
		}
	}
	protected schemaLib._x0038_61 __x0038_61;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_62 get_x0038_62() {
		return __x0038_62;  
	}
	public void set_x0038_62(schemaLib._x0038_62 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_62 = null;
		else {
			setElementName(value.getBase(), "_x0038_62");
			__x0038_62 = value; 
		}
	}
	protected schemaLib._x0038_62 __x0038_62;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_63 get_x0038_63() {
		return __x0038_63;  
	}
	public void set_x0038_63(schemaLib._x0038_63 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_63 = null;
		else {
			setElementName(value.getBase(), "_x0038_63");
			__x0038_63 = value; 
		}
	}
	protected schemaLib._x0038_63 __x0038_63;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_64A get_x0038_64() {
		return __x0038_64;  
	}
	public void set_x0038_64(schemaLib._x0038_64A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_64 = null;
		else {
			setElementName(value.getBase(), "_x0038_64");
			__x0038_64 = value; 
		}
	}
	protected schemaLib._x0038_64A __x0038_64;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_65 get_x0038_65() {
		return __x0038_65;  
	}
	public void set_x0038_65(schemaLib._x0038_65 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_65 = null;
		else {
			setElementName(value.getBase(), "_x0038_65");
			__x0038_65 = value; 
		}
	}
	protected schemaLib._x0038_65 __x0038_65;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_66 get_x0038_66() {
		return __x0038_66;  
	}
	public void set_x0038_66(schemaLib._x0038_66 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_66 = null;
		else {
			setElementName(value.getBase(), "_x0038_66");
			__x0038_66 = value; 
		}
	}
	protected schemaLib._x0038_66 __x0038_66;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_67B get_x0038_67() {
		return __x0038_67;  
	}
	public void set_x0038_67(schemaLib._x0038_67B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_67 = null;
		else {
			setElementName(value.getBase(), "_x0038_67");
			__x0038_67 = value; 
		}
	}
	protected schemaLib._x0038_67B __x0038_67;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0039_06", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_09", "", findGetterMethod("schemaLib._x0039_06", "get_x0039_09"), findSetterMethod("schemaLib._x0039_06", "set_x0039_09", "schemaLib._x0039_09"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_09.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_50", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_50"), findSetterMethod("schemaLib._x0039_06", "set_x0038_50", "schemaLib._x0038_50"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_50.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_51", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_51"), findSetterMethod("schemaLib._x0039_06", "set_x0038_51", "schemaLib._x0038_51"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_51.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_52", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_52"), findSetterMethod("schemaLib._x0039_06", "set_x0038_52", "schemaLib._x0038_52"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_52.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_53", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_53"), findSetterMethod("schemaLib._x0039_06", "set_x0038_53", "schemaLib._x0038_53"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_53.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_54", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_54"), findSetterMethod("schemaLib._x0039_06", "set_x0038_54", "schemaLib._x0038_54"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_54.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_55", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_55"), findSetterMethod("schemaLib._x0039_06", "set_x0038_55", "schemaLib._x0038_55"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_55.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_56", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_56"), findSetterMethod("schemaLib._x0039_06", "set_x0038_56", "schemaLib._x0038_56"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_56.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_57", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_57"), findSetterMethod("schemaLib._x0039_06", "set_x0038_57", "schemaLib._x0038_57"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_57.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_58", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_58"), findSetterMethod("schemaLib._x0039_06", "set_x0038_58", "schemaLib._x0038_58"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_58.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_60", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_60"), findSetterMethod("schemaLib._x0039_06", "set_x0038_60", "schemaLib._x0038_60"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_60.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_61", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_61"), findSetterMethod("schemaLib._x0039_06", "set_x0038_61", "schemaLib._x0038_61"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_61.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_62", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_62"), findSetterMethod("schemaLib._x0039_06", "set_x0038_62", "schemaLib._x0038_62"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_62.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_63", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_63"), findSetterMethod("schemaLib._x0039_06", "set_x0038_63", "schemaLib._x0038_63"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_63.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_64", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_64"), findSetterMethod("schemaLib._x0039_06", "set_x0038_64", "schemaLib._x0038_64A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_64A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_65", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_65"), findSetterMethod("schemaLib._x0039_06", "set_x0038_65", "schemaLib._x0038_65"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_65.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_66", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_66"), findSetterMethod("schemaLib._x0039_06", "set_x0038_66", "schemaLib._x0038_66"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_66.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_67", "", findGetterMethod("schemaLib._x0039_06", "get_x0038_67"), findSetterMethod("schemaLib._x0039_06", "set_x0038_67", "schemaLib._x0038_67B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_67B.class)
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


