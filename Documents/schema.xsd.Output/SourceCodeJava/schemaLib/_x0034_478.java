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
// This class represents the ComplexType _x0034_478
// </summary>
public class _x0034_478 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_478
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_478() {
		setElementName("_x0034_478");
		init();
	}
	public _x0034_478(String elementName) {
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
			__x0034_696 = null;
			__x0034_699 = null;
			__x0034_700 = null;
			__x0034_701 = null;
			__x0034_704 = null;
			__x0034_705 = null;
			__x0034_715 = null;
			__x0034_717 = null;
			__x0034_793 = null;
			__x0034_817 = null;
			__x0034_822 = null;
			__x0034_849 = null;
			__x0034_859 = null;
			__x0034_860 = null;
			__x0034_861 = null;
			__x0034_550 = null;
			__x0034_551 = null;
			__x0034_552 = null;

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
			schemaLib._x0034_478 newObject = (schemaLib._x0034_478)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_696 = null;
			if (__x0034_696 != null)
				newObject.__x0034_696 = (schemaLib._x0034_696)__x0034_696.clone();
			newObject.__x0034_699 = null;
			if (__x0034_699 != null)
				newObject.__x0034_699 = (schemaLib._x0034_699)__x0034_699.clone();
			newObject.__x0034_700 = null;
			if (__x0034_700 != null)
				newObject.__x0034_700 = (schemaLib._x0034_700A)__x0034_700.clone();
			newObject.__x0034_701 = null;
			if (__x0034_701 != null)
				newObject.__x0034_701 = (schemaLib._x0034_701)__x0034_701.clone();
			newObject.__x0034_704 = null;
			if (__x0034_704 != null)
				newObject.__x0034_704 = (schemaLib._x0034_704)__x0034_704.clone();
			newObject.__x0034_705 = null;
			if (__x0034_705 != null)
				newObject.__x0034_705 = (schemaLib._x0034_705)__x0034_705.clone();
			newObject.__x0034_715 = null;
			if (__x0034_715 != null)
				newObject.__x0034_715 = (schemaLib._x0034_715B)__x0034_715.clone();
			newObject.__x0034_717 = null;
			if (__x0034_717 != null)
				newObject.__x0034_717 = (schemaLib._x0034_717A)__x0034_717.clone();
			newObject.__x0034_793 = null;
			if (__x0034_793 != null)
				newObject.__x0034_793 = (schemaLib._x0034_793)__x0034_793.clone();
			newObject.__x0034_817 = null;
			if (__x0034_817 != null)
				newObject.__x0034_817 = (schemaLib._x0034_817)__x0034_817.clone();
			newObject.__x0034_822 = null;
			if (__x0034_822 != null)
				newObject.__x0034_822 = (schemaLib._x0034_822)__x0034_822.clone();
			newObject.__x0034_849 = null;
			if (__x0034_849 != null)
				newObject.__x0034_849 = (schemaLib._x0034_849B)__x0034_849.clone();
			newObject.__x0034_859 = null;
			if (__x0034_859 != null)
				newObject.__x0034_859 = (schemaLib._x0034_859)__x0034_859.clone();
			newObject.__x0034_860 = null;
			if (__x0034_860 != null)
				newObject.__x0034_860 = (schemaLib._x0034_860)__x0034_860.clone();
			newObject.__x0034_861 = null;
			if (__x0034_861 != null)
				newObject.__x0034_861 = (schemaLib._x0034_861)__x0034_861.clone();
			newObject.__x0034_550 = null;
			if (__x0034_550 != null)
				newObject.__x0034_550 = (schemaLib._x0034_550)__x0034_550.clone();
			newObject.__x0034_551 = null;
			if (__x0034_551 != null)
				newObject.__x0034_551 = (schemaLib._x0034_551)__x0034_551.clone();
			newObject.__x0034_552 = null;
			if (__x0034_552 != null)
				newObject.__x0034_552 = (schemaLib._x0034_552)__x0034_552.clone();
	
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
	public schemaLib._x0034_696 get_x0034_696() {
		return __x0034_696;  
	}
	public void set_x0034_696(schemaLib._x0034_696 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_696 = null;
		else {
			setElementName(value.getBase(), "_x0034_696");
			__x0034_696 = value; 
		}
	}
	protected schemaLib._x0034_696 __x0034_696;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_699 get_x0034_699() {
		return __x0034_699;  
	}
	public void set_x0034_699(schemaLib._x0034_699 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_699 = null;
		else {
			setElementName(value.getBase(), "_x0034_699");
			__x0034_699 = value; 
		}
	}
	protected schemaLib._x0034_699 __x0034_699;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_700A get_x0034_700() {
		return __x0034_700;  
	}
	public void set_x0034_700(schemaLib._x0034_700A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_700 = null;
		else {
			setElementName(value.getBase(), "_x0034_700");
			__x0034_700 = value; 
		}
	}
	protected schemaLib._x0034_700A __x0034_700;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_701 get_x0034_701() {
		return __x0034_701;  
	}
	public void set_x0034_701(schemaLib._x0034_701 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_701 = null;
		else {
			setElementName(value.getBase(), "_x0034_701");
			__x0034_701 = value; 
		}
	}
	protected schemaLib._x0034_701 __x0034_701;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_704 get_x0034_704() {
		return __x0034_704;  
	}
	public void set_x0034_704(schemaLib._x0034_704 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_704 = null;
		else {
			setElementName(value.getBase(), "_x0034_704");
			__x0034_704 = value; 
		}
	}
	protected schemaLib._x0034_704 __x0034_704;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_705 get_x0034_705() {
		return __x0034_705;  
	}
	public void set_x0034_705(schemaLib._x0034_705 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_705 = null;
		else {
			setElementName(value.getBase(), "_x0034_705");
			__x0034_705 = value; 
		}
	}
	protected schemaLib._x0034_705 __x0034_705;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_715B get_x0034_715() {
		return __x0034_715;  
	}
	public void set_x0034_715(schemaLib._x0034_715B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_715 = null;
		else {
			setElementName(value.getBase(), "_x0034_715");
			__x0034_715 = value; 
		}
	}
	protected schemaLib._x0034_715B __x0034_715;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_717A get_x0034_717() {
		return __x0034_717;  
	}
	public void set_x0034_717(schemaLib._x0034_717A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_717 = null;
		else {
			setElementName(value.getBase(), "_x0034_717");
			__x0034_717 = value; 
		}
	}
	protected schemaLib._x0034_717A __x0034_717;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_793 get_x0034_793() {
		return __x0034_793;  
	}
	public void set_x0034_793(schemaLib._x0034_793 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_793 = null;
		else {
			setElementName(value.getBase(), "_x0034_793");
			__x0034_793 = value; 
		}
	}
	protected schemaLib._x0034_793 __x0034_793;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_817 get_x0034_817() {
		return __x0034_817;  
	}
	public void set_x0034_817(schemaLib._x0034_817 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_817 = null;
		else {
			setElementName(value.getBase(), "_x0034_817");
			__x0034_817 = value; 
		}
	}
	protected schemaLib._x0034_817 __x0034_817;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_822 get_x0034_822() {
		return __x0034_822;  
	}
	public void set_x0034_822(schemaLib._x0034_822 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_822 = null;
		else {
			setElementName(value.getBase(), "_x0034_822");
			__x0034_822 = value; 
		}
	}
	protected schemaLib._x0034_822 __x0034_822;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_849B get_x0034_849() {
		return __x0034_849;  
	}
	public void set_x0034_849(schemaLib._x0034_849B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_849 = null;
		else {
			setElementName(value.getBase(), "_x0034_849");
			__x0034_849 = value; 
		}
	}
	protected schemaLib._x0034_849B __x0034_849;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_859 get_x0034_859() {
		return __x0034_859;  
	}
	public void set_x0034_859(schemaLib._x0034_859 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_859 = null;
		else {
			setElementName(value.getBase(), "_x0034_859");
			__x0034_859 = value; 
		}
	}
	protected schemaLib._x0034_859 __x0034_859;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_860 get_x0034_860() {
		return __x0034_860;  
	}
	public void set_x0034_860(schemaLib._x0034_860 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_860 = null;
		else {
			setElementName(value.getBase(), "_x0034_860");
			__x0034_860 = value; 
		}
	}
	protected schemaLib._x0034_860 __x0034_860;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_861 get_x0034_861() {
		return __x0034_861;  
	}
	public void set_x0034_861(schemaLib._x0034_861 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_861 = null;
		else {
			setElementName(value.getBase(), "_x0034_861");
			__x0034_861 = value; 
		}
	}
	protected schemaLib._x0034_861 __x0034_861;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_550 get_x0034_550() {
		return __x0034_550;  
	}
	public void set_x0034_550(schemaLib._x0034_550 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_550 = null;
		else {
			setElementName(value.getBase(), "_x0034_550");
			__x0034_550 = value; 
		}
	}
	protected schemaLib._x0034_550 __x0034_550;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_551 get_x0034_551() {
		return __x0034_551;  
	}
	public void set_x0034_551(schemaLib._x0034_551 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_551 = null;
		else {
			setElementName(value.getBase(), "_x0034_551");
			__x0034_551 = value; 
		}
	}
	protected schemaLib._x0034_551 __x0034_551;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_552 get_x0034_552() {
		return __x0034_552;  
	}
	public void set_x0034_552(schemaLib._x0034_552 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_552 = null;
		else {
			setElementName(value.getBase(), "_x0034_552");
			__x0034_552 = value; 
		}
	}
	protected schemaLib._x0034_552 __x0034_552;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_478", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_696", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_696"), findSetterMethod("schemaLib._x0034_478", "set_x0034_696", "schemaLib._x0034_696"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_696.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_699", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_699"), findSetterMethod("schemaLib._x0034_478", "set_x0034_699", "schemaLib._x0034_699"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_699.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_700", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_700"), findSetterMethod("schemaLib._x0034_478", "set_x0034_700", "schemaLib._x0034_700A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_700A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_701", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_701"), findSetterMethod("schemaLib._x0034_478", "set_x0034_701", "schemaLib._x0034_701"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_701.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_704", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_704"), findSetterMethod("schemaLib._x0034_478", "set_x0034_704", "schemaLib._x0034_704"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_704.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_705", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_705"), findSetterMethod("schemaLib._x0034_478", "set_x0034_705", "schemaLib._x0034_705"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_705.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_715", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_715"), findSetterMethod("schemaLib._x0034_478", "set_x0034_715", "schemaLib._x0034_715B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_715B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_717", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_717"), findSetterMethod("schemaLib._x0034_478", "set_x0034_717", "schemaLib._x0034_717A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_717A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_793", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_793"), findSetterMethod("schemaLib._x0034_478", "set_x0034_793", "schemaLib._x0034_793"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_793.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_817", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_817"), findSetterMethod("schemaLib._x0034_478", "set_x0034_817", "schemaLib._x0034_817"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_817.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_822", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_822"), findSetterMethod("schemaLib._x0034_478", "set_x0034_822", "schemaLib._x0034_822"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_822.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_849", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_849"), findSetterMethod("schemaLib._x0034_478", "set_x0034_849", "schemaLib._x0034_849B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_849B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_859", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_859"), findSetterMethod("schemaLib._x0034_478", "set_x0034_859", "schemaLib._x0034_859"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_859.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_860", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_860"), findSetterMethod("schemaLib._x0034_478", "set_x0034_860", "schemaLib._x0034_860"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_860.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_861", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_861"), findSetterMethod("schemaLib._x0034_478", "set_x0034_861", "schemaLib._x0034_861"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_861.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_550", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_550"), findSetterMethod("schemaLib._x0034_478", "set_x0034_550", "schemaLib._x0034_550"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_550.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_551", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_551"), findSetterMethod("schemaLib._x0034_478", "set_x0034_551", "schemaLib._x0034_551"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_551.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_552", "", findGetterMethod("schemaLib._x0034_478", "get_x0034_552"), findSetterMethod("schemaLib._x0034_478", "set_x0034_552", "schemaLib._x0034_552"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_552.class)
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


