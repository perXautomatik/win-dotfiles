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
// This class represents the ComplexType _x0036_242
// </summary>
public class _x0036_242 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_242
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_242() {
		setElementName("_x0036_242");
		init();
	}
	public _x0036_242(String elementName) {
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
			__x0036_245 = null;
			__x0036_247 = null;
			__x0036_248 = null;
			__x0036_252 = null;
			__x0036_257 = null;
			__x0036_260 = null;
			__x0036_263 = null;
			__x0036_266 = null;

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
			schemaLib._x0036_242 newObject = (schemaLib._x0036_242)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_245 = null;
			if (__x0036_245 != null)
				newObject.__x0036_245 = (schemaLib._x0036_245)__x0036_245.clone();
			newObject.__x0036_247 = null;
			if (__x0036_247 != null)
				newObject.__x0036_247 = (schemaLib._x0036_247)__x0036_247.clone();
			newObject.__x0036_248 = null;
			if (__x0036_248 != null)
				newObject.__x0036_248 = (schemaLib._x0036_248)__x0036_248.clone();
			newObject.__x0036_252 = null;
			if (__x0036_252 != null)
				newObject.__x0036_252 = (schemaLib._x0036_252)__x0036_252.clone();
			newObject.__x0036_257 = null;
			if (__x0036_257 != null)
				newObject.__x0036_257 = (schemaLib._x0036_257)__x0036_257.clone();
			newObject.__x0036_260 = null;
			if (__x0036_260 != null)
				newObject.__x0036_260 = (schemaLib._x0036_260)__x0036_260.clone();
			newObject.__x0036_263 = null;
			if (__x0036_263 != null)
				newObject.__x0036_263 = (schemaLib._x0036_263)__x0036_263.clone();
			newObject.__x0036_266 = null;
			if (__x0036_266 != null)
				newObject.__x0036_266 = (schemaLib._x0036_266)__x0036_266.clone();
	
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
	public schemaLib._x0036_245 get_x0036_245() {
		return __x0036_245;  
	}
	public void set_x0036_245(schemaLib._x0036_245 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_245 = null;
		else {
			setElementName(value.getBase(), "_x0036_245");
			__x0036_245 = value; 
		}
	}
	protected schemaLib._x0036_245 __x0036_245;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_247 get_x0036_247() {
		return __x0036_247;  
	}
	public void set_x0036_247(schemaLib._x0036_247 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_247 = null;
		else {
			setElementName(value.getBase(), "_x0036_247");
			__x0036_247 = value; 
		}
	}
	protected schemaLib._x0036_247 __x0036_247;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_248 get_x0036_248() {
		return __x0036_248;  
	}
	public void set_x0036_248(schemaLib._x0036_248 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_248 = null;
		else {
			setElementName(value.getBase(), "_x0036_248");
			__x0036_248 = value; 
		}
	}
	protected schemaLib._x0036_248 __x0036_248;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_252 get_x0036_252() {
		return __x0036_252;  
	}
	public void set_x0036_252(schemaLib._x0036_252 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_252 = null;
		else {
			setElementName(value.getBase(), "_x0036_252");
			__x0036_252 = value; 
		}
	}
	protected schemaLib._x0036_252 __x0036_252;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_257 get_x0036_257() {
		return __x0036_257;  
	}
	public void set_x0036_257(schemaLib._x0036_257 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_257 = null;
		else {
			setElementName(value.getBase(), "_x0036_257");
			__x0036_257 = value; 
		}
	}
	protected schemaLib._x0036_257 __x0036_257;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_260 get_x0036_260() {
		return __x0036_260;  
	}
	public void set_x0036_260(schemaLib._x0036_260 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_260 = null;
		else {
			setElementName(value.getBase(), "_x0036_260");
			__x0036_260 = value; 
		}
	}
	protected schemaLib._x0036_260 __x0036_260;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_263 get_x0036_263() {
		return __x0036_263;  
	}
	public void set_x0036_263(schemaLib._x0036_263 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_263 = null;
		else {
			setElementName(value.getBase(), "_x0036_263");
			__x0036_263 = value; 
		}
	}
	protected schemaLib._x0036_263 __x0036_263;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_266 get_x0036_266() {
		return __x0036_266;  
	}
	public void set_x0036_266(schemaLib._x0036_266 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_266 = null;
		else {
			setElementName(value.getBase(), "_x0036_266");
			__x0036_266 = value; 
		}
	}
	protected schemaLib._x0036_266 __x0036_266;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_242", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_245", "", findGetterMethod("schemaLib._x0036_242", "get_x0036_245"), findSetterMethod("schemaLib._x0036_242", "set_x0036_245", "schemaLib._x0036_245"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_245.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_247", "", findGetterMethod("schemaLib._x0036_242", "get_x0036_247"), findSetterMethod("schemaLib._x0036_242", "set_x0036_247", "schemaLib._x0036_247"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_247.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_248", "", findGetterMethod("schemaLib._x0036_242", "get_x0036_248"), findSetterMethod("schemaLib._x0036_242", "set_x0036_248", "schemaLib._x0036_248"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_248.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_252", "", findGetterMethod("schemaLib._x0036_242", "get_x0036_252"), findSetterMethod("schemaLib._x0036_242", "set_x0036_252", "schemaLib._x0036_252"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_252.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_257", "", findGetterMethod("schemaLib._x0036_242", "get_x0036_257"), findSetterMethod("schemaLib._x0036_242", "set_x0036_257", "schemaLib._x0036_257"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_257.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_260", "", findGetterMethod("schemaLib._x0036_242", "get_x0036_260"), findSetterMethod("schemaLib._x0036_242", "set_x0036_260", "schemaLib._x0036_260"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_260.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_263", "", findGetterMethod("schemaLib._x0036_242", "get_x0036_263"), findSetterMethod("schemaLib._x0036_242", "set_x0036_263", "schemaLib._x0036_263"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_263.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_266", "", findGetterMethod("schemaLib._x0036_242", "get_x0036_266"), findSetterMethod("schemaLib._x0036_242", "set_x0036_266", "schemaLib._x0036_266"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_266.class)
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


