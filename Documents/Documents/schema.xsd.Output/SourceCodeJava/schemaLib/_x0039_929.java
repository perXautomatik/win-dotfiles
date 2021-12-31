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
// This class represents the ComplexType _x0039_929
// </summary>
public class _x0039_929 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0039_929
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0039_929() {
		setElementName("_x0039_929");
		init();
	}
	public _x0039_929(String elementName) {
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
			__x0031_0319 = null;
			__x0031_0353 = null;
			__x0031_0454 = null;
			__x0031_0457 = null;
			__x0031_0469 = null;
			__x0031_0476 = null;
			__x0031_0479 = null;
			__x0031_0483 = null;
			__x0031_0498 = null;
			__x0031_0505 = null;
			__x0031_0514 = null;
			__x0031_0522 = null;

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
			schemaLib._x0039_929 newObject = (schemaLib._x0039_929)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_0319 = null;
			if (__x0031_0319 != null)
				newObject.__x0031_0319 = (schemaLib._x0031_0319)__x0031_0319.clone();
			newObject.__x0031_0353 = null;
			if (__x0031_0353 != null)
				newObject.__x0031_0353 = (schemaLib._x0031_0353)__x0031_0353.clone();
			newObject.__x0031_0454 = null;
			if (__x0031_0454 != null)
				newObject.__x0031_0454 = (schemaLib._x0031_0454)__x0031_0454.clone();
			newObject.__x0031_0457 = null;
			if (__x0031_0457 != null)
				newObject.__x0031_0457 = (schemaLib._x0031_0457)__x0031_0457.clone();
			newObject.__x0031_0469 = null;
			if (__x0031_0469 != null)
				newObject.__x0031_0469 = (schemaLib._x0031_0469)__x0031_0469.clone();
			newObject.__x0031_0476 = null;
			if (__x0031_0476 != null)
				newObject.__x0031_0476 = (schemaLib._x0031_0476)__x0031_0476.clone();
			newObject.__x0031_0479 = null;
			if (__x0031_0479 != null)
				newObject.__x0031_0479 = (schemaLib._x0031_0479)__x0031_0479.clone();
			newObject.__x0031_0483 = null;
			if (__x0031_0483 != null)
				newObject.__x0031_0483 = (schemaLib._x0031_0483)__x0031_0483.clone();
			newObject.__x0031_0498 = null;
			if (__x0031_0498 != null)
				newObject.__x0031_0498 = (schemaLib._x0031_0498)__x0031_0498.clone();
			newObject.__x0031_0505 = null;
			if (__x0031_0505 != null)
				newObject.__x0031_0505 = (schemaLib._x0031_0505)__x0031_0505.clone();
			newObject.__x0031_0514 = null;
			if (__x0031_0514 != null)
				newObject.__x0031_0514 = (schemaLib._x0031_0514)__x0031_0514.clone();
			newObject.__x0031_0522 = null;
			if (__x0031_0522 != null)
				newObject.__x0031_0522 = (schemaLib._x0031_0522)__x0031_0522.clone();
	
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
	public schemaLib._x0031_0319 get_x0031_0319() {
		return __x0031_0319;  
	}
	public void set_x0031_0319(schemaLib._x0031_0319 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0319 = null;
		else {
			setElementName(value.getBase(), "_x0031_0319");
			__x0031_0319 = value; 
		}
	}
	protected schemaLib._x0031_0319 __x0031_0319;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0353 get_x0031_0353() {
		return __x0031_0353;  
	}
	public void set_x0031_0353(schemaLib._x0031_0353 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0353 = null;
		else {
			setElementName(value.getBase(), "_x0031_0353");
			__x0031_0353 = value; 
		}
	}
	protected schemaLib._x0031_0353 __x0031_0353;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0454 get_x0031_0454() {
		return __x0031_0454;  
	}
	public void set_x0031_0454(schemaLib._x0031_0454 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0454 = null;
		else {
			setElementName(value.getBase(), "_x0031_0454");
			__x0031_0454 = value; 
		}
	}
	protected schemaLib._x0031_0454 __x0031_0454;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0457 get_x0031_0457() {
		return __x0031_0457;  
	}
	public void set_x0031_0457(schemaLib._x0031_0457 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0457 = null;
		else {
			setElementName(value.getBase(), "_x0031_0457");
			__x0031_0457 = value; 
		}
	}
	protected schemaLib._x0031_0457 __x0031_0457;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0469 get_x0031_0469() {
		return __x0031_0469;  
	}
	public void set_x0031_0469(schemaLib._x0031_0469 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0469 = null;
		else {
			setElementName(value.getBase(), "_x0031_0469");
			__x0031_0469 = value; 
		}
	}
	protected schemaLib._x0031_0469 __x0031_0469;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0476 get_x0031_0476() {
		return __x0031_0476;  
	}
	public void set_x0031_0476(schemaLib._x0031_0476 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0476 = null;
		else {
			setElementName(value.getBase(), "_x0031_0476");
			__x0031_0476 = value; 
		}
	}
	protected schemaLib._x0031_0476 __x0031_0476;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0479 get_x0031_0479() {
		return __x0031_0479;  
	}
	public void set_x0031_0479(schemaLib._x0031_0479 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0479 = null;
		else {
			setElementName(value.getBase(), "_x0031_0479");
			__x0031_0479 = value; 
		}
	}
	protected schemaLib._x0031_0479 __x0031_0479;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0483 get_x0031_0483() {
		return __x0031_0483;  
	}
	public void set_x0031_0483(schemaLib._x0031_0483 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0483 = null;
		else {
			setElementName(value.getBase(), "_x0031_0483");
			__x0031_0483 = value; 
		}
	}
	protected schemaLib._x0031_0483 __x0031_0483;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0498 get_x0031_0498() {
		return __x0031_0498;  
	}
	public void set_x0031_0498(schemaLib._x0031_0498 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0498 = null;
		else {
			setElementName(value.getBase(), "_x0031_0498");
			__x0031_0498 = value; 
		}
	}
	protected schemaLib._x0031_0498 __x0031_0498;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0505 get_x0031_0505() {
		return __x0031_0505;  
	}
	public void set_x0031_0505(schemaLib._x0031_0505 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0505 = null;
		else {
			setElementName(value.getBase(), "_x0031_0505");
			__x0031_0505 = value; 
		}
	}
	protected schemaLib._x0031_0505 __x0031_0505;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0514 get_x0031_0514() {
		return __x0031_0514;  
	}
	public void set_x0031_0514(schemaLib._x0031_0514 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0514 = null;
		else {
			setElementName(value.getBase(), "_x0031_0514");
			__x0031_0514 = value; 
		}
	}
	protected schemaLib._x0031_0514 __x0031_0514;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0522 get_x0031_0522() {
		return __x0031_0522;  
	}
	public void set_x0031_0522(schemaLib._x0031_0522 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0522 = null;
		else {
			setElementName(value.getBase(), "_x0031_0522");
			__x0031_0522 = value; 
		}
	}
	protected schemaLib._x0031_0522 __x0031_0522;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0039_929", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0319", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0319"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0319", "schemaLib._x0031_0319"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0319.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0353", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0353"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0353", "schemaLib._x0031_0353"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0353.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0454", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0454"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0454", "schemaLib._x0031_0454"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0454.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0457", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0457"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0457", "schemaLib._x0031_0457"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0457.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0469", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0469"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0469", "schemaLib._x0031_0469"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0469.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0476", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0476"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0476", "schemaLib._x0031_0476"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0476.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0479", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0479"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0479", "schemaLib._x0031_0479"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0479.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0483", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0483"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0483", "schemaLib._x0031_0483"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0483.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0498", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0498"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0498", "schemaLib._x0031_0498"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0498.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0505", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0505"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0505", "schemaLib._x0031_0505"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0505.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0514", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0514"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0514", "schemaLib._x0031_0514"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0514.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0522", "", findGetterMethod("schemaLib._x0039_929", "get_x0031_0522"), findSetterMethod("schemaLib._x0039_929", "set_x0031_0522", "schemaLib._x0031_0522"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0522.class)
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


