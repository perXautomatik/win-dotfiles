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
// This class represents the ComplexType _x0031_7178
// </summary>
public class _x0031_7178 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_7178
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_7178() {
		setElementName("_x0031_7178");
		init();
	}
	public _x0031_7178(String elementName) {
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
			__x0031_7217 = null;
			__x0031_7220 = null;
			__x0031_7223 = null;
			__x0031_7226 = null;
			__x0031_7229 = null;
			__x0031_7232 = null;
			__x0031_7235 = null;
			__x0031_7238 = null;
			__x0031_7241 = null;
			__x0031_7247 = null;
			__x0031_7253 = null;
			__x0031_7256 = null;
			__x0031_7259 = null;
			__x0031_7265 = null;

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
			schemaLib._x0031_7178 newObject = (schemaLib._x0031_7178)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_7217 = null;
			if (__x0031_7217 != null)
				newObject.__x0031_7217 = (schemaLib._x0031_7217)__x0031_7217.clone();
			newObject.__x0031_7220 = null;
			if (__x0031_7220 != null)
				newObject.__x0031_7220 = (schemaLib._x0031_7220)__x0031_7220.clone();
			newObject.__x0031_7223 = null;
			if (__x0031_7223 != null)
				newObject.__x0031_7223 = (schemaLib._x0031_7223)__x0031_7223.clone();
			newObject.__x0031_7226 = null;
			if (__x0031_7226 != null)
				newObject.__x0031_7226 = (schemaLib._x0031_7226)__x0031_7226.clone();
			newObject.__x0031_7229 = null;
			if (__x0031_7229 != null)
				newObject.__x0031_7229 = (schemaLib._x0031_7229)__x0031_7229.clone();
			newObject.__x0031_7232 = null;
			if (__x0031_7232 != null)
				newObject.__x0031_7232 = (schemaLib._x0031_7232)__x0031_7232.clone();
			newObject.__x0031_7235 = null;
			if (__x0031_7235 != null)
				newObject.__x0031_7235 = (schemaLib._x0031_7235)__x0031_7235.clone();
			newObject.__x0031_7238 = null;
			if (__x0031_7238 != null)
				newObject.__x0031_7238 = (schemaLib._x0031_7238)__x0031_7238.clone();
			newObject.__x0031_7241 = null;
			if (__x0031_7241 != null)
				newObject.__x0031_7241 = (schemaLib._x0031_7241)__x0031_7241.clone();
			newObject.__x0031_7247 = null;
			if (__x0031_7247 != null)
				newObject.__x0031_7247 = (schemaLib._x0031_7247)__x0031_7247.clone();
			newObject.__x0031_7253 = null;
			if (__x0031_7253 != null)
				newObject.__x0031_7253 = (schemaLib._x0031_7253)__x0031_7253.clone();
			newObject.__x0031_7256 = null;
			if (__x0031_7256 != null)
				newObject.__x0031_7256 = (schemaLib._x0031_7256)__x0031_7256.clone();
			newObject.__x0031_7259 = null;
			if (__x0031_7259 != null)
				newObject.__x0031_7259 = (schemaLib._x0031_7259)__x0031_7259.clone();
			newObject.__x0031_7265 = null;
			if (__x0031_7265 != null)
				newObject.__x0031_7265 = (schemaLib._x0031_7265)__x0031_7265.clone();
	
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
	public schemaLib._x0031_7217 get_x0031_7217() {
		return __x0031_7217;  
	}
	public void set_x0031_7217(schemaLib._x0031_7217 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7217 = null;
		else {
			setElementName(value.getBase(), "_x0031_7217");
			__x0031_7217 = value; 
		}
	}
	protected schemaLib._x0031_7217 __x0031_7217;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7220 get_x0031_7220() {
		return __x0031_7220;  
	}
	public void set_x0031_7220(schemaLib._x0031_7220 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7220 = null;
		else {
			setElementName(value.getBase(), "_x0031_7220");
			__x0031_7220 = value; 
		}
	}
	protected schemaLib._x0031_7220 __x0031_7220;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7223 get_x0031_7223() {
		return __x0031_7223;  
	}
	public void set_x0031_7223(schemaLib._x0031_7223 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7223 = null;
		else {
			setElementName(value.getBase(), "_x0031_7223");
			__x0031_7223 = value; 
		}
	}
	protected schemaLib._x0031_7223 __x0031_7223;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7226 get_x0031_7226() {
		return __x0031_7226;  
	}
	public void set_x0031_7226(schemaLib._x0031_7226 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7226 = null;
		else {
			setElementName(value.getBase(), "_x0031_7226");
			__x0031_7226 = value; 
		}
	}
	protected schemaLib._x0031_7226 __x0031_7226;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7229 get_x0031_7229() {
		return __x0031_7229;  
	}
	public void set_x0031_7229(schemaLib._x0031_7229 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7229 = null;
		else {
			setElementName(value.getBase(), "_x0031_7229");
			__x0031_7229 = value; 
		}
	}
	protected schemaLib._x0031_7229 __x0031_7229;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7232 get_x0031_7232() {
		return __x0031_7232;  
	}
	public void set_x0031_7232(schemaLib._x0031_7232 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7232 = null;
		else {
			setElementName(value.getBase(), "_x0031_7232");
			__x0031_7232 = value; 
		}
	}
	protected schemaLib._x0031_7232 __x0031_7232;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7235 get_x0031_7235() {
		return __x0031_7235;  
	}
	public void set_x0031_7235(schemaLib._x0031_7235 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7235 = null;
		else {
			setElementName(value.getBase(), "_x0031_7235");
			__x0031_7235 = value; 
		}
	}
	protected schemaLib._x0031_7235 __x0031_7235;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7238 get_x0031_7238() {
		return __x0031_7238;  
	}
	public void set_x0031_7238(schemaLib._x0031_7238 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7238 = null;
		else {
			setElementName(value.getBase(), "_x0031_7238");
			__x0031_7238 = value; 
		}
	}
	protected schemaLib._x0031_7238 __x0031_7238;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7241 get_x0031_7241() {
		return __x0031_7241;  
	}
	public void set_x0031_7241(schemaLib._x0031_7241 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7241 = null;
		else {
			setElementName(value.getBase(), "_x0031_7241");
			__x0031_7241 = value; 
		}
	}
	protected schemaLib._x0031_7241 __x0031_7241;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7247 get_x0031_7247() {
		return __x0031_7247;  
	}
	public void set_x0031_7247(schemaLib._x0031_7247 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7247 = null;
		else {
			setElementName(value.getBase(), "_x0031_7247");
			__x0031_7247 = value; 
		}
	}
	protected schemaLib._x0031_7247 __x0031_7247;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7253 get_x0031_7253() {
		return __x0031_7253;  
	}
	public void set_x0031_7253(schemaLib._x0031_7253 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7253 = null;
		else {
			setElementName(value.getBase(), "_x0031_7253");
			__x0031_7253 = value; 
		}
	}
	protected schemaLib._x0031_7253 __x0031_7253;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7256 get_x0031_7256() {
		return __x0031_7256;  
	}
	public void set_x0031_7256(schemaLib._x0031_7256 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7256 = null;
		else {
			setElementName(value.getBase(), "_x0031_7256");
			__x0031_7256 = value; 
		}
	}
	protected schemaLib._x0031_7256 __x0031_7256;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7259 get_x0031_7259() {
		return __x0031_7259;  
	}
	public void set_x0031_7259(schemaLib._x0031_7259 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7259 = null;
		else {
			setElementName(value.getBase(), "_x0031_7259");
			__x0031_7259 = value; 
		}
	}
	protected schemaLib._x0031_7259 __x0031_7259;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7265 get_x0031_7265() {
		return __x0031_7265;  
	}
	public void set_x0031_7265(schemaLib._x0031_7265 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7265 = null;
		else {
			setElementName(value.getBase(), "_x0031_7265");
			__x0031_7265 = value; 
		}
	}
	protected schemaLib._x0031_7265 __x0031_7265;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_7178", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7217", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7217"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7217", "schemaLib._x0031_7217"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7217.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7220", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7220"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7220", "schemaLib._x0031_7220"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7220.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7223", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7223"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7223", "schemaLib._x0031_7223"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7223.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7226", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7226"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7226", "schemaLib._x0031_7226"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7226.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7229", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7229"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7229", "schemaLib._x0031_7229"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7229.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7232", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7232"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7232", "schemaLib._x0031_7232"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7232.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7235", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7235"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7235", "schemaLib._x0031_7235"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7235.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7238", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7238"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7238", "schemaLib._x0031_7238"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7238.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7241", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7241"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7241", "schemaLib._x0031_7241"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7241.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7247", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7247"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7247", "schemaLib._x0031_7247"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7247.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7253", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7253"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7253", "schemaLib._x0031_7253"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7253.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7256", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7256"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7256", "schemaLib._x0031_7256"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7256.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7259", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7259"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7259", "schemaLib._x0031_7259"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7259.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7265", "", findGetterMethod("schemaLib._x0031_7178", "get_x0031_7265"), findSetterMethod("schemaLib._x0031_7178", "set_x0031_7265", "schemaLib._x0031_7265"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7265.class)
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


