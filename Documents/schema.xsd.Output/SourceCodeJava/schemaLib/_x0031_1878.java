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
// This class represents the ComplexType _x0031_1878
// </summary>
public class _x0031_1878 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_1878
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_1878() {
		setElementName("_x0031_1878");
		init();
	}
	public _x0031_1878(String elementName) {
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
			__x0031_376 = null;
			__x0033_187 = null;
			__x0034_797 = null;
			__x0032_0986 = null;
			__x0033_0623 = null;
			__x0033_2323 = null;
			__x0033_3091 = null;
			__x0034_1612 = null;
			__x0034_2726 = null;
			__x0035_4486 = null;
			__x0035_5431 = null;
			__x0035_9544 = null;
			__x0036_2230 = null;
			__x0036_4792 = null;

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
			schemaLib._x0031_1878 newObject = (schemaLib._x0031_1878)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_376 = null;
			if (__x0031_376 != null)
				newObject.__x0031_376 = (schemaLib._x0031_376A)__x0031_376.clone();
			newObject.__x0033_187 = null;
			if (__x0033_187 != null)
				newObject.__x0033_187 = (schemaLib._x0033_187A)__x0033_187.clone();
			newObject.__x0034_797 = null;
			if (__x0034_797 != null)
				newObject.__x0034_797 = (schemaLib._x0034_797)__x0034_797.clone();
			newObject.__x0032_0986 = null;
			if (__x0032_0986 != null)
				newObject.__x0032_0986 = (schemaLib._x0032_0986)__x0032_0986.clone();
			newObject.__x0033_0623 = null;
			if (__x0033_0623 != null)
				newObject.__x0033_0623 = (schemaLib._x0033_0623)__x0033_0623.clone();
			newObject.__x0033_2323 = null;
			if (__x0033_2323 != null)
				newObject.__x0033_2323 = (schemaLib._x0033_2323)__x0033_2323.clone();
			newObject.__x0033_3091 = null;
			if (__x0033_3091 != null)
				newObject.__x0033_3091 = (schemaLib._x0033_3091)__x0033_3091.clone();
			newObject.__x0034_1612 = null;
			if (__x0034_1612 != null)
				newObject.__x0034_1612 = (schemaLib._x0034_1612)__x0034_1612.clone();
			newObject.__x0034_2726 = null;
			if (__x0034_2726 != null)
				newObject.__x0034_2726 = (schemaLib._x0034_2726)__x0034_2726.clone();
			newObject.__x0035_4486 = null;
			if (__x0035_4486 != null)
				newObject.__x0035_4486 = (schemaLib._x0035_4486)__x0035_4486.clone();
			newObject.__x0035_5431 = null;
			if (__x0035_5431 != null)
				newObject.__x0035_5431 = (schemaLib._x0035_5431)__x0035_5431.clone();
			newObject.__x0035_9544 = null;
			if (__x0035_9544 != null)
				newObject.__x0035_9544 = (schemaLib._x0035_9544)__x0035_9544.clone();
			newObject.__x0036_2230 = null;
			if (__x0036_2230 != null)
				newObject.__x0036_2230 = (schemaLib._x0036_2230)__x0036_2230.clone();
			newObject.__x0036_4792 = null;
			if (__x0036_4792 != null)
				newObject.__x0036_4792 = (schemaLib._x0036_4792)__x0036_4792.clone();
	
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
	public schemaLib._x0031_376A get_x0031_376() {
		return __x0031_376;  
	}
	public void set_x0031_376(schemaLib._x0031_376A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_376 = null;
		else {
			setElementName(value.getBase(), "_x0031_376");
			__x0031_376 = value; 
		}
	}
	protected schemaLib._x0031_376A __x0031_376;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_187A get_x0033_187() {
		return __x0033_187;  
	}
	public void set_x0033_187(schemaLib._x0033_187A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_187 = null;
		else {
			setElementName(value.getBase(), "_x0033_187");
			__x0033_187 = value; 
		}
	}
	protected schemaLib._x0033_187A __x0033_187;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_797 get_x0034_797() {
		return __x0034_797;  
	}
	public void set_x0034_797(schemaLib._x0034_797 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_797 = null;
		else {
			setElementName(value.getBase(), "_x0034_797");
			__x0034_797 = value; 
		}
	}
	protected schemaLib._x0034_797 __x0034_797;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_0986 get_x0032_0986() {
		return __x0032_0986;  
	}
	public void set_x0032_0986(schemaLib._x0032_0986 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_0986 = null;
		else {
			setElementName(value.getBase(), "_x0032_0986");
			__x0032_0986 = value; 
		}
	}
	protected schemaLib._x0032_0986 __x0032_0986;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_0623 get_x0033_0623() {
		return __x0033_0623;  
	}
	public void set_x0033_0623(schemaLib._x0033_0623 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_0623 = null;
		else {
			setElementName(value.getBase(), "_x0033_0623");
			__x0033_0623 = value; 
		}
	}
	protected schemaLib._x0033_0623 __x0033_0623;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_2323 get_x0033_2323() {
		return __x0033_2323;  
	}
	public void set_x0033_2323(schemaLib._x0033_2323 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_2323 = null;
		else {
			setElementName(value.getBase(), "_x0033_2323");
			__x0033_2323 = value; 
		}
	}
	protected schemaLib._x0033_2323 __x0033_2323;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_3091 get_x0033_3091() {
		return __x0033_3091;  
	}
	public void set_x0033_3091(schemaLib._x0033_3091 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_3091 = null;
		else {
			setElementName(value.getBase(), "_x0033_3091");
			__x0033_3091 = value; 
		}
	}
	protected schemaLib._x0033_3091 __x0033_3091;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_1612 get_x0034_1612() {
		return __x0034_1612;  
	}
	public void set_x0034_1612(schemaLib._x0034_1612 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_1612 = null;
		else {
			setElementName(value.getBase(), "_x0034_1612");
			__x0034_1612 = value; 
		}
	}
	protected schemaLib._x0034_1612 __x0034_1612;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_2726 get_x0034_2726() {
		return __x0034_2726;  
	}
	public void set_x0034_2726(schemaLib._x0034_2726 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_2726 = null;
		else {
			setElementName(value.getBase(), "_x0034_2726");
			__x0034_2726 = value; 
		}
	}
	protected schemaLib._x0034_2726 __x0034_2726;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_4486 get_x0035_4486() {
		return __x0035_4486;  
	}
	public void set_x0035_4486(schemaLib._x0035_4486 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_4486 = null;
		else {
			setElementName(value.getBase(), "_x0035_4486");
			__x0035_4486 = value; 
		}
	}
	protected schemaLib._x0035_4486 __x0035_4486;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_5431 get_x0035_5431() {
		return __x0035_5431;  
	}
	public void set_x0035_5431(schemaLib._x0035_5431 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_5431 = null;
		else {
			setElementName(value.getBase(), "_x0035_5431");
			__x0035_5431 = value; 
		}
	}
	protected schemaLib._x0035_5431 __x0035_5431;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_9544 get_x0035_9544() {
		return __x0035_9544;  
	}
	public void set_x0035_9544(schemaLib._x0035_9544 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_9544 = null;
		else {
			setElementName(value.getBase(), "_x0035_9544");
			__x0035_9544 = value; 
		}
	}
	protected schemaLib._x0035_9544 __x0035_9544;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_2230 get_x0036_2230() {
		return __x0036_2230;  
	}
	public void set_x0036_2230(schemaLib._x0036_2230 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_2230 = null;
		else {
			setElementName(value.getBase(), "_x0036_2230");
			__x0036_2230 = value; 
		}
	}
	protected schemaLib._x0036_2230 __x0036_2230;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_4792 get_x0036_4792() {
		return __x0036_4792;  
	}
	public void set_x0036_4792(schemaLib._x0036_4792 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_4792 = null;
		else {
			setElementName(value.getBase(), "_x0036_4792");
			__x0036_4792 = value; 
		}
	}
	protected schemaLib._x0036_4792 __x0036_4792;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_1878", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_376", "", findGetterMethod("schemaLib._x0031_1878", "get_x0031_376"), findSetterMethod("schemaLib._x0031_1878", "set_x0031_376", "schemaLib._x0031_376A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_376A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_187", "", findGetterMethod("schemaLib._x0031_1878", "get_x0033_187"), findSetterMethod("schemaLib._x0031_1878", "set_x0033_187", "schemaLib._x0033_187A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_187A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_797", "", findGetterMethod("schemaLib._x0031_1878", "get_x0034_797"), findSetterMethod("schemaLib._x0031_1878", "set_x0034_797", "schemaLib._x0034_797"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_797.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_0986", "", findGetterMethod("schemaLib._x0031_1878", "get_x0032_0986"), findSetterMethod("schemaLib._x0031_1878", "set_x0032_0986", "schemaLib._x0032_0986"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_0986.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_0623", "", findGetterMethod("schemaLib._x0031_1878", "get_x0033_0623"), findSetterMethod("schemaLib._x0031_1878", "set_x0033_0623", "schemaLib._x0033_0623"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_0623.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_2323", "", findGetterMethod("schemaLib._x0031_1878", "get_x0033_2323"), findSetterMethod("schemaLib._x0031_1878", "set_x0033_2323", "schemaLib._x0033_2323"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_2323.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_3091", "", findGetterMethod("schemaLib._x0031_1878", "get_x0033_3091"), findSetterMethod("schemaLib._x0031_1878", "set_x0033_3091", "schemaLib._x0033_3091"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_3091.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_1612", "", findGetterMethod("schemaLib._x0031_1878", "get_x0034_1612"), findSetterMethod("schemaLib._x0031_1878", "set_x0034_1612", "schemaLib._x0034_1612"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_1612.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_2726", "", findGetterMethod("schemaLib._x0031_1878", "get_x0034_2726"), findSetterMethod("schemaLib._x0031_1878", "set_x0034_2726", "schemaLib._x0034_2726"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_2726.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_4486", "", findGetterMethod("schemaLib._x0031_1878", "get_x0035_4486"), findSetterMethod("schemaLib._x0031_1878", "set_x0035_4486", "schemaLib._x0035_4486"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_4486.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_5431", "", findGetterMethod("schemaLib._x0031_1878", "get_x0035_5431"), findSetterMethod("schemaLib._x0031_1878", "set_x0035_5431", "schemaLib._x0035_5431"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_5431.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_9544", "", findGetterMethod("schemaLib._x0031_1878", "get_x0035_9544"), findSetterMethod("schemaLib._x0031_1878", "set_x0035_9544", "schemaLib._x0035_9544"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_9544.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_2230", "", findGetterMethod("schemaLib._x0031_1878", "get_x0036_2230"), findSetterMethod("schemaLib._x0031_1878", "set_x0036_2230", "schemaLib._x0036_2230"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_2230.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_4792", "", findGetterMethod("schemaLib._x0031_1878", "get_x0036_4792"), findSetterMethod("schemaLib._x0031_1878", "set_x0036_4792", "schemaLib._x0036_4792"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_4792.class)
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


