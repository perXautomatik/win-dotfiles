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
// This class represents the ComplexType _x0034_422
// </summary>
public class _x0034_422 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_422
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_422() {
		setElementName("_x0034_422");
		init();
	}
	public _x0034_422(String elementName) {
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
			__x0034_455 = null;
			__x0034_459 = null;
			__x0034_460 = null;
			__x0034_461 = null;
			__x0034_462 = null;
			__x0034_463 = null;
			__x0034_464 = null;
			__x0034_465 = null;
			__x0034_466 = null;
			__x0034_467 = null;
			__x0034_468 = null;
			__x0034_469 = null;
			__x0034_470 = null;

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
			schemaLib._x0034_422 newObject = (schemaLib._x0034_422)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_455 = null;
			if (__x0034_455 != null)
				newObject.__x0034_455 = (schemaLib._x0034_455)__x0034_455.clone();
			newObject.__x0034_459 = null;
			if (__x0034_459 != null)
				newObject.__x0034_459 = (schemaLib._x0034_459)__x0034_459.clone();
			newObject.__x0034_460 = null;
			if (__x0034_460 != null)
				newObject.__x0034_460 = (schemaLib._x0034_460)__x0034_460.clone();
			newObject.__x0034_461 = null;
			if (__x0034_461 != null)
				newObject.__x0034_461 = (schemaLib._x0034_461)__x0034_461.clone();
			newObject.__x0034_462 = null;
			if (__x0034_462 != null)
				newObject.__x0034_462 = (schemaLib._x0034_462)__x0034_462.clone();
			newObject.__x0034_463 = null;
			if (__x0034_463 != null)
				newObject.__x0034_463 = (schemaLib._x0034_463)__x0034_463.clone();
			newObject.__x0034_464 = null;
			if (__x0034_464 != null)
				newObject.__x0034_464 = (schemaLib._x0034_464B)__x0034_464.clone();
			newObject.__x0034_465 = null;
			if (__x0034_465 != null)
				newObject.__x0034_465 = (schemaLib._x0034_465)__x0034_465.clone();
			newObject.__x0034_466 = null;
			if (__x0034_466 != null)
				newObject.__x0034_466 = (schemaLib._x0034_466)__x0034_466.clone();
			newObject.__x0034_467 = null;
			if (__x0034_467 != null)
				newObject.__x0034_467 = (schemaLib._x0034_467)__x0034_467.clone();
			newObject.__x0034_468 = null;
			if (__x0034_468 != null)
				newObject.__x0034_468 = (schemaLib._x0034_468)__x0034_468.clone();
			newObject.__x0034_469 = null;
			if (__x0034_469 != null)
				newObject.__x0034_469 = (schemaLib._x0034_469)__x0034_469.clone();
			newObject.__x0034_470 = null;
			if (__x0034_470 != null)
				newObject.__x0034_470 = (schemaLib._x0034_470)__x0034_470.clone();
	
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
	public schemaLib._x0034_455 get_x0034_455() {
		return __x0034_455;  
	}
	public void set_x0034_455(schemaLib._x0034_455 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_455 = null;
		else {
			setElementName(value.getBase(), "_x0034_455");
			__x0034_455 = value; 
		}
	}
	protected schemaLib._x0034_455 __x0034_455;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_459 get_x0034_459() {
		return __x0034_459;  
	}
	public void set_x0034_459(schemaLib._x0034_459 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_459 = null;
		else {
			setElementName(value.getBase(), "_x0034_459");
			__x0034_459 = value; 
		}
	}
	protected schemaLib._x0034_459 __x0034_459;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_460 get_x0034_460() {
		return __x0034_460;  
	}
	public void set_x0034_460(schemaLib._x0034_460 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_460 = null;
		else {
			setElementName(value.getBase(), "_x0034_460");
			__x0034_460 = value; 
		}
	}
	protected schemaLib._x0034_460 __x0034_460;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_461 get_x0034_461() {
		return __x0034_461;  
	}
	public void set_x0034_461(schemaLib._x0034_461 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_461 = null;
		else {
			setElementName(value.getBase(), "_x0034_461");
			__x0034_461 = value; 
		}
	}
	protected schemaLib._x0034_461 __x0034_461;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_462 get_x0034_462() {
		return __x0034_462;  
	}
	public void set_x0034_462(schemaLib._x0034_462 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_462 = null;
		else {
			setElementName(value.getBase(), "_x0034_462");
			__x0034_462 = value; 
		}
	}
	protected schemaLib._x0034_462 __x0034_462;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_463 get_x0034_463() {
		return __x0034_463;  
	}
	public void set_x0034_463(schemaLib._x0034_463 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_463 = null;
		else {
			setElementName(value.getBase(), "_x0034_463");
			__x0034_463 = value; 
		}
	}
	protected schemaLib._x0034_463 __x0034_463;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_464B get_x0034_464() {
		return __x0034_464;  
	}
	public void set_x0034_464(schemaLib._x0034_464B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_464 = null;
		else {
			setElementName(value.getBase(), "_x0034_464");
			__x0034_464 = value; 
		}
	}
	protected schemaLib._x0034_464B __x0034_464;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_465 get_x0034_465() {
		return __x0034_465;  
	}
	public void set_x0034_465(schemaLib._x0034_465 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_465 = null;
		else {
			setElementName(value.getBase(), "_x0034_465");
			__x0034_465 = value; 
		}
	}
	protected schemaLib._x0034_465 __x0034_465;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_466 get_x0034_466() {
		return __x0034_466;  
	}
	public void set_x0034_466(schemaLib._x0034_466 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_466 = null;
		else {
			setElementName(value.getBase(), "_x0034_466");
			__x0034_466 = value; 
		}
	}
	protected schemaLib._x0034_466 __x0034_466;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_467 get_x0034_467() {
		return __x0034_467;  
	}
	public void set_x0034_467(schemaLib._x0034_467 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_467 = null;
		else {
			setElementName(value.getBase(), "_x0034_467");
			__x0034_467 = value; 
		}
	}
	protected schemaLib._x0034_467 __x0034_467;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_468 get_x0034_468() {
		return __x0034_468;  
	}
	public void set_x0034_468(schemaLib._x0034_468 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_468 = null;
		else {
			setElementName(value.getBase(), "_x0034_468");
			__x0034_468 = value; 
		}
	}
	protected schemaLib._x0034_468 __x0034_468;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_469 get_x0034_469() {
		return __x0034_469;  
	}
	public void set_x0034_469(schemaLib._x0034_469 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_469 = null;
		else {
			setElementName(value.getBase(), "_x0034_469");
			__x0034_469 = value; 
		}
	}
	protected schemaLib._x0034_469 __x0034_469;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_470 get_x0034_470() {
		return __x0034_470;  
	}
	public void set_x0034_470(schemaLib._x0034_470 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_470 = null;
		else {
			setElementName(value.getBase(), "_x0034_470");
			__x0034_470 = value; 
		}
	}
	protected schemaLib._x0034_470 __x0034_470;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_422", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_455", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_455"), findSetterMethod("schemaLib._x0034_422", "set_x0034_455", "schemaLib._x0034_455"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_455.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_459", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_459"), findSetterMethod("schemaLib._x0034_422", "set_x0034_459", "schemaLib._x0034_459"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_459.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_460", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_460"), findSetterMethod("schemaLib._x0034_422", "set_x0034_460", "schemaLib._x0034_460"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_460.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_461", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_461"), findSetterMethod("schemaLib._x0034_422", "set_x0034_461", "schemaLib._x0034_461"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_461.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_462", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_462"), findSetterMethod("schemaLib._x0034_422", "set_x0034_462", "schemaLib._x0034_462"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_462.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_463", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_463"), findSetterMethod("schemaLib._x0034_422", "set_x0034_463", "schemaLib._x0034_463"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_463.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_464", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_464"), findSetterMethod("schemaLib._x0034_422", "set_x0034_464", "schemaLib._x0034_464B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_464B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_465", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_465"), findSetterMethod("schemaLib._x0034_422", "set_x0034_465", "schemaLib._x0034_465"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_465.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_466", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_466"), findSetterMethod("schemaLib._x0034_422", "set_x0034_466", "schemaLib._x0034_466"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_466.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_467", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_467"), findSetterMethod("schemaLib._x0034_422", "set_x0034_467", "schemaLib._x0034_467"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_467.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_468", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_468"), findSetterMethod("schemaLib._x0034_422", "set_x0034_468", "schemaLib._x0034_468"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_468.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_469", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_469"), findSetterMethod("schemaLib._x0034_422", "set_x0034_469", "schemaLib._x0034_469"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_469.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_470", "", findGetterMethod("schemaLib._x0034_422", "get_x0034_470"), findSetterMethod("schemaLib._x0034_422", "set_x0034_470", "schemaLib._x0034_470"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_470.class)
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


