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
// This class represents the ComplexType _x0034_108
// </summary>
public class _x0034_108 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_108
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_108() {
		setElementName("_x0034_108");
		init();
	}
	public _x0034_108(String elementName) {
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
			__x0034_602 = null;
			__x0034_615 = null;
			__x0034_633 = null;
			__x0034_636 = null;
			__x0034_639 = null;
			__x0034_642 = null;
			__x0034_645 = null;
			__x0034_648 = null;
			__x0034_651 = null;
			__x0034_654 = null;

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
			schemaLib._x0034_108 newObject = (schemaLib._x0034_108)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_602 = null;
			if (__x0034_602 != null)
				newObject.__x0034_602 = (schemaLib._x0034_602)__x0034_602.clone();
			newObject.__x0034_615 = null;
			if (__x0034_615 != null)
				newObject.__x0034_615 = (schemaLib._x0034_615)__x0034_615.clone();
			newObject.__x0034_633 = null;
			if (__x0034_633 != null)
				newObject.__x0034_633 = (schemaLib._x0034_633)__x0034_633.clone();
			newObject.__x0034_636 = null;
			if (__x0034_636 != null)
				newObject.__x0034_636 = (schemaLib._x0034_636)__x0034_636.clone();
			newObject.__x0034_639 = null;
			if (__x0034_639 != null)
				newObject.__x0034_639 = (schemaLib._x0034_639)__x0034_639.clone();
			newObject.__x0034_642 = null;
			if (__x0034_642 != null)
				newObject.__x0034_642 = (schemaLib._x0034_642)__x0034_642.clone();
			newObject.__x0034_645 = null;
			if (__x0034_645 != null)
				newObject.__x0034_645 = (schemaLib._x0034_645)__x0034_645.clone();
			newObject.__x0034_648 = null;
			if (__x0034_648 != null)
				newObject.__x0034_648 = (schemaLib._x0034_648)__x0034_648.clone();
			newObject.__x0034_651 = null;
			if (__x0034_651 != null)
				newObject.__x0034_651 = (schemaLib._x0034_651)__x0034_651.clone();
			newObject.__x0034_654 = null;
			if (__x0034_654 != null)
				newObject.__x0034_654 = (schemaLib._x0034_654)__x0034_654.clone();
	
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
	public schemaLib._x0034_602 get_x0034_602() {
		return __x0034_602;  
	}
	public void set_x0034_602(schemaLib._x0034_602 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_602 = null;
		else {
			setElementName(value.getBase(), "_x0034_602");
			__x0034_602 = value; 
		}
	}
	protected schemaLib._x0034_602 __x0034_602;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_615 get_x0034_615() {
		return __x0034_615;  
	}
	public void set_x0034_615(schemaLib._x0034_615 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_615 = null;
		else {
			setElementName(value.getBase(), "_x0034_615");
			__x0034_615 = value; 
		}
	}
	protected schemaLib._x0034_615 __x0034_615;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_633 get_x0034_633() {
		return __x0034_633;  
	}
	public void set_x0034_633(schemaLib._x0034_633 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_633 = null;
		else {
			setElementName(value.getBase(), "_x0034_633");
			__x0034_633 = value; 
		}
	}
	protected schemaLib._x0034_633 __x0034_633;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_636 get_x0034_636() {
		return __x0034_636;  
	}
	public void set_x0034_636(schemaLib._x0034_636 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_636 = null;
		else {
			setElementName(value.getBase(), "_x0034_636");
			__x0034_636 = value; 
		}
	}
	protected schemaLib._x0034_636 __x0034_636;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_639 get_x0034_639() {
		return __x0034_639;  
	}
	public void set_x0034_639(schemaLib._x0034_639 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_639 = null;
		else {
			setElementName(value.getBase(), "_x0034_639");
			__x0034_639 = value; 
		}
	}
	protected schemaLib._x0034_639 __x0034_639;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_642 get_x0034_642() {
		return __x0034_642;  
	}
	public void set_x0034_642(schemaLib._x0034_642 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_642 = null;
		else {
			setElementName(value.getBase(), "_x0034_642");
			__x0034_642 = value; 
		}
	}
	protected schemaLib._x0034_642 __x0034_642;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_645 get_x0034_645() {
		return __x0034_645;  
	}
	public void set_x0034_645(schemaLib._x0034_645 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_645 = null;
		else {
			setElementName(value.getBase(), "_x0034_645");
			__x0034_645 = value; 
		}
	}
	protected schemaLib._x0034_645 __x0034_645;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_648 get_x0034_648() {
		return __x0034_648;  
	}
	public void set_x0034_648(schemaLib._x0034_648 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_648 = null;
		else {
			setElementName(value.getBase(), "_x0034_648");
			__x0034_648 = value; 
		}
	}
	protected schemaLib._x0034_648 __x0034_648;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_651 get_x0034_651() {
		return __x0034_651;  
	}
	public void set_x0034_651(schemaLib._x0034_651 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_651 = null;
		else {
			setElementName(value.getBase(), "_x0034_651");
			__x0034_651 = value; 
		}
	}
	protected schemaLib._x0034_651 __x0034_651;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_654 get_x0034_654() {
		return __x0034_654;  
	}
	public void set_x0034_654(schemaLib._x0034_654 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_654 = null;
		else {
			setElementName(value.getBase(), "_x0034_654");
			__x0034_654 = value; 
		}
	}
	protected schemaLib._x0034_654 __x0034_654;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_108", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_602", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_602"), findSetterMethod("schemaLib._x0034_108", "set_x0034_602", "schemaLib._x0034_602"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_602.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_615", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_615"), findSetterMethod("schemaLib._x0034_108", "set_x0034_615", "schemaLib._x0034_615"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_615.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_633", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_633"), findSetterMethod("schemaLib._x0034_108", "set_x0034_633", "schemaLib._x0034_633"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_633.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_636", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_636"), findSetterMethod("schemaLib._x0034_108", "set_x0034_636", "schemaLib._x0034_636"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_636.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_639", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_639"), findSetterMethod("schemaLib._x0034_108", "set_x0034_639", "schemaLib._x0034_639"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_639.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_642", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_642"), findSetterMethod("schemaLib._x0034_108", "set_x0034_642", "schemaLib._x0034_642"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_642.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_645", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_645"), findSetterMethod("schemaLib._x0034_108", "set_x0034_645", "schemaLib._x0034_645"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_645.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_648", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_648"), findSetterMethod("schemaLib._x0034_108", "set_x0034_648", "schemaLib._x0034_648"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_648.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_651", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_651"), findSetterMethod("schemaLib._x0034_108", "set_x0034_651", "schemaLib._x0034_651"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_651.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_654", "", findGetterMethod("schemaLib._x0034_108", "get_x0034_654"), findSetterMethod("schemaLib._x0034_108", "set_x0034_654", "schemaLib._x0034_654"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_654.class)
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


