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
// This class represents the ComplexType _x0031_426
// </summary>
public class _x0031_426 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_426
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_426() {
		setElementName("_x0031_426");
		init();
	}
	public _x0031_426(String elementName) {
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
			__x0031_429 = null;
			__x0031_431 = null;
			__x0031_435 = null;
			__x0031_436 = null;
			__x0031_441 = null;
			__x0031_444 = null;
			__x0031_447 = null;
			__x0031_450 = null;
			__x0031_453 = null;
			__x0031_456 = null;
			__x0031_459 = null;

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
			schemaLib._x0031_426 newObject = (schemaLib._x0031_426)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_429 = null;
			if (__x0031_429 != null)
				newObject.__x0031_429 = (schemaLib._x0031_429A)__x0031_429.clone();
			newObject.__x0031_431 = null;
			if (__x0031_431 != null)
				newObject.__x0031_431 = (schemaLib._x0031_431A)__x0031_431.clone();
			newObject.__x0031_435 = null;
			if (__x0031_435 != null)
				newObject.__x0031_435 = (schemaLib._x0031_435)__x0031_435.clone();
			newObject.__x0031_436 = null;
			if (__x0031_436 != null)
				newObject.__x0031_436 = (schemaLib._x0031_436)__x0031_436.clone();
			newObject.__x0031_441 = null;
			if (__x0031_441 != null)
				newObject.__x0031_441 = (schemaLib._x0031_441A)__x0031_441.clone();
			newObject.__x0031_444 = null;
			if (__x0031_444 != null)
				newObject.__x0031_444 = (schemaLib._x0031_444A)__x0031_444.clone();
			newObject.__x0031_447 = null;
			if (__x0031_447 != null)
				newObject.__x0031_447 = (schemaLib._x0031_447A)__x0031_447.clone();
			newObject.__x0031_450 = null;
			if (__x0031_450 != null)
				newObject.__x0031_450 = (schemaLib._x0031_450A)__x0031_450.clone();
			newObject.__x0031_453 = null;
			if (__x0031_453 != null)
				newObject.__x0031_453 = (schemaLib._x0031_453)__x0031_453.clone();
			newObject.__x0031_456 = null;
			if (__x0031_456 != null)
				newObject.__x0031_456 = (schemaLib._x0031_456)__x0031_456.clone();
			newObject.__x0031_459 = null;
			if (__x0031_459 != null)
				newObject.__x0031_459 = (schemaLib._x0031_459)__x0031_459.clone();
	
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
	public schemaLib._x0031_429A get_x0031_429() {
		return __x0031_429;  
	}
	public void set_x0031_429(schemaLib._x0031_429A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_429 = null;
		else {
			setElementName(value.getBase(), "_x0031_429");
			__x0031_429 = value; 
		}
	}
	protected schemaLib._x0031_429A __x0031_429;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_431A get_x0031_431() {
		return __x0031_431;  
	}
	public void set_x0031_431(schemaLib._x0031_431A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_431 = null;
		else {
			setElementName(value.getBase(), "_x0031_431");
			__x0031_431 = value; 
		}
	}
	protected schemaLib._x0031_431A __x0031_431;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_435 get_x0031_435() {
		return __x0031_435;  
	}
	public void set_x0031_435(schemaLib._x0031_435 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_435 = null;
		else {
			setElementName(value.getBase(), "_x0031_435");
			__x0031_435 = value; 
		}
	}
	protected schemaLib._x0031_435 __x0031_435;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_436 get_x0031_436() {
		return __x0031_436;  
	}
	public void set_x0031_436(schemaLib._x0031_436 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_436 = null;
		else {
			setElementName(value.getBase(), "_x0031_436");
			__x0031_436 = value; 
		}
	}
	protected schemaLib._x0031_436 __x0031_436;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_441A get_x0031_441() {
		return __x0031_441;  
	}
	public void set_x0031_441(schemaLib._x0031_441A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_441 = null;
		else {
			setElementName(value.getBase(), "_x0031_441");
			__x0031_441 = value; 
		}
	}
	protected schemaLib._x0031_441A __x0031_441;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_444A get_x0031_444() {
		return __x0031_444;  
	}
	public void set_x0031_444(schemaLib._x0031_444A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_444 = null;
		else {
			setElementName(value.getBase(), "_x0031_444");
			__x0031_444 = value; 
		}
	}
	protected schemaLib._x0031_444A __x0031_444;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_447A get_x0031_447() {
		return __x0031_447;  
	}
	public void set_x0031_447(schemaLib._x0031_447A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_447 = null;
		else {
			setElementName(value.getBase(), "_x0031_447");
			__x0031_447 = value; 
		}
	}
	protected schemaLib._x0031_447A __x0031_447;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_450A get_x0031_450() {
		return __x0031_450;  
	}
	public void set_x0031_450(schemaLib._x0031_450A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_450 = null;
		else {
			setElementName(value.getBase(), "_x0031_450");
			__x0031_450 = value; 
		}
	}
	protected schemaLib._x0031_450A __x0031_450;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_453 get_x0031_453() {
		return __x0031_453;  
	}
	public void set_x0031_453(schemaLib._x0031_453 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_453 = null;
		else {
			setElementName(value.getBase(), "_x0031_453");
			__x0031_453 = value; 
		}
	}
	protected schemaLib._x0031_453 __x0031_453;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_456 get_x0031_456() {
		return __x0031_456;  
	}
	public void set_x0031_456(schemaLib._x0031_456 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_456 = null;
		else {
			setElementName(value.getBase(), "_x0031_456");
			__x0031_456 = value; 
		}
	}
	protected schemaLib._x0031_456 __x0031_456;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_459 get_x0031_459() {
		return __x0031_459;  
	}
	public void set_x0031_459(schemaLib._x0031_459 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_459 = null;
		else {
			setElementName(value.getBase(), "_x0031_459");
			__x0031_459 = value; 
		}
	}
	protected schemaLib._x0031_459 __x0031_459;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_426", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_429", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_429"), findSetterMethod("schemaLib._x0031_426", "set_x0031_429", "schemaLib._x0031_429A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_429A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_431", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_431"), findSetterMethod("schemaLib._x0031_426", "set_x0031_431", "schemaLib._x0031_431A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_431A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_435", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_435"), findSetterMethod("schemaLib._x0031_426", "set_x0031_435", "schemaLib._x0031_435"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_435.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_436", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_436"), findSetterMethod("schemaLib._x0031_426", "set_x0031_436", "schemaLib._x0031_436"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_436.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_441", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_441"), findSetterMethod("schemaLib._x0031_426", "set_x0031_441", "schemaLib._x0031_441A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_441A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_444", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_444"), findSetterMethod("schemaLib._x0031_426", "set_x0031_444", "schemaLib._x0031_444A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_444A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_447", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_447"), findSetterMethod("schemaLib._x0031_426", "set_x0031_447", "schemaLib._x0031_447A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_447A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_450", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_450"), findSetterMethod("schemaLib._x0031_426", "set_x0031_450", "schemaLib._x0031_450A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_450A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_453", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_453"), findSetterMethod("schemaLib._x0031_426", "set_x0031_453", "schemaLib._x0031_453"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_453.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_456", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_456"), findSetterMethod("schemaLib._x0031_426", "set_x0031_456", "schemaLib._x0031_456"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_456.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_459", "", findGetterMethod("schemaLib._x0031_426", "get_x0031_459"), findSetterMethod("schemaLib._x0031_426", "set_x0031_459", "schemaLib._x0031_459"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_459.class)
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


