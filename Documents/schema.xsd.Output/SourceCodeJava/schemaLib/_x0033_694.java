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
// This class represents the ComplexType _x0033_694
// </summary>
public class _x0033_694 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_694
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_694() {
		setElementName("_x0033_694");
		init();
	}
	public _x0033_694(String elementName) {
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
			__x0033_726 = null;
			__x0033_746 = null;
			__x0033_820 = null;
			__x0033_861 = null;
			__x0033_899 = null;
			__x0033_932 = null;
			__x0033_956 = null;
			__x0033_972 = null;
			__x0033_984 = null;
			__x0033_995 = null;

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
			schemaLib._x0033_694 newObject = (schemaLib._x0033_694)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_726 = null;
			if (__x0033_726 != null)
				newObject.__x0033_726 = (schemaLib._x0033_726)__x0033_726.clone();
			newObject.__x0033_746 = null;
			if (__x0033_746 != null)
				newObject.__x0033_746 = (schemaLib._x0033_746)__x0033_746.clone();
			newObject.__x0033_820 = null;
			if (__x0033_820 != null)
				newObject.__x0033_820 = (schemaLib._x0033_820)__x0033_820.clone();
			newObject.__x0033_861 = null;
			if (__x0033_861 != null)
				newObject.__x0033_861 = (schemaLib._x0033_861)__x0033_861.clone();
			newObject.__x0033_899 = null;
			if (__x0033_899 != null)
				newObject.__x0033_899 = (schemaLib._x0033_899)__x0033_899.clone();
			newObject.__x0033_932 = null;
			if (__x0033_932 != null)
				newObject.__x0033_932 = (schemaLib._x0033_932)__x0033_932.clone();
			newObject.__x0033_956 = null;
			if (__x0033_956 != null)
				newObject.__x0033_956 = (schemaLib._x0033_956)__x0033_956.clone();
			newObject.__x0033_972 = null;
			if (__x0033_972 != null)
				newObject.__x0033_972 = (schemaLib._x0033_972)__x0033_972.clone();
			newObject.__x0033_984 = null;
			if (__x0033_984 != null)
				newObject.__x0033_984 = (schemaLib._x0033_984)__x0033_984.clone();
			newObject.__x0033_995 = null;
			if (__x0033_995 != null)
				newObject.__x0033_995 = (schemaLib._x0033_995)__x0033_995.clone();
	
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
	public schemaLib._x0033_726 get_x0033_726() {
		return __x0033_726;  
	}
	public void set_x0033_726(schemaLib._x0033_726 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_726 = null;
		else {
			setElementName(value.getBase(), "_x0033_726");
			__x0033_726 = value; 
		}
	}
	protected schemaLib._x0033_726 __x0033_726;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_746 get_x0033_746() {
		return __x0033_746;  
	}
	public void set_x0033_746(schemaLib._x0033_746 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_746 = null;
		else {
			setElementName(value.getBase(), "_x0033_746");
			__x0033_746 = value; 
		}
	}
	protected schemaLib._x0033_746 __x0033_746;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_820 get_x0033_820() {
		return __x0033_820;  
	}
	public void set_x0033_820(schemaLib._x0033_820 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_820 = null;
		else {
			setElementName(value.getBase(), "_x0033_820");
			__x0033_820 = value; 
		}
	}
	protected schemaLib._x0033_820 __x0033_820;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_861 get_x0033_861() {
		return __x0033_861;  
	}
	public void set_x0033_861(schemaLib._x0033_861 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_861 = null;
		else {
			setElementName(value.getBase(), "_x0033_861");
			__x0033_861 = value; 
		}
	}
	protected schemaLib._x0033_861 __x0033_861;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_899 get_x0033_899() {
		return __x0033_899;  
	}
	public void set_x0033_899(schemaLib._x0033_899 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_899 = null;
		else {
			setElementName(value.getBase(), "_x0033_899");
			__x0033_899 = value; 
		}
	}
	protected schemaLib._x0033_899 __x0033_899;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_932 get_x0033_932() {
		return __x0033_932;  
	}
	public void set_x0033_932(schemaLib._x0033_932 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_932 = null;
		else {
			setElementName(value.getBase(), "_x0033_932");
			__x0033_932 = value; 
		}
	}
	protected schemaLib._x0033_932 __x0033_932;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_956 get_x0033_956() {
		return __x0033_956;  
	}
	public void set_x0033_956(schemaLib._x0033_956 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_956 = null;
		else {
			setElementName(value.getBase(), "_x0033_956");
			__x0033_956 = value; 
		}
	}
	protected schemaLib._x0033_956 __x0033_956;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_972 get_x0033_972() {
		return __x0033_972;  
	}
	public void set_x0033_972(schemaLib._x0033_972 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_972 = null;
		else {
			setElementName(value.getBase(), "_x0033_972");
			__x0033_972 = value; 
		}
	}
	protected schemaLib._x0033_972 __x0033_972;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_984 get_x0033_984() {
		return __x0033_984;  
	}
	public void set_x0033_984(schemaLib._x0033_984 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_984 = null;
		else {
			setElementName(value.getBase(), "_x0033_984");
			__x0033_984 = value; 
		}
	}
	protected schemaLib._x0033_984 __x0033_984;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_995 get_x0033_995() {
		return __x0033_995;  
	}
	public void set_x0033_995(schemaLib._x0033_995 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_995 = null;
		else {
			setElementName(value.getBase(), "_x0033_995");
			__x0033_995 = value; 
		}
	}
	protected schemaLib._x0033_995 __x0033_995;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_694", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_726", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_726"), findSetterMethod("schemaLib._x0033_694", "set_x0033_726", "schemaLib._x0033_726"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_726.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_746", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_746"), findSetterMethod("schemaLib._x0033_694", "set_x0033_746", "schemaLib._x0033_746"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_746.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_820", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_820"), findSetterMethod("schemaLib._x0033_694", "set_x0033_820", "schemaLib._x0033_820"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_820.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_861", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_861"), findSetterMethod("schemaLib._x0033_694", "set_x0033_861", "schemaLib._x0033_861"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_861.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_899", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_899"), findSetterMethod("schemaLib._x0033_694", "set_x0033_899", "schemaLib._x0033_899"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_899.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_932", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_932"), findSetterMethod("schemaLib._x0033_694", "set_x0033_932", "schemaLib._x0033_932"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_932.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_956", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_956"), findSetterMethod("schemaLib._x0033_694", "set_x0033_956", "schemaLib._x0033_956"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_956.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_972", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_972"), findSetterMethod("schemaLib._x0033_694", "set_x0033_972", "schemaLib._x0033_972"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_972.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_984", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_984"), findSetterMethod("schemaLib._x0033_694", "set_x0033_984", "schemaLib._x0033_984"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_984.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_995", "", findGetterMethod("schemaLib._x0033_694", "get_x0033_995"), findSetterMethod("schemaLib._x0033_694", "set_x0033_995", "schemaLib._x0033_995"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_995.class)
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


