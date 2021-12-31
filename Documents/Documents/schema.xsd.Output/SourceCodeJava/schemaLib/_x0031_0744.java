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
// This class represents the ComplexType _x0031_0744
// </summary>
public class _x0031_0744 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_0744
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_0744() {
		setElementName("_x0031_0744");
		init();
	}
	public _x0031_0744(String elementName) {
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
			__x0031_0748 = null;
			__x0031_0788 = null;
			__x0031_0791 = null;
			__x0031_0794 = null;
			__x0031_0797 = null;
			__x0031_0800 = null;

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
			schemaLib._x0031_0744 newObject = (schemaLib._x0031_0744)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_0748 = null;
			if (__x0031_0748 != null)
				newObject.__x0031_0748 = (schemaLib._x0031_0748)__x0031_0748.clone();
			newObject.__x0031_0788 = null;
			if (__x0031_0788 != null)
				newObject.__x0031_0788 = (schemaLib._x0031_0788)__x0031_0788.clone();
			newObject.__x0031_0791 = null;
			if (__x0031_0791 != null)
				newObject.__x0031_0791 = (schemaLib._x0031_0791)__x0031_0791.clone();
			newObject.__x0031_0794 = null;
			if (__x0031_0794 != null)
				newObject.__x0031_0794 = (schemaLib._x0031_0794)__x0031_0794.clone();
			newObject.__x0031_0797 = null;
			if (__x0031_0797 != null)
				newObject.__x0031_0797 = (schemaLib._x0031_0797)__x0031_0797.clone();
			newObject.__x0031_0800 = null;
			if (__x0031_0800 != null)
				newObject.__x0031_0800 = (schemaLib._x0031_0800)__x0031_0800.clone();
	
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
	public schemaLib._x0031_0748 get_x0031_0748() {
		return __x0031_0748;  
	}
	public void set_x0031_0748(schemaLib._x0031_0748 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0748 = null;
		else {
			setElementName(value.getBase(), "_x0031_0748");
			__x0031_0748 = value; 
		}
	}
	protected schemaLib._x0031_0748 __x0031_0748;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0788 get_x0031_0788() {
		return __x0031_0788;  
	}
	public void set_x0031_0788(schemaLib._x0031_0788 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0788 = null;
		else {
			setElementName(value.getBase(), "_x0031_0788");
			__x0031_0788 = value; 
		}
	}
	protected schemaLib._x0031_0788 __x0031_0788;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0791 get_x0031_0791() {
		return __x0031_0791;  
	}
	public void set_x0031_0791(schemaLib._x0031_0791 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0791 = null;
		else {
			setElementName(value.getBase(), "_x0031_0791");
			__x0031_0791 = value; 
		}
	}
	protected schemaLib._x0031_0791 __x0031_0791;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0794 get_x0031_0794() {
		return __x0031_0794;  
	}
	public void set_x0031_0794(schemaLib._x0031_0794 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0794 = null;
		else {
			setElementName(value.getBase(), "_x0031_0794");
			__x0031_0794 = value; 
		}
	}
	protected schemaLib._x0031_0794 __x0031_0794;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0797 get_x0031_0797() {
		return __x0031_0797;  
	}
	public void set_x0031_0797(schemaLib._x0031_0797 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0797 = null;
		else {
			setElementName(value.getBase(), "_x0031_0797");
			__x0031_0797 = value; 
		}
	}
	protected schemaLib._x0031_0797 __x0031_0797;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_0800 get_x0031_0800() {
		return __x0031_0800;  
	}
	public void set_x0031_0800(schemaLib._x0031_0800 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_0800 = null;
		else {
			setElementName(value.getBase(), "_x0031_0800");
			__x0031_0800 = value; 
		}
	}
	protected schemaLib._x0031_0800 __x0031_0800;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_0744", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0748", "", findGetterMethod("schemaLib._x0031_0744", "get_x0031_0748"), findSetterMethod("schemaLib._x0031_0744", "set_x0031_0748", "schemaLib._x0031_0748"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0748.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0788", "", findGetterMethod("schemaLib._x0031_0744", "get_x0031_0788"), findSetterMethod("schemaLib._x0031_0744", "set_x0031_0788", "schemaLib._x0031_0788"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0788.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0791", "", findGetterMethod("schemaLib._x0031_0744", "get_x0031_0791"), findSetterMethod("schemaLib._x0031_0744", "set_x0031_0791", "schemaLib._x0031_0791"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0791.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0794", "", findGetterMethod("schemaLib._x0031_0744", "get_x0031_0794"), findSetterMethod("schemaLib._x0031_0744", "set_x0031_0794", "schemaLib._x0031_0794"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0794.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0797", "", findGetterMethod("schemaLib._x0031_0744", "get_x0031_0797"), findSetterMethod("schemaLib._x0031_0744", "set_x0031_0797", "schemaLib._x0031_0797"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0797.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_0800", "", findGetterMethod("schemaLib._x0031_0744", "get_x0031_0800"), findSetterMethod("schemaLib._x0031_0744", "set_x0031_0800", "schemaLib._x0031_0800"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_0800.class)
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


