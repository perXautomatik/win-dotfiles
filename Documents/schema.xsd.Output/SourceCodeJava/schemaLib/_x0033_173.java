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
// This class represents the ComplexType _x0033_173
// </summary>
public class _x0033_173 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_173
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_173() {
		setElementName("_x0033_173");
		init();
	}
	public _x0033_173(String elementName) {
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
			__x0033_175 = null;
			__x0033_176 = null;
			__x0033_177 = null;
			__x0033_178 = null;
			__x0033_179 = null;
			__x0033_180 = null;
			__x0033_181 = null;
			__x0033_182 = null;
			__x0033_183 = null;
			__x0033_184 = null;
			__x0033_185 = null;
			__x0033_186 = null;
			__x0033_187 = null;

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
			schemaLib._x0033_173 newObject = (schemaLib._x0033_173)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_175 = null;
			if (__x0033_175 != null)
				newObject.__x0033_175 = (schemaLib._x0033_175)__x0033_175.clone();
			newObject.__x0033_176 = null;
			if (__x0033_176 != null)
				newObject.__x0033_176 = (schemaLib._x0033_176)__x0033_176.clone();
			newObject.__x0033_177 = null;
			if (__x0033_177 != null)
				newObject.__x0033_177 = (schemaLib._x0033_177)__x0033_177.clone();
			newObject.__x0033_178 = null;
			if (__x0033_178 != null)
				newObject.__x0033_178 = (schemaLib._x0033_178)__x0033_178.clone();
			newObject.__x0033_179 = null;
			if (__x0033_179 != null)
				newObject.__x0033_179 = (schemaLib._x0033_179)__x0033_179.clone();
			newObject.__x0033_180 = null;
			if (__x0033_180 != null)
				newObject.__x0033_180 = (schemaLib._x0033_180)__x0033_180.clone();
			newObject.__x0033_181 = null;
			if (__x0033_181 != null)
				newObject.__x0033_181 = (schemaLib._x0033_181)__x0033_181.clone();
			newObject.__x0033_182 = null;
			if (__x0033_182 != null)
				newObject.__x0033_182 = (schemaLib._x0033_182)__x0033_182.clone();
			newObject.__x0033_183 = null;
			if (__x0033_183 != null)
				newObject.__x0033_183 = (schemaLib._x0033_183)__x0033_183.clone();
			newObject.__x0033_184 = null;
			if (__x0033_184 != null)
				newObject.__x0033_184 = (schemaLib._x0033_184)__x0033_184.clone();
			newObject.__x0033_185 = null;
			if (__x0033_185 != null)
				newObject.__x0033_185 = (schemaLib._x0033_185)__x0033_185.clone();
			newObject.__x0033_186 = null;
			if (__x0033_186 != null)
				newObject.__x0033_186 = (schemaLib._x0033_186)__x0033_186.clone();
			newObject.__x0033_187 = null;
			if (__x0033_187 != null)
				newObject.__x0033_187 = (schemaLib._x0033_187)__x0033_187.clone();
	
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
	public schemaLib._x0033_175 get_x0033_175() {
		return __x0033_175;  
	}
	public void set_x0033_175(schemaLib._x0033_175 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_175 = null;
		else {
			setElementName(value.getBase(), "_x0033_175");
			__x0033_175 = value; 
		}
	}
	protected schemaLib._x0033_175 __x0033_175;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_176 get_x0033_176() {
		return __x0033_176;  
	}
	public void set_x0033_176(schemaLib._x0033_176 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_176 = null;
		else {
			setElementName(value.getBase(), "_x0033_176");
			__x0033_176 = value; 
		}
	}
	protected schemaLib._x0033_176 __x0033_176;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_177 get_x0033_177() {
		return __x0033_177;  
	}
	public void set_x0033_177(schemaLib._x0033_177 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_177 = null;
		else {
			setElementName(value.getBase(), "_x0033_177");
			__x0033_177 = value; 
		}
	}
	protected schemaLib._x0033_177 __x0033_177;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_178 get_x0033_178() {
		return __x0033_178;  
	}
	public void set_x0033_178(schemaLib._x0033_178 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_178 = null;
		else {
			setElementName(value.getBase(), "_x0033_178");
			__x0033_178 = value; 
		}
	}
	protected schemaLib._x0033_178 __x0033_178;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_179 get_x0033_179() {
		return __x0033_179;  
	}
	public void set_x0033_179(schemaLib._x0033_179 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_179 = null;
		else {
			setElementName(value.getBase(), "_x0033_179");
			__x0033_179 = value; 
		}
	}
	protected schemaLib._x0033_179 __x0033_179;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_180 get_x0033_180() {
		return __x0033_180;  
	}
	public void set_x0033_180(schemaLib._x0033_180 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_180 = null;
		else {
			setElementName(value.getBase(), "_x0033_180");
			__x0033_180 = value; 
		}
	}
	protected schemaLib._x0033_180 __x0033_180;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_181 get_x0033_181() {
		return __x0033_181;  
	}
	public void set_x0033_181(schemaLib._x0033_181 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_181 = null;
		else {
			setElementName(value.getBase(), "_x0033_181");
			__x0033_181 = value; 
		}
	}
	protected schemaLib._x0033_181 __x0033_181;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_182 get_x0033_182() {
		return __x0033_182;  
	}
	public void set_x0033_182(schemaLib._x0033_182 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_182 = null;
		else {
			setElementName(value.getBase(), "_x0033_182");
			__x0033_182 = value; 
		}
	}
	protected schemaLib._x0033_182 __x0033_182;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_183 get_x0033_183() {
		return __x0033_183;  
	}
	public void set_x0033_183(schemaLib._x0033_183 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_183 = null;
		else {
			setElementName(value.getBase(), "_x0033_183");
			__x0033_183 = value; 
		}
	}
	protected schemaLib._x0033_183 __x0033_183;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_184 get_x0033_184() {
		return __x0033_184;  
	}
	public void set_x0033_184(schemaLib._x0033_184 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_184 = null;
		else {
			setElementName(value.getBase(), "_x0033_184");
			__x0033_184 = value; 
		}
	}
	protected schemaLib._x0033_184 __x0033_184;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_185 get_x0033_185() {
		return __x0033_185;  
	}
	public void set_x0033_185(schemaLib._x0033_185 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_185 = null;
		else {
			setElementName(value.getBase(), "_x0033_185");
			__x0033_185 = value; 
		}
	}
	protected schemaLib._x0033_185 __x0033_185;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_186 get_x0033_186() {
		return __x0033_186;  
	}
	public void set_x0033_186(schemaLib._x0033_186 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_186 = null;
		else {
			setElementName(value.getBase(), "_x0033_186");
			__x0033_186 = value; 
		}
	}
	protected schemaLib._x0033_186 __x0033_186;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_187 get_x0033_187() {
		return __x0033_187;  
	}
	public void set_x0033_187(schemaLib._x0033_187 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_187 = null;
		else {
			setElementName(value.getBase(), "_x0033_187");
			__x0033_187 = value; 
		}
	}
	protected schemaLib._x0033_187 __x0033_187;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_173", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_175", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_175"), findSetterMethod("schemaLib._x0033_173", "set_x0033_175", "schemaLib._x0033_175"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_175.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_176", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_176"), findSetterMethod("schemaLib._x0033_173", "set_x0033_176", "schemaLib._x0033_176"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_176.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_177", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_177"), findSetterMethod("schemaLib._x0033_173", "set_x0033_177", "schemaLib._x0033_177"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_177.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_178", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_178"), findSetterMethod("schemaLib._x0033_173", "set_x0033_178", "schemaLib._x0033_178"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_178.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_179", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_179"), findSetterMethod("schemaLib._x0033_173", "set_x0033_179", "schemaLib._x0033_179"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_179.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_180", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_180"), findSetterMethod("schemaLib._x0033_173", "set_x0033_180", "schemaLib._x0033_180"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_180.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_181", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_181"), findSetterMethod("schemaLib._x0033_173", "set_x0033_181", "schemaLib._x0033_181"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_181.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_182", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_182"), findSetterMethod("schemaLib._x0033_173", "set_x0033_182", "schemaLib._x0033_182"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_182.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_183", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_183"), findSetterMethod("schemaLib._x0033_173", "set_x0033_183", "schemaLib._x0033_183"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_183.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_184", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_184"), findSetterMethod("schemaLib._x0033_173", "set_x0033_184", "schemaLib._x0033_184"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_184.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_185", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_185"), findSetterMethod("schemaLib._x0033_173", "set_x0033_185", "schemaLib._x0033_185"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_185.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_186", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_186"), findSetterMethod("schemaLib._x0033_173", "set_x0033_186", "schemaLib._x0033_186"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_186.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_187", "", findGetterMethod("schemaLib._x0033_173", "get_x0033_187"), findSetterMethod("schemaLib._x0033_173", "set_x0033_187", "schemaLib._x0033_187"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_187.class)
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


