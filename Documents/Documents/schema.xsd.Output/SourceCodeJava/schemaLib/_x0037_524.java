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
// This class represents the ComplexType _x0037_524
// </summary>
public class _x0037_524 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_524
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_524() {
		setElementName("_x0037_524");
		init();
	}
	public _x0037_524(String elementName) {
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
			__x0037_560 = null;
			__x0037_563 = null;
			__x0037_566 = null;
			__x0037_569 = null;
			__x0037_572 = null;
			__x0037_578 = null;
			__x0037_581 = null;
			__x0037_584 = null;
			__x0037_587 = null;
			__x0037_588 = null;
			__x0037_594 = null;

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
			schemaLib._x0037_524 newObject = (schemaLib._x0037_524)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_560 = null;
			if (__x0037_560 != null)
				newObject.__x0037_560 = (schemaLib._x0037_560)__x0037_560.clone();
			newObject.__x0037_563 = null;
			if (__x0037_563 != null)
				newObject.__x0037_563 = (schemaLib._x0037_563)__x0037_563.clone();
			newObject.__x0037_566 = null;
			if (__x0037_566 != null)
				newObject.__x0037_566 = (schemaLib._x0037_566)__x0037_566.clone();
			newObject.__x0037_569 = null;
			if (__x0037_569 != null)
				newObject.__x0037_569 = (schemaLib._x0037_569)__x0037_569.clone();
			newObject.__x0037_572 = null;
			if (__x0037_572 != null)
				newObject.__x0037_572 = (schemaLib._x0037_572)__x0037_572.clone();
			newObject.__x0037_578 = null;
			if (__x0037_578 != null)
				newObject.__x0037_578 = (schemaLib._x0037_578)__x0037_578.clone();
			newObject.__x0037_581 = null;
			if (__x0037_581 != null)
				newObject.__x0037_581 = (schemaLib._x0037_581)__x0037_581.clone();
			newObject.__x0037_584 = null;
			if (__x0037_584 != null)
				newObject.__x0037_584 = (schemaLib._x0037_584)__x0037_584.clone();
			newObject.__x0037_587 = null;
			if (__x0037_587 != null)
				newObject.__x0037_587 = (schemaLib._x0037_587)__x0037_587.clone();
			newObject.__x0037_588 = null;
			if (__x0037_588 != null)
				newObject.__x0037_588 = (schemaLib._x0037_588)__x0037_588.clone();
			newObject.__x0037_594 = null;
			if (__x0037_594 != null)
				newObject.__x0037_594 = (schemaLib._x0037_594)__x0037_594.clone();
	
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
	public schemaLib._x0037_560 get_x0037_560() {
		return __x0037_560;  
	}
	public void set_x0037_560(schemaLib._x0037_560 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_560 = null;
		else {
			setElementName(value.getBase(), "_x0037_560");
			__x0037_560 = value; 
		}
	}
	protected schemaLib._x0037_560 __x0037_560;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_563 get_x0037_563() {
		return __x0037_563;  
	}
	public void set_x0037_563(schemaLib._x0037_563 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_563 = null;
		else {
			setElementName(value.getBase(), "_x0037_563");
			__x0037_563 = value; 
		}
	}
	protected schemaLib._x0037_563 __x0037_563;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_566 get_x0037_566() {
		return __x0037_566;  
	}
	public void set_x0037_566(schemaLib._x0037_566 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_566 = null;
		else {
			setElementName(value.getBase(), "_x0037_566");
			__x0037_566 = value; 
		}
	}
	protected schemaLib._x0037_566 __x0037_566;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_569 get_x0037_569() {
		return __x0037_569;  
	}
	public void set_x0037_569(schemaLib._x0037_569 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_569 = null;
		else {
			setElementName(value.getBase(), "_x0037_569");
			__x0037_569 = value; 
		}
	}
	protected schemaLib._x0037_569 __x0037_569;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_572 get_x0037_572() {
		return __x0037_572;  
	}
	public void set_x0037_572(schemaLib._x0037_572 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_572 = null;
		else {
			setElementName(value.getBase(), "_x0037_572");
			__x0037_572 = value; 
		}
	}
	protected schemaLib._x0037_572 __x0037_572;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_578 get_x0037_578() {
		return __x0037_578;  
	}
	public void set_x0037_578(schemaLib._x0037_578 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_578 = null;
		else {
			setElementName(value.getBase(), "_x0037_578");
			__x0037_578 = value; 
		}
	}
	protected schemaLib._x0037_578 __x0037_578;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_581 get_x0037_581() {
		return __x0037_581;  
	}
	public void set_x0037_581(schemaLib._x0037_581 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_581 = null;
		else {
			setElementName(value.getBase(), "_x0037_581");
			__x0037_581 = value; 
		}
	}
	protected schemaLib._x0037_581 __x0037_581;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_584 get_x0037_584() {
		return __x0037_584;  
	}
	public void set_x0037_584(schemaLib._x0037_584 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_584 = null;
		else {
			setElementName(value.getBase(), "_x0037_584");
			__x0037_584 = value; 
		}
	}
	protected schemaLib._x0037_584 __x0037_584;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_587 get_x0037_587() {
		return __x0037_587;  
	}
	public void set_x0037_587(schemaLib._x0037_587 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_587 = null;
		else {
			setElementName(value.getBase(), "_x0037_587");
			__x0037_587 = value; 
		}
	}
	protected schemaLib._x0037_587 __x0037_587;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_588 get_x0037_588() {
		return __x0037_588;  
	}
	public void set_x0037_588(schemaLib._x0037_588 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_588 = null;
		else {
			setElementName(value.getBase(), "_x0037_588");
			__x0037_588 = value; 
		}
	}
	protected schemaLib._x0037_588 __x0037_588;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_594 get_x0037_594() {
		return __x0037_594;  
	}
	public void set_x0037_594(schemaLib._x0037_594 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_594 = null;
		else {
			setElementName(value.getBase(), "_x0037_594");
			__x0037_594 = value; 
		}
	}
	protected schemaLib._x0037_594 __x0037_594;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_524", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_560", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_560"), findSetterMethod("schemaLib._x0037_524", "set_x0037_560", "schemaLib._x0037_560"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_560.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_563", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_563"), findSetterMethod("schemaLib._x0037_524", "set_x0037_563", "schemaLib._x0037_563"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_563.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_566", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_566"), findSetterMethod("schemaLib._x0037_524", "set_x0037_566", "schemaLib._x0037_566"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_566.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_569", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_569"), findSetterMethod("schemaLib._x0037_524", "set_x0037_569", "schemaLib._x0037_569"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_569.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_572", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_572"), findSetterMethod("schemaLib._x0037_524", "set_x0037_572", "schemaLib._x0037_572"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_572.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_578", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_578"), findSetterMethod("schemaLib._x0037_524", "set_x0037_578", "schemaLib._x0037_578"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_578.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_581", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_581"), findSetterMethod("schemaLib._x0037_524", "set_x0037_581", "schemaLib._x0037_581"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_581.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_584", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_584"), findSetterMethod("schemaLib._x0037_524", "set_x0037_584", "schemaLib._x0037_584"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_584.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_587", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_587"), findSetterMethod("schemaLib._x0037_524", "set_x0037_587", "schemaLib._x0037_587"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_587.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_588", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_588"), findSetterMethod("schemaLib._x0037_524", "set_x0037_588", "schemaLib._x0037_588"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_588.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_594", "", findGetterMethod("schemaLib._x0037_524", "get_x0037_594"), findSetterMethod("schemaLib._x0037_524", "set_x0037_594", "schemaLib._x0037_594"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_594.class)
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


