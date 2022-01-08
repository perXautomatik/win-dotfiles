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
// This class represents the ComplexType _x0031_8475
// </summary>
public class _x0031_8475 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_8475
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_8475() {
		setElementName("_x0031_8475");
		init();
	}
	public _x0031_8475(String elementName) {
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
			__x0031_8854 = null;
			__x0031_8857 = null;
			__x0031_8860 = null;
			__x0031_8863 = null;
			__x0031_8866 = null;
			__x0031_8869 = null;
			__x0031_8872 = null;
			__x0031_8875 = null;
			__x0031_8878 = null;
			__x0031_8881 = null;

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
			schemaLib._x0031_8475 newObject = (schemaLib._x0031_8475)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_8854 = null;
			if (__x0031_8854 != null)
				newObject.__x0031_8854 = (schemaLib._x0031_8854)__x0031_8854.clone();
			newObject.__x0031_8857 = null;
			if (__x0031_8857 != null)
				newObject.__x0031_8857 = (schemaLib._x0031_8857)__x0031_8857.clone();
			newObject.__x0031_8860 = null;
			if (__x0031_8860 != null)
				newObject.__x0031_8860 = (schemaLib._x0031_8860)__x0031_8860.clone();
			newObject.__x0031_8863 = null;
			if (__x0031_8863 != null)
				newObject.__x0031_8863 = (schemaLib._x0031_8863)__x0031_8863.clone();
			newObject.__x0031_8866 = null;
			if (__x0031_8866 != null)
				newObject.__x0031_8866 = (schemaLib._x0031_8866)__x0031_8866.clone();
			newObject.__x0031_8869 = null;
			if (__x0031_8869 != null)
				newObject.__x0031_8869 = (schemaLib._x0031_8869)__x0031_8869.clone();
			newObject.__x0031_8872 = null;
			if (__x0031_8872 != null)
				newObject.__x0031_8872 = (schemaLib._x0031_8872)__x0031_8872.clone();
			newObject.__x0031_8875 = null;
			if (__x0031_8875 != null)
				newObject.__x0031_8875 = (schemaLib._x0031_8875)__x0031_8875.clone();
			newObject.__x0031_8878 = null;
			if (__x0031_8878 != null)
				newObject.__x0031_8878 = (schemaLib._x0031_8878)__x0031_8878.clone();
			newObject.__x0031_8881 = null;
			if (__x0031_8881 != null)
				newObject.__x0031_8881 = (schemaLib._x0031_8881)__x0031_8881.clone();
	
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
	public schemaLib._x0031_8854 get_x0031_8854() {
		return __x0031_8854;  
	}
	public void set_x0031_8854(schemaLib._x0031_8854 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8854 = null;
		else {
			setElementName(value.getBase(), "_x0031_8854");
			__x0031_8854 = value; 
		}
	}
	protected schemaLib._x0031_8854 __x0031_8854;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8857 get_x0031_8857() {
		return __x0031_8857;  
	}
	public void set_x0031_8857(schemaLib._x0031_8857 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8857 = null;
		else {
			setElementName(value.getBase(), "_x0031_8857");
			__x0031_8857 = value; 
		}
	}
	protected schemaLib._x0031_8857 __x0031_8857;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8860 get_x0031_8860() {
		return __x0031_8860;  
	}
	public void set_x0031_8860(schemaLib._x0031_8860 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8860 = null;
		else {
			setElementName(value.getBase(), "_x0031_8860");
			__x0031_8860 = value; 
		}
	}
	protected schemaLib._x0031_8860 __x0031_8860;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8863 get_x0031_8863() {
		return __x0031_8863;  
	}
	public void set_x0031_8863(schemaLib._x0031_8863 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8863 = null;
		else {
			setElementName(value.getBase(), "_x0031_8863");
			__x0031_8863 = value; 
		}
	}
	protected schemaLib._x0031_8863 __x0031_8863;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8866 get_x0031_8866() {
		return __x0031_8866;  
	}
	public void set_x0031_8866(schemaLib._x0031_8866 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8866 = null;
		else {
			setElementName(value.getBase(), "_x0031_8866");
			__x0031_8866 = value; 
		}
	}
	protected schemaLib._x0031_8866 __x0031_8866;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8869 get_x0031_8869() {
		return __x0031_8869;  
	}
	public void set_x0031_8869(schemaLib._x0031_8869 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8869 = null;
		else {
			setElementName(value.getBase(), "_x0031_8869");
			__x0031_8869 = value; 
		}
	}
	protected schemaLib._x0031_8869 __x0031_8869;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8872 get_x0031_8872() {
		return __x0031_8872;  
	}
	public void set_x0031_8872(schemaLib._x0031_8872 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8872 = null;
		else {
			setElementName(value.getBase(), "_x0031_8872");
			__x0031_8872 = value; 
		}
	}
	protected schemaLib._x0031_8872 __x0031_8872;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8875 get_x0031_8875() {
		return __x0031_8875;  
	}
	public void set_x0031_8875(schemaLib._x0031_8875 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8875 = null;
		else {
			setElementName(value.getBase(), "_x0031_8875");
			__x0031_8875 = value; 
		}
	}
	protected schemaLib._x0031_8875 __x0031_8875;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8878 get_x0031_8878() {
		return __x0031_8878;  
	}
	public void set_x0031_8878(schemaLib._x0031_8878 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8878 = null;
		else {
			setElementName(value.getBase(), "_x0031_8878");
			__x0031_8878 = value; 
		}
	}
	protected schemaLib._x0031_8878 __x0031_8878;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8881 get_x0031_8881() {
		return __x0031_8881;  
	}
	public void set_x0031_8881(schemaLib._x0031_8881 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8881 = null;
		else {
			setElementName(value.getBase(), "_x0031_8881");
			__x0031_8881 = value; 
		}
	}
	protected schemaLib._x0031_8881 __x0031_8881;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_8475", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8854", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8854"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8854", "schemaLib._x0031_8854"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8854.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8857", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8857"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8857", "schemaLib._x0031_8857"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8857.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8860", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8860"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8860", "schemaLib._x0031_8860"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8860.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8863", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8863"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8863", "schemaLib._x0031_8863"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8863.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8866", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8866"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8866", "schemaLib._x0031_8866"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8866.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8869", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8869"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8869", "schemaLib._x0031_8869"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8869.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8872", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8872"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8872", "schemaLib._x0031_8872"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8872.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8875", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8875"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8875", "schemaLib._x0031_8875"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8875.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8878", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8878"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8878", "schemaLib._x0031_8878"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8878.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8881", "", findGetterMethod("schemaLib._x0031_8475", "get_x0031_8881"), findSetterMethod("schemaLib._x0031_8475", "set_x0031_8881", "schemaLib._x0031_8881"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8881.class)
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


