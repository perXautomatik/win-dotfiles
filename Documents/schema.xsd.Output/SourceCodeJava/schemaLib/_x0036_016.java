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
// This class represents the ComplexType _x0036_016
// </summary>
public class _x0036_016 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_016
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_016() {
		setElementName("_x0036_016");
		init();
	}
	public _x0036_016(String elementName) {
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
			__x0036_410 = null;
			__x0036_560 = null;
			__x0036_563 = null;
			__x0036_569 = null;
			__x0036_578 = null;
			__x0036_581 = null;
			__x0036_596 = null;
			__x0036_599 = null;
			__x0036_602 = null;
			__x0036_608 = null;
			__x0036_611 = null;
			__x0036_623 = null;
			__x0036_629 = null;
			__x0036_632 = null;
			__x0036_638 = null;
			__x0036_923 = null;

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
			schemaLib._x0036_016 newObject = (schemaLib._x0036_016)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_410 = null;
			if (__x0036_410 != null)
				newObject.__x0036_410 = (schemaLib._x0036_410)__x0036_410.clone();
			newObject.__x0036_560 = null;
			if (__x0036_560 != null)
				newObject.__x0036_560 = (schemaLib._x0036_560)__x0036_560.clone();
			newObject.__x0036_563 = null;
			if (__x0036_563 != null)
				newObject.__x0036_563 = (schemaLib._x0036_563)__x0036_563.clone();
			newObject.__x0036_569 = null;
			if (__x0036_569 != null)
				newObject.__x0036_569 = (schemaLib._x0036_569)__x0036_569.clone();
			newObject.__x0036_578 = null;
			if (__x0036_578 != null)
				newObject.__x0036_578 = (schemaLib._x0036_578A)__x0036_578.clone();
			newObject.__x0036_581 = null;
			if (__x0036_581 != null)
				newObject.__x0036_581 = (schemaLib._x0036_581)__x0036_581.clone();
			newObject.__x0036_596 = null;
			if (__x0036_596 != null)
				newObject.__x0036_596 = (schemaLib._x0036_596)__x0036_596.clone();
			newObject.__x0036_599 = null;
			if (__x0036_599 != null)
				newObject.__x0036_599 = (schemaLib._x0036_599)__x0036_599.clone();
			newObject.__x0036_602 = null;
			if (__x0036_602 != null)
				newObject.__x0036_602 = (schemaLib._x0036_602)__x0036_602.clone();
			newObject.__x0036_608 = null;
			if (__x0036_608 != null)
				newObject.__x0036_608 = (schemaLib._x0036_608)__x0036_608.clone();
			newObject.__x0036_611 = null;
			if (__x0036_611 != null)
				newObject.__x0036_611 = (schemaLib._x0036_611)__x0036_611.clone();
			newObject.__x0036_623 = null;
			if (__x0036_623 != null)
				newObject.__x0036_623 = (schemaLib._x0036_623)__x0036_623.clone();
			newObject.__x0036_629 = null;
			if (__x0036_629 != null)
				newObject.__x0036_629 = (schemaLib._x0036_629A)__x0036_629.clone();
			newObject.__x0036_632 = null;
			if (__x0036_632 != null)
				newObject.__x0036_632 = (schemaLib._x0036_632)__x0036_632.clone();
			newObject.__x0036_638 = null;
			if (__x0036_638 != null)
				newObject.__x0036_638 = (schemaLib._x0036_638)__x0036_638.clone();
			newObject.__x0036_923 = null;
			if (__x0036_923 != null)
				newObject.__x0036_923 = (schemaLib._x0036_923)__x0036_923.clone();
	
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
	public schemaLib._x0036_410 get_x0036_410() {
		return __x0036_410;  
	}
	public void set_x0036_410(schemaLib._x0036_410 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_410 = null;
		else {
			setElementName(value.getBase(), "_x0036_410");
			__x0036_410 = value; 
		}
	}
	protected schemaLib._x0036_410 __x0036_410;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_560 get_x0036_560() {
		return __x0036_560;  
	}
	public void set_x0036_560(schemaLib._x0036_560 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_560 = null;
		else {
			setElementName(value.getBase(), "_x0036_560");
			__x0036_560 = value; 
		}
	}
	protected schemaLib._x0036_560 __x0036_560;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_563 get_x0036_563() {
		return __x0036_563;  
	}
	public void set_x0036_563(schemaLib._x0036_563 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_563 = null;
		else {
			setElementName(value.getBase(), "_x0036_563");
			__x0036_563 = value; 
		}
	}
	protected schemaLib._x0036_563 __x0036_563;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_569 get_x0036_569() {
		return __x0036_569;  
	}
	public void set_x0036_569(schemaLib._x0036_569 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_569 = null;
		else {
			setElementName(value.getBase(), "_x0036_569");
			__x0036_569 = value; 
		}
	}
	protected schemaLib._x0036_569 __x0036_569;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_578A get_x0036_578() {
		return __x0036_578;  
	}
	public void set_x0036_578(schemaLib._x0036_578A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_578 = null;
		else {
			setElementName(value.getBase(), "_x0036_578");
			__x0036_578 = value; 
		}
	}
	protected schemaLib._x0036_578A __x0036_578;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_581 get_x0036_581() {
		return __x0036_581;  
	}
	public void set_x0036_581(schemaLib._x0036_581 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_581 = null;
		else {
			setElementName(value.getBase(), "_x0036_581");
			__x0036_581 = value; 
		}
	}
	protected schemaLib._x0036_581 __x0036_581;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_596 get_x0036_596() {
		return __x0036_596;  
	}
	public void set_x0036_596(schemaLib._x0036_596 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_596 = null;
		else {
			setElementName(value.getBase(), "_x0036_596");
			__x0036_596 = value; 
		}
	}
	protected schemaLib._x0036_596 __x0036_596;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_599 get_x0036_599() {
		return __x0036_599;  
	}
	public void set_x0036_599(schemaLib._x0036_599 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_599 = null;
		else {
			setElementName(value.getBase(), "_x0036_599");
			__x0036_599 = value; 
		}
	}
	protected schemaLib._x0036_599 __x0036_599;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_602 get_x0036_602() {
		return __x0036_602;  
	}
	public void set_x0036_602(schemaLib._x0036_602 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_602 = null;
		else {
			setElementName(value.getBase(), "_x0036_602");
			__x0036_602 = value; 
		}
	}
	protected schemaLib._x0036_602 __x0036_602;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_608 get_x0036_608() {
		return __x0036_608;  
	}
	public void set_x0036_608(schemaLib._x0036_608 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_608 = null;
		else {
			setElementName(value.getBase(), "_x0036_608");
			__x0036_608 = value; 
		}
	}
	protected schemaLib._x0036_608 __x0036_608;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_611 get_x0036_611() {
		return __x0036_611;  
	}
	public void set_x0036_611(schemaLib._x0036_611 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_611 = null;
		else {
			setElementName(value.getBase(), "_x0036_611");
			__x0036_611 = value; 
		}
	}
	protected schemaLib._x0036_611 __x0036_611;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_623 get_x0036_623() {
		return __x0036_623;  
	}
	public void set_x0036_623(schemaLib._x0036_623 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_623 = null;
		else {
			setElementName(value.getBase(), "_x0036_623");
			__x0036_623 = value; 
		}
	}
	protected schemaLib._x0036_623 __x0036_623;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_629A get_x0036_629() {
		return __x0036_629;  
	}
	public void set_x0036_629(schemaLib._x0036_629A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_629 = null;
		else {
			setElementName(value.getBase(), "_x0036_629");
			__x0036_629 = value; 
		}
	}
	protected schemaLib._x0036_629A __x0036_629;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_632 get_x0036_632() {
		return __x0036_632;  
	}
	public void set_x0036_632(schemaLib._x0036_632 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_632 = null;
		else {
			setElementName(value.getBase(), "_x0036_632");
			__x0036_632 = value; 
		}
	}
	protected schemaLib._x0036_632 __x0036_632;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_638 get_x0036_638() {
		return __x0036_638;  
	}
	public void set_x0036_638(schemaLib._x0036_638 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_638 = null;
		else {
			setElementName(value.getBase(), "_x0036_638");
			__x0036_638 = value; 
		}
	}
	protected schemaLib._x0036_638 __x0036_638;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_923 get_x0036_923() {
		return __x0036_923;  
	}
	public void set_x0036_923(schemaLib._x0036_923 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_923 = null;
		else {
			setElementName(value.getBase(), "_x0036_923");
			__x0036_923 = value; 
		}
	}
	protected schemaLib._x0036_923 __x0036_923;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_016", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_410", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_410"), findSetterMethod("schemaLib._x0036_016", "set_x0036_410", "schemaLib._x0036_410"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_410.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_560", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_560"), findSetterMethod("schemaLib._x0036_016", "set_x0036_560", "schemaLib._x0036_560"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_560.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_563", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_563"), findSetterMethod("schemaLib._x0036_016", "set_x0036_563", "schemaLib._x0036_563"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_563.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_569", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_569"), findSetterMethod("schemaLib._x0036_016", "set_x0036_569", "schemaLib._x0036_569"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_569.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_578", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_578"), findSetterMethod("schemaLib._x0036_016", "set_x0036_578", "schemaLib._x0036_578A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_578A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_581", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_581"), findSetterMethod("schemaLib._x0036_016", "set_x0036_581", "schemaLib._x0036_581"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_581.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_596", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_596"), findSetterMethod("schemaLib._x0036_016", "set_x0036_596", "schemaLib._x0036_596"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_596.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_599", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_599"), findSetterMethod("schemaLib._x0036_016", "set_x0036_599", "schemaLib._x0036_599"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_599.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_602", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_602"), findSetterMethod("schemaLib._x0036_016", "set_x0036_602", "schemaLib._x0036_602"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_602.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_608", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_608"), findSetterMethod("schemaLib._x0036_016", "set_x0036_608", "schemaLib._x0036_608"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_608.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_611", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_611"), findSetterMethod("schemaLib._x0036_016", "set_x0036_611", "schemaLib._x0036_611"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_611.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_623", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_623"), findSetterMethod("schemaLib._x0036_016", "set_x0036_623", "schemaLib._x0036_623"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_623.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_629", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_629"), findSetterMethod("schemaLib._x0036_016", "set_x0036_629", "schemaLib._x0036_629A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_629A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_632", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_632"), findSetterMethod("schemaLib._x0036_016", "set_x0036_632", "schemaLib._x0036_632"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_632.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_638", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_638"), findSetterMethod("schemaLib._x0036_016", "set_x0036_638", "schemaLib._x0036_638"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_638.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_923", "", findGetterMethod("schemaLib._x0036_016", "get_x0036_923"), findSetterMethod("schemaLib._x0036_016", "set_x0036_923", "schemaLib._x0036_923"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_923.class)
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


