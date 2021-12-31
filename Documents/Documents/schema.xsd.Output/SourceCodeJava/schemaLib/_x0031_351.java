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
// This class represents the ComplexType _x0031_351
// </summary>
public class _x0031_351 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_351
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_351() {
		setElementName("_x0031_351");
		init();
	}
	public _x0031_351(String elementName) {
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
			__x0031_363 = null;
			__x0031_373 = null;
			__x0031_376 = null;
			__x0031_382 = null;
			__x0031_385 = null;
			__x0031_388 = null;
			__x0031_391 = null;
			__x0031_395 = null;
			__x0031_398 = null;

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
			schemaLib._x0031_351 newObject = (schemaLib._x0031_351)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_363 = null;
			if (__x0031_363 != null)
				newObject.__x0031_363 = (schemaLib._x0031_363)__x0031_363.clone();
			newObject.__x0031_373 = null;
			if (__x0031_373 != null)
				newObject.__x0031_373 = (schemaLib._x0031_373)__x0031_373.clone();
			newObject.__x0031_376 = null;
			if (__x0031_376 != null)
				newObject.__x0031_376 = (schemaLib._x0031_376)__x0031_376.clone();
			newObject.__x0031_382 = null;
			if (__x0031_382 != null)
				newObject.__x0031_382 = (schemaLib._x0031_382)__x0031_382.clone();
			newObject.__x0031_385 = null;
			if (__x0031_385 != null)
				newObject.__x0031_385 = (schemaLib._x0031_385)__x0031_385.clone();
			newObject.__x0031_388 = null;
			if (__x0031_388 != null)
				newObject.__x0031_388 = (schemaLib._x0031_388B)__x0031_388.clone();
			newObject.__x0031_391 = null;
			if (__x0031_391 != null)
				newObject.__x0031_391 = (schemaLib._x0031_391)__x0031_391.clone();
			newObject.__x0031_395 = null;
			if (__x0031_395 != null)
				newObject.__x0031_395 = (schemaLib._x0031_395)__x0031_395.clone();
			newObject.__x0031_398 = null;
			if (__x0031_398 != null)
				newObject.__x0031_398 = (schemaLib._x0031_398)__x0031_398.clone();
	
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
	public schemaLib._x0031_363 get_x0031_363() {
		return __x0031_363;  
	}
	public void set_x0031_363(schemaLib._x0031_363 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_363 = null;
		else {
			setElementName(value.getBase(), "_x0031_363");
			__x0031_363 = value; 
		}
	}
	protected schemaLib._x0031_363 __x0031_363;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_373 get_x0031_373() {
		return __x0031_373;  
	}
	public void set_x0031_373(schemaLib._x0031_373 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_373 = null;
		else {
			setElementName(value.getBase(), "_x0031_373");
			__x0031_373 = value; 
		}
	}
	protected schemaLib._x0031_373 __x0031_373;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_376 get_x0031_376() {
		return __x0031_376;  
	}
	public void set_x0031_376(schemaLib._x0031_376 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_376 = null;
		else {
			setElementName(value.getBase(), "_x0031_376");
			__x0031_376 = value; 
		}
	}
	protected schemaLib._x0031_376 __x0031_376;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_382 get_x0031_382() {
		return __x0031_382;  
	}
	public void set_x0031_382(schemaLib._x0031_382 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_382 = null;
		else {
			setElementName(value.getBase(), "_x0031_382");
			__x0031_382 = value; 
		}
	}
	protected schemaLib._x0031_382 __x0031_382;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_385 get_x0031_385() {
		return __x0031_385;  
	}
	public void set_x0031_385(schemaLib._x0031_385 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_385 = null;
		else {
			setElementName(value.getBase(), "_x0031_385");
			__x0031_385 = value; 
		}
	}
	protected schemaLib._x0031_385 __x0031_385;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_388B get_x0031_388() {
		return __x0031_388;  
	}
	public void set_x0031_388(schemaLib._x0031_388B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_388 = null;
		else {
			setElementName(value.getBase(), "_x0031_388");
			__x0031_388 = value; 
		}
	}
	protected schemaLib._x0031_388B __x0031_388;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_391 get_x0031_391() {
		return __x0031_391;  
	}
	public void set_x0031_391(schemaLib._x0031_391 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_391 = null;
		else {
			setElementName(value.getBase(), "_x0031_391");
			__x0031_391 = value; 
		}
	}
	protected schemaLib._x0031_391 __x0031_391;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_395 get_x0031_395() {
		return __x0031_395;  
	}
	public void set_x0031_395(schemaLib._x0031_395 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_395 = null;
		else {
			setElementName(value.getBase(), "_x0031_395");
			__x0031_395 = value; 
		}
	}
	protected schemaLib._x0031_395 __x0031_395;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_398 get_x0031_398() {
		return __x0031_398;  
	}
	public void set_x0031_398(schemaLib._x0031_398 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_398 = null;
		else {
			setElementName(value.getBase(), "_x0031_398");
			__x0031_398 = value; 
		}
	}
	protected schemaLib._x0031_398 __x0031_398;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_351", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_363", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_363"), findSetterMethod("schemaLib._x0031_351", "set_x0031_363", "schemaLib._x0031_363"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_363.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_373", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_373"), findSetterMethod("schemaLib._x0031_351", "set_x0031_373", "schemaLib._x0031_373"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_373.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_376", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_376"), findSetterMethod("schemaLib._x0031_351", "set_x0031_376", "schemaLib._x0031_376"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_376.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_382", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_382"), findSetterMethod("schemaLib._x0031_351", "set_x0031_382", "schemaLib._x0031_382"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_382.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_385", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_385"), findSetterMethod("schemaLib._x0031_351", "set_x0031_385", "schemaLib._x0031_385"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_385.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_388", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_388"), findSetterMethod("schemaLib._x0031_351", "set_x0031_388", "schemaLib._x0031_388B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_388B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_391", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_391"), findSetterMethod("schemaLib._x0031_351", "set_x0031_391", "schemaLib._x0031_391"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_391.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_395", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_395"), findSetterMethod("schemaLib._x0031_351", "set_x0031_395", "schemaLib._x0031_395"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_395.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_398", "", findGetterMethod("schemaLib._x0031_351", "get_x0031_398"), findSetterMethod("schemaLib._x0031_351", "set_x0031_398", "schemaLib._x0031_398"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_398.class)
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


