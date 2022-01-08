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
// This class represents the ComplexType _x0035_162
// </summary>
public class _x0035_162 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0035_162
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0035_162() {
		setElementName("_x0035_162");
		init();
	}
	public _x0035_162(String elementName) {
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
			__x0035_196 = null;
			__x0035_202 = null;
			__x0035_205 = null;
			__x0035_208 = null;
			__x0035_214 = null;
			__x0035_217 = null;
			__x0035_220 = null;
			__x0035_226 = null;

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
			schemaLib._x0035_162 newObject = (schemaLib._x0035_162)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_196 = null;
			if (__x0035_196 != null)
				newObject.__x0035_196 = (schemaLib._x0035_196)__x0035_196.clone();
			newObject.__x0035_202 = null;
			if (__x0035_202 != null)
				newObject.__x0035_202 = (schemaLib._x0035_202)__x0035_202.clone();
			newObject.__x0035_205 = null;
			if (__x0035_205 != null)
				newObject.__x0035_205 = (schemaLib._x0035_205)__x0035_205.clone();
			newObject.__x0035_208 = null;
			if (__x0035_208 != null)
				newObject.__x0035_208 = (schemaLib._x0035_208)__x0035_208.clone();
			newObject.__x0035_214 = null;
			if (__x0035_214 != null)
				newObject.__x0035_214 = (schemaLib._x0035_214)__x0035_214.clone();
			newObject.__x0035_217 = null;
			if (__x0035_217 != null)
				newObject.__x0035_217 = (schemaLib._x0035_217)__x0035_217.clone();
			newObject.__x0035_220 = null;
			if (__x0035_220 != null)
				newObject.__x0035_220 = (schemaLib._x0035_220)__x0035_220.clone();
			newObject.__x0035_226 = null;
			if (__x0035_226 != null)
				newObject.__x0035_226 = (schemaLib._x0035_226)__x0035_226.clone();
	
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
	public schemaLib._x0035_196 get_x0035_196() {
		return __x0035_196;  
	}
	public void set_x0035_196(schemaLib._x0035_196 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_196 = null;
		else {
			setElementName(value.getBase(), "_x0035_196");
			__x0035_196 = value; 
		}
	}
	protected schemaLib._x0035_196 __x0035_196;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_202 get_x0035_202() {
		return __x0035_202;  
	}
	public void set_x0035_202(schemaLib._x0035_202 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_202 = null;
		else {
			setElementName(value.getBase(), "_x0035_202");
			__x0035_202 = value; 
		}
	}
	protected schemaLib._x0035_202 __x0035_202;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_205 get_x0035_205() {
		return __x0035_205;  
	}
	public void set_x0035_205(schemaLib._x0035_205 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_205 = null;
		else {
			setElementName(value.getBase(), "_x0035_205");
			__x0035_205 = value; 
		}
	}
	protected schemaLib._x0035_205 __x0035_205;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_208 get_x0035_208() {
		return __x0035_208;  
	}
	public void set_x0035_208(schemaLib._x0035_208 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_208 = null;
		else {
			setElementName(value.getBase(), "_x0035_208");
			__x0035_208 = value; 
		}
	}
	protected schemaLib._x0035_208 __x0035_208;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_214 get_x0035_214() {
		return __x0035_214;  
	}
	public void set_x0035_214(schemaLib._x0035_214 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_214 = null;
		else {
			setElementName(value.getBase(), "_x0035_214");
			__x0035_214 = value; 
		}
	}
	protected schemaLib._x0035_214 __x0035_214;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_217 get_x0035_217() {
		return __x0035_217;  
	}
	public void set_x0035_217(schemaLib._x0035_217 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_217 = null;
		else {
			setElementName(value.getBase(), "_x0035_217");
			__x0035_217 = value; 
		}
	}
	protected schemaLib._x0035_217 __x0035_217;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_220 get_x0035_220() {
		return __x0035_220;  
	}
	public void set_x0035_220(schemaLib._x0035_220 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_220 = null;
		else {
			setElementName(value.getBase(), "_x0035_220");
			__x0035_220 = value; 
		}
	}
	protected schemaLib._x0035_220 __x0035_220;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_226 get_x0035_226() {
		return __x0035_226;  
	}
	public void set_x0035_226(schemaLib._x0035_226 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_226 = null;
		else {
			setElementName(value.getBase(), "_x0035_226");
			__x0035_226 = value; 
		}
	}
	protected schemaLib._x0035_226 __x0035_226;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0035_162", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_196", "", findGetterMethod("schemaLib._x0035_162", "get_x0035_196"), findSetterMethod("schemaLib._x0035_162", "set_x0035_196", "schemaLib._x0035_196"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_196.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_202", "", findGetterMethod("schemaLib._x0035_162", "get_x0035_202"), findSetterMethod("schemaLib._x0035_162", "set_x0035_202", "schemaLib._x0035_202"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_202.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_205", "", findGetterMethod("schemaLib._x0035_162", "get_x0035_205"), findSetterMethod("schemaLib._x0035_162", "set_x0035_205", "schemaLib._x0035_205"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_205.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_208", "", findGetterMethod("schemaLib._x0035_162", "get_x0035_208"), findSetterMethod("schemaLib._x0035_162", "set_x0035_208", "schemaLib._x0035_208"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_208.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_214", "", findGetterMethod("schemaLib._x0035_162", "get_x0035_214"), findSetterMethod("schemaLib._x0035_162", "set_x0035_214", "schemaLib._x0035_214"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_214.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_217", "", findGetterMethod("schemaLib._x0035_162", "get_x0035_217"), findSetterMethod("schemaLib._x0035_162", "set_x0035_217", "schemaLib._x0035_217"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_217.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_220", "", findGetterMethod("schemaLib._x0035_162", "get_x0035_220"), findSetterMethod("schemaLib._x0035_162", "set_x0035_220", "schemaLib._x0035_220"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_220.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_226", "", findGetterMethod("schemaLib._x0035_162", "get_x0035_226"), findSetterMethod("schemaLib._x0035_162", "set_x0035_226", "schemaLib._x0035_226"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_226.class)
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


