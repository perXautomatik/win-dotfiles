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
// This class represents the ComplexType _x0031_4664
// </summary>
public class _x0031_4664 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_4664
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_4664() {
		setElementName("_x0031_4664");
		init();
	}
	public _x0031_4664(String elementName) {
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
			__x0035_308 = null;
			__x0035_311 = null;
			__x0035_314 = null;
			__x0035_317 = null;
			__x0035_320 = null;
			__x0035_323 = null;
			__x0035_326 = null;
			__x0035_329 = null;
			__x0035_332 = null;
			__x0035_335 = null;
			__x0035_338 = null;
			__x0035_341 = null;

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
			schemaLib._x0031_4664 newObject = (schemaLib._x0031_4664)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0035_308 = null;
			if (__x0035_308 != null)
				newObject.__x0035_308 = (schemaLib._x0035_308)__x0035_308.clone();
			newObject.__x0035_311 = null;
			if (__x0035_311 != null)
				newObject.__x0035_311 = (schemaLib._x0035_311)__x0035_311.clone();
			newObject.__x0035_314 = null;
			if (__x0035_314 != null)
				newObject.__x0035_314 = (schemaLib._x0035_314)__x0035_314.clone();
			newObject.__x0035_317 = null;
			if (__x0035_317 != null)
				newObject.__x0035_317 = (schemaLib._x0035_317)__x0035_317.clone();
			newObject.__x0035_320 = null;
			if (__x0035_320 != null)
				newObject.__x0035_320 = (schemaLib._x0035_320)__x0035_320.clone();
			newObject.__x0035_323 = null;
			if (__x0035_323 != null)
				newObject.__x0035_323 = (schemaLib._x0035_323)__x0035_323.clone();
			newObject.__x0035_326 = null;
			if (__x0035_326 != null)
				newObject.__x0035_326 = (schemaLib._x0035_326)__x0035_326.clone();
			newObject.__x0035_329 = null;
			if (__x0035_329 != null)
				newObject.__x0035_329 = (schemaLib._x0035_329)__x0035_329.clone();
			newObject.__x0035_332 = null;
			if (__x0035_332 != null)
				newObject.__x0035_332 = (schemaLib._x0035_332)__x0035_332.clone();
			newObject.__x0035_335 = null;
			if (__x0035_335 != null)
				newObject.__x0035_335 = (schemaLib._x0035_335)__x0035_335.clone();
			newObject.__x0035_338 = null;
			if (__x0035_338 != null)
				newObject.__x0035_338 = (schemaLib._x0035_338)__x0035_338.clone();
			newObject.__x0035_341 = null;
			if (__x0035_341 != null)
				newObject.__x0035_341 = (schemaLib._x0035_341)__x0035_341.clone();
	
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
	public schemaLib._x0035_308 get_x0035_308() {
		return __x0035_308;  
	}
	public void set_x0035_308(schemaLib._x0035_308 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_308 = null;
		else {
			setElementName(value.getBase(), "_x0035_308");
			__x0035_308 = value; 
		}
	}
	protected schemaLib._x0035_308 __x0035_308;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_311 get_x0035_311() {
		return __x0035_311;  
	}
	public void set_x0035_311(schemaLib._x0035_311 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_311 = null;
		else {
			setElementName(value.getBase(), "_x0035_311");
			__x0035_311 = value; 
		}
	}
	protected schemaLib._x0035_311 __x0035_311;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_314 get_x0035_314() {
		return __x0035_314;  
	}
	public void set_x0035_314(schemaLib._x0035_314 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_314 = null;
		else {
			setElementName(value.getBase(), "_x0035_314");
			__x0035_314 = value; 
		}
	}
	protected schemaLib._x0035_314 __x0035_314;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_317 get_x0035_317() {
		return __x0035_317;  
	}
	public void set_x0035_317(schemaLib._x0035_317 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_317 = null;
		else {
			setElementName(value.getBase(), "_x0035_317");
			__x0035_317 = value; 
		}
	}
	protected schemaLib._x0035_317 __x0035_317;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_320 get_x0035_320() {
		return __x0035_320;  
	}
	public void set_x0035_320(schemaLib._x0035_320 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_320 = null;
		else {
			setElementName(value.getBase(), "_x0035_320");
			__x0035_320 = value; 
		}
	}
	protected schemaLib._x0035_320 __x0035_320;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_323 get_x0035_323() {
		return __x0035_323;  
	}
	public void set_x0035_323(schemaLib._x0035_323 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_323 = null;
		else {
			setElementName(value.getBase(), "_x0035_323");
			__x0035_323 = value; 
		}
	}
	protected schemaLib._x0035_323 __x0035_323;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_326 get_x0035_326() {
		return __x0035_326;  
	}
	public void set_x0035_326(schemaLib._x0035_326 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_326 = null;
		else {
			setElementName(value.getBase(), "_x0035_326");
			__x0035_326 = value; 
		}
	}
	protected schemaLib._x0035_326 __x0035_326;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_329 get_x0035_329() {
		return __x0035_329;  
	}
	public void set_x0035_329(schemaLib._x0035_329 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_329 = null;
		else {
			setElementName(value.getBase(), "_x0035_329");
			__x0035_329 = value; 
		}
	}
	protected schemaLib._x0035_329 __x0035_329;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_332 get_x0035_332() {
		return __x0035_332;  
	}
	public void set_x0035_332(schemaLib._x0035_332 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_332 = null;
		else {
			setElementName(value.getBase(), "_x0035_332");
			__x0035_332 = value; 
		}
	}
	protected schemaLib._x0035_332 __x0035_332;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_335 get_x0035_335() {
		return __x0035_335;  
	}
	public void set_x0035_335(schemaLib._x0035_335 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_335 = null;
		else {
			setElementName(value.getBase(), "_x0035_335");
			__x0035_335 = value; 
		}
	}
	protected schemaLib._x0035_335 __x0035_335;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_338 get_x0035_338() {
		return __x0035_338;  
	}
	public void set_x0035_338(schemaLib._x0035_338 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_338 = null;
		else {
			setElementName(value.getBase(), "_x0035_338");
			__x0035_338 = value; 
		}
	}
	protected schemaLib._x0035_338 __x0035_338;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_341 get_x0035_341() {
		return __x0035_341;  
	}
	public void set_x0035_341(schemaLib._x0035_341 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_341 = null;
		else {
			setElementName(value.getBase(), "_x0035_341");
			__x0035_341 = value; 
		}
	}
	protected schemaLib._x0035_341 __x0035_341;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_4664", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_308", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_308"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_308", "schemaLib._x0035_308"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_308.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_311", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_311"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_311", "schemaLib._x0035_311"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_311.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_314", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_314"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_314", "schemaLib._x0035_314"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_314.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_317", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_317"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_317", "schemaLib._x0035_317"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_317.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_320", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_320"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_320", "schemaLib._x0035_320"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_320.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_323", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_323"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_323", "schemaLib._x0035_323"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_323.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_326", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_326"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_326", "schemaLib._x0035_326"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_326.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_329", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_329"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_329", "schemaLib._x0035_329"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_329.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_332", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_332"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_332", "schemaLib._x0035_332"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_332.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_335", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_335"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_335", "schemaLib._x0035_335"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_335.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_338", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_338"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_338", "schemaLib._x0035_338"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_338.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_341", "", findGetterMethod("schemaLib._x0031_4664", "get_x0035_341"), findSetterMethod("schemaLib._x0031_4664", "set_x0035_341", "schemaLib._x0035_341"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_341.class)
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


