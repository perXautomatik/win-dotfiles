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
// This class represents the ComplexType _x0034_5068
// </summary>
public class _x0034_5068 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_5068
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_5068() {
		setElementName("_x0034_5068");
		init();
	}
	public _x0034_5068(String elementName) {
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
			__x0032_1695 = null;
			__x0032_3776 = null;
			__x0033_2877 = null;
			__x0034_7467 = null;
			__x0034_8817 = null;

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
			schemaLib._x0034_5068 newObject = (schemaLib._x0034_5068)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0032_1695 = null;
			if (__x0032_1695 != null)
				newObject.__x0032_1695 = (schemaLib._x0032_1695)__x0032_1695.clone();
			newObject.__x0032_3776 = null;
			if (__x0032_3776 != null)
				newObject.__x0032_3776 = (schemaLib._x0032_3776)__x0032_3776.clone();
			newObject.__x0033_2877 = null;
			if (__x0033_2877 != null)
				newObject.__x0033_2877 = (schemaLib._x0033_2877)__x0033_2877.clone();
			newObject.__x0034_7467 = null;
			if (__x0034_7467 != null)
				newObject.__x0034_7467 = (schemaLib._x0034_7467)__x0034_7467.clone();
			newObject.__x0034_8817 = null;
			if (__x0034_8817 != null)
				newObject.__x0034_8817 = (schemaLib._x0034_8817)__x0034_8817.clone();
	
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
	public schemaLib._x0032_1695 get_x0032_1695() {
		return __x0032_1695;  
	}
	public void set_x0032_1695(schemaLib._x0032_1695 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_1695 = null;
		else {
			setElementName(value.getBase(), "_x0032_1695");
			__x0032_1695 = value; 
		}
	}
	protected schemaLib._x0032_1695 __x0032_1695;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_3776 get_x0032_3776() {
		return __x0032_3776;  
	}
	public void set_x0032_3776(schemaLib._x0032_3776 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_3776 = null;
		else {
			setElementName(value.getBase(), "_x0032_3776");
			__x0032_3776 = value; 
		}
	}
	protected schemaLib._x0032_3776 __x0032_3776;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_2877 get_x0033_2877() {
		return __x0033_2877;  
	}
	public void set_x0033_2877(schemaLib._x0033_2877 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_2877 = null;
		else {
			setElementName(value.getBase(), "_x0033_2877");
			__x0033_2877 = value; 
		}
	}
	protected schemaLib._x0033_2877 __x0033_2877;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_7467 get_x0034_7467() {
		return __x0034_7467;  
	}
	public void set_x0034_7467(schemaLib._x0034_7467 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_7467 = null;
		else {
			setElementName(value.getBase(), "_x0034_7467");
			__x0034_7467 = value; 
		}
	}
	protected schemaLib._x0034_7467 __x0034_7467;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_8817 get_x0034_8817() {
		return __x0034_8817;  
	}
	public void set_x0034_8817(schemaLib._x0034_8817 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_8817 = null;
		else {
			setElementName(value.getBase(), "_x0034_8817");
			__x0034_8817 = value; 
		}
	}
	protected schemaLib._x0034_8817 __x0034_8817;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_5068", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_1695", "", findGetterMethod("schemaLib._x0034_5068", "get_x0032_1695"), findSetterMethod("schemaLib._x0034_5068", "set_x0032_1695", "schemaLib._x0032_1695"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_1695.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_3776", "", findGetterMethod("schemaLib._x0034_5068", "get_x0032_3776"), findSetterMethod("schemaLib._x0034_5068", "set_x0032_3776", "schemaLib._x0032_3776"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_3776.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_2877", "", findGetterMethod("schemaLib._x0034_5068", "get_x0033_2877"), findSetterMethod("schemaLib._x0034_5068", "set_x0033_2877", "schemaLib._x0033_2877"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_2877.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_7467", "", findGetterMethod("schemaLib._x0034_5068", "get_x0034_7467"), findSetterMethod("schemaLib._x0034_5068", "set_x0034_7467", "schemaLib._x0034_7467"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_7467.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_8817", "", findGetterMethod("schemaLib._x0034_5068", "get_x0034_8817"), findSetterMethod("schemaLib._x0034_5068", "set_x0034_8817", "schemaLib._x0034_8817"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_8817.class)
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


