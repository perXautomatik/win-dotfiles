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
// This class represents the ComplexType _x0032_95
// </summary>
public class _x0032_95 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0032_95
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0032_95() {
		setElementName("_x0032_95");
		init();
	}
	public _x0032_95(String elementName) {
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
			__x0032_97 = null;
			__x0032_99 = null;
			__x0033_00 = null;
			__x0033_01 = null;
			__x0033_02 = null;
			__x0033_03 = null;
			__x0033_05 = null;

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
			schemaLib._x0032_95 newObject = (schemaLib._x0032_95)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0032_97 = null;
			if (__x0032_97 != null)
				newObject.__x0032_97 = (schemaLib._x0032_97)__x0032_97.clone();
			newObject.__x0032_99 = null;
			if (__x0032_99 != null)
				newObject.__x0032_99 = (schemaLib._x0032_99)__x0032_99.clone();
			newObject.__x0033_00 = null;
			if (__x0033_00 != null)
				newObject.__x0033_00 = (schemaLib._x0033_00)__x0033_00.clone();
			newObject.__x0033_01 = null;
			if (__x0033_01 != null)
				newObject.__x0033_01 = (schemaLib._x0033_01)__x0033_01.clone();
			newObject.__x0033_02 = null;
			if (__x0033_02 != null)
				newObject.__x0033_02 = (schemaLib._x0033_02)__x0033_02.clone();
			newObject.__x0033_03 = null;
			if (__x0033_03 != null)
				newObject.__x0033_03 = (schemaLib._x0033_03)__x0033_03.clone();
			newObject.__x0033_05 = null;
			if (__x0033_05 != null)
				newObject.__x0033_05 = (schemaLib._x0033_05)__x0033_05.clone();
	
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
	public schemaLib._x0032_97 get_x0032_97() {
		return __x0032_97;  
	}
	public void set_x0032_97(schemaLib._x0032_97 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_97 = null;
		else {
			setElementName(value.getBase(), "_x0032_97");
			__x0032_97 = value; 
		}
	}
	protected schemaLib._x0032_97 __x0032_97;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_99 get_x0032_99() {
		return __x0032_99;  
	}
	public void set_x0032_99(schemaLib._x0032_99 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_99 = null;
		else {
			setElementName(value.getBase(), "_x0032_99");
			__x0032_99 = value; 
		}
	}
	protected schemaLib._x0032_99 __x0032_99;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_00 get_x0033_00() {
		return __x0033_00;  
	}
	public void set_x0033_00(schemaLib._x0033_00 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_00 = null;
		else {
			setElementName(value.getBase(), "_x0033_00");
			__x0033_00 = value; 
		}
	}
	protected schemaLib._x0033_00 __x0033_00;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_01 get_x0033_01() {
		return __x0033_01;  
	}
	public void set_x0033_01(schemaLib._x0033_01 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_01 = null;
		else {
			setElementName(value.getBase(), "_x0033_01");
			__x0033_01 = value; 
		}
	}
	protected schemaLib._x0033_01 __x0033_01;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_02 get_x0033_02() {
		return __x0033_02;  
	}
	public void set_x0033_02(schemaLib._x0033_02 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_02 = null;
		else {
			setElementName(value.getBase(), "_x0033_02");
			__x0033_02 = value; 
		}
	}
	protected schemaLib._x0033_02 __x0033_02;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_03 get_x0033_03() {
		return __x0033_03;  
	}
	public void set_x0033_03(schemaLib._x0033_03 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_03 = null;
		else {
			setElementName(value.getBase(), "_x0033_03");
			__x0033_03 = value; 
		}
	}
	protected schemaLib._x0033_03 __x0033_03;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_05 get_x0033_05() {
		return __x0033_05;  
	}
	public void set_x0033_05(schemaLib._x0033_05 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_05 = null;
		else {
			setElementName(value.getBase(), "_x0033_05");
			__x0033_05 = value; 
		}
	}
	protected schemaLib._x0033_05 __x0033_05;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0032_95", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_97", "", findGetterMethod("schemaLib._x0032_95", "get_x0032_97"), findSetterMethod("schemaLib._x0032_95", "set_x0032_97", "schemaLib._x0032_97"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_97.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_99", "", findGetterMethod("schemaLib._x0032_95", "get_x0032_99"), findSetterMethod("schemaLib._x0032_95", "set_x0032_99", "schemaLib._x0032_99"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_99.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_00", "", findGetterMethod("schemaLib._x0032_95", "get_x0033_00"), findSetterMethod("schemaLib._x0032_95", "set_x0033_00", "schemaLib._x0033_00"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_00.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_01", "", findGetterMethod("schemaLib._x0032_95", "get_x0033_01"), findSetterMethod("schemaLib._x0032_95", "set_x0033_01", "schemaLib._x0033_01"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_01.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_02", "", findGetterMethod("schemaLib._x0032_95", "get_x0033_02"), findSetterMethod("schemaLib._x0032_95", "set_x0033_02", "schemaLib._x0033_02"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_02.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_03", "", findGetterMethod("schemaLib._x0032_95", "get_x0033_03"), findSetterMethod("schemaLib._x0032_95", "set_x0033_03", "schemaLib._x0033_03"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_03.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_05", "", findGetterMethod("schemaLib._x0032_95", "get_x0033_05"), findSetterMethod("schemaLib._x0032_95", "set_x0033_05", "schemaLib._x0033_05"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_05.class)
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


