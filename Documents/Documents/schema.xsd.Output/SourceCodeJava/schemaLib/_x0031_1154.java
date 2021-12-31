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
// This class represents the ComplexType _x0031_1154
// </summary>
public class _x0031_1154 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_1154
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_1154() {
		setElementName("_x0031_1154");
		init();
	}
	public _x0031_1154(String elementName) {
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
			__x0031_1192 = null;
			__x0031_1207 = null;
			__x0031_1251 = null;
			__x0031_1254 = null;
			__x0031_1257 = null;
			__x0031_1262 = null;

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
			schemaLib._x0031_1154 newObject = (schemaLib._x0031_1154)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_1192 = null;
			if (__x0031_1192 != null)
				newObject.__x0031_1192 = (schemaLib._x0031_1192)__x0031_1192.clone();
			newObject.__x0031_1207 = null;
			if (__x0031_1207 != null)
				newObject.__x0031_1207 = (schemaLib._x0031_1207)__x0031_1207.clone();
			newObject.__x0031_1251 = null;
			if (__x0031_1251 != null)
				newObject.__x0031_1251 = (schemaLib._x0031_1251)__x0031_1251.clone();
			newObject.__x0031_1254 = null;
			if (__x0031_1254 != null)
				newObject.__x0031_1254 = (schemaLib._x0031_1254)__x0031_1254.clone();
			newObject.__x0031_1257 = null;
			if (__x0031_1257 != null)
				newObject.__x0031_1257 = (schemaLib._x0031_1257)__x0031_1257.clone();
			newObject.__x0031_1262 = null;
			if (__x0031_1262 != null)
				newObject.__x0031_1262 = (schemaLib._x0031_1262)__x0031_1262.clone();
	
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
	public schemaLib._x0031_1192 get_x0031_1192() {
		return __x0031_1192;  
	}
	public void set_x0031_1192(schemaLib._x0031_1192 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1192 = null;
		else {
			setElementName(value.getBase(), "_x0031_1192");
			__x0031_1192 = value; 
		}
	}
	protected schemaLib._x0031_1192 __x0031_1192;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1207 get_x0031_1207() {
		return __x0031_1207;  
	}
	public void set_x0031_1207(schemaLib._x0031_1207 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1207 = null;
		else {
			setElementName(value.getBase(), "_x0031_1207");
			__x0031_1207 = value; 
		}
	}
	protected schemaLib._x0031_1207 __x0031_1207;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1251 get_x0031_1251() {
		return __x0031_1251;  
	}
	public void set_x0031_1251(schemaLib._x0031_1251 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1251 = null;
		else {
			setElementName(value.getBase(), "_x0031_1251");
			__x0031_1251 = value; 
		}
	}
	protected schemaLib._x0031_1251 __x0031_1251;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1254 get_x0031_1254() {
		return __x0031_1254;  
	}
	public void set_x0031_1254(schemaLib._x0031_1254 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1254 = null;
		else {
			setElementName(value.getBase(), "_x0031_1254");
			__x0031_1254 = value; 
		}
	}
	protected schemaLib._x0031_1254 __x0031_1254;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1257 get_x0031_1257() {
		return __x0031_1257;  
	}
	public void set_x0031_1257(schemaLib._x0031_1257 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1257 = null;
		else {
			setElementName(value.getBase(), "_x0031_1257");
			__x0031_1257 = value; 
		}
	}
	protected schemaLib._x0031_1257 __x0031_1257;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_1262 get_x0031_1262() {
		return __x0031_1262;  
	}
	public void set_x0031_1262(schemaLib._x0031_1262 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_1262 = null;
		else {
			setElementName(value.getBase(), "_x0031_1262");
			__x0031_1262 = value; 
		}
	}
	protected schemaLib._x0031_1262 __x0031_1262;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_1154", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1192", "", findGetterMethod("schemaLib._x0031_1154", "get_x0031_1192"), findSetterMethod("schemaLib._x0031_1154", "set_x0031_1192", "schemaLib._x0031_1192"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1192.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1207", "", findGetterMethod("schemaLib._x0031_1154", "get_x0031_1207"), findSetterMethod("schemaLib._x0031_1154", "set_x0031_1207", "schemaLib._x0031_1207"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1207.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1251", "", findGetterMethod("schemaLib._x0031_1154", "get_x0031_1251"), findSetterMethod("schemaLib._x0031_1154", "set_x0031_1251", "schemaLib._x0031_1251"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1251.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1254", "", findGetterMethod("schemaLib._x0031_1154", "get_x0031_1254"), findSetterMethod("schemaLib._x0031_1154", "set_x0031_1254", "schemaLib._x0031_1254"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1254.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1257", "", findGetterMethod("schemaLib._x0031_1154", "get_x0031_1257"), findSetterMethod("schemaLib._x0031_1154", "set_x0031_1257", "schemaLib._x0031_1257"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1257.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_1262", "", findGetterMethod("schemaLib._x0031_1154", "get_x0031_1262"), findSetterMethod("schemaLib._x0031_1154", "set_x0031_1262", "schemaLib._x0031_1262"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_1262.class)
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


