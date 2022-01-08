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
// This class represents the ComplexType _x0031_2370
// </summary>
public class _x0031_2370 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_2370
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_2370() {
		setElementName("_x0031_2370");
		init();
	}
	public _x0031_2370(String elementName) {
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
			__x0039_85 = null;
			__x0031_2761 = null;
			__x0031_3341 = null;
			__x0032_7196 = null;
			__x0032_8992 = null;
			__x0035_4134 = null;
			__x0036_0901 = null;
			__x0036_3768 = null;

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
			schemaLib._x0031_2370 newObject = (schemaLib._x0031_2370)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0039_85 = null;
			if (__x0039_85 != null)
				newObject.__x0039_85 = (schemaLib._x0039_85)__x0039_85.clone();
			newObject.__x0031_2761 = null;
			if (__x0031_2761 != null)
				newObject.__x0031_2761 = (schemaLib._x0031_2761)__x0031_2761.clone();
			newObject.__x0031_3341 = null;
			if (__x0031_3341 != null)
				newObject.__x0031_3341 = (schemaLib._x0031_3341)__x0031_3341.clone();
			newObject.__x0032_7196 = null;
			if (__x0032_7196 != null)
				newObject.__x0032_7196 = (schemaLib._x0032_7196)__x0032_7196.clone();
			newObject.__x0032_8992 = null;
			if (__x0032_8992 != null)
				newObject.__x0032_8992 = (schemaLib._x0032_8992)__x0032_8992.clone();
			newObject.__x0035_4134 = null;
			if (__x0035_4134 != null)
				newObject.__x0035_4134 = (schemaLib._x0035_4134)__x0035_4134.clone();
			newObject.__x0036_0901 = null;
			if (__x0036_0901 != null)
				newObject.__x0036_0901 = (schemaLib._x0036_0901)__x0036_0901.clone();
			newObject.__x0036_3768 = null;
			if (__x0036_3768 != null)
				newObject.__x0036_3768 = (schemaLib._x0036_3768)__x0036_3768.clone();
	
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
	public schemaLib._x0039_85 get_x0039_85() {
		return __x0039_85;  
	}
	public void set_x0039_85(schemaLib._x0039_85 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_85 = null;
		else {
			setElementName(value.getBase(), "_x0039_85");
			__x0039_85 = value; 
		}
	}
	protected schemaLib._x0039_85 __x0039_85;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2761 get_x0031_2761() {
		return __x0031_2761;  
	}
	public void set_x0031_2761(schemaLib._x0031_2761 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2761 = null;
		else {
			setElementName(value.getBase(), "_x0031_2761");
			__x0031_2761 = value; 
		}
	}
	protected schemaLib._x0031_2761 __x0031_2761;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_3341 get_x0031_3341() {
		return __x0031_3341;  
	}
	public void set_x0031_3341(schemaLib._x0031_3341 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_3341 = null;
		else {
			setElementName(value.getBase(), "_x0031_3341");
			__x0031_3341 = value; 
		}
	}
	protected schemaLib._x0031_3341 __x0031_3341;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_7196 get_x0032_7196() {
		return __x0032_7196;  
	}
	public void set_x0032_7196(schemaLib._x0032_7196 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_7196 = null;
		else {
			setElementName(value.getBase(), "_x0032_7196");
			__x0032_7196 = value; 
		}
	}
	protected schemaLib._x0032_7196 __x0032_7196;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_8992 get_x0032_8992() {
		return __x0032_8992;  
	}
	public void set_x0032_8992(schemaLib._x0032_8992 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_8992 = null;
		else {
			setElementName(value.getBase(), "_x0032_8992");
			__x0032_8992 = value; 
		}
	}
	protected schemaLib._x0032_8992 __x0032_8992;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_4134 get_x0035_4134() {
		return __x0035_4134;  
	}
	public void set_x0035_4134(schemaLib._x0035_4134 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_4134 = null;
		else {
			setElementName(value.getBase(), "_x0035_4134");
			__x0035_4134 = value; 
		}
	}
	protected schemaLib._x0035_4134 __x0035_4134;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_0901 get_x0036_0901() {
		return __x0036_0901;  
	}
	public void set_x0036_0901(schemaLib._x0036_0901 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_0901 = null;
		else {
			setElementName(value.getBase(), "_x0036_0901");
			__x0036_0901 = value; 
		}
	}
	protected schemaLib._x0036_0901 __x0036_0901;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_3768 get_x0036_3768() {
		return __x0036_3768;  
	}
	public void set_x0036_3768(schemaLib._x0036_3768 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_3768 = null;
		else {
			setElementName(value.getBase(), "_x0036_3768");
			__x0036_3768 = value; 
		}
	}
	protected schemaLib._x0036_3768 __x0036_3768;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_2370", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_85", "", findGetterMethod("schemaLib._x0031_2370", "get_x0039_85"), findSetterMethod("schemaLib._x0031_2370", "set_x0039_85", "schemaLib._x0039_85"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_85.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2761", "", findGetterMethod("schemaLib._x0031_2370", "get_x0031_2761"), findSetterMethod("schemaLib._x0031_2370", "set_x0031_2761", "schemaLib._x0031_2761"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2761.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_3341", "", findGetterMethod("schemaLib._x0031_2370", "get_x0031_3341"), findSetterMethod("schemaLib._x0031_2370", "set_x0031_3341", "schemaLib._x0031_3341"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_3341.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_7196", "", findGetterMethod("schemaLib._x0031_2370", "get_x0032_7196"), findSetterMethod("schemaLib._x0031_2370", "set_x0032_7196", "schemaLib._x0032_7196"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_7196.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_8992", "", findGetterMethod("schemaLib._x0031_2370", "get_x0032_8992"), findSetterMethod("schemaLib._x0031_2370", "set_x0032_8992", "schemaLib._x0032_8992"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_8992.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_4134", "", findGetterMethod("schemaLib._x0031_2370", "get_x0035_4134"), findSetterMethod("schemaLib._x0031_2370", "set_x0035_4134", "schemaLib._x0035_4134"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_4134.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_0901", "", findGetterMethod("schemaLib._x0031_2370", "get_x0036_0901"), findSetterMethod("schemaLib._x0031_2370", "set_x0036_0901", "schemaLib._x0036_0901"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_0901.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_3768", "", findGetterMethod("schemaLib._x0031_2370", "get_x0036_3768"), findSetterMethod("schemaLib._x0031_2370", "set_x0036_3768", "schemaLib._x0036_3768"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_3768.class)
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


