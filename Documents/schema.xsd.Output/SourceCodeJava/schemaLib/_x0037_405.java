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
// This class represents the ComplexType _x0037_405
// </summary>
public class _x0037_405 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_405
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_405() {
		setElementName("_x0037_405");
		init();
	}
	public _x0037_405(String elementName) {
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
			__x0037_407 = null;
			__x0037_408 = null;
			__x0037_409 = null;
			__x0037_410 = null;
			__x0037_411 = null;
			__x0037_412 = null;
			__x0037_413 = null;

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
			schemaLib._x0037_405 newObject = (schemaLib._x0037_405)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_407 = null;
			if (__x0037_407 != null)
				newObject.__x0037_407 = (schemaLib._x0037_407)__x0037_407.clone();
			newObject.__x0037_408 = null;
			if (__x0037_408 != null)
				newObject.__x0037_408 = (schemaLib._x0037_408)__x0037_408.clone();
			newObject.__x0037_409 = null;
			if (__x0037_409 != null)
				newObject.__x0037_409 = (schemaLib._x0037_409)__x0037_409.clone();
			newObject.__x0037_410 = null;
			if (__x0037_410 != null)
				newObject.__x0037_410 = (schemaLib._x0037_410)__x0037_410.clone();
			newObject.__x0037_411 = null;
			if (__x0037_411 != null)
				newObject.__x0037_411 = (schemaLib._x0037_411)__x0037_411.clone();
			newObject.__x0037_412 = null;
			if (__x0037_412 != null)
				newObject.__x0037_412 = (schemaLib._x0037_412)__x0037_412.clone();
			newObject.__x0037_413 = null;
			if (__x0037_413 != null)
				newObject.__x0037_413 = (schemaLib._x0037_413)__x0037_413.clone();
	
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
	public schemaLib._x0037_407 get_x0037_407() {
		return __x0037_407;  
	}
	public void set_x0037_407(schemaLib._x0037_407 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_407 = null;
		else {
			setElementName(value.getBase(), "_x0037_407");
			__x0037_407 = value; 
		}
	}
	protected schemaLib._x0037_407 __x0037_407;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_408 get_x0037_408() {
		return __x0037_408;  
	}
	public void set_x0037_408(schemaLib._x0037_408 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_408 = null;
		else {
			setElementName(value.getBase(), "_x0037_408");
			__x0037_408 = value; 
		}
	}
	protected schemaLib._x0037_408 __x0037_408;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_409 get_x0037_409() {
		return __x0037_409;  
	}
	public void set_x0037_409(schemaLib._x0037_409 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_409 = null;
		else {
			setElementName(value.getBase(), "_x0037_409");
			__x0037_409 = value; 
		}
	}
	protected schemaLib._x0037_409 __x0037_409;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_410 get_x0037_410() {
		return __x0037_410;  
	}
	public void set_x0037_410(schemaLib._x0037_410 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_410 = null;
		else {
			setElementName(value.getBase(), "_x0037_410");
			__x0037_410 = value; 
		}
	}
	protected schemaLib._x0037_410 __x0037_410;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_411 get_x0037_411() {
		return __x0037_411;  
	}
	public void set_x0037_411(schemaLib._x0037_411 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_411 = null;
		else {
			setElementName(value.getBase(), "_x0037_411");
			__x0037_411 = value; 
		}
	}
	protected schemaLib._x0037_411 __x0037_411;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_412 get_x0037_412() {
		return __x0037_412;  
	}
	public void set_x0037_412(schemaLib._x0037_412 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_412 = null;
		else {
			setElementName(value.getBase(), "_x0037_412");
			__x0037_412 = value; 
		}
	}
	protected schemaLib._x0037_412 __x0037_412;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_413 get_x0037_413() {
		return __x0037_413;  
	}
	public void set_x0037_413(schemaLib._x0037_413 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_413 = null;
		else {
			setElementName(value.getBase(), "_x0037_413");
			__x0037_413 = value; 
		}
	}
	protected schemaLib._x0037_413 __x0037_413;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_405", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_407", "", findGetterMethod("schemaLib._x0037_405", "get_x0037_407"), findSetterMethod("schemaLib._x0037_405", "set_x0037_407", "schemaLib._x0037_407"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_407.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_408", "", findGetterMethod("schemaLib._x0037_405", "get_x0037_408"), findSetterMethod("schemaLib._x0037_405", "set_x0037_408", "schemaLib._x0037_408"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_408.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_409", "", findGetterMethod("schemaLib._x0037_405", "get_x0037_409"), findSetterMethod("schemaLib._x0037_405", "set_x0037_409", "schemaLib._x0037_409"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_409.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_410", "", findGetterMethod("schemaLib._x0037_405", "get_x0037_410"), findSetterMethod("schemaLib._x0037_405", "set_x0037_410", "schemaLib._x0037_410"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_410.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_411", "", findGetterMethod("schemaLib._x0037_405", "get_x0037_411"), findSetterMethod("schemaLib._x0037_405", "set_x0037_411", "schemaLib._x0037_411"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_411.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_412", "", findGetterMethod("schemaLib._x0037_405", "get_x0037_412"), findSetterMethod("schemaLib._x0037_405", "set_x0037_412", "schemaLib._x0037_412"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_412.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_413", "", findGetterMethod("schemaLib._x0037_405", "get_x0037_413"), findSetterMethod("schemaLib._x0037_405", "set_x0037_413", "schemaLib._x0037_413"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_413.class)
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


