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
// This class represents the ComplexType _x0039_864
// </summary>
public class _x0039_864 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0039_864
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0039_864() {
		setElementName("_x0039_864");
		init();
	}
	public _x0039_864(String elementName) {
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
			__x0039_865 = null;
			__x0039_869 = null;
			__x0039_872 = null;
			__x0039_875 = null;
			__x0039_878 = null;
			__x0039_881 = null;

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
			schemaLib._x0039_864 newObject = (schemaLib._x0039_864)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0039_865 = null;
			if (__x0039_865 != null)
				newObject.__x0039_865 = (schemaLib._x0039_865)__x0039_865.clone();
			newObject.__x0039_869 = null;
			if (__x0039_869 != null)
				newObject.__x0039_869 = (schemaLib._x0039_869)__x0039_869.clone();
			newObject.__x0039_872 = null;
			if (__x0039_872 != null)
				newObject.__x0039_872 = (schemaLib._x0039_872)__x0039_872.clone();
			newObject.__x0039_875 = null;
			if (__x0039_875 != null)
				newObject.__x0039_875 = (schemaLib._x0039_875)__x0039_875.clone();
			newObject.__x0039_878 = null;
			if (__x0039_878 != null)
				newObject.__x0039_878 = (schemaLib._x0039_878)__x0039_878.clone();
			newObject.__x0039_881 = null;
			if (__x0039_881 != null)
				newObject.__x0039_881 = (schemaLib._x0039_881)__x0039_881.clone();
	
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
	public schemaLib._x0039_865 get_x0039_865() {
		return __x0039_865;  
	}
	public void set_x0039_865(schemaLib._x0039_865 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_865 = null;
		else {
			setElementName(value.getBase(), "_x0039_865");
			__x0039_865 = value; 
		}
	}
	protected schemaLib._x0039_865 __x0039_865;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_869 get_x0039_869() {
		return __x0039_869;  
	}
	public void set_x0039_869(schemaLib._x0039_869 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_869 = null;
		else {
			setElementName(value.getBase(), "_x0039_869");
			__x0039_869 = value; 
		}
	}
	protected schemaLib._x0039_869 __x0039_869;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_872 get_x0039_872() {
		return __x0039_872;  
	}
	public void set_x0039_872(schemaLib._x0039_872 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_872 = null;
		else {
			setElementName(value.getBase(), "_x0039_872");
			__x0039_872 = value; 
		}
	}
	protected schemaLib._x0039_872 __x0039_872;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_875 get_x0039_875() {
		return __x0039_875;  
	}
	public void set_x0039_875(schemaLib._x0039_875 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_875 = null;
		else {
			setElementName(value.getBase(), "_x0039_875");
			__x0039_875 = value; 
		}
	}
	protected schemaLib._x0039_875 __x0039_875;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_878 get_x0039_878() {
		return __x0039_878;  
	}
	public void set_x0039_878(schemaLib._x0039_878 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_878 = null;
		else {
			setElementName(value.getBase(), "_x0039_878");
			__x0039_878 = value; 
		}
	}
	protected schemaLib._x0039_878 __x0039_878;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_881 get_x0039_881() {
		return __x0039_881;  
	}
	public void set_x0039_881(schemaLib._x0039_881 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_881 = null;
		else {
			setElementName(value.getBase(), "_x0039_881");
			__x0039_881 = value; 
		}
	}
	protected schemaLib._x0039_881 __x0039_881;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0039_864", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_865", "", findGetterMethod("schemaLib._x0039_864", "get_x0039_865"), findSetterMethod("schemaLib._x0039_864", "set_x0039_865", "schemaLib._x0039_865"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_865.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_869", "", findGetterMethod("schemaLib._x0039_864", "get_x0039_869"), findSetterMethod("schemaLib._x0039_864", "set_x0039_869", "schemaLib._x0039_869"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_869.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_872", "", findGetterMethod("schemaLib._x0039_864", "get_x0039_872"), findSetterMethod("schemaLib._x0039_864", "set_x0039_872", "schemaLib._x0039_872"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_872.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_875", "", findGetterMethod("schemaLib._x0039_864", "get_x0039_875"), findSetterMethod("schemaLib._x0039_864", "set_x0039_875", "schemaLib._x0039_875"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_875.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_878", "", findGetterMethod("schemaLib._x0039_864", "get_x0039_878"), findSetterMethod("schemaLib._x0039_864", "set_x0039_878", "schemaLib._x0039_878"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_878.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_881", "", findGetterMethod("schemaLib._x0039_864", "get_x0039_881"), findSetterMethod("schemaLib._x0039_864", "set_x0039_881", "schemaLib._x0039_881"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_881.class)
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


