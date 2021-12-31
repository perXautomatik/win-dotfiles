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
// This class represents the ComplexType _x0036_137
// </summary>
public class _x0036_137 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_137
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_137() {
		setElementName("_x0036_137");
		init();
	}
	public _x0036_137(String elementName) {
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
			__x0036_140 = null;
			__x0036_142 = null;
			__x0036_143 = null;
			__x0036_147 = null;
			__x0036_152 = null;
			__x0036_155 = null;
			__x0036_158 = null;
			__x0036_159 = null;
			__x0036_164 = null;
			__x0036_167 = null;
			__x0036_170 = null;
			__x0036_171 = null;
			__x0036_174 = null;
			__x0036_179 = null;
			__x0036_445 = null;

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
			schemaLib._x0036_137 newObject = (schemaLib._x0036_137)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_140 = null;
			if (__x0036_140 != null)
				newObject.__x0036_140 = (schemaLib._x0036_140)__x0036_140.clone();
			newObject.__x0036_142 = null;
			if (__x0036_142 != null)
				newObject.__x0036_142 = (schemaLib._x0036_142)__x0036_142.clone();
			newObject.__x0036_143 = null;
			if (__x0036_143 != null)
				newObject.__x0036_143 = (schemaLib._x0036_143)__x0036_143.clone();
			newObject.__x0036_147 = null;
			if (__x0036_147 != null)
				newObject.__x0036_147 = (schemaLib._x0036_147)__x0036_147.clone();
			newObject.__x0036_152 = null;
			if (__x0036_152 != null)
				newObject.__x0036_152 = (schemaLib._x0036_152)__x0036_152.clone();
			newObject.__x0036_155 = null;
			if (__x0036_155 != null)
				newObject.__x0036_155 = (schemaLib._x0036_155)__x0036_155.clone();
			newObject.__x0036_158 = null;
			if (__x0036_158 != null)
				newObject.__x0036_158 = (schemaLib._x0036_158)__x0036_158.clone();
			newObject.__x0036_159 = null;
			if (__x0036_159 != null)
				newObject.__x0036_159 = (schemaLib._x0036_159)__x0036_159.clone();
			newObject.__x0036_164 = null;
			if (__x0036_164 != null)
				newObject.__x0036_164 = (schemaLib._x0036_164)__x0036_164.clone();
			newObject.__x0036_167 = null;
			if (__x0036_167 != null)
				newObject.__x0036_167 = (schemaLib._x0036_167)__x0036_167.clone();
			newObject.__x0036_170 = null;
			if (__x0036_170 != null)
				newObject.__x0036_170 = (schemaLib._x0036_170)__x0036_170.clone();
			newObject.__x0036_171 = null;
			if (__x0036_171 != null)
				newObject.__x0036_171 = (schemaLib._x0036_171)__x0036_171.clone();
			newObject.__x0036_174 = null;
			if (__x0036_174 != null)
				newObject.__x0036_174 = (schemaLib._x0036_174)__x0036_174.clone();
			newObject.__x0036_179 = null;
			if (__x0036_179 != null)
				newObject.__x0036_179 = (schemaLib._x0036_179)__x0036_179.clone();
			newObject.__x0036_445 = null;
			if (__x0036_445 != null)
				newObject.__x0036_445 = (schemaLib._x0036_445)__x0036_445.clone();
	
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
	public schemaLib._x0036_140 get_x0036_140() {
		return __x0036_140;  
	}
	public void set_x0036_140(schemaLib._x0036_140 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_140 = null;
		else {
			setElementName(value.getBase(), "_x0036_140");
			__x0036_140 = value; 
		}
	}
	protected schemaLib._x0036_140 __x0036_140;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_142 get_x0036_142() {
		return __x0036_142;  
	}
	public void set_x0036_142(schemaLib._x0036_142 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_142 = null;
		else {
			setElementName(value.getBase(), "_x0036_142");
			__x0036_142 = value; 
		}
	}
	protected schemaLib._x0036_142 __x0036_142;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_143 get_x0036_143() {
		return __x0036_143;  
	}
	public void set_x0036_143(schemaLib._x0036_143 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_143 = null;
		else {
			setElementName(value.getBase(), "_x0036_143");
			__x0036_143 = value; 
		}
	}
	protected schemaLib._x0036_143 __x0036_143;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_147 get_x0036_147() {
		return __x0036_147;  
	}
	public void set_x0036_147(schemaLib._x0036_147 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_147 = null;
		else {
			setElementName(value.getBase(), "_x0036_147");
			__x0036_147 = value; 
		}
	}
	protected schemaLib._x0036_147 __x0036_147;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_152 get_x0036_152() {
		return __x0036_152;  
	}
	public void set_x0036_152(schemaLib._x0036_152 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_152 = null;
		else {
			setElementName(value.getBase(), "_x0036_152");
			__x0036_152 = value; 
		}
	}
	protected schemaLib._x0036_152 __x0036_152;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_155 get_x0036_155() {
		return __x0036_155;  
	}
	public void set_x0036_155(schemaLib._x0036_155 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_155 = null;
		else {
			setElementName(value.getBase(), "_x0036_155");
			__x0036_155 = value; 
		}
	}
	protected schemaLib._x0036_155 __x0036_155;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_158 get_x0036_158() {
		return __x0036_158;  
	}
	public void set_x0036_158(schemaLib._x0036_158 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_158 = null;
		else {
			setElementName(value.getBase(), "_x0036_158");
			__x0036_158 = value; 
		}
	}
	protected schemaLib._x0036_158 __x0036_158;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_159 get_x0036_159() {
		return __x0036_159;  
	}
	public void set_x0036_159(schemaLib._x0036_159 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_159 = null;
		else {
			setElementName(value.getBase(), "_x0036_159");
			__x0036_159 = value; 
		}
	}
	protected schemaLib._x0036_159 __x0036_159;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_164 get_x0036_164() {
		return __x0036_164;  
	}
	public void set_x0036_164(schemaLib._x0036_164 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_164 = null;
		else {
			setElementName(value.getBase(), "_x0036_164");
			__x0036_164 = value; 
		}
	}
	protected schemaLib._x0036_164 __x0036_164;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_167 get_x0036_167() {
		return __x0036_167;  
	}
	public void set_x0036_167(schemaLib._x0036_167 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_167 = null;
		else {
			setElementName(value.getBase(), "_x0036_167");
			__x0036_167 = value; 
		}
	}
	protected schemaLib._x0036_167 __x0036_167;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_170 get_x0036_170() {
		return __x0036_170;  
	}
	public void set_x0036_170(schemaLib._x0036_170 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_170 = null;
		else {
			setElementName(value.getBase(), "_x0036_170");
			__x0036_170 = value; 
		}
	}
	protected schemaLib._x0036_170 __x0036_170;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_171 get_x0036_171() {
		return __x0036_171;  
	}
	public void set_x0036_171(schemaLib._x0036_171 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_171 = null;
		else {
			setElementName(value.getBase(), "_x0036_171");
			__x0036_171 = value; 
		}
	}
	protected schemaLib._x0036_171 __x0036_171;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_174 get_x0036_174() {
		return __x0036_174;  
	}
	public void set_x0036_174(schemaLib._x0036_174 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_174 = null;
		else {
			setElementName(value.getBase(), "_x0036_174");
			__x0036_174 = value; 
		}
	}
	protected schemaLib._x0036_174 __x0036_174;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_179 get_x0036_179() {
		return __x0036_179;  
	}
	public void set_x0036_179(schemaLib._x0036_179 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_179 = null;
		else {
			setElementName(value.getBase(), "_x0036_179");
			__x0036_179 = value; 
		}
	}
	protected schemaLib._x0036_179 __x0036_179;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_445 get_x0036_445() {
		return __x0036_445;  
	}
	public void set_x0036_445(schemaLib._x0036_445 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_445 = null;
		else {
			setElementName(value.getBase(), "_x0036_445");
			__x0036_445 = value; 
		}
	}
	protected schemaLib._x0036_445 __x0036_445;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_137", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_140", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_140"), findSetterMethod("schemaLib._x0036_137", "set_x0036_140", "schemaLib._x0036_140"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_140.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_142", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_142"), findSetterMethod("schemaLib._x0036_137", "set_x0036_142", "schemaLib._x0036_142"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_142.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_143", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_143"), findSetterMethod("schemaLib._x0036_137", "set_x0036_143", "schemaLib._x0036_143"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_143.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_147", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_147"), findSetterMethod("schemaLib._x0036_137", "set_x0036_147", "schemaLib._x0036_147"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_147.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_152", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_152"), findSetterMethod("schemaLib._x0036_137", "set_x0036_152", "schemaLib._x0036_152"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_152.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_155", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_155"), findSetterMethod("schemaLib._x0036_137", "set_x0036_155", "schemaLib._x0036_155"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_155.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_158", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_158"), findSetterMethod("schemaLib._x0036_137", "set_x0036_158", "schemaLib._x0036_158"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_158.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_159", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_159"), findSetterMethod("schemaLib._x0036_137", "set_x0036_159", "schemaLib._x0036_159"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_159.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_164", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_164"), findSetterMethod("schemaLib._x0036_137", "set_x0036_164", "schemaLib._x0036_164"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_164.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_167", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_167"), findSetterMethod("schemaLib._x0036_137", "set_x0036_167", "schemaLib._x0036_167"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_167.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_170", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_170"), findSetterMethod("schemaLib._x0036_137", "set_x0036_170", "schemaLib._x0036_170"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_170.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_171", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_171"), findSetterMethod("schemaLib._x0036_137", "set_x0036_171", "schemaLib._x0036_171"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_171.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_174", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_174"), findSetterMethod("schemaLib._x0036_137", "set_x0036_174", "schemaLib._x0036_174"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_174.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_179", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_179"), findSetterMethod("schemaLib._x0036_137", "set_x0036_179", "schemaLib._x0036_179"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_179.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_445", "", findGetterMethod("schemaLib._x0036_137", "get_x0036_445"), findSetterMethod("schemaLib._x0036_137", "set_x0036_445", "schemaLib._x0036_445"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_445.class)
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


