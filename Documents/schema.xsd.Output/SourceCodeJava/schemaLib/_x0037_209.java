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
// This class represents the ComplexType _x0037_209
// </summary>
public class _x0037_209 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_209
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_209() {
		setElementName("_x0037_209");
		init();
	}
	public _x0037_209(String elementName) {
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
			__x0037_212 = null;
			__x0037_214 = null;
			__x0037_215 = null;
			__x0037_219 = null;
			__x0037_224 = null;
			__x0037_227 = null;
			__x0037_230 = null;

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
			schemaLib._x0037_209 newObject = (schemaLib._x0037_209)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_212 = null;
			if (__x0037_212 != null)
				newObject.__x0037_212 = (schemaLib._x0037_212)__x0037_212.clone();
			newObject.__x0037_214 = null;
			if (__x0037_214 != null)
				newObject.__x0037_214 = (schemaLib._x0037_214)__x0037_214.clone();
			newObject.__x0037_215 = null;
			if (__x0037_215 != null)
				newObject.__x0037_215 = (schemaLib._x0037_215)__x0037_215.clone();
			newObject.__x0037_219 = null;
			if (__x0037_219 != null)
				newObject.__x0037_219 = (schemaLib._x0037_219)__x0037_219.clone();
			newObject.__x0037_224 = null;
			if (__x0037_224 != null)
				newObject.__x0037_224 = (schemaLib._x0037_224)__x0037_224.clone();
			newObject.__x0037_227 = null;
			if (__x0037_227 != null)
				newObject.__x0037_227 = (schemaLib._x0037_227)__x0037_227.clone();
			newObject.__x0037_230 = null;
			if (__x0037_230 != null)
				newObject.__x0037_230 = (schemaLib._x0037_230)__x0037_230.clone();
	
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
	public schemaLib._x0037_212 get_x0037_212() {
		return __x0037_212;  
	}
	public void set_x0037_212(schemaLib._x0037_212 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_212 = null;
		else {
			setElementName(value.getBase(), "_x0037_212");
			__x0037_212 = value; 
		}
	}
	protected schemaLib._x0037_212 __x0037_212;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_214 get_x0037_214() {
		return __x0037_214;  
	}
	public void set_x0037_214(schemaLib._x0037_214 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_214 = null;
		else {
			setElementName(value.getBase(), "_x0037_214");
			__x0037_214 = value; 
		}
	}
	protected schemaLib._x0037_214 __x0037_214;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_215 get_x0037_215() {
		return __x0037_215;  
	}
	public void set_x0037_215(schemaLib._x0037_215 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_215 = null;
		else {
			setElementName(value.getBase(), "_x0037_215");
			__x0037_215 = value; 
		}
	}
	protected schemaLib._x0037_215 __x0037_215;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_219 get_x0037_219() {
		return __x0037_219;  
	}
	public void set_x0037_219(schemaLib._x0037_219 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_219 = null;
		else {
			setElementName(value.getBase(), "_x0037_219");
			__x0037_219 = value; 
		}
	}
	protected schemaLib._x0037_219 __x0037_219;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_224 get_x0037_224() {
		return __x0037_224;  
	}
	public void set_x0037_224(schemaLib._x0037_224 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_224 = null;
		else {
			setElementName(value.getBase(), "_x0037_224");
			__x0037_224 = value; 
		}
	}
	protected schemaLib._x0037_224 __x0037_224;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_227 get_x0037_227() {
		return __x0037_227;  
	}
	public void set_x0037_227(schemaLib._x0037_227 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_227 = null;
		else {
			setElementName(value.getBase(), "_x0037_227");
			__x0037_227 = value; 
		}
	}
	protected schemaLib._x0037_227 __x0037_227;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_230 get_x0037_230() {
		return __x0037_230;  
	}
	public void set_x0037_230(schemaLib._x0037_230 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_230 = null;
		else {
			setElementName(value.getBase(), "_x0037_230");
			__x0037_230 = value; 
		}
	}
	protected schemaLib._x0037_230 __x0037_230;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_209", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_212", "", findGetterMethod("schemaLib._x0037_209", "get_x0037_212"), findSetterMethod("schemaLib._x0037_209", "set_x0037_212", "schemaLib._x0037_212"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_212.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_214", "", findGetterMethod("schemaLib._x0037_209", "get_x0037_214"), findSetterMethod("schemaLib._x0037_209", "set_x0037_214", "schemaLib._x0037_214"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_214.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_215", "", findGetterMethod("schemaLib._x0037_209", "get_x0037_215"), findSetterMethod("schemaLib._x0037_209", "set_x0037_215", "schemaLib._x0037_215"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_215.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_219", "", findGetterMethod("schemaLib._x0037_209", "get_x0037_219"), findSetterMethod("schemaLib._x0037_209", "set_x0037_219", "schemaLib._x0037_219"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_219.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_224", "", findGetterMethod("schemaLib._x0037_209", "get_x0037_224"), findSetterMethod("schemaLib._x0037_209", "set_x0037_224", "schemaLib._x0037_224"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_224.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_227", "", findGetterMethod("schemaLib._x0037_209", "get_x0037_227"), findSetterMethod("schemaLib._x0037_209", "set_x0037_227", "schemaLib._x0037_227"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_227.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_230", "", findGetterMethod("schemaLib._x0037_209", "get_x0037_230"), findSetterMethod("schemaLib._x0037_209", "set_x0037_230", "schemaLib._x0037_230"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_230.class)
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


