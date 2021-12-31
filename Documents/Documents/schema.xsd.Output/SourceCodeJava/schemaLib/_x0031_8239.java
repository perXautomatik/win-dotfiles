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
// This class represents the ComplexType _x0031_8239
// </summary>
public class _x0031_8239 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_8239
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_8239() {
		setElementName("_x0031_8239");
		init();
	}
	public _x0031_8239(String elementName) {
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
			__x0031_8257 = null;
			__x0031_8263 = null;
			__x0031_8278 = null;
			__x0031_8322 = null;
			__x0031_8325 = null;
			__x0031_8326 = null;
			__x0031_8329 = null;

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
			schemaLib._x0031_8239 newObject = (schemaLib._x0031_8239)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_8257 = null;
			if (__x0031_8257 != null)
				newObject.__x0031_8257 = (schemaLib._x0031_8257)__x0031_8257.clone();
			newObject.__x0031_8263 = null;
			if (__x0031_8263 != null)
				newObject.__x0031_8263 = (schemaLib._x0031_8263)__x0031_8263.clone();
			newObject.__x0031_8278 = null;
			if (__x0031_8278 != null)
				newObject.__x0031_8278 = (schemaLib._x0031_8278)__x0031_8278.clone();
			newObject.__x0031_8322 = null;
			if (__x0031_8322 != null)
				newObject.__x0031_8322 = (schemaLib._x0031_8322)__x0031_8322.clone();
			newObject.__x0031_8325 = null;
			if (__x0031_8325 != null)
				newObject.__x0031_8325 = (schemaLib._x0031_8325)__x0031_8325.clone();
			newObject.__x0031_8326 = null;
			if (__x0031_8326 != null)
				newObject.__x0031_8326 = (schemaLib._x0031_8326)__x0031_8326.clone();
			newObject.__x0031_8329 = null;
			if (__x0031_8329 != null)
				newObject.__x0031_8329 = (schemaLib._x0031_8329)__x0031_8329.clone();
	
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
	public schemaLib._x0031_8257 get_x0031_8257() {
		return __x0031_8257;  
	}
	public void set_x0031_8257(schemaLib._x0031_8257 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8257 = null;
		else {
			setElementName(value.getBase(), "_x0031_8257");
			__x0031_8257 = value; 
		}
	}
	protected schemaLib._x0031_8257 __x0031_8257;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8263 get_x0031_8263() {
		return __x0031_8263;  
	}
	public void set_x0031_8263(schemaLib._x0031_8263 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8263 = null;
		else {
			setElementName(value.getBase(), "_x0031_8263");
			__x0031_8263 = value; 
		}
	}
	protected schemaLib._x0031_8263 __x0031_8263;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8278 get_x0031_8278() {
		return __x0031_8278;  
	}
	public void set_x0031_8278(schemaLib._x0031_8278 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8278 = null;
		else {
			setElementName(value.getBase(), "_x0031_8278");
			__x0031_8278 = value; 
		}
	}
	protected schemaLib._x0031_8278 __x0031_8278;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8322 get_x0031_8322() {
		return __x0031_8322;  
	}
	public void set_x0031_8322(schemaLib._x0031_8322 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8322 = null;
		else {
			setElementName(value.getBase(), "_x0031_8322");
			__x0031_8322 = value; 
		}
	}
	protected schemaLib._x0031_8322 __x0031_8322;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8325 get_x0031_8325() {
		return __x0031_8325;  
	}
	public void set_x0031_8325(schemaLib._x0031_8325 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8325 = null;
		else {
			setElementName(value.getBase(), "_x0031_8325");
			__x0031_8325 = value; 
		}
	}
	protected schemaLib._x0031_8325 __x0031_8325;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8326 get_x0031_8326() {
		return __x0031_8326;  
	}
	public void set_x0031_8326(schemaLib._x0031_8326 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8326 = null;
		else {
			setElementName(value.getBase(), "_x0031_8326");
			__x0031_8326 = value; 
		}
	}
	protected schemaLib._x0031_8326 __x0031_8326;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_8329 get_x0031_8329() {
		return __x0031_8329;  
	}
	public void set_x0031_8329(schemaLib._x0031_8329 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_8329 = null;
		else {
			setElementName(value.getBase(), "_x0031_8329");
			__x0031_8329 = value; 
		}
	}
	protected schemaLib._x0031_8329 __x0031_8329;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_8239", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8257", "", findGetterMethod("schemaLib._x0031_8239", "get_x0031_8257"), findSetterMethod("schemaLib._x0031_8239", "set_x0031_8257", "schemaLib._x0031_8257"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8257.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8263", "", findGetterMethod("schemaLib._x0031_8239", "get_x0031_8263"), findSetterMethod("schemaLib._x0031_8239", "set_x0031_8263", "schemaLib._x0031_8263"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8263.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8278", "", findGetterMethod("schemaLib._x0031_8239", "get_x0031_8278"), findSetterMethod("schemaLib._x0031_8239", "set_x0031_8278", "schemaLib._x0031_8278"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8278.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8322", "", findGetterMethod("schemaLib._x0031_8239", "get_x0031_8322"), findSetterMethod("schemaLib._x0031_8239", "set_x0031_8322", "schemaLib._x0031_8322"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8322.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8325", "", findGetterMethod("schemaLib._x0031_8239", "get_x0031_8325"), findSetterMethod("schemaLib._x0031_8239", "set_x0031_8325", "schemaLib._x0031_8325"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8325.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8326", "", findGetterMethod("schemaLib._x0031_8239", "get_x0031_8326"), findSetterMethod("schemaLib._x0031_8239", "set_x0031_8326", "schemaLib._x0031_8326"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8326.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_8329", "", findGetterMethod("schemaLib._x0031_8239", "get_x0031_8329"), findSetterMethod("schemaLib._x0031_8239", "set_x0031_8329", "schemaLib._x0031_8329"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_8329.class)
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


