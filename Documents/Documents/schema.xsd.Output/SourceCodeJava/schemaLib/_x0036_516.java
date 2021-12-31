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
// This class represents the ComplexType _x0036_516
// </summary>
public class _x0036_516 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_516
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_516() {
		setElementName("_x0036_516");
		init();
	}
	public _x0036_516(String elementName) {
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
			__x0036_529 = null;
			__x0036_540 = null;
			__x0036_572 = null;
			__x0036_587 = null;
			__x0036_604 = null;
			__x0036_618 = null;
			__x0036_629 = null;
			__x0036_635 = null;
			__x0036_641 = null;
			__x0036_648 = null;
			__x0036_651 = null;
			__x0036_654 = null;
			__x0036_657 = null;
			__x0036_660 = null;

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
			schemaLib._x0036_516 newObject = (schemaLib._x0036_516)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_529 = null;
			if (__x0036_529 != null)
				newObject.__x0036_529 = (schemaLib._x0036_529)__x0036_529.clone();
			newObject.__x0036_540 = null;
			if (__x0036_540 != null)
				newObject.__x0036_540 = (schemaLib._x0036_540)__x0036_540.clone();
			newObject.__x0036_572 = null;
			if (__x0036_572 != null)
				newObject.__x0036_572 = (schemaLib._x0036_572)__x0036_572.clone();
			newObject.__x0036_587 = null;
			if (__x0036_587 != null)
				newObject.__x0036_587 = (schemaLib._x0036_587)__x0036_587.clone();
			newObject.__x0036_604 = null;
			if (__x0036_604 != null)
				newObject.__x0036_604 = (schemaLib._x0036_604)__x0036_604.clone();
			newObject.__x0036_618 = null;
			if (__x0036_618 != null)
				newObject.__x0036_618 = (schemaLib._x0036_618)__x0036_618.clone();
			newObject.__x0036_629 = null;
			if (__x0036_629 != null)
				newObject.__x0036_629 = (schemaLib._x0036_629)__x0036_629.clone();
			newObject.__x0036_635 = null;
			if (__x0036_635 != null)
				newObject.__x0036_635 = (schemaLib._x0036_635)__x0036_635.clone();
			newObject.__x0036_641 = null;
			if (__x0036_641 != null)
				newObject.__x0036_641 = (schemaLib._x0036_641B)__x0036_641.clone();
			newObject.__x0036_648 = null;
			if (__x0036_648 != null)
				newObject.__x0036_648 = (schemaLib._x0036_648)__x0036_648.clone();
			newObject.__x0036_651 = null;
			if (__x0036_651 != null)
				newObject.__x0036_651 = (schemaLib._x0036_651)__x0036_651.clone();
			newObject.__x0036_654 = null;
			if (__x0036_654 != null)
				newObject.__x0036_654 = (schemaLib._x0036_654)__x0036_654.clone();
			newObject.__x0036_657 = null;
			if (__x0036_657 != null)
				newObject.__x0036_657 = (schemaLib._x0036_657)__x0036_657.clone();
			newObject.__x0036_660 = null;
			if (__x0036_660 != null)
				newObject.__x0036_660 = (schemaLib._x0036_660)__x0036_660.clone();
	
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
	public schemaLib._x0036_529 get_x0036_529() {
		return __x0036_529;  
	}
	public void set_x0036_529(schemaLib._x0036_529 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_529 = null;
		else {
			setElementName(value.getBase(), "_x0036_529");
			__x0036_529 = value; 
		}
	}
	protected schemaLib._x0036_529 __x0036_529;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_540 get_x0036_540() {
		return __x0036_540;  
	}
	public void set_x0036_540(schemaLib._x0036_540 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_540 = null;
		else {
			setElementName(value.getBase(), "_x0036_540");
			__x0036_540 = value; 
		}
	}
	protected schemaLib._x0036_540 __x0036_540;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_572 get_x0036_572() {
		return __x0036_572;  
	}
	public void set_x0036_572(schemaLib._x0036_572 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_572 = null;
		else {
			setElementName(value.getBase(), "_x0036_572");
			__x0036_572 = value; 
		}
	}
	protected schemaLib._x0036_572 __x0036_572;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_587 get_x0036_587() {
		return __x0036_587;  
	}
	public void set_x0036_587(schemaLib._x0036_587 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_587 = null;
		else {
			setElementName(value.getBase(), "_x0036_587");
			__x0036_587 = value; 
		}
	}
	protected schemaLib._x0036_587 __x0036_587;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_604 get_x0036_604() {
		return __x0036_604;  
	}
	public void set_x0036_604(schemaLib._x0036_604 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_604 = null;
		else {
			setElementName(value.getBase(), "_x0036_604");
			__x0036_604 = value; 
		}
	}
	protected schemaLib._x0036_604 __x0036_604;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_618 get_x0036_618() {
		return __x0036_618;  
	}
	public void set_x0036_618(schemaLib._x0036_618 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_618 = null;
		else {
			setElementName(value.getBase(), "_x0036_618");
			__x0036_618 = value; 
		}
	}
	protected schemaLib._x0036_618 __x0036_618;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_629 get_x0036_629() {
		return __x0036_629;  
	}
	public void set_x0036_629(schemaLib._x0036_629 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_629 = null;
		else {
			setElementName(value.getBase(), "_x0036_629");
			__x0036_629 = value; 
		}
	}
	protected schemaLib._x0036_629 __x0036_629;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_635 get_x0036_635() {
		return __x0036_635;  
	}
	public void set_x0036_635(schemaLib._x0036_635 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_635 = null;
		else {
			setElementName(value.getBase(), "_x0036_635");
			__x0036_635 = value; 
		}
	}
	protected schemaLib._x0036_635 __x0036_635;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_641B get_x0036_641() {
		return __x0036_641;  
	}
	public void set_x0036_641(schemaLib._x0036_641B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_641 = null;
		else {
			setElementName(value.getBase(), "_x0036_641");
			__x0036_641 = value; 
		}
	}
	protected schemaLib._x0036_641B __x0036_641;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_648 get_x0036_648() {
		return __x0036_648;  
	}
	public void set_x0036_648(schemaLib._x0036_648 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_648 = null;
		else {
			setElementName(value.getBase(), "_x0036_648");
			__x0036_648 = value; 
		}
	}
	protected schemaLib._x0036_648 __x0036_648;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_651 get_x0036_651() {
		return __x0036_651;  
	}
	public void set_x0036_651(schemaLib._x0036_651 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_651 = null;
		else {
			setElementName(value.getBase(), "_x0036_651");
			__x0036_651 = value; 
		}
	}
	protected schemaLib._x0036_651 __x0036_651;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_654 get_x0036_654() {
		return __x0036_654;  
	}
	public void set_x0036_654(schemaLib._x0036_654 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_654 = null;
		else {
			setElementName(value.getBase(), "_x0036_654");
			__x0036_654 = value; 
		}
	}
	protected schemaLib._x0036_654 __x0036_654;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_657 get_x0036_657() {
		return __x0036_657;  
	}
	public void set_x0036_657(schemaLib._x0036_657 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_657 = null;
		else {
			setElementName(value.getBase(), "_x0036_657");
			__x0036_657 = value; 
		}
	}
	protected schemaLib._x0036_657 __x0036_657;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_660 get_x0036_660() {
		return __x0036_660;  
	}
	public void set_x0036_660(schemaLib._x0036_660 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_660 = null;
		else {
			setElementName(value.getBase(), "_x0036_660");
			__x0036_660 = value; 
		}
	}
	protected schemaLib._x0036_660 __x0036_660;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_516", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_529", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_529"), findSetterMethod("schemaLib._x0036_516", "set_x0036_529", "schemaLib._x0036_529"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_529.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_540", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_540"), findSetterMethod("schemaLib._x0036_516", "set_x0036_540", "schemaLib._x0036_540"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_540.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_572", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_572"), findSetterMethod("schemaLib._x0036_516", "set_x0036_572", "schemaLib._x0036_572"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_572.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_587", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_587"), findSetterMethod("schemaLib._x0036_516", "set_x0036_587", "schemaLib._x0036_587"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_587.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_604", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_604"), findSetterMethod("schemaLib._x0036_516", "set_x0036_604", "schemaLib._x0036_604"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_604.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_618", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_618"), findSetterMethod("schemaLib._x0036_516", "set_x0036_618", "schemaLib._x0036_618"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_618.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_629", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_629"), findSetterMethod("schemaLib._x0036_516", "set_x0036_629", "schemaLib._x0036_629"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_629.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_635", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_635"), findSetterMethod("schemaLib._x0036_516", "set_x0036_635", "schemaLib._x0036_635"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_635.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_641", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_641"), findSetterMethod("schemaLib._x0036_516", "set_x0036_641", "schemaLib._x0036_641B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_641B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_648", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_648"), findSetterMethod("schemaLib._x0036_516", "set_x0036_648", "schemaLib._x0036_648"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_648.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_651", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_651"), findSetterMethod("schemaLib._x0036_516", "set_x0036_651", "schemaLib._x0036_651"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_651.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_654", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_654"), findSetterMethod("schemaLib._x0036_516", "set_x0036_654", "schemaLib._x0036_654"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_654.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_657", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_657"), findSetterMethod("schemaLib._x0036_516", "set_x0036_657", "schemaLib._x0036_657"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_657.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_660", "", findGetterMethod("schemaLib._x0036_516", "get_x0036_660"), findSetterMethod("schemaLib._x0036_516", "set_x0036_660", "schemaLib._x0036_660"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_660.class)
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


