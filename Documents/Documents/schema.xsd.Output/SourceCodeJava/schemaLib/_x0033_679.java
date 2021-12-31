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
// This class represents the ComplexType _x0033_679
// </summary>
public class _x0033_679 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_679
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_679() {
		setElementName("_x0033_679");
		init();
	}
	public _x0033_679(String elementName) {
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
			__x0033_721 = null;
			__x0033_736 = null;
			__x0033_805 = null;
			__x0033_847 = null;
			__x0033_887 = null;
			__x0033_922 = null;
			__x0033_951 = null;
			__x0033_969 = null;
			__x0033_981 = null;
			__x0033_992 = null;
			__x0034_000 = null;
			__x0034_005 = null;
			__x0034_008 = null;

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
			schemaLib._x0033_679 newObject = (schemaLib._x0033_679)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_721 = null;
			if (__x0033_721 != null)
				newObject.__x0033_721 = (schemaLib._x0033_721)__x0033_721.clone();
			newObject.__x0033_736 = null;
			if (__x0033_736 != null)
				newObject.__x0033_736 = (schemaLib._x0033_736)__x0033_736.clone();
			newObject.__x0033_805 = null;
			if (__x0033_805 != null)
				newObject.__x0033_805 = (schemaLib._x0033_805)__x0033_805.clone();
			newObject.__x0033_847 = null;
			if (__x0033_847 != null)
				newObject.__x0033_847 = (schemaLib._x0033_847)__x0033_847.clone();
			newObject.__x0033_887 = null;
			if (__x0033_887 != null)
				newObject.__x0033_887 = (schemaLib._x0033_887)__x0033_887.clone();
			newObject.__x0033_922 = null;
			if (__x0033_922 != null)
				newObject.__x0033_922 = (schemaLib._x0033_922)__x0033_922.clone();
			newObject.__x0033_951 = null;
			if (__x0033_951 != null)
				newObject.__x0033_951 = (schemaLib._x0033_951)__x0033_951.clone();
			newObject.__x0033_969 = null;
			if (__x0033_969 != null)
				newObject.__x0033_969 = (schemaLib._x0033_969)__x0033_969.clone();
			newObject.__x0033_981 = null;
			if (__x0033_981 != null)
				newObject.__x0033_981 = (schemaLib._x0033_981B)__x0033_981.clone();
			newObject.__x0033_992 = null;
			if (__x0033_992 != null)
				newObject.__x0033_992 = (schemaLib._x0033_992)__x0033_992.clone();
			newObject.__x0034_000 = null;
			if (__x0034_000 != null)
				newObject.__x0034_000 = (schemaLib._x0034_000)__x0034_000.clone();
			newObject.__x0034_005 = null;
			if (__x0034_005 != null)
				newObject.__x0034_005 = (schemaLib._x0034_005)__x0034_005.clone();
			newObject.__x0034_008 = null;
			if (__x0034_008 != null)
				newObject.__x0034_008 = (schemaLib._x0034_008)__x0034_008.clone();
	
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
	public schemaLib._x0033_721 get_x0033_721() {
		return __x0033_721;  
	}
	public void set_x0033_721(schemaLib._x0033_721 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_721 = null;
		else {
			setElementName(value.getBase(), "_x0033_721");
			__x0033_721 = value; 
		}
	}
	protected schemaLib._x0033_721 __x0033_721;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_736 get_x0033_736() {
		return __x0033_736;  
	}
	public void set_x0033_736(schemaLib._x0033_736 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_736 = null;
		else {
			setElementName(value.getBase(), "_x0033_736");
			__x0033_736 = value; 
		}
	}
	protected schemaLib._x0033_736 __x0033_736;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_805 get_x0033_805() {
		return __x0033_805;  
	}
	public void set_x0033_805(schemaLib._x0033_805 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_805 = null;
		else {
			setElementName(value.getBase(), "_x0033_805");
			__x0033_805 = value; 
		}
	}
	protected schemaLib._x0033_805 __x0033_805;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_847 get_x0033_847() {
		return __x0033_847;  
	}
	public void set_x0033_847(schemaLib._x0033_847 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_847 = null;
		else {
			setElementName(value.getBase(), "_x0033_847");
			__x0033_847 = value; 
		}
	}
	protected schemaLib._x0033_847 __x0033_847;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_887 get_x0033_887() {
		return __x0033_887;  
	}
	public void set_x0033_887(schemaLib._x0033_887 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_887 = null;
		else {
			setElementName(value.getBase(), "_x0033_887");
			__x0033_887 = value; 
		}
	}
	protected schemaLib._x0033_887 __x0033_887;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_922 get_x0033_922() {
		return __x0033_922;  
	}
	public void set_x0033_922(schemaLib._x0033_922 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_922 = null;
		else {
			setElementName(value.getBase(), "_x0033_922");
			__x0033_922 = value; 
		}
	}
	protected schemaLib._x0033_922 __x0033_922;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_951 get_x0033_951() {
		return __x0033_951;  
	}
	public void set_x0033_951(schemaLib._x0033_951 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_951 = null;
		else {
			setElementName(value.getBase(), "_x0033_951");
			__x0033_951 = value; 
		}
	}
	protected schemaLib._x0033_951 __x0033_951;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_969 get_x0033_969() {
		return __x0033_969;  
	}
	public void set_x0033_969(schemaLib._x0033_969 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_969 = null;
		else {
			setElementName(value.getBase(), "_x0033_969");
			__x0033_969 = value; 
		}
	}
	protected schemaLib._x0033_969 __x0033_969;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_981B get_x0033_981() {
		return __x0033_981;  
	}
	public void set_x0033_981(schemaLib._x0033_981B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_981 = null;
		else {
			setElementName(value.getBase(), "_x0033_981");
			__x0033_981 = value; 
		}
	}
	protected schemaLib._x0033_981B __x0033_981;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_992 get_x0033_992() {
		return __x0033_992;  
	}
	public void set_x0033_992(schemaLib._x0033_992 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_992 = null;
		else {
			setElementName(value.getBase(), "_x0033_992");
			__x0033_992 = value; 
		}
	}
	protected schemaLib._x0033_992 __x0033_992;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_000 get_x0034_000() {
		return __x0034_000;  
	}
	public void set_x0034_000(schemaLib._x0034_000 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_000 = null;
		else {
			setElementName(value.getBase(), "_x0034_000");
			__x0034_000 = value; 
		}
	}
	protected schemaLib._x0034_000 __x0034_000;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_005 get_x0034_005() {
		return __x0034_005;  
	}
	public void set_x0034_005(schemaLib._x0034_005 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_005 = null;
		else {
			setElementName(value.getBase(), "_x0034_005");
			__x0034_005 = value; 
		}
	}
	protected schemaLib._x0034_005 __x0034_005;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_008 get_x0034_008() {
		return __x0034_008;  
	}
	public void set_x0034_008(schemaLib._x0034_008 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_008 = null;
		else {
			setElementName(value.getBase(), "_x0034_008");
			__x0034_008 = value; 
		}
	}
	protected schemaLib._x0034_008 __x0034_008;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_679", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_721", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_721"), findSetterMethod("schemaLib._x0033_679", "set_x0033_721", "schemaLib._x0033_721"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_721.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_736", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_736"), findSetterMethod("schemaLib._x0033_679", "set_x0033_736", "schemaLib._x0033_736"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_736.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_805", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_805"), findSetterMethod("schemaLib._x0033_679", "set_x0033_805", "schemaLib._x0033_805"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_805.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_847", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_847"), findSetterMethod("schemaLib._x0033_679", "set_x0033_847", "schemaLib._x0033_847"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_847.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_887", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_887"), findSetterMethod("schemaLib._x0033_679", "set_x0033_887", "schemaLib._x0033_887"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_887.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_922", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_922"), findSetterMethod("schemaLib._x0033_679", "set_x0033_922", "schemaLib._x0033_922"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_922.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_951", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_951"), findSetterMethod("schemaLib._x0033_679", "set_x0033_951", "schemaLib._x0033_951"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_951.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_969", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_969"), findSetterMethod("schemaLib._x0033_679", "set_x0033_969", "schemaLib._x0033_969"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_969.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_981", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_981"), findSetterMethod("schemaLib._x0033_679", "set_x0033_981", "schemaLib._x0033_981B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_981B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_992", "", findGetterMethod("schemaLib._x0033_679", "get_x0033_992"), findSetterMethod("schemaLib._x0033_679", "set_x0033_992", "schemaLib._x0033_992"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_992.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_000", "", findGetterMethod("schemaLib._x0033_679", "get_x0034_000"), findSetterMethod("schemaLib._x0033_679", "set_x0034_000", "schemaLib._x0034_000"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_000.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_005", "", findGetterMethod("schemaLib._x0033_679", "get_x0034_005"), findSetterMethod("schemaLib._x0033_679", "set_x0034_005", "schemaLib._x0034_005"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_005.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_008", "", findGetterMethod("schemaLib._x0033_679", "get_x0034_008"), findSetterMethod("schemaLib._x0033_679", "set_x0034_008", "schemaLib._x0034_008"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_008.class)
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


