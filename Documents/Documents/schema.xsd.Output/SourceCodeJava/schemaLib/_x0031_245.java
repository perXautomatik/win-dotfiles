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
// This class represents the ComplexType _x0031_245
// </summary>
public class _x0031_245 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_245
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_245() {
		setElementName("_x0031_245");
		init();
	}
	public _x0031_245(String elementName) {
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
			__x0031_247 = null;
			__x0031_249 = null;
			__x0031_250 = null;
			__x0031_251 = null;
			__x0031_252 = null;
			__x0031_253 = null;
			__x0031_254 = null;
			__x0031_280 = null;

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
			schemaLib._x0031_245 newObject = (schemaLib._x0031_245)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_247 = null;
			if (__x0031_247 != null)
				newObject.__x0031_247 = (schemaLib._x0031_247A)__x0031_247.clone();
			newObject.__x0031_249 = null;
			if (__x0031_249 != null)
				newObject.__x0031_249 = (schemaLib._x0031_249A)__x0031_249.clone();
			newObject.__x0031_250 = null;
			if (__x0031_250 != null)
				newObject.__x0031_250 = (schemaLib._x0031_250A)__x0031_250.clone();
			newObject.__x0031_251 = null;
			if (__x0031_251 != null)
				newObject.__x0031_251 = (schemaLib._x0031_251A)__x0031_251.clone();
			newObject.__x0031_252 = null;
			if (__x0031_252 != null)
				newObject.__x0031_252 = (schemaLib._x0031_252A)__x0031_252.clone();
			newObject.__x0031_253 = null;
			if (__x0031_253 != null)
				newObject.__x0031_253 = (schemaLib._x0031_253A)__x0031_253.clone();
			newObject.__x0031_254 = null;
			if (__x0031_254 != null)
				newObject.__x0031_254 = (schemaLib._x0031_254)__x0031_254.clone();
			newObject.__x0031_280 = null;
			if (__x0031_280 != null)
				newObject.__x0031_280 = (schemaLib._x0031_280)__x0031_280.clone();
	
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
	public schemaLib._x0031_247A get_x0031_247() {
		return __x0031_247;  
	}
	public void set_x0031_247(schemaLib._x0031_247A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_247 = null;
		else {
			setElementName(value.getBase(), "_x0031_247");
			__x0031_247 = value; 
		}
	}
	protected schemaLib._x0031_247A __x0031_247;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_249A get_x0031_249() {
		return __x0031_249;  
	}
	public void set_x0031_249(schemaLib._x0031_249A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_249 = null;
		else {
			setElementName(value.getBase(), "_x0031_249");
			__x0031_249 = value; 
		}
	}
	protected schemaLib._x0031_249A __x0031_249;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_250A get_x0031_250() {
		return __x0031_250;  
	}
	public void set_x0031_250(schemaLib._x0031_250A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_250 = null;
		else {
			setElementName(value.getBase(), "_x0031_250");
			__x0031_250 = value; 
		}
	}
	protected schemaLib._x0031_250A __x0031_250;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_251A get_x0031_251() {
		return __x0031_251;  
	}
	public void set_x0031_251(schemaLib._x0031_251A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_251 = null;
		else {
			setElementName(value.getBase(), "_x0031_251");
			__x0031_251 = value; 
		}
	}
	protected schemaLib._x0031_251A __x0031_251;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_252A get_x0031_252() {
		return __x0031_252;  
	}
	public void set_x0031_252(schemaLib._x0031_252A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_252 = null;
		else {
			setElementName(value.getBase(), "_x0031_252");
			__x0031_252 = value; 
		}
	}
	protected schemaLib._x0031_252A __x0031_252;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_253A get_x0031_253() {
		return __x0031_253;  
	}
	public void set_x0031_253(schemaLib._x0031_253A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_253 = null;
		else {
			setElementName(value.getBase(), "_x0031_253");
			__x0031_253 = value; 
		}
	}
	protected schemaLib._x0031_253A __x0031_253;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_254 get_x0031_254() {
		return __x0031_254;  
	}
	public void set_x0031_254(schemaLib._x0031_254 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_254 = null;
		else {
			setElementName(value.getBase(), "_x0031_254");
			__x0031_254 = value; 
		}
	}
	protected schemaLib._x0031_254 __x0031_254;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_280 get_x0031_280() {
		return __x0031_280;  
	}
	public void set_x0031_280(schemaLib._x0031_280 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_280 = null;
		else {
			setElementName(value.getBase(), "_x0031_280");
			__x0031_280 = value; 
		}
	}
	protected schemaLib._x0031_280 __x0031_280;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_245", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_247", "", findGetterMethod("schemaLib._x0031_245", "get_x0031_247"), findSetterMethod("schemaLib._x0031_245", "set_x0031_247", "schemaLib._x0031_247A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_247A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_249", "", findGetterMethod("schemaLib._x0031_245", "get_x0031_249"), findSetterMethod("schemaLib._x0031_245", "set_x0031_249", "schemaLib._x0031_249A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_249A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_250", "", findGetterMethod("schemaLib._x0031_245", "get_x0031_250"), findSetterMethod("schemaLib._x0031_245", "set_x0031_250", "schemaLib._x0031_250A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_250A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_251", "", findGetterMethod("schemaLib._x0031_245", "get_x0031_251"), findSetterMethod("schemaLib._x0031_245", "set_x0031_251", "schemaLib._x0031_251A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_251A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_252", "", findGetterMethod("schemaLib._x0031_245", "get_x0031_252"), findSetterMethod("schemaLib._x0031_245", "set_x0031_252", "schemaLib._x0031_252A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_252A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_253", "", findGetterMethod("schemaLib._x0031_245", "get_x0031_253"), findSetterMethod("schemaLib._x0031_245", "set_x0031_253", "schemaLib._x0031_253A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_253A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_254", "", findGetterMethod("schemaLib._x0031_245", "get_x0031_254"), findSetterMethod("schemaLib._x0031_245", "set_x0031_254", "schemaLib._x0031_254"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_254.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_280", "", findGetterMethod("schemaLib._x0031_245", "get_x0031_280"), findSetterMethod("schemaLib._x0031_245", "set_x0031_280", "schemaLib._x0031_280"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_280.class)
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


