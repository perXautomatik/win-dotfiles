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
// This class represents the ComplexType _x0034_153
// </summary>
public class _x0034_153 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_153
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_153() {
		setElementName("_x0034_153");
		init();
	}
	public _x0034_153(String elementName) {
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
			__x0034_204 = null;
			__x0034_227 = null;
			__x0034_368 = null;
			__x0034_444 = null;
			__x0034_473 = null;
			__x0034_503 = null;
			__x0034_512 = null;

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
			schemaLib._x0034_153 newObject = (schemaLib._x0034_153)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_204 = null;
			if (__x0034_204 != null)
				newObject.__x0034_204 = (schemaLib._x0034_204A)__x0034_204.clone();
			newObject.__x0034_227 = null;
			if (__x0034_227 != null)
				newObject.__x0034_227 = (schemaLib._x0034_227)__x0034_227.clone();
			newObject.__x0034_368 = null;
			if (__x0034_368 != null)
				newObject.__x0034_368 = (schemaLib._x0034_368)__x0034_368.clone();
			newObject.__x0034_444 = null;
			if (__x0034_444 != null)
				newObject.__x0034_444 = (schemaLib._x0034_444)__x0034_444.clone();
			newObject.__x0034_473 = null;
			if (__x0034_473 != null)
				newObject.__x0034_473 = (schemaLib._x0034_473)__x0034_473.clone();
			newObject.__x0034_503 = null;
			if (__x0034_503 != null)
				newObject.__x0034_503 = (schemaLib._x0034_503)__x0034_503.clone();
			newObject.__x0034_512 = null;
			if (__x0034_512 != null)
				newObject.__x0034_512 = (schemaLib._x0034_512A)__x0034_512.clone();
	
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
	public schemaLib._x0034_204A get_x0034_204() {
		return __x0034_204;  
	}
	public void set_x0034_204(schemaLib._x0034_204A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_204 = null;
		else {
			setElementName(value.getBase(), "_x0034_204");
			__x0034_204 = value; 
		}
	}
	protected schemaLib._x0034_204A __x0034_204;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_227 get_x0034_227() {
		return __x0034_227;  
	}
	public void set_x0034_227(schemaLib._x0034_227 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_227 = null;
		else {
			setElementName(value.getBase(), "_x0034_227");
			__x0034_227 = value; 
		}
	}
	protected schemaLib._x0034_227 __x0034_227;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_368 get_x0034_368() {
		return __x0034_368;  
	}
	public void set_x0034_368(schemaLib._x0034_368 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_368 = null;
		else {
			setElementName(value.getBase(), "_x0034_368");
			__x0034_368 = value; 
		}
	}
	protected schemaLib._x0034_368 __x0034_368;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_444 get_x0034_444() {
		return __x0034_444;  
	}
	public void set_x0034_444(schemaLib._x0034_444 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_444 = null;
		else {
			setElementName(value.getBase(), "_x0034_444");
			__x0034_444 = value; 
		}
	}
	protected schemaLib._x0034_444 __x0034_444;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_473 get_x0034_473() {
		return __x0034_473;  
	}
	public void set_x0034_473(schemaLib._x0034_473 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_473 = null;
		else {
			setElementName(value.getBase(), "_x0034_473");
			__x0034_473 = value; 
		}
	}
	protected schemaLib._x0034_473 __x0034_473;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_503 get_x0034_503() {
		return __x0034_503;  
	}
	public void set_x0034_503(schemaLib._x0034_503 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_503 = null;
		else {
			setElementName(value.getBase(), "_x0034_503");
			__x0034_503 = value; 
		}
	}
	protected schemaLib._x0034_503 __x0034_503;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_512A get_x0034_512() {
		return __x0034_512;  
	}
	public void set_x0034_512(schemaLib._x0034_512A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_512 = null;
		else {
			setElementName(value.getBase(), "_x0034_512");
			__x0034_512 = value; 
		}
	}
	protected schemaLib._x0034_512A __x0034_512;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_153", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_204", "", findGetterMethod("schemaLib._x0034_153", "get_x0034_204"), findSetterMethod("schemaLib._x0034_153", "set_x0034_204", "schemaLib._x0034_204A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_204A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_227", "", findGetterMethod("schemaLib._x0034_153", "get_x0034_227"), findSetterMethod("schemaLib._x0034_153", "set_x0034_227", "schemaLib._x0034_227"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_227.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_368", "", findGetterMethod("schemaLib._x0034_153", "get_x0034_368"), findSetterMethod("schemaLib._x0034_153", "set_x0034_368", "schemaLib._x0034_368"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_368.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_444", "", findGetterMethod("schemaLib._x0034_153", "get_x0034_444"), findSetterMethod("schemaLib._x0034_153", "set_x0034_444", "schemaLib._x0034_444"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_444.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_473", "", findGetterMethod("schemaLib._x0034_153", "get_x0034_473"), findSetterMethod("schemaLib._x0034_153", "set_x0034_473", "schemaLib._x0034_473"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_473.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_503", "", findGetterMethod("schemaLib._x0034_153", "get_x0034_503"), findSetterMethod("schemaLib._x0034_153", "set_x0034_503", "schemaLib._x0034_503"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_503.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_512", "", findGetterMethod("schemaLib._x0034_153", "get_x0034_512"), findSetterMethod("schemaLib._x0034_153", "set_x0034_512", "schemaLib._x0034_512A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_512A.class)
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


