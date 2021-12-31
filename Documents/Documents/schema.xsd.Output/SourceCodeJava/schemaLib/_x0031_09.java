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
// This class represents the ComplexType _x0031_09
// </summary>
public class _x0031_09 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_09
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_09() {
		setElementName("_x0031_09");
		init();
	}
	public _x0031_09(String elementName) {
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
			__x0032_31 = null;
			__x0033_32 = null;
			__x0033_35 = null;
			__x0033_38 = null;
			__x0033_39 = null;
			__x0033_42 = null;
			__x0033_45 = null;
			__x0033_48 = null;
			__x0033_51 = null;
			__x0033_54 = null;

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
			schemaLib._x0031_09 newObject = (schemaLib._x0031_09)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0032_31 = null;
			if (__x0032_31 != null)
				newObject.__x0032_31 = (schemaLib._x0032_31)__x0032_31.clone();
			newObject.__x0033_32 = null;
			if (__x0033_32 != null)
				newObject.__x0033_32 = (schemaLib._x0033_32A)__x0033_32.clone();
			newObject.__x0033_35 = null;
			if (__x0033_35 != null)
				newObject.__x0033_35 = (schemaLib._x0033_35A)__x0033_35.clone();
			newObject.__x0033_38 = null;
			if (__x0033_38 != null)
				newObject.__x0033_38 = (schemaLib._x0033_38B)__x0033_38.clone();
			newObject.__x0033_39 = null;
			if (__x0033_39 != null)
				newObject.__x0033_39 = (schemaLib._x0033_39)__x0033_39.clone();
			newObject.__x0033_42 = null;
			if (__x0033_42 != null)
				newObject.__x0033_42 = (schemaLib._x0033_42A)__x0033_42.clone();
			newObject.__x0033_45 = null;
			if (__x0033_45 != null)
				newObject.__x0033_45 = (schemaLib._x0033_45A)__x0033_45.clone();
			newObject.__x0033_48 = null;
			if (__x0033_48 != null)
				newObject.__x0033_48 = (schemaLib._x0033_48A)__x0033_48.clone();
			newObject.__x0033_51 = null;
			if (__x0033_51 != null)
				newObject.__x0033_51 = (schemaLib._x0033_51)__x0033_51.clone();
			newObject.__x0033_54 = null;
			if (__x0033_54 != null)
				newObject.__x0033_54 = (schemaLib._x0033_54)__x0033_54.clone();
	
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
	public schemaLib._x0032_31 get_x0032_31() {
		return __x0032_31;  
	}
	public void set_x0032_31(schemaLib._x0032_31 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_31 = null;
		else {
			setElementName(value.getBase(), "_x0032_31");
			__x0032_31 = value; 
		}
	}
	protected schemaLib._x0032_31 __x0032_31;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_32A get_x0033_32() {
		return __x0033_32;  
	}
	public void set_x0033_32(schemaLib._x0033_32A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_32 = null;
		else {
			setElementName(value.getBase(), "_x0033_32");
			__x0033_32 = value; 
		}
	}
	protected schemaLib._x0033_32A __x0033_32;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_35A get_x0033_35() {
		return __x0033_35;  
	}
	public void set_x0033_35(schemaLib._x0033_35A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_35 = null;
		else {
			setElementName(value.getBase(), "_x0033_35");
			__x0033_35 = value; 
		}
	}
	protected schemaLib._x0033_35A __x0033_35;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_38B get_x0033_38() {
		return __x0033_38;  
	}
	public void set_x0033_38(schemaLib._x0033_38B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_38 = null;
		else {
			setElementName(value.getBase(), "_x0033_38");
			__x0033_38 = value; 
		}
	}
	protected schemaLib._x0033_38B __x0033_38;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_39 get_x0033_39() {
		return __x0033_39;  
	}
	public void set_x0033_39(schemaLib._x0033_39 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_39 = null;
		else {
			setElementName(value.getBase(), "_x0033_39");
			__x0033_39 = value; 
		}
	}
	protected schemaLib._x0033_39 __x0033_39;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_42A get_x0033_42() {
		return __x0033_42;  
	}
	public void set_x0033_42(schemaLib._x0033_42A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_42 = null;
		else {
			setElementName(value.getBase(), "_x0033_42");
			__x0033_42 = value; 
		}
	}
	protected schemaLib._x0033_42A __x0033_42;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_45A get_x0033_45() {
		return __x0033_45;  
	}
	public void set_x0033_45(schemaLib._x0033_45A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_45 = null;
		else {
			setElementName(value.getBase(), "_x0033_45");
			__x0033_45 = value; 
		}
	}
	protected schemaLib._x0033_45A __x0033_45;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_48A get_x0033_48() {
		return __x0033_48;  
	}
	public void set_x0033_48(schemaLib._x0033_48A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_48 = null;
		else {
			setElementName(value.getBase(), "_x0033_48");
			__x0033_48 = value; 
		}
	}
	protected schemaLib._x0033_48A __x0033_48;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_51 get_x0033_51() {
		return __x0033_51;  
	}
	public void set_x0033_51(schemaLib._x0033_51 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_51 = null;
		else {
			setElementName(value.getBase(), "_x0033_51");
			__x0033_51 = value; 
		}
	}
	protected schemaLib._x0033_51 __x0033_51;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_54 get_x0033_54() {
		return __x0033_54;  
	}
	public void set_x0033_54(schemaLib._x0033_54 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_54 = null;
		else {
			setElementName(value.getBase(), "_x0033_54");
			__x0033_54 = value; 
		}
	}
	protected schemaLib._x0033_54 __x0033_54;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_09", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_31", "", findGetterMethod("schemaLib._x0031_09", "get_x0032_31"), findSetterMethod("schemaLib._x0031_09", "set_x0032_31", "schemaLib._x0032_31"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_31.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_32", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_32"), findSetterMethod("schemaLib._x0031_09", "set_x0033_32", "schemaLib._x0033_32A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_32A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_35", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_35"), findSetterMethod("schemaLib._x0031_09", "set_x0033_35", "schemaLib._x0033_35A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_35A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_38", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_38"), findSetterMethod("schemaLib._x0031_09", "set_x0033_38", "schemaLib._x0033_38B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_38B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_39", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_39"), findSetterMethod("schemaLib._x0031_09", "set_x0033_39", "schemaLib._x0033_39"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_39.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_42", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_42"), findSetterMethod("schemaLib._x0031_09", "set_x0033_42", "schemaLib._x0033_42A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_42A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_45", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_45"), findSetterMethod("schemaLib._x0031_09", "set_x0033_45", "schemaLib._x0033_45A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_45A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_48", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_48"), findSetterMethod("schemaLib._x0031_09", "set_x0033_48", "schemaLib._x0033_48A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_48A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_51", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_51"), findSetterMethod("schemaLib._x0031_09", "set_x0033_51", "schemaLib._x0033_51"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_51.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_54", "", findGetterMethod("schemaLib._x0031_09", "get_x0033_54"), findSetterMethod("schemaLib._x0031_09", "set_x0033_54", "schemaLib._x0033_54"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_54.class)
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


