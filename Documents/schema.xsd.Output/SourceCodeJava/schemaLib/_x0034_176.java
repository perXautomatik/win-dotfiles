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
// This class represents the ComplexType _x0034_176
// </summary>
public class _x0034_176 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_176
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_176() {
		setElementName("_x0034_176");
		init();
	}
	public _x0034_176(String elementName) {
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
			__x0034_178 = null;
			__x0034_183 = null;
			__x0034_186 = null;
			__x0034_189 = null;
			__x0034_190 = null;
			__x0034_195 = null;
			__x0034_198 = null;
			__x0034_199 = null;
			__x0034_204 = null;
			__x0034_207 = null;
			__x0034_210 = null;
			__x0034_211 = null;
			__x0034_216 = null;

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
			schemaLib._x0034_176 newObject = (schemaLib._x0034_176)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_178 = null;
			if (__x0034_178 != null)
				newObject.__x0034_178 = (schemaLib._x0034_178)__x0034_178.clone();
			newObject.__x0034_183 = null;
			if (__x0034_183 != null)
				newObject.__x0034_183 = (schemaLib._x0034_183B)__x0034_183.clone();
			newObject.__x0034_186 = null;
			if (__x0034_186 != null)
				newObject.__x0034_186 = (schemaLib._x0034_186B)__x0034_186.clone();
			newObject.__x0034_189 = null;
			if (__x0034_189 != null)
				newObject.__x0034_189 = (schemaLib._x0034_189B)__x0034_189.clone();
			newObject.__x0034_190 = null;
			if (__x0034_190 != null)
				newObject.__x0034_190 = (schemaLib._x0034_190)__x0034_190.clone();
			newObject.__x0034_195 = null;
			if (__x0034_195 != null)
				newObject.__x0034_195 = (schemaLib._x0034_195B)__x0034_195.clone();
			newObject.__x0034_198 = null;
			if (__x0034_198 != null)
				newObject.__x0034_198 = (schemaLib._x0034_198B)__x0034_198.clone();
			newObject.__x0034_199 = null;
			if (__x0034_199 != null)
				newObject.__x0034_199 = (schemaLib._x0034_199)__x0034_199.clone();
			newObject.__x0034_204 = null;
			if (__x0034_204 != null)
				newObject.__x0034_204 = (schemaLib._x0034_204)__x0034_204.clone();
			newObject.__x0034_207 = null;
			if (__x0034_207 != null)
				newObject.__x0034_207 = (schemaLib._x0034_207)__x0034_207.clone();
			newObject.__x0034_210 = null;
			if (__x0034_210 != null)
				newObject.__x0034_210 = (schemaLib._x0034_210)__x0034_210.clone();
			newObject.__x0034_211 = null;
			if (__x0034_211 != null)
				newObject.__x0034_211 = (schemaLib._x0034_211)__x0034_211.clone();
			newObject.__x0034_216 = null;
			if (__x0034_216 != null)
				newObject.__x0034_216 = (schemaLib._x0034_216A)__x0034_216.clone();
	
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
	public schemaLib._x0034_178 get_x0034_178() {
		return __x0034_178;  
	}
	public void set_x0034_178(schemaLib._x0034_178 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_178 = null;
		else {
			setElementName(value.getBase(), "_x0034_178");
			__x0034_178 = value; 
		}
	}
	protected schemaLib._x0034_178 __x0034_178;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_183B get_x0034_183() {
		return __x0034_183;  
	}
	public void set_x0034_183(schemaLib._x0034_183B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_183 = null;
		else {
			setElementName(value.getBase(), "_x0034_183");
			__x0034_183 = value; 
		}
	}
	protected schemaLib._x0034_183B __x0034_183;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_186B get_x0034_186() {
		return __x0034_186;  
	}
	public void set_x0034_186(schemaLib._x0034_186B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_186 = null;
		else {
			setElementName(value.getBase(), "_x0034_186");
			__x0034_186 = value; 
		}
	}
	protected schemaLib._x0034_186B __x0034_186;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_189B get_x0034_189() {
		return __x0034_189;  
	}
	public void set_x0034_189(schemaLib._x0034_189B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_189 = null;
		else {
			setElementName(value.getBase(), "_x0034_189");
			__x0034_189 = value; 
		}
	}
	protected schemaLib._x0034_189B __x0034_189;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_190 get_x0034_190() {
		return __x0034_190;  
	}
	public void set_x0034_190(schemaLib._x0034_190 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_190 = null;
		else {
			setElementName(value.getBase(), "_x0034_190");
			__x0034_190 = value; 
		}
	}
	protected schemaLib._x0034_190 __x0034_190;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_195B get_x0034_195() {
		return __x0034_195;  
	}
	public void set_x0034_195(schemaLib._x0034_195B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_195 = null;
		else {
			setElementName(value.getBase(), "_x0034_195");
			__x0034_195 = value; 
		}
	}
	protected schemaLib._x0034_195B __x0034_195;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_198B get_x0034_198() {
		return __x0034_198;  
	}
	public void set_x0034_198(schemaLib._x0034_198B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_198 = null;
		else {
			setElementName(value.getBase(), "_x0034_198");
			__x0034_198 = value; 
		}
	}
	protected schemaLib._x0034_198B __x0034_198;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_199 get_x0034_199() {
		return __x0034_199;  
	}
	public void set_x0034_199(schemaLib._x0034_199 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_199 = null;
		else {
			setElementName(value.getBase(), "_x0034_199");
			__x0034_199 = value; 
		}
	}
	protected schemaLib._x0034_199 __x0034_199;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_204 get_x0034_204() {
		return __x0034_204;  
	}
	public void set_x0034_204(schemaLib._x0034_204 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_204 = null;
		else {
			setElementName(value.getBase(), "_x0034_204");
			__x0034_204 = value; 
		}
	}
	protected schemaLib._x0034_204 __x0034_204;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_207 get_x0034_207() {
		return __x0034_207;  
	}
	public void set_x0034_207(schemaLib._x0034_207 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_207 = null;
		else {
			setElementName(value.getBase(), "_x0034_207");
			__x0034_207 = value; 
		}
	}
	protected schemaLib._x0034_207 __x0034_207;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_210 get_x0034_210() {
		return __x0034_210;  
	}
	public void set_x0034_210(schemaLib._x0034_210 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_210 = null;
		else {
			setElementName(value.getBase(), "_x0034_210");
			__x0034_210 = value; 
		}
	}
	protected schemaLib._x0034_210 __x0034_210;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_211 get_x0034_211() {
		return __x0034_211;  
	}
	public void set_x0034_211(schemaLib._x0034_211 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_211 = null;
		else {
			setElementName(value.getBase(), "_x0034_211");
			__x0034_211 = value; 
		}
	}
	protected schemaLib._x0034_211 __x0034_211;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_216A get_x0034_216() {
		return __x0034_216;  
	}
	public void set_x0034_216(schemaLib._x0034_216A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_216 = null;
		else {
			setElementName(value.getBase(), "_x0034_216");
			__x0034_216 = value; 
		}
	}
	protected schemaLib._x0034_216A __x0034_216;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_176", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_178", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_178"), findSetterMethod("schemaLib._x0034_176", "set_x0034_178", "schemaLib._x0034_178"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_178.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_183", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_183"), findSetterMethod("schemaLib._x0034_176", "set_x0034_183", "schemaLib._x0034_183B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_183B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_186", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_186"), findSetterMethod("schemaLib._x0034_176", "set_x0034_186", "schemaLib._x0034_186B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_186B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_189", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_189"), findSetterMethod("schemaLib._x0034_176", "set_x0034_189", "schemaLib._x0034_189B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_189B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_190", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_190"), findSetterMethod("schemaLib._x0034_176", "set_x0034_190", "schemaLib._x0034_190"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_190.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_195", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_195"), findSetterMethod("schemaLib._x0034_176", "set_x0034_195", "schemaLib._x0034_195B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_195B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_198", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_198"), findSetterMethod("schemaLib._x0034_176", "set_x0034_198", "schemaLib._x0034_198B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_198B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_199", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_199"), findSetterMethod("schemaLib._x0034_176", "set_x0034_199", "schemaLib._x0034_199"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_199.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_204", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_204"), findSetterMethod("schemaLib._x0034_176", "set_x0034_204", "schemaLib._x0034_204"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_204.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_207", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_207"), findSetterMethod("schemaLib._x0034_176", "set_x0034_207", "schemaLib._x0034_207"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_207.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_210", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_210"), findSetterMethod("schemaLib._x0034_176", "set_x0034_210", "schemaLib._x0034_210"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_210.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_211", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_211"), findSetterMethod("schemaLib._x0034_176", "set_x0034_211", "schemaLib._x0034_211"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_211.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_216", "", findGetterMethod("schemaLib._x0034_176", "get_x0034_216"), findSetterMethod("schemaLib._x0034_176", "set_x0034_216", "schemaLib._x0034_216A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_216A.class)
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


