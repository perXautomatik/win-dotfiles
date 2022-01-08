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
// This class represents the ComplexType _x0038_155
// </summary>
public class _x0038_155 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0038_155
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0038_155() {
		setElementName("_x0038_155");
		init();
	}
	public _x0038_155(String elementName) {
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
			__x0038_157 = null;
			__x0038_158 = null;
			__x0038_159 = null;
			__x0038_160 = null;
			__x0038_161 = null;
			__x0038_162 = null;
			__x0038_182 = null;

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
			schemaLib._x0038_155 newObject = (schemaLib._x0038_155)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0038_157 = null;
			if (__x0038_157 != null)
				newObject.__x0038_157 = (schemaLib._x0038_157)__x0038_157.clone();
			newObject.__x0038_158 = null;
			if (__x0038_158 != null)
				newObject.__x0038_158 = (schemaLib._x0038_158A)__x0038_158.clone();
			newObject.__x0038_159 = null;
			if (__x0038_159 != null)
				newObject.__x0038_159 = (schemaLib._x0038_159)__x0038_159.clone();
			newObject.__x0038_160 = null;
			if (__x0038_160 != null)
				newObject.__x0038_160 = (schemaLib._x0038_160)__x0038_160.clone();
			newObject.__x0038_161 = null;
			if (__x0038_161 != null)
				newObject.__x0038_161 = (schemaLib._x0038_161)__x0038_161.clone();
			newObject.__x0038_162 = null;
			if (__x0038_162 != null)
				newObject.__x0038_162 = (schemaLib._x0038_162)__x0038_162.clone();
			newObject.__x0038_182 = null;
			if (__x0038_182 != null)
				newObject.__x0038_182 = (schemaLib._x0038_182A)__x0038_182.clone();
	
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
	public schemaLib._x0038_157 get_x0038_157() {
		return __x0038_157;  
	}
	public void set_x0038_157(schemaLib._x0038_157 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_157 = null;
		else {
			setElementName(value.getBase(), "_x0038_157");
			__x0038_157 = value; 
		}
	}
	protected schemaLib._x0038_157 __x0038_157;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_158A get_x0038_158() {
		return __x0038_158;  
	}
	public void set_x0038_158(schemaLib._x0038_158A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_158 = null;
		else {
			setElementName(value.getBase(), "_x0038_158");
			__x0038_158 = value; 
		}
	}
	protected schemaLib._x0038_158A __x0038_158;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_159 get_x0038_159() {
		return __x0038_159;  
	}
	public void set_x0038_159(schemaLib._x0038_159 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_159 = null;
		else {
			setElementName(value.getBase(), "_x0038_159");
			__x0038_159 = value; 
		}
	}
	protected schemaLib._x0038_159 __x0038_159;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_160 get_x0038_160() {
		return __x0038_160;  
	}
	public void set_x0038_160(schemaLib._x0038_160 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_160 = null;
		else {
			setElementName(value.getBase(), "_x0038_160");
			__x0038_160 = value; 
		}
	}
	protected schemaLib._x0038_160 __x0038_160;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_161 get_x0038_161() {
		return __x0038_161;  
	}
	public void set_x0038_161(schemaLib._x0038_161 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_161 = null;
		else {
			setElementName(value.getBase(), "_x0038_161");
			__x0038_161 = value; 
		}
	}
	protected schemaLib._x0038_161 __x0038_161;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_162 get_x0038_162() {
		return __x0038_162;  
	}
	public void set_x0038_162(schemaLib._x0038_162 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_162 = null;
		else {
			setElementName(value.getBase(), "_x0038_162");
			__x0038_162 = value; 
		}
	}
	protected schemaLib._x0038_162 __x0038_162;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_182A get_x0038_182() {
		return __x0038_182;  
	}
	public void set_x0038_182(schemaLib._x0038_182A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_182 = null;
		else {
			setElementName(value.getBase(), "_x0038_182");
			__x0038_182 = value; 
		}
	}
	protected schemaLib._x0038_182A __x0038_182;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0038_155", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_157", "", findGetterMethod("schemaLib._x0038_155", "get_x0038_157"), findSetterMethod("schemaLib._x0038_155", "set_x0038_157", "schemaLib._x0038_157"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_157.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_158", "", findGetterMethod("schemaLib._x0038_155", "get_x0038_158"), findSetterMethod("schemaLib._x0038_155", "set_x0038_158", "schemaLib._x0038_158A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_158A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_159", "", findGetterMethod("schemaLib._x0038_155", "get_x0038_159"), findSetterMethod("schemaLib._x0038_155", "set_x0038_159", "schemaLib._x0038_159"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_159.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_160", "", findGetterMethod("schemaLib._x0038_155", "get_x0038_160"), findSetterMethod("schemaLib._x0038_155", "set_x0038_160", "schemaLib._x0038_160"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_160.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_161", "", findGetterMethod("schemaLib._x0038_155", "get_x0038_161"), findSetterMethod("schemaLib._x0038_155", "set_x0038_161", "schemaLib._x0038_161"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_161.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_162", "", findGetterMethod("schemaLib._x0038_155", "get_x0038_162"), findSetterMethod("schemaLib._x0038_155", "set_x0038_162", "schemaLib._x0038_162"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_162.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_182", "", findGetterMethod("schemaLib._x0038_155", "get_x0038_182"), findSetterMethod("schemaLib._x0038_155", "set_x0038_182", "schemaLib._x0038_182A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_182A.class)
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


