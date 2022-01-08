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
// This class represents the ComplexType _x0033_645
// </summary>
public class _x0033_645 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_645
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_645() {
		setElementName("_x0033_645");
		init();
	}
	public _x0033_645(String elementName) {
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
			__x0033_635 = null;
			__x0033_636 = null;
			__x0033_637 = null;
			__x0033_638 = null;
			__x0033_639 = null;
			__x0033_640 = null;
			__x0033_641 = null;
			__x0033_642 = null;
			__x0033_643 = null;
			__x0033_644 = null;

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
			schemaLib._x0033_645 newObject = (schemaLib._x0033_645)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_635 = null;
			if (__x0033_635 != null)
				newObject.__x0033_635 = (schemaLib._x0033_635)__x0033_635.clone();
			newObject.__x0033_636 = null;
			if (__x0033_636 != null)
				newObject.__x0033_636 = (schemaLib._x0033_636)__x0033_636.clone();
			newObject.__x0033_637 = null;
			if (__x0033_637 != null)
				newObject.__x0033_637 = (schemaLib._x0033_637)__x0033_637.clone();
			newObject.__x0033_638 = null;
			if (__x0033_638 != null)
				newObject.__x0033_638 = (schemaLib._x0033_638)__x0033_638.clone();
			newObject.__x0033_639 = null;
			if (__x0033_639 != null)
				newObject.__x0033_639 = (schemaLib._x0033_639)__x0033_639.clone();
			newObject.__x0033_640 = null;
			if (__x0033_640 != null)
				newObject.__x0033_640 = (schemaLib._x0033_640)__x0033_640.clone();
			newObject.__x0033_641 = null;
			if (__x0033_641 != null)
				newObject.__x0033_641 = (schemaLib._x0033_641)__x0033_641.clone();
			newObject.__x0033_642 = null;
			if (__x0033_642 != null)
				newObject.__x0033_642 = (schemaLib._x0033_642)__x0033_642.clone();
			newObject.__x0033_643 = null;
			if (__x0033_643 != null)
				newObject.__x0033_643 = (schemaLib._x0033_643)__x0033_643.clone();
			newObject.__x0033_644 = null;
			if (__x0033_644 != null)
				newObject.__x0033_644 = (schemaLib._x0033_644)__x0033_644.clone();
	
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
	public schemaLib._x0033_635 get_x0033_635() {
		return __x0033_635;  
	}
	public void set_x0033_635(schemaLib._x0033_635 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_635 = null;
		else {
			setElementName(value.getBase(), "_x0033_635");
			__x0033_635 = value; 
		}
	}
	protected schemaLib._x0033_635 __x0033_635;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_636 get_x0033_636() {
		return __x0033_636;  
	}
	public void set_x0033_636(schemaLib._x0033_636 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_636 = null;
		else {
			setElementName(value.getBase(), "_x0033_636");
			__x0033_636 = value; 
		}
	}
	protected schemaLib._x0033_636 __x0033_636;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_637 get_x0033_637() {
		return __x0033_637;  
	}
	public void set_x0033_637(schemaLib._x0033_637 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_637 = null;
		else {
			setElementName(value.getBase(), "_x0033_637");
			__x0033_637 = value; 
		}
	}
	protected schemaLib._x0033_637 __x0033_637;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_638 get_x0033_638() {
		return __x0033_638;  
	}
	public void set_x0033_638(schemaLib._x0033_638 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_638 = null;
		else {
			setElementName(value.getBase(), "_x0033_638");
			__x0033_638 = value; 
		}
	}
	protected schemaLib._x0033_638 __x0033_638;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_639 get_x0033_639() {
		return __x0033_639;  
	}
	public void set_x0033_639(schemaLib._x0033_639 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_639 = null;
		else {
			setElementName(value.getBase(), "_x0033_639");
			__x0033_639 = value; 
		}
	}
	protected schemaLib._x0033_639 __x0033_639;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_640 get_x0033_640() {
		return __x0033_640;  
	}
	public void set_x0033_640(schemaLib._x0033_640 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_640 = null;
		else {
			setElementName(value.getBase(), "_x0033_640");
			__x0033_640 = value; 
		}
	}
	protected schemaLib._x0033_640 __x0033_640;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_641 get_x0033_641() {
		return __x0033_641;  
	}
	public void set_x0033_641(schemaLib._x0033_641 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_641 = null;
		else {
			setElementName(value.getBase(), "_x0033_641");
			__x0033_641 = value; 
		}
	}
	protected schemaLib._x0033_641 __x0033_641;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_642 get_x0033_642() {
		return __x0033_642;  
	}
	public void set_x0033_642(schemaLib._x0033_642 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_642 = null;
		else {
			setElementName(value.getBase(), "_x0033_642");
			__x0033_642 = value; 
		}
	}
	protected schemaLib._x0033_642 __x0033_642;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_643 get_x0033_643() {
		return __x0033_643;  
	}
	public void set_x0033_643(schemaLib._x0033_643 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_643 = null;
		else {
			setElementName(value.getBase(), "_x0033_643");
			__x0033_643 = value; 
		}
	}
	protected schemaLib._x0033_643 __x0033_643;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_644 get_x0033_644() {
		return __x0033_644;  
	}
	public void set_x0033_644(schemaLib._x0033_644 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_644 = null;
		else {
			setElementName(value.getBase(), "_x0033_644");
			__x0033_644 = value; 
		}
	}
	protected schemaLib._x0033_644 __x0033_644;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_645", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_635", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_635"), findSetterMethod("schemaLib._x0033_645", "set_x0033_635", "schemaLib._x0033_635"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_635.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_636", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_636"), findSetterMethod("schemaLib._x0033_645", "set_x0033_636", "schemaLib._x0033_636"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_636.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_637", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_637"), findSetterMethod("schemaLib._x0033_645", "set_x0033_637", "schemaLib._x0033_637"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_637.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_638", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_638"), findSetterMethod("schemaLib._x0033_645", "set_x0033_638", "schemaLib._x0033_638"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_638.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_639", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_639"), findSetterMethod("schemaLib._x0033_645", "set_x0033_639", "schemaLib._x0033_639"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_639.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_640", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_640"), findSetterMethod("schemaLib._x0033_645", "set_x0033_640", "schemaLib._x0033_640"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_640.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_641", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_641"), findSetterMethod("schemaLib._x0033_645", "set_x0033_641", "schemaLib._x0033_641"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_641.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_642", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_642"), findSetterMethod("schemaLib._x0033_645", "set_x0033_642", "schemaLib._x0033_642"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_642.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_643", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_643"), findSetterMethod("schemaLib._x0033_645", "set_x0033_643", "schemaLib._x0033_643"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_643.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_644", "", findGetterMethod("schemaLib._x0033_645", "get_x0033_644"), findSetterMethod("schemaLib._x0033_645", "set_x0033_644", "schemaLib._x0033_644"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_644.class)
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


