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
// This class represents the ComplexType _x0031_162
// </summary>
public class _x0031_162 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_162
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_162() {
		setElementName("_x0031_162");
		init();
	}
	public _x0031_162(String elementName) {
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
			__x0031_438 = null;
			__x0031_439 = null;
			__x0031_440 = null;
			__x0031_441 = null;
			__x0031_442 = null;
			__x0031_444 = null;
			__x0031_445 = null;
			__x0031_446 = null;
			__x0031_447 = null;
			__x0031_448 = null;
			__x0031_449 = null;
			__x0031_450 = null;
			__x0031_451 = null;
			__x0031_473 = null;
			__x0031_474 = null;

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
			schemaLib._x0031_162 newObject = (schemaLib._x0031_162)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_438 = null;
			if (__x0031_438 != null)
				newObject.__x0031_438 = (schemaLib._x0031_438)__x0031_438.clone();
			newObject.__x0031_439 = null;
			if (__x0031_439 != null)
				newObject.__x0031_439 = (schemaLib._x0031_439)__x0031_439.clone();
			newObject.__x0031_440 = null;
			if (__x0031_440 != null)
				newObject.__x0031_440 = (schemaLib._x0031_440)__x0031_440.clone();
			newObject.__x0031_441 = null;
			if (__x0031_441 != null)
				newObject.__x0031_441 = (schemaLib._x0031_441)__x0031_441.clone();
			newObject.__x0031_442 = null;
			if (__x0031_442 != null)
				newObject.__x0031_442 = (schemaLib._x0031_442)__x0031_442.clone();
			newObject.__x0031_444 = null;
			if (__x0031_444 != null)
				newObject.__x0031_444 = (schemaLib._x0031_444)__x0031_444.clone();
			newObject.__x0031_445 = null;
			if (__x0031_445 != null)
				newObject.__x0031_445 = (schemaLib._x0031_445)__x0031_445.clone();
			newObject.__x0031_446 = null;
			if (__x0031_446 != null)
				newObject.__x0031_446 = (schemaLib._x0031_446)__x0031_446.clone();
			newObject.__x0031_447 = null;
			if (__x0031_447 != null)
				newObject.__x0031_447 = (schemaLib._x0031_447)__x0031_447.clone();
			newObject.__x0031_448 = null;
			if (__x0031_448 != null)
				newObject.__x0031_448 = (schemaLib._x0031_448)__x0031_448.clone();
			newObject.__x0031_449 = null;
			if (__x0031_449 != null)
				newObject.__x0031_449 = (schemaLib._x0031_449)__x0031_449.clone();
			newObject.__x0031_450 = null;
			if (__x0031_450 != null)
				newObject.__x0031_450 = (schemaLib._x0031_450)__x0031_450.clone();
			newObject.__x0031_451 = null;
			if (__x0031_451 != null)
				newObject.__x0031_451 = (schemaLib._x0031_451)__x0031_451.clone();
			newObject.__x0031_473 = null;
			if (__x0031_473 != null)
				newObject.__x0031_473 = (schemaLib._x0031_473)__x0031_473.clone();
			newObject.__x0031_474 = null;
			if (__x0031_474 != null)
				newObject.__x0031_474 = (schemaLib._x0031_474)__x0031_474.clone();
	
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
	public schemaLib._x0031_438 get_x0031_438() {
		return __x0031_438;  
	}
	public void set_x0031_438(schemaLib._x0031_438 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_438 = null;
		else {
			setElementName(value.getBase(), "_x0031_438");
			__x0031_438 = value; 
		}
	}
	protected schemaLib._x0031_438 __x0031_438;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_439 get_x0031_439() {
		return __x0031_439;  
	}
	public void set_x0031_439(schemaLib._x0031_439 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_439 = null;
		else {
			setElementName(value.getBase(), "_x0031_439");
			__x0031_439 = value; 
		}
	}
	protected schemaLib._x0031_439 __x0031_439;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_440 get_x0031_440() {
		return __x0031_440;  
	}
	public void set_x0031_440(schemaLib._x0031_440 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_440 = null;
		else {
			setElementName(value.getBase(), "_x0031_440");
			__x0031_440 = value; 
		}
	}
	protected schemaLib._x0031_440 __x0031_440;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_441 get_x0031_441() {
		return __x0031_441;  
	}
	public void set_x0031_441(schemaLib._x0031_441 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_441 = null;
		else {
			setElementName(value.getBase(), "_x0031_441");
			__x0031_441 = value; 
		}
	}
	protected schemaLib._x0031_441 __x0031_441;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_442 get_x0031_442() {
		return __x0031_442;  
	}
	public void set_x0031_442(schemaLib._x0031_442 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_442 = null;
		else {
			setElementName(value.getBase(), "_x0031_442");
			__x0031_442 = value; 
		}
	}
	protected schemaLib._x0031_442 __x0031_442;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_444 get_x0031_444() {
		return __x0031_444;  
	}
	public void set_x0031_444(schemaLib._x0031_444 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_444 = null;
		else {
			setElementName(value.getBase(), "_x0031_444");
			__x0031_444 = value; 
		}
	}
	protected schemaLib._x0031_444 __x0031_444;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_445 get_x0031_445() {
		return __x0031_445;  
	}
	public void set_x0031_445(schemaLib._x0031_445 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_445 = null;
		else {
			setElementName(value.getBase(), "_x0031_445");
			__x0031_445 = value; 
		}
	}
	protected schemaLib._x0031_445 __x0031_445;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_446 get_x0031_446() {
		return __x0031_446;  
	}
	public void set_x0031_446(schemaLib._x0031_446 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_446 = null;
		else {
			setElementName(value.getBase(), "_x0031_446");
			__x0031_446 = value; 
		}
	}
	protected schemaLib._x0031_446 __x0031_446;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_447 get_x0031_447() {
		return __x0031_447;  
	}
	public void set_x0031_447(schemaLib._x0031_447 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_447 = null;
		else {
			setElementName(value.getBase(), "_x0031_447");
			__x0031_447 = value; 
		}
	}
	protected schemaLib._x0031_447 __x0031_447;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_448 get_x0031_448() {
		return __x0031_448;  
	}
	public void set_x0031_448(schemaLib._x0031_448 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_448 = null;
		else {
			setElementName(value.getBase(), "_x0031_448");
			__x0031_448 = value; 
		}
	}
	protected schemaLib._x0031_448 __x0031_448;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_449 get_x0031_449() {
		return __x0031_449;  
	}
	public void set_x0031_449(schemaLib._x0031_449 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_449 = null;
		else {
			setElementName(value.getBase(), "_x0031_449");
			__x0031_449 = value; 
		}
	}
	protected schemaLib._x0031_449 __x0031_449;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_450 get_x0031_450() {
		return __x0031_450;  
	}
	public void set_x0031_450(schemaLib._x0031_450 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_450 = null;
		else {
			setElementName(value.getBase(), "_x0031_450");
			__x0031_450 = value; 
		}
	}
	protected schemaLib._x0031_450 __x0031_450;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_451 get_x0031_451() {
		return __x0031_451;  
	}
	public void set_x0031_451(schemaLib._x0031_451 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_451 = null;
		else {
			setElementName(value.getBase(), "_x0031_451");
			__x0031_451 = value; 
		}
	}
	protected schemaLib._x0031_451 __x0031_451;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_473 get_x0031_473() {
		return __x0031_473;  
	}
	public void set_x0031_473(schemaLib._x0031_473 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_473 = null;
		else {
			setElementName(value.getBase(), "_x0031_473");
			__x0031_473 = value; 
		}
	}
	protected schemaLib._x0031_473 __x0031_473;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_474 get_x0031_474() {
		return __x0031_474;  
	}
	public void set_x0031_474(schemaLib._x0031_474 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_474 = null;
		else {
			setElementName(value.getBase(), "_x0031_474");
			__x0031_474 = value; 
		}
	}
	protected schemaLib._x0031_474 __x0031_474;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_162", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_438", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_438"), findSetterMethod("schemaLib._x0031_162", "set_x0031_438", "schemaLib._x0031_438"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_438.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_439", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_439"), findSetterMethod("schemaLib._x0031_162", "set_x0031_439", "schemaLib._x0031_439"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_439.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_440", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_440"), findSetterMethod("schemaLib._x0031_162", "set_x0031_440", "schemaLib._x0031_440"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_440.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_441", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_441"), findSetterMethod("schemaLib._x0031_162", "set_x0031_441", "schemaLib._x0031_441"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_441.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_442", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_442"), findSetterMethod("schemaLib._x0031_162", "set_x0031_442", "schemaLib._x0031_442"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_442.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_444", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_444"), findSetterMethod("schemaLib._x0031_162", "set_x0031_444", "schemaLib._x0031_444"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_444.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_445", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_445"), findSetterMethod("schemaLib._x0031_162", "set_x0031_445", "schemaLib._x0031_445"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_445.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_446", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_446"), findSetterMethod("schemaLib._x0031_162", "set_x0031_446", "schemaLib._x0031_446"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_446.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_447", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_447"), findSetterMethod("schemaLib._x0031_162", "set_x0031_447", "schemaLib._x0031_447"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_447.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_448", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_448"), findSetterMethod("schemaLib._x0031_162", "set_x0031_448", "schemaLib._x0031_448"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_448.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_449", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_449"), findSetterMethod("schemaLib._x0031_162", "set_x0031_449", "schemaLib._x0031_449"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_449.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_450", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_450"), findSetterMethod("schemaLib._x0031_162", "set_x0031_450", "schemaLib._x0031_450"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_450.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_451", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_451"), findSetterMethod("schemaLib._x0031_162", "set_x0031_451", "schemaLib._x0031_451"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_451.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_473", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_473"), findSetterMethod("schemaLib._x0031_162", "set_x0031_473", "schemaLib._x0031_473"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_473.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_474", "", findGetterMethod("schemaLib._x0031_162", "get_x0031_474"), findSetterMethod("schemaLib._x0031_162", "set_x0031_474", "schemaLib._x0031_474"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_474.class)
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


