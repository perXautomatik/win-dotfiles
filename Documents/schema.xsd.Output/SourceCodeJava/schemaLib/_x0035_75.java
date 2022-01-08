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
// This class represents the ComplexType _x0035_75
// </summary>
public class _x0035_75 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0035_75
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0035_75() {
		setElementName("_x0035_75");
		init();
	}
	public _x0035_75(String elementName) {
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
			__x0039_42 = null;
			__x0039_43 = null;
			__x0039_44 = null;
			__x0039_63 = null;
			__x0039_64 = null;
			__x0039_48 = null;
			__x0039_49 = null;
			__x0039_50 = null;
			__x0039_51 = null;
			__x0039_52 = null;
			__x0039_32 = null;
			__x0039_33 = null;
			__x0039_34 = null;
			__x0039_35 = null;
			__x0039_36 = null;

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
			schemaLib._x0035_75 newObject = (schemaLib._x0035_75)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0039_42 = null;
			if (__x0039_42 != null)
				newObject.__x0039_42 = (schemaLib._x0039_42)__x0039_42.clone();
			newObject.__x0039_43 = null;
			if (__x0039_43 != null)
				newObject.__x0039_43 = (schemaLib._x0039_43)__x0039_43.clone();
			newObject.__x0039_44 = null;
			if (__x0039_44 != null)
				newObject.__x0039_44 = (schemaLib._x0039_44B)__x0039_44.clone();
			newObject.__x0039_63 = null;
			if (__x0039_63 != null)
				newObject.__x0039_63 = (schemaLib._x0039_63)__x0039_63.clone();
			newObject.__x0039_64 = null;
			if (__x0039_64 != null)
				newObject.__x0039_64 = (schemaLib._x0039_64)__x0039_64.clone();
			newObject.__x0039_48 = null;
			if (__x0039_48 != null)
				newObject.__x0039_48 = (schemaLib._x0039_48)__x0039_48.clone();
			newObject.__x0039_49 = null;
			if (__x0039_49 != null)
				newObject.__x0039_49 = (schemaLib._x0039_49)__x0039_49.clone();
			newObject.__x0039_50 = null;
			if (__x0039_50 != null)
				newObject.__x0039_50 = (schemaLib._x0039_50)__x0039_50.clone();
			newObject.__x0039_51 = null;
			if (__x0039_51 != null)
				newObject.__x0039_51 = (schemaLib._x0039_51)__x0039_51.clone();
			newObject.__x0039_52 = null;
			if (__x0039_52 != null)
				newObject.__x0039_52 = (schemaLib._x0039_52)__x0039_52.clone();
			newObject.__x0039_32 = null;
			if (__x0039_32 != null)
				newObject.__x0039_32 = (schemaLib._x0039_32)__x0039_32.clone();
			newObject.__x0039_33 = null;
			if (__x0039_33 != null)
				newObject.__x0039_33 = (schemaLib._x0039_33)__x0039_33.clone();
			newObject.__x0039_34 = null;
			if (__x0039_34 != null)
				newObject.__x0039_34 = (schemaLib._x0039_34)__x0039_34.clone();
			newObject.__x0039_35 = null;
			if (__x0039_35 != null)
				newObject.__x0039_35 = (schemaLib._x0039_35)__x0039_35.clone();
			newObject.__x0039_36 = null;
			if (__x0039_36 != null)
				newObject.__x0039_36 = (schemaLib._x0039_36)__x0039_36.clone();
	
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
	public schemaLib._x0039_42 get_x0039_42() {
		return __x0039_42;  
	}
	public void set_x0039_42(schemaLib._x0039_42 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_42 = null;
		else {
			setElementName(value.getBase(), "_x0039_42");
			__x0039_42 = value; 
		}
	}
	protected schemaLib._x0039_42 __x0039_42;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_43 get_x0039_43() {
		return __x0039_43;  
	}
	public void set_x0039_43(schemaLib._x0039_43 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_43 = null;
		else {
			setElementName(value.getBase(), "_x0039_43");
			__x0039_43 = value; 
		}
	}
	protected schemaLib._x0039_43 __x0039_43;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_44B get_x0039_44() {
		return __x0039_44;  
	}
	public void set_x0039_44(schemaLib._x0039_44B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_44 = null;
		else {
			setElementName(value.getBase(), "_x0039_44");
			__x0039_44 = value; 
		}
	}
	protected schemaLib._x0039_44B __x0039_44;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_63 get_x0039_63() {
		return __x0039_63;  
	}
	public void set_x0039_63(schemaLib._x0039_63 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_63 = null;
		else {
			setElementName(value.getBase(), "_x0039_63");
			__x0039_63 = value; 
		}
	}
	protected schemaLib._x0039_63 __x0039_63;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_64 get_x0039_64() {
		return __x0039_64;  
	}
	public void set_x0039_64(schemaLib._x0039_64 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_64 = null;
		else {
			setElementName(value.getBase(), "_x0039_64");
			__x0039_64 = value; 
		}
	}
	protected schemaLib._x0039_64 __x0039_64;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_48 get_x0039_48() {
		return __x0039_48;  
	}
	public void set_x0039_48(schemaLib._x0039_48 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_48 = null;
		else {
			setElementName(value.getBase(), "_x0039_48");
			__x0039_48 = value; 
		}
	}
	protected schemaLib._x0039_48 __x0039_48;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_49 get_x0039_49() {
		return __x0039_49;  
	}
	public void set_x0039_49(schemaLib._x0039_49 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_49 = null;
		else {
			setElementName(value.getBase(), "_x0039_49");
			__x0039_49 = value; 
		}
	}
	protected schemaLib._x0039_49 __x0039_49;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_50 get_x0039_50() {
		return __x0039_50;  
	}
	public void set_x0039_50(schemaLib._x0039_50 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_50 = null;
		else {
			setElementName(value.getBase(), "_x0039_50");
			__x0039_50 = value; 
		}
	}
	protected schemaLib._x0039_50 __x0039_50;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_51 get_x0039_51() {
		return __x0039_51;  
	}
	public void set_x0039_51(schemaLib._x0039_51 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_51 = null;
		else {
			setElementName(value.getBase(), "_x0039_51");
			__x0039_51 = value; 
		}
	}
	protected schemaLib._x0039_51 __x0039_51;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_52 get_x0039_52() {
		return __x0039_52;  
	}
	public void set_x0039_52(schemaLib._x0039_52 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_52 = null;
		else {
			setElementName(value.getBase(), "_x0039_52");
			__x0039_52 = value; 
		}
	}
	protected schemaLib._x0039_52 __x0039_52;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_32 get_x0039_32() {
		return __x0039_32;  
	}
	public void set_x0039_32(schemaLib._x0039_32 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_32 = null;
		else {
			setElementName(value.getBase(), "_x0039_32");
			__x0039_32 = value; 
		}
	}
	protected schemaLib._x0039_32 __x0039_32;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_33 get_x0039_33() {
		return __x0039_33;  
	}
	public void set_x0039_33(schemaLib._x0039_33 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_33 = null;
		else {
			setElementName(value.getBase(), "_x0039_33");
			__x0039_33 = value; 
		}
	}
	protected schemaLib._x0039_33 __x0039_33;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_34 get_x0039_34() {
		return __x0039_34;  
	}
	public void set_x0039_34(schemaLib._x0039_34 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_34 = null;
		else {
			setElementName(value.getBase(), "_x0039_34");
			__x0039_34 = value; 
		}
	}
	protected schemaLib._x0039_34 __x0039_34;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_35 get_x0039_35() {
		return __x0039_35;  
	}
	public void set_x0039_35(schemaLib._x0039_35 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_35 = null;
		else {
			setElementName(value.getBase(), "_x0039_35");
			__x0039_35 = value; 
		}
	}
	protected schemaLib._x0039_35 __x0039_35;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0039_36 get_x0039_36() {
		return __x0039_36;  
	}
	public void set_x0039_36(schemaLib._x0039_36 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0039_36 = null;
		else {
			setElementName(value.getBase(), "_x0039_36");
			__x0039_36 = value; 
		}
	}
	protected schemaLib._x0039_36 __x0039_36;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0035_75", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_42", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_42"), findSetterMethod("schemaLib._x0035_75", "set_x0039_42", "schemaLib._x0039_42"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_42.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_43", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_43"), findSetterMethod("schemaLib._x0035_75", "set_x0039_43", "schemaLib._x0039_43"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_43.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_44", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_44"), findSetterMethod("schemaLib._x0035_75", "set_x0039_44", "schemaLib._x0039_44B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_44B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_63", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_63"), findSetterMethod("schemaLib._x0035_75", "set_x0039_63", "schemaLib._x0039_63"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_63.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_64", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_64"), findSetterMethod("schemaLib._x0035_75", "set_x0039_64", "schemaLib._x0039_64"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_64.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_48", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_48"), findSetterMethod("schemaLib._x0035_75", "set_x0039_48", "schemaLib._x0039_48"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_48.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_49", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_49"), findSetterMethod("schemaLib._x0035_75", "set_x0039_49", "schemaLib._x0039_49"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_49.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_50", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_50"), findSetterMethod("schemaLib._x0035_75", "set_x0039_50", "schemaLib._x0039_50"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_50.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_51", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_51"), findSetterMethod("schemaLib._x0035_75", "set_x0039_51", "schemaLib._x0039_51"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_51.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_52", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_52"), findSetterMethod("schemaLib._x0035_75", "set_x0039_52", "schemaLib._x0039_52"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_52.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_32", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_32"), findSetterMethod("schemaLib._x0035_75", "set_x0039_32", "schemaLib._x0039_32"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_32.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_33", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_33"), findSetterMethod("schemaLib._x0035_75", "set_x0039_33", "schemaLib._x0039_33"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_33.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_34", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_34"), findSetterMethod("schemaLib._x0035_75", "set_x0039_34", "schemaLib._x0039_34"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_34.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_35", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_35"), findSetterMethod("schemaLib._x0035_75", "set_x0039_35", "schemaLib._x0039_35"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_35.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0039_36", "", findGetterMethod("schemaLib._x0035_75", "get_x0039_36"), findSetterMethod("schemaLib._x0035_75", "set_x0039_36", "schemaLib._x0039_36"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0039_36.class)
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


