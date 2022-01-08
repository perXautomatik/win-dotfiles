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
// This class represents the ComplexType _x0031_313
// </summary>
public class _x0031_313 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_313
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_313() {
		setElementName("_x0031_313");
		init();
	}
	public _x0031_313(String elementName) {
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
			__x0031_154 = null;
			__x0031_197 = null;
			__x0031_202 = null;
			__x0031_215 = null;
			__x0031_221 = null;
			__x0031_222 = null;
			__x0031_240 = null;
			__x0031_314 = null;

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
			schemaLib._x0031_313 newObject = (schemaLib._x0031_313)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_154 = null;
			if (__x0031_154 != null)
				newObject.__x0031_154 = (schemaLib._x0031_154)__x0031_154.clone();
			newObject.__x0031_197 = null;
			if (__x0031_197 != null)
				newObject.__x0031_197 = (schemaLib._x0031_197)__x0031_197.clone();
			newObject.__x0031_202 = null;
			if (__x0031_202 != null)
				newObject.__x0031_202 = (schemaLib._x0031_202)__x0031_202.clone();
			newObject.__x0031_215 = null;
			if (__x0031_215 != null)
				newObject.__x0031_215 = (schemaLib._x0031_215)__x0031_215.clone();
			newObject.__x0031_221 = null;
			if (__x0031_221 != null)
				newObject.__x0031_221 = (schemaLib._x0031_221)__x0031_221.clone();
			newObject.__x0031_222 = null;
			if (__x0031_222 != null)
				newObject.__x0031_222 = (schemaLib._x0031_222)__x0031_222.clone();
			newObject.__x0031_240 = null;
			if (__x0031_240 != null)
				newObject.__x0031_240 = (schemaLib._x0031_240)__x0031_240.clone();
			newObject.__x0031_314 = null;
			if (__x0031_314 != null)
				newObject.__x0031_314 = (schemaLib._x0031_314)__x0031_314.clone();
	
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
	public schemaLib._x0031_154 get_x0031_154() {
		return __x0031_154;  
	}
	public void set_x0031_154(schemaLib._x0031_154 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_154 = null;
		else {
			setElementName(value.getBase(), "_x0031_154");
			__x0031_154 = value; 
		}
	}
	protected schemaLib._x0031_154 __x0031_154;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_197 get_x0031_197() {
		return __x0031_197;  
	}
	public void set_x0031_197(schemaLib._x0031_197 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_197 = null;
		else {
			setElementName(value.getBase(), "_x0031_197");
			__x0031_197 = value; 
		}
	}
	protected schemaLib._x0031_197 __x0031_197;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_202 get_x0031_202() {
		return __x0031_202;  
	}
	public void set_x0031_202(schemaLib._x0031_202 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_202 = null;
		else {
			setElementName(value.getBase(), "_x0031_202");
			__x0031_202 = value; 
		}
	}
	protected schemaLib._x0031_202 __x0031_202;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_215 get_x0031_215() {
		return __x0031_215;  
	}
	public void set_x0031_215(schemaLib._x0031_215 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_215 = null;
		else {
			setElementName(value.getBase(), "_x0031_215");
			__x0031_215 = value; 
		}
	}
	protected schemaLib._x0031_215 __x0031_215;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_221 get_x0031_221() {
		return __x0031_221;  
	}
	public void set_x0031_221(schemaLib._x0031_221 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_221 = null;
		else {
			setElementName(value.getBase(), "_x0031_221");
			__x0031_221 = value; 
		}
	}
	protected schemaLib._x0031_221 __x0031_221;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_222 get_x0031_222() {
		return __x0031_222;  
	}
	public void set_x0031_222(schemaLib._x0031_222 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_222 = null;
		else {
			setElementName(value.getBase(), "_x0031_222");
			__x0031_222 = value; 
		}
	}
	protected schemaLib._x0031_222 __x0031_222;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_240 get_x0031_240() {
		return __x0031_240;  
	}
	public void set_x0031_240(schemaLib._x0031_240 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_240 = null;
		else {
			setElementName(value.getBase(), "_x0031_240");
			__x0031_240 = value; 
		}
	}
	protected schemaLib._x0031_240 __x0031_240;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_314 get_x0031_314() {
		return __x0031_314;  
	}
	public void set_x0031_314(schemaLib._x0031_314 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_314 = null;
		else {
			setElementName(value.getBase(), "_x0031_314");
			__x0031_314 = value; 
		}
	}
	protected schemaLib._x0031_314 __x0031_314;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_313", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_154", "", findGetterMethod("schemaLib._x0031_313", "get_x0031_154"), findSetterMethod("schemaLib._x0031_313", "set_x0031_154", "schemaLib._x0031_154"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_154.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_197", "", findGetterMethod("schemaLib._x0031_313", "get_x0031_197"), findSetterMethod("schemaLib._x0031_313", "set_x0031_197", "schemaLib._x0031_197"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_197.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_202", "", findGetterMethod("schemaLib._x0031_313", "get_x0031_202"), findSetterMethod("schemaLib._x0031_313", "set_x0031_202", "schemaLib._x0031_202"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_202.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_215", "", findGetterMethod("schemaLib._x0031_313", "get_x0031_215"), findSetterMethod("schemaLib._x0031_313", "set_x0031_215", "schemaLib._x0031_215"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_215.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_221", "", findGetterMethod("schemaLib._x0031_313", "get_x0031_221"), findSetterMethod("schemaLib._x0031_313", "set_x0031_221", "schemaLib._x0031_221"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_221.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_222", "", findGetterMethod("schemaLib._x0031_313", "get_x0031_222"), findSetterMethod("schemaLib._x0031_313", "set_x0031_222", "schemaLib._x0031_222"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_222.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_240", "", findGetterMethod("schemaLib._x0031_313", "get_x0031_240"), findSetterMethod("schemaLib._x0031_313", "set_x0031_240", "schemaLib._x0031_240"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_240.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_314", "", findGetterMethod("schemaLib._x0031_313", "get_x0031_314"), findSetterMethod("schemaLib._x0031_313", "set_x0031_314", "schemaLib._x0031_314"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_314.class)
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


