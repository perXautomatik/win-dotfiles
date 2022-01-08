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
// This class represents the ComplexType _x0033_715
// </summary>
public class _x0033_715 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_715
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_715() {
		setElementName("_x0033_715");
		init();
	}
	public _x0033_715(String elementName) {
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
			__x0033_733 = null;
			__x0033_760 = null;
			__x0033_841 = null;
			__x0033_881 = null;
			__x0033_916 = null;
			__x0033_945 = null;

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
			schemaLib._x0033_715 newObject = (schemaLib._x0033_715)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_733 = null;
			if (__x0033_733 != null)
				newObject.__x0033_733 = (schemaLib._x0033_733)__x0033_733.clone();
			newObject.__x0033_760 = null;
			if (__x0033_760 != null)
				newObject.__x0033_760 = (schemaLib._x0033_760)__x0033_760.clone();
			newObject.__x0033_841 = null;
			if (__x0033_841 != null)
				newObject.__x0033_841 = (schemaLib._x0033_841)__x0033_841.clone();
			newObject.__x0033_881 = null;
			if (__x0033_881 != null)
				newObject.__x0033_881 = (schemaLib._x0033_881)__x0033_881.clone();
			newObject.__x0033_916 = null;
			if (__x0033_916 != null)
				newObject.__x0033_916 = (schemaLib._x0033_916)__x0033_916.clone();
			newObject.__x0033_945 = null;
			if (__x0033_945 != null)
				newObject.__x0033_945 = (schemaLib._x0033_945A)__x0033_945.clone();
	
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
	public schemaLib._x0033_733 get_x0033_733() {
		return __x0033_733;  
	}
	public void set_x0033_733(schemaLib._x0033_733 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_733 = null;
		else {
			setElementName(value.getBase(), "_x0033_733");
			__x0033_733 = value; 
		}
	}
	protected schemaLib._x0033_733 __x0033_733;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_760 get_x0033_760() {
		return __x0033_760;  
	}
	public void set_x0033_760(schemaLib._x0033_760 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_760 = null;
		else {
			setElementName(value.getBase(), "_x0033_760");
			__x0033_760 = value; 
		}
	}
	protected schemaLib._x0033_760 __x0033_760;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_841 get_x0033_841() {
		return __x0033_841;  
	}
	public void set_x0033_841(schemaLib._x0033_841 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_841 = null;
		else {
			setElementName(value.getBase(), "_x0033_841");
			__x0033_841 = value; 
		}
	}
	protected schemaLib._x0033_841 __x0033_841;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_881 get_x0033_881() {
		return __x0033_881;  
	}
	public void set_x0033_881(schemaLib._x0033_881 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_881 = null;
		else {
			setElementName(value.getBase(), "_x0033_881");
			__x0033_881 = value; 
		}
	}
	protected schemaLib._x0033_881 __x0033_881;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_916 get_x0033_916() {
		return __x0033_916;  
	}
	public void set_x0033_916(schemaLib._x0033_916 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_916 = null;
		else {
			setElementName(value.getBase(), "_x0033_916");
			__x0033_916 = value; 
		}
	}
	protected schemaLib._x0033_916 __x0033_916;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_945A get_x0033_945() {
		return __x0033_945;  
	}
	public void set_x0033_945(schemaLib._x0033_945A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_945 = null;
		else {
			setElementName(value.getBase(), "_x0033_945");
			__x0033_945 = value; 
		}
	}
	protected schemaLib._x0033_945A __x0033_945;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_715", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_733", "", findGetterMethod("schemaLib._x0033_715", "get_x0033_733"), findSetterMethod("schemaLib._x0033_715", "set_x0033_733", "schemaLib._x0033_733"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_733.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_760", "", findGetterMethod("schemaLib._x0033_715", "get_x0033_760"), findSetterMethod("schemaLib._x0033_715", "set_x0033_760", "schemaLib._x0033_760"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_760.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_841", "", findGetterMethod("schemaLib._x0033_715", "get_x0033_841"), findSetterMethod("schemaLib._x0033_715", "set_x0033_841", "schemaLib._x0033_841"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_841.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_881", "", findGetterMethod("schemaLib._x0033_715", "get_x0033_881"), findSetterMethod("schemaLib._x0033_715", "set_x0033_881", "schemaLib._x0033_881"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_881.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_916", "", findGetterMethod("schemaLib._x0033_715", "get_x0033_916"), findSetterMethod("schemaLib._x0033_715", "set_x0033_916", "schemaLib._x0033_916"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_916.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_945", "", findGetterMethod("schemaLib._x0033_715", "get_x0033_945"), findSetterMethod("schemaLib._x0033_715", "set_x0033_945", "schemaLib._x0033_945A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_945A.class)
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


