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
// This class represents the ComplexType _x0031_3371
// </summary>
public class _x0031_3371 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_3371
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_3371() {
		setElementName("_x0031_3371");
		init();
	}
	public _x0031_3371(String elementName) {
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
			__x0031_3379 = null;
			__x0031_3413 = null;
			__x0031_3423 = null;
			__x0031_3426 = null;
			__x0031_3441 = null;
			__x0031_3456 = null;
			__x0031_3462 = null;
			__x0031_3468 = null;
			__x0031_3472 = null;
			__x0031_3475 = null;
			__x0031_3478 = null;
			__x0031_3483 = null;
			__x0031_3486 = null;
			__x0031_3492 = null;
			__x0031_3495 = null;

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
			schemaLib._x0031_3371 newObject = (schemaLib._x0031_3371)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_3379 = null;
			if (__x0031_3379 != null)
				newObject.__x0031_3379 = (schemaLib._x0031_3379)__x0031_3379.clone();
			newObject.__x0031_3413 = null;
			if (__x0031_3413 != null)
				newObject.__x0031_3413 = (schemaLib._x0031_3413)__x0031_3413.clone();
			newObject.__x0031_3423 = null;
			if (__x0031_3423 != null)
				newObject.__x0031_3423 = (schemaLib._x0031_3423)__x0031_3423.clone();
			newObject.__x0031_3426 = null;
			if (__x0031_3426 != null)
				newObject.__x0031_3426 = (schemaLib._x0031_3426)__x0031_3426.clone();
			newObject.__x0031_3441 = null;
			if (__x0031_3441 != null)
				newObject.__x0031_3441 = (schemaLib._x0031_3441)__x0031_3441.clone();
			newObject.__x0031_3456 = null;
			if (__x0031_3456 != null)
				newObject.__x0031_3456 = (schemaLib._x0031_3456)__x0031_3456.clone();
			newObject.__x0031_3462 = null;
			if (__x0031_3462 != null)
				newObject.__x0031_3462 = (schemaLib._x0031_3462)__x0031_3462.clone();
			newObject.__x0031_3468 = null;
			if (__x0031_3468 != null)
				newObject.__x0031_3468 = (schemaLib._x0031_3468)__x0031_3468.clone();
			newObject.__x0031_3472 = null;
			if (__x0031_3472 != null)
				newObject.__x0031_3472 = (schemaLib._x0031_3472)__x0031_3472.clone();
			newObject.__x0031_3475 = null;
			if (__x0031_3475 != null)
				newObject.__x0031_3475 = (schemaLib._x0031_3475)__x0031_3475.clone();
			newObject.__x0031_3478 = null;
			if (__x0031_3478 != null)
				newObject.__x0031_3478 = (schemaLib._x0031_3478)__x0031_3478.clone();
			newObject.__x0031_3483 = null;
			if (__x0031_3483 != null)
				newObject.__x0031_3483 = (schemaLib._x0031_3483)__x0031_3483.clone();
			newObject.__x0031_3486 = null;
			if (__x0031_3486 != null)
				newObject.__x0031_3486 = (schemaLib._x0031_3486)__x0031_3486.clone();
			newObject.__x0031_3492 = null;
			if (__x0031_3492 != null)
				newObject.__x0031_3492 = (schemaLib._x0031_3492)__x0031_3492.clone();
			newObject.__x0031_3495 = null;
			if (__x0031_3495 != null)
				newObject.__x0031_3495 = (schemaLib._x0031_3495)__x0031_3495.clone();
	
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
	public schemaLib._x0031_3379 get_x0031_3379() {
		return __x0031_3379;  
	}
	public void set_x0031_3379(schemaLib._x0031_3379 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3379 = null;
		else {
			setElementName(value.getBase(), "_x0031_3379");
			__x0031_3379 = value; 
		}
	}
	protected schemaLib._x0031_3379 __x0031_3379;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3413 get_x0031_3413() {
		return __x0031_3413;  
	}
	public void set_x0031_3413(schemaLib._x0031_3413 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3413 = null;
		else {
			setElementName(value.getBase(), "_x0031_3413");
			__x0031_3413 = value; 
		}
	}
	protected schemaLib._x0031_3413 __x0031_3413;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3423 get_x0031_3423() {
		return __x0031_3423;  
	}
	public void set_x0031_3423(schemaLib._x0031_3423 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3423 = null;
		else {
			setElementName(value.getBase(), "_x0031_3423");
			__x0031_3423 = value; 
		}
	}
	protected schemaLib._x0031_3423 __x0031_3423;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3426 get_x0031_3426() {
		return __x0031_3426;  
	}
	public void set_x0031_3426(schemaLib._x0031_3426 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3426 = null;
		else {
			setElementName(value.getBase(), "_x0031_3426");
			__x0031_3426 = value; 
		}
	}
	protected schemaLib._x0031_3426 __x0031_3426;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3441 get_x0031_3441() {
		return __x0031_3441;  
	}
	public void set_x0031_3441(schemaLib._x0031_3441 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3441 = null;
		else {
			setElementName(value.getBase(), "_x0031_3441");
			__x0031_3441 = value; 
		}
	}
	protected schemaLib._x0031_3441 __x0031_3441;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3456 get_x0031_3456() {
		return __x0031_3456;  
	}
	public void set_x0031_3456(schemaLib._x0031_3456 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3456 = null;
		else {
			setElementName(value.getBase(), "_x0031_3456");
			__x0031_3456 = value; 
		}
	}
	protected schemaLib._x0031_3456 __x0031_3456;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3462 get_x0031_3462() {
		return __x0031_3462;  
	}
	public void set_x0031_3462(schemaLib._x0031_3462 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3462 = null;
		else {
			setElementName(value.getBase(), "_x0031_3462");
			__x0031_3462 = value; 
		}
	}
	protected schemaLib._x0031_3462 __x0031_3462;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3468 get_x0031_3468() {
		return __x0031_3468;  
	}
	public void set_x0031_3468(schemaLib._x0031_3468 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3468 = null;
		else {
			setElementName(value.getBase(), "_x0031_3468");
			__x0031_3468 = value; 
		}
	}
	protected schemaLib._x0031_3468 __x0031_3468;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3472 get_x0031_3472() {
		return __x0031_3472;  
	}
	public void set_x0031_3472(schemaLib._x0031_3472 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3472 = null;
		else {
			setElementName(value.getBase(), "_x0031_3472");
			__x0031_3472 = value; 
		}
	}
	protected schemaLib._x0031_3472 __x0031_3472;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3475 get_x0031_3475() {
		return __x0031_3475;  
	}
	public void set_x0031_3475(schemaLib._x0031_3475 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3475 = null;
		else {
			setElementName(value.getBase(), "_x0031_3475");
			__x0031_3475 = value; 
		}
	}
	protected schemaLib._x0031_3475 __x0031_3475;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3478 get_x0031_3478() {
		return __x0031_3478;  
	}
	public void set_x0031_3478(schemaLib._x0031_3478 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3478 = null;
		else {
			setElementName(value.getBase(), "_x0031_3478");
			__x0031_3478 = value; 
		}
	}
	protected schemaLib._x0031_3478 __x0031_3478;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3483 get_x0031_3483() {
		return __x0031_3483;  
	}
	public void set_x0031_3483(schemaLib._x0031_3483 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3483 = null;
		else {
			setElementName(value.getBase(), "_x0031_3483");
			__x0031_3483 = value; 
		}
	}
	protected schemaLib._x0031_3483 __x0031_3483;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3486 get_x0031_3486() {
		return __x0031_3486;  
	}
	public void set_x0031_3486(schemaLib._x0031_3486 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3486 = null;
		else {
			setElementName(value.getBase(), "_x0031_3486");
			__x0031_3486 = value; 
		}
	}
	protected schemaLib._x0031_3486 __x0031_3486;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3492 get_x0031_3492() {
		return __x0031_3492;  
	}
	public void set_x0031_3492(schemaLib._x0031_3492 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3492 = null;
		else {
			setElementName(value.getBase(), "_x0031_3492");
			__x0031_3492 = value; 
		}
	}
	protected schemaLib._x0031_3492 __x0031_3492;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3495 get_x0031_3495() {
		return __x0031_3495;  
	}
	public void set_x0031_3495(schemaLib._x0031_3495 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3495 = null;
		else {
			setElementName(value.getBase(), "_x0031_3495");
			__x0031_3495 = value; 
		}
	}
	protected schemaLib._x0031_3495 __x0031_3495;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_3371", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3379", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3379"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3379", "schemaLib._x0031_3379"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3379.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3413", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3413"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3413", "schemaLib._x0031_3413"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3413.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3423", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3423"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3423", "schemaLib._x0031_3423"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3423.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3426", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3426"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3426", "schemaLib._x0031_3426"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3426.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3441", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3441"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3441", "schemaLib._x0031_3441"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3441.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3456", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3456"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3456", "schemaLib._x0031_3456"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3456.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3462", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3462"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3462", "schemaLib._x0031_3462"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3462.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3468", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3468"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3468", "schemaLib._x0031_3468"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3468.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3472", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3472"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3472", "schemaLib._x0031_3472"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3472.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3475", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3475"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3475", "schemaLib._x0031_3475"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3475.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3478", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3478"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3478", "schemaLib._x0031_3478"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3478.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3483", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3483"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3483", "schemaLib._x0031_3483"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3483.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3486", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3486"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3486", "schemaLib._x0031_3486"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3486.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3492", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3492"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3492", "schemaLib._x0031_3492"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3492.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3495", "", findGetterMethod("schemaLib._x0031_3371", "get_x0031_3495"), findSetterMethod("schemaLib._x0031_3371", "set_x0031_3495", "schemaLib._x0031_3495"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3495.class)
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


