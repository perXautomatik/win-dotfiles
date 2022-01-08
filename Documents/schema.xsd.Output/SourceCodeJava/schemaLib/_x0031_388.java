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
// This class represents the ComplexType _x0031_388
// </summary>
public class _x0031_388 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_388
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_388() {
		setElementName("_x0031_388");
		init();
	}
	public _x0031_388(String elementName) {
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
			__x0031_391 = null;
			__x0031_393 = null;
			__x0031_397 = null;
			__x0031_400 = null;
			__x0031_403 = null;
			__x0031_406 = null;
			__x0031_409 = null;

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
			schemaLib._x0031_388 newObject = (schemaLib._x0031_388)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_391 = null;
			if (__x0031_391 != null)
				newObject.__x0031_391 = (schemaLib._x0031_391A)__x0031_391.clone();
			newObject.__x0031_393 = null;
			if (__x0031_393 != null)
				newObject.__x0031_393 = (schemaLib._x0031_393)__x0031_393.clone();
			newObject.__x0031_397 = null;
			if (__x0031_397 != null)
				newObject.__x0031_397 = (schemaLib._x0031_397)__x0031_397.clone();
			newObject.__x0031_400 = null;
			if (__x0031_400 != null)
				newObject.__x0031_400 = (schemaLib._x0031_400)__x0031_400.clone();
			newObject.__x0031_403 = null;
			if (__x0031_403 != null)
				newObject.__x0031_403 = (schemaLib._x0031_403)__x0031_403.clone();
			newObject.__x0031_406 = null;
			if (__x0031_406 != null)
				newObject.__x0031_406 = (schemaLib._x0031_406)__x0031_406.clone();
			newObject.__x0031_409 = null;
			if (__x0031_409 != null)
				newObject.__x0031_409 = (schemaLib._x0031_409)__x0031_409.clone();
	
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
	public schemaLib._x0031_391A get_x0031_391() {
		return __x0031_391;  
	}
	public void set_x0031_391(schemaLib._x0031_391A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_391 = null;
		else {
			setElementName(value.getBase(), "_x0031_391");
			__x0031_391 = value; 
		}
	}
	protected schemaLib._x0031_391A __x0031_391;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_393 get_x0031_393() {
		return __x0031_393;  
	}
	public void set_x0031_393(schemaLib._x0031_393 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_393 = null;
		else {
			setElementName(value.getBase(), "_x0031_393");
			__x0031_393 = value; 
		}
	}
	protected schemaLib._x0031_393 __x0031_393;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_397 get_x0031_397() {
		return __x0031_397;  
	}
	public void set_x0031_397(schemaLib._x0031_397 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_397 = null;
		else {
			setElementName(value.getBase(), "_x0031_397");
			__x0031_397 = value; 
		}
	}
	protected schemaLib._x0031_397 __x0031_397;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_400 get_x0031_400() {
		return __x0031_400;  
	}
	public void set_x0031_400(schemaLib._x0031_400 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_400 = null;
		else {
			setElementName(value.getBase(), "_x0031_400");
			__x0031_400 = value; 
		}
	}
	protected schemaLib._x0031_400 __x0031_400;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_403 get_x0031_403() {
		return __x0031_403;  
	}
	public void set_x0031_403(schemaLib._x0031_403 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_403 = null;
		else {
			setElementName(value.getBase(), "_x0031_403");
			__x0031_403 = value; 
		}
	}
	protected schemaLib._x0031_403 __x0031_403;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_406 get_x0031_406() {
		return __x0031_406;  
	}
	public void set_x0031_406(schemaLib._x0031_406 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_406 = null;
		else {
			setElementName(value.getBase(), "_x0031_406");
			__x0031_406 = value; 
		}
	}
	protected schemaLib._x0031_406 __x0031_406;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_409 get_x0031_409() {
		return __x0031_409;  
	}
	public void set_x0031_409(schemaLib._x0031_409 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_409 = null;
		else {
			setElementName(value.getBase(), "_x0031_409");
			__x0031_409 = value; 
		}
	}
	protected schemaLib._x0031_409 __x0031_409;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_388", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_391", "", findGetterMethod("schemaLib._x0031_388", "get_x0031_391"), findSetterMethod("schemaLib._x0031_388", "set_x0031_391", "schemaLib._x0031_391A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_391A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_393", "", findGetterMethod("schemaLib._x0031_388", "get_x0031_393"), findSetterMethod("schemaLib._x0031_388", "set_x0031_393", "schemaLib._x0031_393"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_393.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_397", "", findGetterMethod("schemaLib._x0031_388", "get_x0031_397"), findSetterMethod("schemaLib._x0031_388", "set_x0031_397", "schemaLib._x0031_397"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_397.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_400", "", findGetterMethod("schemaLib._x0031_388", "get_x0031_400"), findSetterMethod("schemaLib._x0031_388", "set_x0031_400", "schemaLib._x0031_400"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_400.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_403", "", findGetterMethod("schemaLib._x0031_388", "get_x0031_403"), findSetterMethod("schemaLib._x0031_388", "set_x0031_403", "schemaLib._x0031_403"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_403.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_406", "", findGetterMethod("schemaLib._x0031_388", "get_x0031_406"), findSetterMethod("schemaLib._x0031_388", "set_x0031_406", "schemaLib._x0031_406"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_406.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_409", "", findGetterMethod("schemaLib._x0031_388", "get_x0031_409"), findSetterMethod("schemaLib._x0031_388", "set_x0031_409", "schemaLib._x0031_409"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_409.class)
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


