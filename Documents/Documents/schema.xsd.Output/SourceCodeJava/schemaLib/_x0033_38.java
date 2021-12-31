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
// This class represents the ComplexType _x0033_38
// </summary>
public class _x0033_38 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_38
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_38() {
		setElementName("_x0033_38");
		init();
	}
	public _x0033_38(String elementName) {
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
			__x0033_42 = null;
			__x0033_43 = null;
			__x0033_44 = null;
			__x0033_45 = null;
			__x0033_47 = null;
			__x0033_48 = null;
			__x0033_50 = null;

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
			schemaLib._x0033_38 newObject = (schemaLib._x0033_38)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_42 = null;
			if (__x0033_42 != null)
				newObject.__x0033_42 = (schemaLib._x0033_42)__x0033_42.clone();
			newObject.__x0033_43 = null;
			if (__x0033_43 != null)
				newObject.__x0033_43 = (schemaLib._x0033_43)__x0033_43.clone();
			newObject.__x0033_44 = null;
			if (__x0033_44 != null)
				newObject.__x0033_44 = (schemaLib._x0033_44)__x0033_44.clone();
			newObject.__x0033_45 = null;
			if (__x0033_45 != null)
				newObject.__x0033_45 = (schemaLib._x0033_45)__x0033_45.clone();
			newObject.__x0033_47 = null;
			if (__x0033_47 != null)
				newObject.__x0033_47 = (schemaLib._x0033_47)__x0033_47.clone();
			newObject.__x0033_48 = null;
			if (__x0033_48 != null)
				newObject.__x0033_48 = (schemaLib._x0033_48)__x0033_48.clone();
			newObject.__x0033_50 = null;
			if (__x0033_50 != null)
				newObject.__x0033_50 = (schemaLib._x0033_50)__x0033_50.clone();
	
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
	public schemaLib._x0033_42 get_x0033_42() {
		return __x0033_42;  
	}
	public void set_x0033_42(schemaLib._x0033_42 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_42 = null;
		else {
			setElementName(value.getBase(), "_x0033_42");
			__x0033_42 = value; 
		}
	}
	protected schemaLib._x0033_42 __x0033_42;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_43 get_x0033_43() {
		return __x0033_43;  
	}
	public void set_x0033_43(schemaLib._x0033_43 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_43 = null;
		else {
			setElementName(value.getBase(), "_x0033_43");
			__x0033_43 = value; 
		}
	}
	protected schemaLib._x0033_43 __x0033_43;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_44 get_x0033_44() {
		return __x0033_44;  
	}
	public void set_x0033_44(schemaLib._x0033_44 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_44 = null;
		else {
			setElementName(value.getBase(), "_x0033_44");
			__x0033_44 = value; 
		}
	}
	protected schemaLib._x0033_44 __x0033_44;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_45 get_x0033_45() {
		return __x0033_45;  
	}
	public void set_x0033_45(schemaLib._x0033_45 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_45 = null;
		else {
			setElementName(value.getBase(), "_x0033_45");
			__x0033_45 = value; 
		}
	}
	protected schemaLib._x0033_45 __x0033_45;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_47 get_x0033_47() {
		return __x0033_47;  
	}
	public void set_x0033_47(schemaLib._x0033_47 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_47 = null;
		else {
			setElementName(value.getBase(), "_x0033_47");
			__x0033_47 = value; 
		}
	}
	protected schemaLib._x0033_47 __x0033_47;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_48 get_x0033_48() {
		return __x0033_48;  
	}
	public void set_x0033_48(schemaLib._x0033_48 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_48 = null;
		else {
			setElementName(value.getBase(), "_x0033_48");
			__x0033_48 = value; 
		}
	}
	protected schemaLib._x0033_48 __x0033_48;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_50 get_x0033_50() {
		return __x0033_50;  
	}
	public void set_x0033_50(schemaLib._x0033_50 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_50 = null;
		else {
			setElementName(value.getBase(), "_x0033_50");
			__x0033_50 = value; 
		}
	}
	protected schemaLib._x0033_50 __x0033_50;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_38", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_42", "", findGetterMethod("schemaLib._x0033_38", "get_x0033_42"), findSetterMethod("schemaLib._x0033_38", "set_x0033_42", "schemaLib._x0033_42"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_42.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_43", "", findGetterMethod("schemaLib._x0033_38", "get_x0033_43"), findSetterMethod("schemaLib._x0033_38", "set_x0033_43", "schemaLib._x0033_43"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_43.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_44", "", findGetterMethod("schemaLib._x0033_38", "get_x0033_44"), findSetterMethod("schemaLib._x0033_38", "set_x0033_44", "schemaLib._x0033_44"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_44.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_45", "", findGetterMethod("schemaLib._x0033_38", "get_x0033_45"), findSetterMethod("schemaLib._x0033_38", "set_x0033_45", "schemaLib._x0033_45"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_45.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_47", "", findGetterMethod("schemaLib._x0033_38", "get_x0033_47"), findSetterMethod("schemaLib._x0033_38", "set_x0033_47", "schemaLib._x0033_47"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_47.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_48", "", findGetterMethod("schemaLib._x0033_38", "get_x0033_48"), findSetterMethod("schemaLib._x0033_38", "set_x0033_48", "schemaLib._x0033_48"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_48.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_50", "", findGetterMethod("schemaLib._x0033_38", "get_x0033_50"), findSetterMethod("schemaLib._x0033_38", "set_x0033_50", "schemaLib._x0033_50"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_50.class)
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


