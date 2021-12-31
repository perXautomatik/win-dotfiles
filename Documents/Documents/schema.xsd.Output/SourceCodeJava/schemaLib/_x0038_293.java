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
// This class represents the ComplexType _x0038_293
// </summary>
public class _x0038_293 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0038_293
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0038_293() {
		setElementName("_x0038_293");
		init();
	}
	public _x0038_293(String elementName) {
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
			__x0038_295 = null;
			__x0038_296 = null;
			__x0038_297 = null;
			__x0038_298 = null;
			__x0038_299 = null;
			__x0038_300 = null;
			__x0038_301 = null;
			__x0038_302 = null;
			__x0038_303 = null;
			__x0038_304 = null;
			__x0038_305 = null;
			__x0038_306 = null;
			__x0038_307 = null;

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
			schemaLib._x0038_293 newObject = (schemaLib._x0038_293)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0038_295 = null;
			if (__x0038_295 != null)
				newObject.__x0038_295 = (schemaLib._x0038_295)__x0038_295.clone();
			newObject.__x0038_296 = null;
			if (__x0038_296 != null)
				newObject.__x0038_296 = (schemaLib._x0038_296)__x0038_296.clone();
			newObject.__x0038_297 = null;
			if (__x0038_297 != null)
				newObject.__x0038_297 = (schemaLib._x0038_297)__x0038_297.clone();
			newObject.__x0038_298 = null;
			if (__x0038_298 != null)
				newObject.__x0038_298 = (schemaLib._x0038_298)__x0038_298.clone();
			newObject.__x0038_299 = null;
			if (__x0038_299 != null)
				newObject.__x0038_299 = (schemaLib._x0038_299)__x0038_299.clone();
			newObject.__x0038_300 = null;
			if (__x0038_300 != null)
				newObject.__x0038_300 = (schemaLib._x0038_300)__x0038_300.clone();
			newObject.__x0038_301 = null;
			if (__x0038_301 != null)
				newObject.__x0038_301 = (schemaLib._x0038_301)__x0038_301.clone();
			newObject.__x0038_302 = null;
			if (__x0038_302 != null)
				newObject.__x0038_302 = (schemaLib._x0038_302)__x0038_302.clone();
			newObject.__x0038_303 = null;
			if (__x0038_303 != null)
				newObject.__x0038_303 = (schemaLib._x0038_303)__x0038_303.clone();
			newObject.__x0038_304 = null;
			if (__x0038_304 != null)
				newObject.__x0038_304 = (schemaLib._x0038_304)__x0038_304.clone();
			newObject.__x0038_305 = null;
			if (__x0038_305 != null)
				newObject.__x0038_305 = (schemaLib._x0038_305)__x0038_305.clone();
			newObject.__x0038_306 = null;
			if (__x0038_306 != null)
				newObject.__x0038_306 = (schemaLib._x0038_306)__x0038_306.clone();
			newObject.__x0038_307 = null;
			if (__x0038_307 != null)
				newObject.__x0038_307 = (schemaLib._x0038_307)__x0038_307.clone();
	
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
	public schemaLib._x0038_295 get_x0038_295() {
		return __x0038_295;  
	}
	public void set_x0038_295(schemaLib._x0038_295 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_295 = null;
		else {
			setElementName(value.getBase(), "_x0038_295");
			__x0038_295 = value; 
		}
	}
	protected schemaLib._x0038_295 __x0038_295;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_296 get_x0038_296() {
		return __x0038_296;  
	}
	public void set_x0038_296(schemaLib._x0038_296 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_296 = null;
		else {
			setElementName(value.getBase(), "_x0038_296");
			__x0038_296 = value; 
		}
	}
	protected schemaLib._x0038_296 __x0038_296;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_297 get_x0038_297() {
		return __x0038_297;  
	}
	public void set_x0038_297(schemaLib._x0038_297 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_297 = null;
		else {
			setElementName(value.getBase(), "_x0038_297");
			__x0038_297 = value; 
		}
	}
	protected schemaLib._x0038_297 __x0038_297;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_298 get_x0038_298() {
		return __x0038_298;  
	}
	public void set_x0038_298(schemaLib._x0038_298 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_298 = null;
		else {
			setElementName(value.getBase(), "_x0038_298");
			__x0038_298 = value; 
		}
	}
	protected schemaLib._x0038_298 __x0038_298;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_299 get_x0038_299() {
		return __x0038_299;  
	}
	public void set_x0038_299(schemaLib._x0038_299 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_299 = null;
		else {
			setElementName(value.getBase(), "_x0038_299");
			__x0038_299 = value; 
		}
	}
	protected schemaLib._x0038_299 __x0038_299;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_300 get_x0038_300() {
		return __x0038_300;  
	}
	public void set_x0038_300(schemaLib._x0038_300 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_300 = null;
		else {
			setElementName(value.getBase(), "_x0038_300");
			__x0038_300 = value; 
		}
	}
	protected schemaLib._x0038_300 __x0038_300;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_301 get_x0038_301() {
		return __x0038_301;  
	}
	public void set_x0038_301(schemaLib._x0038_301 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_301 = null;
		else {
			setElementName(value.getBase(), "_x0038_301");
			__x0038_301 = value; 
		}
	}
	protected schemaLib._x0038_301 __x0038_301;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_302 get_x0038_302() {
		return __x0038_302;  
	}
	public void set_x0038_302(schemaLib._x0038_302 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_302 = null;
		else {
			setElementName(value.getBase(), "_x0038_302");
			__x0038_302 = value; 
		}
	}
	protected schemaLib._x0038_302 __x0038_302;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_303 get_x0038_303() {
		return __x0038_303;  
	}
	public void set_x0038_303(schemaLib._x0038_303 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_303 = null;
		else {
			setElementName(value.getBase(), "_x0038_303");
			__x0038_303 = value; 
		}
	}
	protected schemaLib._x0038_303 __x0038_303;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_304 get_x0038_304() {
		return __x0038_304;  
	}
	public void set_x0038_304(schemaLib._x0038_304 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_304 = null;
		else {
			setElementName(value.getBase(), "_x0038_304");
			__x0038_304 = value; 
		}
	}
	protected schemaLib._x0038_304 __x0038_304;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_305 get_x0038_305() {
		return __x0038_305;  
	}
	public void set_x0038_305(schemaLib._x0038_305 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_305 = null;
		else {
			setElementName(value.getBase(), "_x0038_305");
			__x0038_305 = value; 
		}
	}
	protected schemaLib._x0038_305 __x0038_305;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_306 get_x0038_306() {
		return __x0038_306;  
	}
	public void set_x0038_306(schemaLib._x0038_306 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_306 = null;
		else {
			setElementName(value.getBase(), "_x0038_306");
			__x0038_306 = value; 
		}
	}
	protected schemaLib._x0038_306 __x0038_306;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_307 get_x0038_307() {
		return __x0038_307;  
	}
	public void set_x0038_307(schemaLib._x0038_307 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_307 = null;
		else {
			setElementName(value.getBase(), "_x0038_307");
			__x0038_307 = value; 
		}
	}
	protected schemaLib._x0038_307 __x0038_307;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0038_293", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_295", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_295"), findSetterMethod("schemaLib._x0038_293", "set_x0038_295", "schemaLib._x0038_295"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_295.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_296", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_296"), findSetterMethod("schemaLib._x0038_293", "set_x0038_296", "schemaLib._x0038_296"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_296.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_297", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_297"), findSetterMethod("schemaLib._x0038_293", "set_x0038_297", "schemaLib._x0038_297"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_297.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_298", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_298"), findSetterMethod("schemaLib._x0038_293", "set_x0038_298", "schemaLib._x0038_298"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_298.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_299", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_299"), findSetterMethod("schemaLib._x0038_293", "set_x0038_299", "schemaLib._x0038_299"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_299.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_300", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_300"), findSetterMethod("schemaLib._x0038_293", "set_x0038_300", "schemaLib._x0038_300"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_300.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_301", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_301"), findSetterMethod("schemaLib._x0038_293", "set_x0038_301", "schemaLib._x0038_301"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_301.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_302", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_302"), findSetterMethod("schemaLib._x0038_293", "set_x0038_302", "schemaLib._x0038_302"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_302.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_303", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_303"), findSetterMethod("schemaLib._x0038_293", "set_x0038_303", "schemaLib._x0038_303"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_303.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_304", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_304"), findSetterMethod("schemaLib._x0038_293", "set_x0038_304", "schemaLib._x0038_304"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_304.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_305", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_305"), findSetterMethod("schemaLib._x0038_293", "set_x0038_305", "schemaLib._x0038_305"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_305.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_306", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_306"), findSetterMethod("schemaLib._x0038_293", "set_x0038_306", "schemaLib._x0038_306"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_306.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_307", "", findGetterMethod("schemaLib._x0038_293", "get_x0038_307"), findSetterMethod("schemaLib._x0038_293", "set_x0038_307", "schemaLib._x0038_307"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_307.class)
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


