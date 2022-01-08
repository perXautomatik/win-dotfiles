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
// This class represents the ComplexType _x0031_1594
// </summary>
public class _x0031_1594 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_1594
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_1594() {
		setElementName("_x0031_1594");
		init();
	}
	public _x0031_1594(String elementName) {
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
			__x0031_1610 = null;
			__x0031_1700 = null;
			__x0031_1703 = null;
			__x0031_1706 = null;
			__x0031_1709 = null;
			__x0031_1712 = null;
			__x0031_1724 = null;
			__x0031_1727 = null;
			__x0031_1730 = null;
			__x0031_1751 = null;
			__x0031_1754 = null;
			__x0031_1757 = null;
			__x0031_1760 = null;
			__x0031_1763 = null;
			__x0031_1766 = null;
			__x0031_1769 = null;

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
			schemaLib._x0031_1594 newObject = (schemaLib._x0031_1594)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_1610 = null;
			if (__x0031_1610 != null)
				newObject.__x0031_1610 = (schemaLib._x0031_1610)__x0031_1610.clone();
			newObject.__x0031_1700 = null;
			if (__x0031_1700 != null)
				newObject.__x0031_1700 = (schemaLib._x0031_1700)__x0031_1700.clone();
			newObject.__x0031_1703 = null;
			if (__x0031_1703 != null)
				newObject.__x0031_1703 = (schemaLib._x0031_1703)__x0031_1703.clone();
			newObject.__x0031_1706 = null;
			if (__x0031_1706 != null)
				newObject.__x0031_1706 = (schemaLib._x0031_1706)__x0031_1706.clone();
			newObject.__x0031_1709 = null;
			if (__x0031_1709 != null)
				newObject.__x0031_1709 = (schemaLib._x0031_1709)__x0031_1709.clone();
			newObject.__x0031_1712 = null;
			if (__x0031_1712 != null)
				newObject.__x0031_1712 = (schemaLib._x0031_1712)__x0031_1712.clone();
			newObject.__x0031_1724 = null;
			if (__x0031_1724 != null)
				newObject.__x0031_1724 = (schemaLib._x0031_1724)__x0031_1724.clone();
			newObject.__x0031_1727 = null;
			if (__x0031_1727 != null)
				newObject.__x0031_1727 = (schemaLib._x0031_1727)__x0031_1727.clone();
			newObject.__x0031_1730 = null;
			if (__x0031_1730 != null)
				newObject.__x0031_1730 = (schemaLib._x0031_1730)__x0031_1730.clone();
			newObject.__x0031_1751 = null;
			if (__x0031_1751 != null)
				newObject.__x0031_1751 = (schemaLib._x0031_1751)__x0031_1751.clone();
			newObject.__x0031_1754 = null;
			if (__x0031_1754 != null)
				newObject.__x0031_1754 = (schemaLib._x0031_1754)__x0031_1754.clone();
			newObject.__x0031_1757 = null;
			if (__x0031_1757 != null)
				newObject.__x0031_1757 = (schemaLib._x0031_1757)__x0031_1757.clone();
			newObject.__x0031_1760 = null;
			if (__x0031_1760 != null)
				newObject.__x0031_1760 = (schemaLib._x0031_1760)__x0031_1760.clone();
			newObject.__x0031_1763 = null;
			if (__x0031_1763 != null)
				newObject.__x0031_1763 = (schemaLib._x0031_1763)__x0031_1763.clone();
			newObject.__x0031_1766 = null;
			if (__x0031_1766 != null)
				newObject.__x0031_1766 = (schemaLib._x0031_1766)__x0031_1766.clone();
			newObject.__x0031_1769 = null;
			if (__x0031_1769 != null)
				newObject.__x0031_1769 = (schemaLib._x0031_1769)__x0031_1769.clone();
	
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
	public schemaLib._x0031_1610 get_x0031_1610() {
		return __x0031_1610;  
	}
	public void set_x0031_1610(schemaLib._x0031_1610 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1610 = null;
		else {
			setElementName(value.getBase(), "_x0031_1610");
			__x0031_1610 = value; 
		}
	}
	protected schemaLib._x0031_1610 __x0031_1610;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1700 get_x0031_1700() {
		return __x0031_1700;  
	}
	public void set_x0031_1700(schemaLib._x0031_1700 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1700 = null;
		else {
			setElementName(value.getBase(), "_x0031_1700");
			__x0031_1700 = value; 
		}
	}
	protected schemaLib._x0031_1700 __x0031_1700;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1703 get_x0031_1703() {
		return __x0031_1703;  
	}
	public void set_x0031_1703(schemaLib._x0031_1703 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1703 = null;
		else {
			setElementName(value.getBase(), "_x0031_1703");
			__x0031_1703 = value; 
		}
	}
	protected schemaLib._x0031_1703 __x0031_1703;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1706 get_x0031_1706() {
		return __x0031_1706;  
	}
	public void set_x0031_1706(schemaLib._x0031_1706 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1706 = null;
		else {
			setElementName(value.getBase(), "_x0031_1706");
			__x0031_1706 = value; 
		}
	}
	protected schemaLib._x0031_1706 __x0031_1706;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1709 get_x0031_1709() {
		return __x0031_1709;  
	}
	public void set_x0031_1709(schemaLib._x0031_1709 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1709 = null;
		else {
			setElementName(value.getBase(), "_x0031_1709");
			__x0031_1709 = value; 
		}
	}
	protected schemaLib._x0031_1709 __x0031_1709;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1712 get_x0031_1712() {
		return __x0031_1712;  
	}
	public void set_x0031_1712(schemaLib._x0031_1712 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1712 = null;
		else {
			setElementName(value.getBase(), "_x0031_1712");
			__x0031_1712 = value; 
		}
	}
	protected schemaLib._x0031_1712 __x0031_1712;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1724 get_x0031_1724() {
		return __x0031_1724;  
	}
	public void set_x0031_1724(schemaLib._x0031_1724 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1724 = null;
		else {
			setElementName(value.getBase(), "_x0031_1724");
			__x0031_1724 = value; 
		}
	}
	protected schemaLib._x0031_1724 __x0031_1724;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1727 get_x0031_1727() {
		return __x0031_1727;  
	}
	public void set_x0031_1727(schemaLib._x0031_1727 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1727 = null;
		else {
			setElementName(value.getBase(), "_x0031_1727");
			__x0031_1727 = value; 
		}
	}
	protected schemaLib._x0031_1727 __x0031_1727;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1730 get_x0031_1730() {
		return __x0031_1730;  
	}
	public void set_x0031_1730(schemaLib._x0031_1730 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1730 = null;
		else {
			setElementName(value.getBase(), "_x0031_1730");
			__x0031_1730 = value; 
		}
	}
	protected schemaLib._x0031_1730 __x0031_1730;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1751 get_x0031_1751() {
		return __x0031_1751;  
	}
	public void set_x0031_1751(schemaLib._x0031_1751 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1751 = null;
		else {
			setElementName(value.getBase(), "_x0031_1751");
			__x0031_1751 = value; 
		}
	}
	protected schemaLib._x0031_1751 __x0031_1751;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1754 get_x0031_1754() {
		return __x0031_1754;  
	}
	public void set_x0031_1754(schemaLib._x0031_1754 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1754 = null;
		else {
			setElementName(value.getBase(), "_x0031_1754");
			__x0031_1754 = value; 
		}
	}
	protected schemaLib._x0031_1754 __x0031_1754;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1757 get_x0031_1757() {
		return __x0031_1757;  
	}
	public void set_x0031_1757(schemaLib._x0031_1757 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1757 = null;
		else {
			setElementName(value.getBase(), "_x0031_1757");
			__x0031_1757 = value; 
		}
	}
	protected schemaLib._x0031_1757 __x0031_1757;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1760 get_x0031_1760() {
		return __x0031_1760;  
	}
	public void set_x0031_1760(schemaLib._x0031_1760 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1760 = null;
		else {
			setElementName(value.getBase(), "_x0031_1760");
			__x0031_1760 = value; 
		}
	}
	protected schemaLib._x0031_1760 __x0031_1760;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1763 get_x0031_1763() {
		return __x0031_1763;  
	}
	public void set_x0031_1763(schemaLib._x0031_1763 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1763 = null;
		else {
			setElementName(value.getBase(), "_x0031_1763");
			__x0031_1763 = value; 
		}
	}
	protected schemaLib._x0031_1763 __x0031_1763;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1766 get_x0031_1766() {
		return __x0031_1766;  
	}
	public void set_x0031_1766(schemaLib._x0031_1766 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1766 = null;
		else {
			setElementName(value.getBase(), "_x0031_1766");
			__x0031_1766 = value; 
		}
	}
	protected schemaLib._x0031_1766 __x0031_1766;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1769 get_x0031_1769() {
		return __x0031_1769;  
	}
	public void set_x0031_1769(schemaLib._x0031_1769 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1769 = null;
		else {
			setElementName(value.getBase(), "_x0031_1769");
			__x0031_1769 = value; 
		}
	}
	protected schemaLib._x0031_1769 __x0031_1769;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_1594", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1610", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1610"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1610", "schemaLib._x0031_1610"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1610.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1700", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1700"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1700", "schemaLib._x0031_1700"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1700.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1703", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1703"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1703", "schemaLib._x0031_1703"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1703.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1706", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1706"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1706", "schemaLib._x0031_1706"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1706.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1709", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1709"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1709", "schemaLib._x0031_1709"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1709.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1712", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1712"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1712", "schemaLib._x0031_1712"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1712.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1724", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1724"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1724", "schemaLib._x0031_1724"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1724.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1727", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1727"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1727", "schemaLib._x0031_1727"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1727.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1730", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1730"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1730", "schemaLib._x0031_1730"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1730.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1751", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1751"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1751", "schemaLib._x0031_1751"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1751.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1754", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1754"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1754", "schemaLib._x0031_1754"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1754.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1757", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1757"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1757", "schemaLib._x0031_1757"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1757.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1760", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1760"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1760", "schemaLib._x0031_1760"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1760.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1763", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1763"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1763", "schemaLib._x0031_1763"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1763.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1766", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1766"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1766", "schemaLib._x0031_1766"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1766.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1769", "", findGetterMethod("schemaLib._x0031_1594", "get_x0031_1769"), findSetterMethod("schemaLib._x0031_1594", "set_x0031_1769", "schemaLib._x0031_1769"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1769.class)
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


