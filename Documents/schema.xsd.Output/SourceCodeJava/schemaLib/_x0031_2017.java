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
// This class represents the ComplexType _x0031_2017
// </summary>
public class _x0031_2017 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_2017
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_2017() {
		setElementName("_x0031_2017");
		init();
	}
	public _x0031_2017(String elementName) {
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
			__x0031_2018 = null;
			__x0031_2019 = null;
			__x0031_2020 = null;
			__x0031_2021 = null;
			__x0031_2022 = null;
			__x0031_2023 = null;
			__x0031_2024 = null;
			__x0031_2025 = null;
			__x0031_2026 = null;
			__x0031_2027 = null;

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
			schemaLib._x0031_2017 newObject = (schemaLib._x0031_2017)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_2018 = null;
			if (__x0031_2018 != null)
				newObject.__x0031_2018 = (schemaLib._x0031_2018)__x0031_2018.clone();
			newObject.__x0031_2019 = null;
			if (__x0031_2019 != null)
				newObject.__x0031_2019 = (schemaLib._x0031_2019)__x0031_2019.clone();
			newObject.__x0031_2020 = null;
			if (__x0031_2020 != null)
				newObject.__x0031_2020 = (schemaLib._x0031_2020)__x0031_2020.clone();
			newObject.__x0031_2021 = null;
			if (__x0031_2021 != null)
				newObject.__x0031_2021 = (schemaLib._x0031_2021)__x0031_2021.clone();
			newObject.__x0031_2022 = null;
			if (__x0031_2022 != null)
				newObject.__x0031_2022 = (schemaLib._x0031_2022)__x0031_2022.clone();
			newObject.__x0031_2023 = null;
			if (__x0031_2023 != null)
				newObject.__x0031_2023 = (schemaLib._x0031_2023)__x0031_2023.clone();
			newObject.__x0031_2024 = null;
			if (__x0031_2024 != null)
				newObject.__x0031_2024 = (schemaLib._x0031_2024)__x0031_2024.clone();
			newObject.__x0031_2025 = null;
			if (__x0031_2025 != null)
				newObject.__x0031_2025 = (schemaLib._x0031_2025)__x0031_2025.clone();
			newObject.__x0031_2026 = null;
			if (__x0031_2026 != null)
				newObject.__x0031_2026 = (schemaLib._x0031_2026)__x0031_2026.clone();
			newObject.__x0031_2027 = null;
			if (__x0031_2027 != null)
				newObject.__x0031_2027 = (schemaLib._x0031_2027)__x0031_2027.clone();
	
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
	public schemaLib._x0031_2018 get_x0031_2018() {
		return __x0031_2018;  
	}
	public void set_x0031_2018(schemaLib._x0031_2018 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2018 = null;
		else {
			setElementName(value.getBase(), "_x0031_2018");
			__x0031_2018 = value; 
		}
	}
	protected schemaLib._x0031_2018 __x0031_2018;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2019 get_x0031_2019() {
		return __x0031_2019;  
	}
	public void set_x0031_2019(schemaLib._x0031_2019 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2019 = null;
		else {
			setElementName(value.getBase(), "_x0031_2019");
			__x0031_2019 = value; 
		}
	}
	protected schemaLib._x0031_2019 __x0031_2019;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2020 get_x0031_2020() {
		return __x0031_2020;  
	}
	public void set_x0031_2020(schemaLib._x0031_2020 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2020 = null;
		else {
			setElementName(value.getBase(), "_x0031_2020");
			__x0031_2020 = value; 
		}
	}
	protected schemaLib._x0031_2020 __x0031_2020;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2021 get_x0031_2021() {
		return __x0031_2021;  
	}
	public void set_x0031_2021(schemaLib._x0031_2021 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2021 = null;
		else {
			setElementName(value.getBase(), "_x0031_2021");
			__x0031_2021 = value; 
		}
	}
	protected schemaLib._x0031_2021 __x0031_2021;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2022 get_x0031_2022() {
		return __x0031_2022;  
	}
	public void set_x0031_2022(schemaLib._x0031_2022 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2022 = null;
		else {
			setElementName(value.getBase(), "_x0031_2022");
			__x0031_2022 = value; 
		}
	}
	protected schemaLib._x0031_2022 __x0031_2022;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2023 get_x0031_2023() {
		return __x0031_2023;  
	}
	public void set_x0031_2023(schemaLib._x0031_2023 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2023 = null;
		else {
			setElementName(value.getBase(), "_x0031_2023");
			__x0031_2023 = value; 
		}
	}
	protected schemaLib._x0031_2023 __x0031_2023;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2024 get_x0031_2024() {
		return __x0031_2024;  
	}
	public void set_x0031_2024(schemaLib._x0031_2024 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2024 = null;
		else {
			setElementName(value.getBase(), "_x0031_2024");
			__x0031_2024 = value; 
		}
	}
	protected schemaLib._x0031_2024 __x0031_2024;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2025 get_x0031_2025() {
		return __x0031_2025;  
	}
	public void set_x0031_2025(schemaLib._x0031_2025 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2025 = null;
		else {
			setElementName(value.getBase(), "_x0031_2025");
			__x0031_2025 = value; 
		}
	}
	protected schemaLib._x0031_2025 __x0031_2025;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2026 get_x0031_2026() {
		return __x0031_2026;  
	}
	public void set_x0031_2026(schemaLib._x0031_2026 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2026 = null;
		else {
			setElementName(value.getBase(), "_x0031_2026");
			__x0031_2026 = value; 
		}
	}
	protected schemaLib._x0031_2026 __x0031_2026;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_2027 get_x0031_2027() {
		return __x0031_2027;  
	}
	public void set_x0031_2027(schemaLib._x0031_2027 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_2027 = null;
		else {
			setElementName(value.getBase(), "_x0031_2027");
			__x0031_2027 = value; 
		}
	}
	protected schemaLib._x0031_2027 __x0031_2027;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_2017", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2018", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2018"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2018", "schemaLib._x0031_2018"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2018.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2019", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2019"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2019", "schemaLib._x0031_2019"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2019.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2020", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2020"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2020", "schemaLib._x0031_2020"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2020.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2021", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2021"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2021", "schemaLib._x0031_2021"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2021.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2022", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2022"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2022", "schemaLib._x0031_2022"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2022.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2023", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2023"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2023", "schemaLib._x0031_2023"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2023.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2024", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2024"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2024", "schemaLib._x0031_2024"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2024.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2025", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2025"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2025", "schemaLib._x0031_2025"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2025.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2026", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2026"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2026", "schemaLib._x0031_2026"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2026.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_2027", "", findGetterMethod("schemaLib._x0031_2017", "get_x0031_2027"), findSetterMethod("schemaLib._x0031_2017", "set_x0031_2027", "schemaLib._x0031_2027"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_2027.class)
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


