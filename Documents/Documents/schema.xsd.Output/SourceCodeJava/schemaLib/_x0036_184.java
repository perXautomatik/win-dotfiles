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
// This class represents the ComplexType _x0036_184
// </summary>
public class _x0036_184 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_184
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_184() {
		setElementName("_x0036_184");
		init();
	}
	public _x0036_184(String elementName) {
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
			__x0036_187 = null;
			__x0036_189 = null;
			__x0036_193 = null;
			__x0036_196 = null;
			__x0036_199 = null;
			__x0036_202 = null;

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
			schemaLib._x0036_184 newObject = (schemaLib._x0036_184)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_187 = null;
			if (__x0036_187 != null)
				newObject.__x0036_187 = (schemaLib._x0036_187)__x0036_187.clone();
			newObject.__x0036_189 = null;
			if (__x0036_189 != null)
				newObject.__x0036_189 = (schemaLib._x0036_189)__x0036_189.clone();
			newObject.__x0036_193 = null;
			if (__x0036_193 != null)
				newObject.__x0036_193 = (schemaLib._x0036_193)__x0036_193.clone();
			newObject.__x0036_196 = null;
			if (__x0036_196 != null)
				newObject.__x0036_196 = (schemaLib._x0036_196)__x0036_196.clone();
			newObject.__x0036_199 = null;
			if (__x0036_199 != null)
				newObject.__x0036_199 = (schemaLib._x0036_199)__x0036_199.clone();
			newObject.__x0036_202 = null;
			if (__x0036_202 != null)
				newObject.__x0036_202 = (schemaLib._x0036_202)__x0036_202.clone();
	
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
	public schemaLib._x0036_187 get_x0036_187() {
		return __x0036_187;  
	}
	public void set_x0036_187(schemaLib._x0036_187 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_187 = null;
		else {
			setElementName(value.getBase(), "_x0036_187");
			__x0036_187 = value; 
		}
	}
	protected schemaLib._x0036_187 __x0036_187;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_189 get_x0036_189() {
		return __x0036_189;  
	}
	public void set_x0036_189(schemaLib._x0036_189 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_189 = null;
		else {
			setElementName(value.getBase(), "_x0036_189");
			__x0036_189 = value; 
		}
	}
	protected schemaLib._x0036_189 __x0036_189;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_193 get_x0036_193() {
		return __x0036_193;  
	}
	public void set_x0036_193(schemaLib._x0036_193 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_193 = null;
		else {
			setElementName(value.getBase(), "_x0036_193");
			__x0036_193 = value; 
		}
	}
	protected schemaLib._x0036_193 __x0036_193;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_196 get_x0036_196() {
		return __x0036_196;  
	}
	public void set_x0036_196(schemaLib._x0036_196 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_196 = null;
		else {
			setElementName(value.getBase(), "_x0036_196");
			__x0036_196 = value; 
		}
	}
	protected schemaLib._x0036_196 __x0036_196;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_199 get_x0036_199() {
		return __x0036_199;  
	}
	public void set_x0036_199(schemaLib._x0036_199 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_199 = null;
		else {
			setElementName(value.getBase(), "_x0036_199");
			__x0036_199 = value; 
		}
	}
	protected schemaLib._x0036_199 __x0036_199;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_202 get_x0036_202() {
		return __x0036_202;  
	}
	public void set_x0036_202(schemaLib._x0036_202 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_202 = null;
		else {
			setElementName(value.getBase(), "_x0036_202");
			__x0036_202 = value; 
		}
	}
	protected schemaLib._x0036_202 __x0036_202;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_184", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_187", "", findGetterMethod("schemaLib._x0036_184", "get_x0036_187"), findSetterMethod("schemaLib._x0036_184", "set_x0036_187", "schemaLib._x0036_187"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_187.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_189", "", findGetterMethod("schemaLib._x0036_184", "get_x0036_189"), findSetterMethod("schemaLib._x0036_184", "set_x0036_189", "schemaLib._x0036_189"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_189.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_193", "", findGetterMethod("schemaLib._x0036_184", "get_x0036_193"), findSetterMethod("schemaLib._x0036_184", "set_x0036_193", "schemaLib._x0036_193"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_193.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_196", "", findGetterMethod("schemaLib._x0036_184", "get_x0036_196"), findSetterMethod("schemaLib._x0036_184", "set_x0036_196", "schemaLib._x0036_196"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_196.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_199", "", findGetterMethod("schemaLib._x0036_184", "get_x0036_199"), findSetterMethod("schemaLib._x0036_184", "set_x0036_199", "schemaLib._x0036_199"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_199.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_202", "", findGetterMethod("schemaLib._x0036_184", "get_x0036_202"), findSetterMethod("schemaLib._x0036_184", "set_x0036_202", "schemaLib._x0036_202"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_202.class)
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


