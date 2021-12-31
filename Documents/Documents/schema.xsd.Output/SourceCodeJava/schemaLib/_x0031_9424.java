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
// This class represents the ComplexType _x0031_9424
// </summary>
public class _x0031_9424 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_9424
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_9424() {
		setElementName("_x0031_9424");
		init();
	}
	public _x0031_9424(String elementName) {
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
			__x0031_9619 = null;
			__x0031_9625 = null;
			__x0031_9631 = null;
			__x0031_9637 = null;
			__x0031_9644 = null;
			__x0031_9649 = null;
			__x0031_9655 = null;
			__x0031_9661 = null;
			__x0031_9667 = null;
			__x0031_9724 = null;
			__x0032_0082 = null;

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
			schemaLib._x0031_9424 newObject = (schemaLib._x0031_9424)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_9619 = null;
			if (__x0031_9619 != null)
				newObject.__x0031_9619 = (schemaLib._x0031_9619)__x0031_9619.clone();
			newObject.__x0031_9625 = null;
			if (__x0031_9625 != null)
				newObject.__x0031_9625 = (schemaLib._x0031_9625)__x0031_9625.clone();
			newObject.__x0031_9631 = null;
			if (__x0031_9631 != null)
				newObject.__x0031_9631 = (schemaLib._x0031_9631)__x0031_9631.clone();
			newObject.__x0031_9637 = null;
			if (__x0031_9637 != null)
				newObject.__x0031_9637 = (schemaLib._x0031_9637)__x0031_9637.clone();
			newObject.__x0031_9644 = null;
			if (__x0031_9644 != null)
				newObject.__x0031_9644 = (schemaLib._x0031_9644)__x0031_9644.clone();
			newObject.__x0031_9649 = null;
			if (__x0031_9649 != null)
				newObject.__x0031_9649 = (schemaLib._x0031_9649)__x0031_9649.clone();
			newObject.__x0031_9655 = null;
			if (__x0031_9655 != null)
				newObject.__x0031_9655 = (schemaLib._x0031_9655)__x0031_9655.clone();
			newObject.__x0031_9661 = null;
			if (__x0031_9661 != null)
				newObject.__x0031_9661 = (schemaLib._x0031_9661)__x0031_9661.clone();
			newObject.__x0031_9667 = null;
			if (__x0031_9667 != null)
				newObject.__x0031_9667 = (schemaLib._x0031_9667)__x0031_9667.clone();
			newObject.__x0031_9724 = null;
			if (__x0031_9724 != null)
				newObject.__x0031_9724 = (schemaLib._x0031_9724)__x0031_9724.clone();
			newObject.__x0032_0082 = null;
			if (__x0032_0082 != null)
				newObject.__x0032_0082 = (schemaLib._x0032_0082)__x0032_0082.clone();
	
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
	public schemaLib._x0031_9619 get_x0031_9619() {
		return __x0031_9619;  
	}
	public void set_x0031_9619(schemaLib._x0031_9619 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9619 = null;
		else {
			setElementName(value.getBase(), "_x0031_9619");
			__x0031_9619 = value; 
		}
	}
	protected schemaLib._x0031_9619 __x0031_9619;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9625 get_x0031_9625() {
		return __x0031_9625;  
	}
	public void set_x0031_9625(schemaLib._x0031_9625 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9625 = null;
		else {
			setElementName(value.getBase(), "_x0031_9625");
			__x0031_9625 = value; 
		}
	}
	protected schemaLib._x0031_9625 __x0031_9625;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9631 get_x0031_9631() {
		return __x0031_9631;  
	}
	public void set_x0031_9631(schemaLib._x0031_9631 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9631 = null;
		else {
			setElementName(value.getBase(), "_x0031_9631");
			__x0031_9631 = value; 
		}
	}
	protected schemaLib._x0031_9631 __x0031_9631;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9637 get_x0031_9637() {
		return __x0031_9637;  
	}
	public void set_x0031_9637(schemaLib._x0031_9637 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9637 = null;
		else {
			setElementName(value.getBase(), "_x0031_9637");
			__x0031_9637 = value; 
		}
	}
	protected schemaLib._x0031_9637 __x0031_9637;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9644 get_x0031_9644() {
		return __x0031_9644;  
	}
	public void set_x0031_9644(schemaLib._x0031_9644 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9644 = null;
		else {
			setElementName(value.getBase(), "_x0031_9644");
			__x0031_9644 = value; 
		}
	}
	protected schemaLib._x0031_9644 __x0031_9644;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9649 get_x0031_9649() {
		return __x0031_9649;  
	}
	public void set_x0031_9649(schemaLib._x0031_9649 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9649 = null;
		else {
			setElementName(value.getBase(), "_x0031_9649");
			__x0031_9649 = value; 
		}
	}
	protected schemaLib._x0031_9649 __x0031_9649;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9655 get_x0031_9655() {
		return __x0031_9655;  
	}
	public void set_x0031_9655(schemaLib._x0031_9655 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9655 = null;
		else {
			setElementName(value.getBase(), "_x0031_9655");
			__x0031_9655 = value; 
		}
	}
	protected schemaLib._x0031_9655 __x0031_9655;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9661 get_x0031_9661() {
		return __x0031_9661;  
	}
	public void set_x0031_9661(schemaLib._x0031_9661 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9661 = null;
		else {
			setElementName(value.getBase(), "_x0031_9661");
			__x0031_9661 = value; 
		}
	}
	protected schemaLib._x0031_9661 __x0031_9661;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9667 get_x0031_9667() {
		return __x0031_9667;  
	}
	public void set_x0031_9667(schemaLib._x0031_9667 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9667 = null;
		else {
			setElementName(value.getBase(), "_x0031_9667");
			__x0031_9667 = value; 
		}
	}
	protected schemaLib._x0031_9667 __x0031_9667;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_9724 get_x0031_9724() {
		return __x0031_9724;  
	}
	public void set_x0031_9724(schemaLib._x0031_9724 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_9724 = null;
		else {
			setElementName(value.getBase(), "_x0031_9724");
			__x0031_9724 = value; 
		}
	}
	protected schemaLib._x0031_9724 __x0031_9724;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_0082 get_x0032_0082() {
		return __x0032_0082;  
	}
	public void set_x0032_0082(schemaLib._x0032_0082 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_0082 = null;
		else {
			setElementName(value.getBase(), "_x0032_0082");
			__x0032_0082 = value; 
		}
	}
	protected schemaLib._x0032_0082 __x0032_0082;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_9424", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9619", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9619"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9619", "schemaLib._x0031_9619"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9619.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9625", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9625"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9625", "schemaLib._x0031_9625"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9625.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9631", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9631"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9631", "schemaLib._x0031_9631"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9631.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9637", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9637"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9637", "schemaLib._x0031_9637"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9637.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9644", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9644"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9644", "schemaLib._x0031_9644"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9644.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9649", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9649"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9649", "schemaLib._x0031_9649"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9649.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9655", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9655"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9655", "schemaLib._x0031_9655"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9655.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9661", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9661"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9661", "schemaLib._x0031_9661"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9661.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9667", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9667"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9667", "schemaLib._x0031_9667"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9667.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_9724", "", findGetterMethod("schemaLib._x0031_9424", "get_x0031_9724"), findSetterMethod("schemaLib._x0031_9424", "set_x0031_9724", "schemaLib._x0031_9724"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_9724.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_0082", "", findGetterMethod("schemaLib._x0031_9424", "get_x0032_0082"), findSetterMethod("schemaLib._x0031_9424", "set_x0032_0082", "schemaLib._x0032_0082"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_0082.class)
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


