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
// This class represents the ComplexType _x0031_5492
// </summary>
public class _x0031_5492 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_5492
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_5492() {
		setElementName("_x0031_5492");
		init();
	}
	public _x0031_5492(String elementName) {
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
			__x0031_5534 = null;
			__x0031_5537 = null;
			__x0031_5540 = null;
			__x0031_5543 = null;
			__x0031_5545 = null;
			__x0031_5546 = null;
			__x0031_5558 = null;
			__x0031_5563 = null;
			__x0031_5566 = null;
			__x0031_5569 = null;

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
			schemaLib._x0031_5492 newObject = (schemaLib._x0031_5492)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_5534 = null;
			if (__x0031_5534 != null)
				newObject.__x0031_5534 = (schemaLib._x0031_5534)__x0031_5534.clone();
			newObject.__x0031_5537 = null;
			if (__x0031_5537 != null)
				newObject.__x0031_5537 = (schemaLib._x0031_5537)__x0031_5537.clone();
			newObject.__x0031_5540 = null;
			if (__x0031_5540 != null)
				newObject.__x0031_5540 = (schemaLib._x0031_5540)__x0031_5540.clone();
			newObject.__x0031_5543 = null;
			if (__x0031_5543 != null)
				newObject.__x0031_5543 = (schemaLib._x0031_5543)__x0031_5543.clone();
			newObject.__x0031_5545 = null;
			if (__x0031_5545 != null)
				newObject.__x0031_5545 = (schemaLib._x0031_5545)__x0031_5545.clone();
			newObject.__x0031_5546 = null;
			if (__x0031_5546 != null)
				newObject.__x0031_5546 = (schemaLib._x0031_5546)__x0031_5546.clone();
			newObject.__x0031_5558 = null;
			if (__x0031_5558 != null)
				newObject.__x0031_5558 = (schemaLib._x0031_5558)__x0031_5558.clone();
			newObject.__x0031_5563 = null;
			if (__x0031_5563 != null)
				newObject.__x0031_5563 = (schemaLib._x0031_5563)__x0031_5563.clone();
			newObject.__x0031_5566 = null;
			if (__x0031_5566 != null)
				newObject.__x0031_5566 = (schemaLib._x0031_5566)__x0031_5566.clone();
			newObject.__x0031_5569 = null;
			if (__x0031_5569 != null)
				newObject.__x0031_5569 = (schemaLib._x0031_5569)__x0031_5569.clone();
	
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
	public schemaLib._x0031_5534 get_x0031_5534() {
		return __x0031_5534;  
	}
	public void set_x0031_5534(schemaLib._x0031_5534 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5534 = null;
		else {
			setElementName(value.getBase(), "_x0031_5534");
			__x0031_5534 = value; 
		}
	}
	protected schemaLib._x0031_5534 __x0031_5534;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5537 get_x0031_5537() {
		return __x0031_5537;  
	}
	public void set_x0031_5537(schemaLib._x0031_5537 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5537 = null;
		else {
			setElementName(value.getBase(), "_x0031_5537");
			__x0031_5537 = value; 
		}
	}
	protected schemaLib._x0031_5537 __x0031_5537;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5540 get_x0031_5540() {
		return __x0031_5540;  
	}
	public void set_x0031_5540(schemaLib._x0031_5540 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5540 = null;
		else {
			setElementName(value.getBase(), "_x0031_5540");
			__x0031_5540 = value; 
		}
	}
	protected schemaLib._x0031_5540 __x0031_5540;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5543 get_x0031_5543() {
		return __x0031_5543;  
	}
	public void set_x0031_5543(schemaLib._x0031_5543 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5543 = null;
		else {
			setElementName(value.getBase(), "_x0031_5543");
			__x0031_5543 = value; 
		}
	}
	protected schemaLib._x0031_5543 __x0031_5543;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5545 get_x0031_5545() {
		return __x0031_5545;  
	}
	public void set_x0031_5545(schemaLib._x0031_5545 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5545 = null;
		else {
			setElementName(value.getBase(), "_x0031_5545");
			__x0031_5545 = value; 
		}
	}
	protected schemaLib._x0031_5545 __x0031_5545;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5546 get_x0031_5546() {
		return __x0031_5546;  
	}
	public void set_x0031_5546(schemaLib._x0031_5546 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5546 = null;
		else {
			setElementName(value.getBase(), "_x0031_5546");
			__x0031_5546 = value; 
		}
	}
	protected schemaLib._x0031_5546 __x0031_5546;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5558 get_x0031_5558() {
		return __x0031_5558;  
	}
	public void set_x0031_5558(schemaLib._x0031_5558 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5558 = null;
		else {
			setElementName(value.getBase(), "_x0031_5558");
			__x0031_5558 = value; 
		}
	}
	protected schemaLib._x0031_5558 __x0031_5558;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5563 get_x0031_5563() {
		return __x0031_5563;  
	}
	public void set_x0031_5563(schemaLib._x0031_5563 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5563 = null;
		else {
			setElementName(value.getBase(), "_x0031_5563");
			__x0031_5563 = value; 
		}
	}
	protected schemaLib._x0031_5563 __x0031_5563;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5566 get_x0031_5566() {
		return __x0031_5566;  
	}
	public void set_x0031_5566(schemaLib._x0031_5566 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5566 = null;
		else {
			setElementName(value.getBase(), "_x0031_5566");
			__x0031_5566 = value; 
		}
	}
	protected schemaLib._x0031_5566 __x0031_5566;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_5569 get_x0031_5569() {
		return __x0031_5569;  
	}
	public void set_x0031_5569(schemaLib._x0031_5569 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_5569 = null;
		else {
			setElementName(value.getBase(), "_x0031_5569");
			__x0031_5569 = value; 
		}
	}
	protected schemaLib._x0031_5569 __x0031_5569;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_5492", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5534", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5534"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5534", "schemaLib._x0031_5534"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5534.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5537", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5537"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5537", "schemaLib._x0031_5537"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5537.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5540", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5540"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5540", "schemaLib._x0031_5540"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5540.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5543", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5543"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5543", "schemaLib._x0031_5543"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5543.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5545", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5545"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5545", "schemaLib._x0031_5545"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5545.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5546", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5546"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5546", "schemaLib._x0031_5546"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5546.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5558", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5558"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5558", "schemaLib._x0031_5558"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5558.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5563", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5563"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5563", "schemaLib._x0031_5563"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5563.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5566", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5566"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5566", "schemaLib._x0031_5566"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5566.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_5569", "", findGetterMethod("schemaLib._x0031_5492", "get_x0031_5569"), findSetterMethod("schemaLib._x0031_5492", "set_x0031_5569", "schemaLib._x0031_5569"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_5569.class)
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


