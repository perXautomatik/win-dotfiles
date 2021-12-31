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
// This class represents the ComplexType _x0036_271
// </summary>
public class _x0036_271 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0036_271
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0036_271() {
		setElementName("_x0036_271");
		init();
	}
	public _x0036_271(String elementName) {
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
			__x0036_274 = null;
			__x0036_276 = null;
			__x0036_277 = null;
			__x0036_281 = null;
			__x0036_286 = null;
			__x0036_289 = null;
			__x0036_292 = null;
			__x0036_295 = null;

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
			schemaLib._x0036_271 newObject = (schemaLib._x0036_271)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0036_274 = null;
			if (__x0036_274 != null)
				newObject.__x0036_274 = (schemaLib._x0036_274)__x0036_274.clone();
			newObject.__x0036_276 = null;
			if (__x0036_276 != null)
				newObject.__x0036_276 = (schemaLib._x0036_276)__x0036_276.clone();
			newObject.__x0036_277 = null;
			if (__x0036_277 != null)
				newObject.__x0036_277 = (schemaLib._x0036_277)__x0036_277.clone();
			newObject.__x0036_281 = null;
			if (__x0036_281 != null)
				newObject.__x0036_281 = (schemaLib._x0036_281)__x0036_281.clone();
			newObject.__x0036_286 = null;
			if (__x0036_286 != null)
				newObject.__x0036_286 = (schemaLib._x0036_286)__x0036_286.clone();
			newObject.__x0036_289 = null;
			if (__x0036_289 != null)
				newObject.__x0036_289 = (schemaLib._x0036_289)__x0036_289.clone();
			newObject.__x0036_292 = null;
			if (__x0036_292 != null)
				newObject.__x0036_292 = (schemaLib._x0036_292)__x0036_292.clone();
			newObject.__x0036_295 = null;
			if (__x0036_295 != null)
				newObject.__x0036_295 = (schemaLib._x0036_295)__x0036_295.clone();
	
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
	public schemaLib._x0036_274 get_x0036_274() {
		return __x0036_274;  
	}
	public void set_x0036_274(schemaLib._x0036_274 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_274 = null;
		else {
			setElementName(value.getBase(), "_x0036_274");
			__x0036_274 = value; 
		}
	}
	protected schemaLib._x0036_274 __x0036_274;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_276 get_x0036_276() {
		return __x0036_276;  
	}
	public void set_x0036_276(schemaLib._x0036_276 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_276 = null;
		else {
			setElementName(value.getBase(), "_x0036_276");
			__x0036_276 = value; 
		}
	}
	protected schemaLib._x0036_276 __x0036_276;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_277 get_x0036_277() {
		return __x0036_277;  
	}
	public void set_x0036_277(schemaLib._x0036_277 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_277 = null;
		else {
			setElementName(value.getBase(), "_x0036_277");
			__x0036_277 = value; 
		}
	}
	protected schemaLib._x0036_277 __x0036_277;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_281 get_x0036_281() {
		return __x0036_281;  
	}
	public void set_x0036_281(schemaLib._x0036_281 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_281 = null;
		else {
			setElementName(value.getBase(), "_x0036_281");
			__x0036_281 = value; 
		}
	}
	protected schemaLib._x0036_281 __x0036_281;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_286 get_x0036_286() {
		return __x0036_286;  
	}
	public void set_x0036_286(schemaLib._x0036_286 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_286 = null;
		else {
			setElementName(value.getBase(), "_x0036_286");
			__x0036_286 = value; 
		}
	}
	protected schemaLib._x0036_286 __x0036_286;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_289 get_x0036_289() {
		return __x0036_289;  
	}
	public void set_x0036_289(schemaLib._x0036_289 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_289 = null;
		else {
			setElementName(value.getBase(), "_x0036_289");
			__x0036_289 = value; 
		}
	}
	protected schemaLib._x0036_289 __x0036_289;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_292 get_x0036_292() {
		return __x0036_292;  
	}
	public void set_x0036_292(schemaLib._x0036_292 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_292 = null;
		else {
			setElementName(value.getBase(), "_x0036_292");
			__x0036_292 = value; 
		}
	}
	protected schemaLib._x0036_292 __x0036_292;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0036_295 get_x0036_295() {
		return __x0036_295;  
	}
	public void set_x0036_295(schemaLib._x0036_295 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0036_295 = null;
		else {
			setElementName(value.getBase(), "_x0036_295");
			__x0036_295 = value; 
		}
	}
	protected schemaLib._x0036_295 __x0036_295;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0036_271", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_274", "", findGetterMethod("schemaLib._x0036_271", "get_x0036_274"), findSetterMethod("schemaLib._x0036_271", "set_x0036_274", "schemaLib._x0036_274"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_274.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_276", "", findGetterMethod("schemaLib._x0036_271", "get_x0036_276"), findSetterMethod("schemaLib._x0036_271", "set_x0036_276", "schemaLib._x0036_276"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_276.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_277", "", findGetterMethod("schemaLib._x0036_271", "get_x0036_277"), findSetterMethod("schemaLib._x0036_271", "set_x0036_277", "schemaLib._x0036_277"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_277.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_281", "", findGetterMethod("schemaLib._x0036_271", "get_x0036_281"), findSetterMethod("schemaLib._x0036_271", "set_x0036_281", "schemaLib._x0036_281"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_281.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_286", "", findGetterMethod("schemaLib._x0036_271", "get_x0036_286"), findSetterMethod("schemaLib._x0036_271", "set_x0036_286", "schemaLib._x0036_286"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_286.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_289", "", findGetterMethod("schemaLib._x0036_271", "get_x0036_289"), findSetterMethod("schemaLib._x0036_271", "set_x0036_289", "schemaLib._x0036_289"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_289.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_292", "", findGetterMethod("schemaLib._x0036_271", "get_x0036_292"), findSetterMethod("schemaLib._x0036_271", "set_x0036_292", "schemaLib._x0036_292"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_292.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0036_295", "", findGetterMethod("schemaLib._x0036_271", "get_x0036_295"), findSetterMethod("schemaLib._x0036_271", "set_x0036_295", "schemaLib._x0036_295"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0036_295.class)
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


