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
// This class represents the ComplexType _x0036_510
// </summary>
public class _x0036_510 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_510
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_510() {
		setElementName("_x0036_510");
		init();
	}
	public _x0036_510(String elementName) {
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
			__x0036_527 = null;
			__x0036_536 = null;
			__x0036_568 = null;
			__x0036_583 = null;
			__x0036_598 = null;
			__x0036_613 = null;
			__x0036_626 = null;
			__x0036_634 = null;
			__x0036_640 = null;
			__x0036_687 = null;

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
			schemaLib._x0036_510 newObject = (schemaLib._x0036_510)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_527 = null;
			if (__x0036_527 != null)
				newObject.__x0036_527 = (schemaLib._x0036_527)__x0036_527.clone();
			newObject.__x0036_536 = null;
			if (__x0036_536 != null)
				newObject.__x0036_536 = (schemaLib._x0036_536)__x0036_536.clone();
			newObject.__x0036_568 = null;
			if (__x0036_568 != null)
				newObject.__x0036_568 = (schemaLib._x0036_568)__x0036_568.clone();
			newObject.__x0036_583 = null;
			if (__x0036_583 != null)
				newObject.__x0036_583 = (schemaLib._x0036_583)__x0036_583.clone();
			newObject.__x0036_598 = null;
			if (__x0036_598 != null)
				newObject.__x0036_598 = (schemaLib._x0036_598)__x0036_598.clone();
			newObject.__x0036_613 = null;
			if (__x0036_613 != null)
				newObject.__x0036_613 = (schemaLib._x0036_613)__x0036_613.clone();
			newObject.__x0036_626 = null;
			if (__x0036_626 != null)
				newObject.__x0036_626 = (schemaLib._x0036_626)__x0036_626.clone();
			newObject.__x0036_634 = null;
			if (__x0036_634 != null)
				newObject.__x0036_634 = (schemaLib._x0036_634)__x0036_634.clone();
			newObject.__x0036_640 = null;
			if (__x0036_640 != null)
				newObject.__x0036_640 = (schemaLib._x0036_640)__x0036_640.clone();
			newObject.__x0036_687 = null;
			if (__x0036_687 != null)
				newObject.__x0036_687 = (schemaLib._x0036_687)__x0036_687.clone();
	
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
	public schemaLib._x0036_527 get_x0036_527() {
		return __x0036_527;  
	}
	public void set_x0036_527(schemaLib._x0036_527 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_527 = null;
		else {
			setElementName(value.getBase(), "_x0036_527");
			__x0036_527 = value; 
		}
	}
	protected schemaLib._x0036_527 __x0036_527;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_536 get_x0036_536() {
		return __x0036_536;  
	}
	public void set_x0036_536(schemaLib._x0036_536 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_536 = null;
		else {
			setElementName(value.getBase(), "_x0036_536");
			__x0036_536 = value; 
		}
	}
	protected schemaLib._x0036_536 __x0036_536;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_568 get_x0036_568() {
		return __x0036_568;  
	}
	public void set_x0036_568(schemaLib._x0036_568 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_568 = null;
		else {
			setElementName(value.getBase(), "_x0036_568");
			__x0036_568 = value; 
		}
	}
	protected schemaLib._x0036_568 __x0036_568;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_583 get_x0036_583() {
		return __x0036_583;  
	}
	public void set_x0036_583(schemaLib._x0036_583 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_583 = null;
		else {
			setElementName(value.getBase(), "_x0036_583");
			__x0036_583 = value; 
		}
	}
	protected schemaLib._x0036_583 __x0036_583;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_598 get_x0036_598() {
		return __x0036_598;  
	}
	public void set_x0036_598(schemaLib._x0036_598 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_598 = null;
		else {
			setElementName(value.getBase(), "_x0036_598");
			__x0036_598 = value; 
		}
	}
	protected schemaLib._x0036_598 __x0036_598;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_613 get_x0036_613() {
		return __x0036_613;  
	}
	public void set_x0036_613(schemaLib._x0036_613 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_613 = null;
		else {
			setElementName(value.getBase(), "_x0036_613");
			__x0036_613 = value; 
		}
	}
	protected schemaLib._x0036_613 __x0036_613;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_626 get_x0036_626() {
		return __x0036_626;  
	}
	public void set_x0036_626(schemaLib._x0036_626 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_626 = null;
		else {
			setElementName(value.getBase(), "_x0036_626");
			__x0036_626 = value; 
		}
	}
	protected schemaLib._x0036_626 __x0036_626;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_634 get_x0036_634() {
		return __x0036_634;  
	}
	public void set_x0036_634(schemaLib._x0036_634 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_634 = null;
		else {
			setElementName(value.getBase(), "_x0036_634");
			__x0036_634 = value; 
		}
	}
	protected schemaLib._x0036_634 __x0036_634;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_640 get_x0036_640() {
		return __x0036_640;  
	}
	public void set_x0036_640(schemaLib._x0036_640 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_640 = null;
		else {
			setElementName(value.getBase(), "_x0036_640");
			__x0036_640 = value; 
		}
	}
	protected schemaLib._x0036_640 __x0036_640;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_687 get_x0036_687() {
		return __x0036_687;  
	}
	public void set_x0036_687(schemaLib._x0036_687 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_687 = null;
		else {
			setElementName(value.getBase(), "_x0036_687");
			__x0036_687 = value; 
		}
	}
	protected schemaLib._x0036_687 __x0036_687;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_510", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_527", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_527"), findSetterMethod("schemaLib._x0036_510", "set_x0036_527", "schemaLib._x0036_527"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_527.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_536", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_536"), findSetterMethod("schemaLib._x0036_510", "set_x0036_536", "schemaLib._x0036_536"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_536.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_568", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_568"), findSetterMethod("schemaLib._x0036_510", "set_x0036_568", "schemaLib._x0036_568"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_568.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_583", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_583"), findSetterMethod("schemaLib._x0036_510", "set_x0036_583", "schemaLib._x0036_583"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_583.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_598", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_598"), findSetterMethod("schemaLib._x0036_510", "set_x0036_598", "schemaLib._x0036_598"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_598.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_613", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_613"), findSetterMethod("schemaLib._x0036_510", "set_x0036_613", "schemaLib._x0036_613"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_613.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_626", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_626"), findSetterMethod("schemaLib._x0036_510", "set_x0036_626", "schemaLib._x0036_626"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_626.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_634", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_634"), findSetterMethod("schemaLib._x0036_510", "set_x0036_634", "schemaLib._x0036_634"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_634.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_640", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_640"), findSetterMethod("schemaLib._x0036_510", "set_x0036_640", "schemaLib._x0036_640"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_640.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_687", "", findGetterMethod("schemaLib._x0036_510", "get_x0036_687"), findSetterMethod("schemaLib._x0036_510", "set_x0036_687", "schemaLib._x0036_687"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_687.class)
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


