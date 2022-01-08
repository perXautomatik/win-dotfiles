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
// This class represents the ComplexType _x0039_44
// </summary>
public class _x0039_44 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0039_44
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0039_44() {
		setElementName("_x0039_44");
		init();
	}
	public _x0039_44(String elementName) {
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
			__x0039_47 = null;
			__x0039_49 = null;
			__x0039_50 = null;
			__x0039_56 = null;
			__x0039_59 = null;
			__x0039_60 = null;
			__x0039_65 = null;
			__x0039_68 = null;
			__x0039_71 = null;
			__x0039_74 = null;
			__x0039_80 = null;
			__x0039_83 = null;
			__x0039_86 = null;
			__x0039_89 = null;

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
			schemaLib._x0039_44 newObject = (schemaLib._x0039_44)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0039_47 = null;
			if (__x0039_47 != null)
				newObject.__x0039_47 = (schemaLib._x0039_47)__x0039_47.clone();
			newObject.__x0039_49 = null;
			if (__x0039_49 != null)
				newObject.__x0039_49 = (schemaLib._x0039_49A)__x0039_49.clone();
			newObject.__x0039_50 = null;
			if (__x0039_50 != null)
				newObject.__x0039_50 = (schemaLib._x0039_50A)__x0039_50.clone();
			newObject.__x0039_56 = null;
			if (__x0039_56 != null)
				newObject.__x0039_56 = (schemaLib._x0039_56)__x0039_56.clone();
			newObject.__x0039_59 = null;
			if (__x0039_59 != null)
				newObject.__x0039_59 = (schemaLib._x0039_59)__x0039_59.clone();
			newObject.__x0039_60 = null;
			if (__x0039_60 != null)
				newObject.__x0039_60 = (schemaLib._x0039_60)__x0039_60.clone();
			newObject.__x0039_65 = null;
			if (__x0039_65 != null)
				newObject.__x0039_65 = (schemaLib._x0039_65)__x0039_65.clone();
			newObject.__x0039_68 = null;
			if (__x0039_68 != null)
				newObject.__x0039_68 = (schemaLib._x0039_68A)__x0039_68.clone();
			newObject.__x0039_71 = null;
			if (__x0039_71 != null)
				newObject.__x0039_71 = (schemaLib._x0039_71)__x0039_71.clone();
			newObject.__x0039_74 = null;
			if (__x0039_74 != null)
				newObject.__x0039_74 = (schemaLib._x0039_74)__x0039_74.clone();
			newObject.__x0039_80 = null;
			if (__x0039_80 != null)
				newObject.__x0039_80 = (schemaLib._x0039_80)__x0039_80.clone();
			newObject.__x0039_83 = null;
			if (__x0039_83 != null)
				newObject.__x0039_83 = (schemaLib._x0039_83)__x0039_83.clone();
			newObject.__x0039_86 = null;
			if (__x0039_86 != null)
				newObject.__x0039_86 = (schemaLib._x0039_86A)__x0039_86.clone();
			newObject.__x0039_89 = null;
			if (__x0039_89 != null)
				newObject.__x0039_89 = (schemaLib._x0039_89A)__x0039_89.clone();
	
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
	public schemaLib._x0039_47 get_x0039_47() {
		return __x0039_47;  
	}
	public void set_x0039_47(schemaLib._x0039_47 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_47 = null;
		else {
			setElementName(value.getBase(), "_x0039_47");
			__x0039_47 = value; 
		}
	}
	protected schemaLib._x0039_47 __x0039_47;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_49A get_x0039_49() {
		return __x0039_49;  
	}
	public void set_x0039_49(schemaLib._x0039_49A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_49 = null;
		else {
			setElementName(value.getBase(), "_x0039_49");
			__x0039_49 = value; 
		}
	}
	protected schemaLib._x0039_49A __x0039_49;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_50A get_x0039_50() {
		return __x0039_50;  
	}
	public void set_x0039_50(schemaLib._x0039_50A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_50 = null;
		else {
			setElementName(value.getBase(), "_x0039_50");
			__x0039_50 = value; 
		}
	}
	protected schemaLib._x0039_50A __x0039_50;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_56 get_x0039_56() {
		return __x0039_56;  
	}
	public void set_x0039_56(schemaLib._x0039_56 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_56 = null;
		else {
			setElementName(value.getBase(), "_x0039_56");
			__x0039_56 = value; 
		}
	}
	protected schemaLib._x0039_56 __x0039_56;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_59 get_x0039_59() {
		return __x0039_59;  
	}
	public void set_x0039_59(schemaLib._x0039_59 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_59 = null;
		else {
			setElementName(value.getBase(), "_x0039_59");
			__x0039_59 = value; 
		}
	}
	protected schemaLib._x0039_59 __x0039_59;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_60 get_x0039_60() {
		return __x0039_60;  
	}
	public void set_x0039_60(schemaLib._x0039_60 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_60 = null;
		else {
			setElementName(value.getBase(), "_x0039_60");
			__x0039_60 = value; 
		}
	}
	protected schemaLib._x0039_60 __x0039_60;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_65 get_x0039_65() {
		return __x0039_65;  
	}
	public void set_x0039_65(schemaLib._x0039_65 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_65 = null;
		else {
			setElementName(value.getBase(), "_x0039_65");
			__x0039_65 = value; 
		}
	}
	protected schemaLib._x0039_65 __x0039_65;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_68A get_x0039_68() {
		return __x0039_68;  
	}
	public void set_x0039_68(schemaLib._x0039_68A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_68 = null;
		else {
			setElementName(value.getBase(), "_x0039_68");
			__x0039_68 = value; 
		}
	}
	protected schemaLib._x0039_68A __x0039_68;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_71 get_x0039_71() {
		return __x0039_71;  
	}
	public void set_x0039_71(schemaLib._x0039_71 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_71 = null;
		else {
			setElementName(value.getBase(), "_x0039_71");
			__x0039_71 = value; 
		}
	}
	protected schemaLib._x0039_71 __x0039_71;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_74 get_x0039_74() {
		return __x0039_74;  
	}
	public void set_x0039_74(schemaLib._x0039_74 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_74 = null;
		else {
			setElementName(value.getBase(), "_x0039_74");
			__x0039_74 = value; 
		}
	}
	protected schemaLib._x0039_74 __x0039_74;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_80 get_x0039_80() {
		return __x0039_80;  
	}
	public void set_x0039_80(schemaLib._x0039_80 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_80 = null;
		else {
			setElementName(value.getBase(), "_x0039_80");
			__x0039_80 = value; 
		}
	}
	protected schemaLib._x0039_80 __x0039_80;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_83 get_x0039_83() {
		return __x0039_83;  
	}
	public void set_x0039_83(schemaLib._x0039_83 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_83 = null;
		else {
			setElementName(value.getBase(), "_x0039_83");
			__x0039_83 = value; 
		}
	}
	protected schemaLib._x0039_83 __x0039_83;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_86A get_x0039_86() {
		return __x0039_86;  
	}
	public void set_x0039_86(schemaLib._x0039_86A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_86 = null;
		else {
			setElementName(value.getBase(), "_x0039_86");
			__x0039_86 = value; 
		}
	}
	protected schemaLib._x0039_86A __x0039_86;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_89A get_x0039_89() {
		return __x0039_89;  
	}
	public void set_x0039_89(schemaLib._x0039_89A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_89 = null;
		else {
			setElementName(value.getBase(), "_x0039_89");
			__x0039_89 = value; 
		}
	}
	protected schemaLib._x0039_89A __x0039_89;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0039_44", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_47", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_47"), findSetterMethod("schemaLib._x0039_44", "set_x0039_47", "schemaLib._x0039_47"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_47.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_49", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_49"), findSetterMethod("schemaLib._x0039_44", "set_x0039_49", "schemaLib._x0039_49A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_49A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_50", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_50"), findSetterMethod("schemaLib._x0039_44", "set_x0039_50", "schemaLib._x0039_50A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_50A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_56", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_56"), findSetterMethod("schemaLib._x0039_44", "set_x0039_56", "schemaLib._x0039_56"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_56.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_59", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_59"), findSetterMethod("schemaLib._x0039_44", "set_x0039_59", "schemaLib._x0039_59"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_59.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_60", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_60"), findSetterMethod("schemaLib._x0039_44", "set_x0039_60", "schemaLib._x0039_60"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_60.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_65", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_65"), findSetterMethod("schemaLib._x0039_44", "set_x0039_65", "schemaLib._x0039_65"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_65.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_68", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_68"), findSetterMethod("schemaLib._x0039_44", "set_x0039_68", "schemaLib._x0039_68A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_68A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_71", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_71"), findSetterMethod("schemaLib._x0039_44", "set_x0039_71", "schemaLib._x0039_71"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_71.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_74", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_74"), findSetterMethod("schemaLib._x0039_44", "set_x0039_74", "schemaLib._x0039_74"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_74.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_80", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_80"), findSetterMethod("schemaLib._x0039_44", "set_x0039_80", "schemaLib._x0039_80"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_80.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_83", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_83"), findSetterMethod("schemaLib._x0039_44", "set_x0039_83", "schemaLib._x0039_83"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_83.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_86", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_86"), findSetterMethod("schemaLib._x0039_44", "set_x0039_86", "schemaLib._x0039_86A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_86A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_89", "", findGetterMethod("schemaLib._x0039_44", "get_x0039_89"), findSetterMethod("schemaLib._x0039_44", "set_x0039_89", "schemaLib._x0039_89A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_89A.class)
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


