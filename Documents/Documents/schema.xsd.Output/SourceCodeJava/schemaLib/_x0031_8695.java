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
// This class represents the ComplexType _x0031_8695
// </summary>
public class _x0031_8695 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_8695
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_8695() {
		setElementName("_x0031_8695");
		init();
	}
	public _x0031_8695(String elementName) {
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
			__x0031_8725 = null;
			__x0031_8728 = null;
			__x0031_8731 = null;
			__x0031_8734 = null;
			__x0031_8737 = null;
			__x0031_8740 = null;
			__x0031_8743 = null;

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
			schemaLib._x0031_8695 newObject = (schemaLib._x0031_8695)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_8725 = null;
			if (__x0031_8725 != null)
				newObject.__x0031_8725 = (schemaLib._x0031_8725)__x0031_8725.clone();
			newObject.__x0031_8728 = null;
			if (__x0031_8728 != null)
				newObject.__x0031_8728 = (schemaLib._x0031_8728)__x0031_8728.clone();
			newObject.__x0031_8731 = null;
			if (__x0031_8731 != null)
				newObject.__x0031_8731 = (schemaLib._x0031_8731)__x0031_8731.clone();
			newObject.__x0031_8734 = null;
			if (__x0031_8734 != null)
				newObject.__x0031_8734 = (schemaLib._x0031_8734)__x0031_8734.clone();
			newObject.__x0031_8737 = null;
			if (__x0031_8737 != null)
				newObject.__x0031_8737 = (schemaLib._x0031_8737)__x0031_8737.clone();
			newObject.__x0031_8740 = null;
			if (__x0031_8740 != null)
				newObject.__x0031_8740 = (schemaLib._x0031_8740)__x0031_8740.clone();
			newObject.__x0031_8743 = null;
			if (__x0031_8743 != null)
				newObject.__x0031_8743 = (schemaLib._x0031_8743)__x0031_8743.clone();
	
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
	public schemaLib._x0031_8725 get_x0031_8725() {
		return __x0031_8725;  
	}
	public void set_x0031_8725(schemaLib._x0031_8725 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8725 = null;
		else {
			setElementName(value.getBase(), "_x0031_8725");
			__x0031_8725 = value; 
		}
	}
	protected schemaLib._x0031_8725 __x0031_8725;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8728 get_x0031_8728() {
		return __x0031_8728;  
	}
	public void set_x0031_8728(schemaLib._x0031_8728 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8728 = null;
		else {
			setElementName(value.getBase(), "_x0031_8728");
			__x0031_8728 = value; 
		}
	}
	protected schemaLib._x0031_8728 __x0031_8728;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8731 get_x0031_8731() {
		return __x0031_8731;  
	}
	public void set_x0031_8731(schemaLib._x0031_8731 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8731 = null;
		else {
			setElementName(value.getBase(), "_x0031_8731");
			__x0031_8731 = value; 
		}
	}
	protected schemaLib._x0031_8731 __x0031_8731;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8734 get_x0031_8734() {
		return __x0031_8734;  
	}
	public void set_x0031_8734(schemaLib._x0031_8734 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8734 = null;
		else {
			setElementName(value.getBase(), "_x0031_8734");
			__x0031_8734 = value; 
		}
	}
	protected schemaLib._x0031_8734 __x0031_8734;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8737 get_x0031_8737() {
		return __x0031_8737;  
	}
	public void set_x0031_8737(schemaLib._x0031_8737 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8737 = null;
		else {
			setElementName(value.getBase(), "_x0031_8737");
			__x0031_8737 = value; 
		}
	}
	protected schemaLib._x0031_8737 __x0031_8737;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8740 get_x0031_8740() {
		return __x0031_8740;  
	}
	public void set_x0031_8740(schemaLib._x0031_8740 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8740 = null;
		else {
			setElementName(value.getBase(), "_x0031_8740");
			__x0031_8740 = value; 
		}
	}
	protected schemaLib._x0031_8740 __x0031_8740;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8743 get_x0031_8743() {
		return __x0031_8743;  
	}
	public void set_x0031_8743(schemaLib._x0031_8743 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8743 = null;
		else {
			setElementName(value.getBase(), "_x0031_8743");
			__x0031_8743 = value; 
		}
	}
	protected schemaLib._x0031_8743 __x0031_8743;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_8695", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8725", "", findGetterMethod("schemaLib._x0031_8695", "get_x0031_8725"), findSetterMethod("schemaLib._x0031_8695", "set_x0031_8725", "schemaLib._x0031_8725"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8725.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8728", "", findGetterMethod("schemaLib._x0031_8695", "get_x0031_8728"), findSetterMethod("schemaLib._x0031_8695", "set_x0031_8728", "schemaLib._x0031_8728"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8728.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8731", "", findGetterMethod("schemaLib._x0031_8695", "get_x0031_8731"), findSetterMethod("schemaLib._x0031_8695", "set_x0031_8731", "schemaLib._x0031_8731"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8731.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8734", "", findGetterMethod("schemaLib._x0031_8695", "get_x0031_8734"), findSetterMethod("schemaLib._x0031_8695", "set_x0031_8734", "schemaLib._x0031_8734"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8734.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8737", "", findGetterMethod("schemaLib._x0031_8695", "get_x0031_8737"), findSetterMethod("schemaLib._x0031_8695", "set_x0031_8737", "schemaLib._x0031_8737"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8737.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8740", "", findGetterMethod("schemaLib._x0031_8695", "get_x0031_8740"), findSetterMethod("schemaLib._x0031_8695", "set_x0031_8740", "schemaLib._x0031_8740"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8740.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8743", "", findGetterMethod("schemaLib._x0031_8695", "get_x0031_8743"), findSetterMethod("schemaLib._x0031_8695", "set_x0031_8743", "schemaLib._x0031_8743"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8743.class)
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


