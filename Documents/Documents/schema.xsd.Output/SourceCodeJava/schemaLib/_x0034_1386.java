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
// This class represents the ComplexType _x0034_1386
// </summary>
public class _x0034_1386 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_1386
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_1386() {
		setElementName("_x0034_1386");
		init();
	}
	public _x0034_1386(String elementName) {
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
			__x0032_1035 = null;
			__x0032_3436 = null;
			__x0033_1732 = null;
			__x0033_4943 = null;
			__x0034_9624 = null;
			__x0035_6258 = null;

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
			schemaLib._x0034_1386 newObject = (schemaLib._x0034_1386)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0032_1035 = null;
			if (__x0032_1035 != null)
				newObject.__x0032_1035 = (schemaLib._x0032_1035)__x0032_1035.clone();
			newObject.__x0032_3436 = null;
			if (__x0032_3436 != null)
				newObject.__x0032_3436 = (schemaLib._x0032_3436)__x0032_3436.clone();
			newObject.__x0033_1732 = null;
			if (__x0033_1732 != null)
				newObject.__x0033_1732 = (schemaLib._x0033_1732)__x0033_1732.clone();
			newObject.__x0033_4943 = null;
			if (__x0033_4943 != null)
				newObject.__x0033_4943 = (schemaLib._x0033_4943)__x0033_4943.clone();
			newObject.__x0034_9624 = null;
			if (__x0034_9624 != null)
				newObject.__x0034_9624 = (schemaLib._x0034_9624)__x0034_9624.clone();
			newObject.__x0035_6258 = null;
			if (__x0035_6258 != null)
				newObject.__x0035_6258 = (schemaLib._x0035_6258)__x0035_6258.clone();
	
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
	public schemaLib._x0032_1035 get_x0032_1035() {
		return __x0032_1035;  
	}
	public void set_x0032_1035(schemaLib._x0032_1035 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_1035 = null;
		else {
			setElementName(value.getBase(), "_x0032_1035");
			__x0032_1035 = value; 
		}
	}
	protected schemaLib._x0032_1035 __x0032_1035;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0032_3436 get_x0032_3436() {
		return __x0032_3436;  
	}
	public void set_x0032_3436(schemaLib._x0032_3436 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0032_3436 = null;
		else {
			setElementName(value.getBase(), "_x0032_3436");
			__x0032_3436 = value; 
		}
	}
	protected schemaLib._x0032_3436 __x0032_3436;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_1732 get_x0033_1732() {
		return __x0033_1732;  
	}
	public void set_x0033_1732(schemaLib._x0033_1732 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_1732 = null;
		else {
			setElementName(value.getBase(), "_x0033_1732");
			__x0033_1732 = value; 
		}
	}
	protected schemaLib._x0033_1732 __x0033_1732;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_4943 get_x0033_4943() {
		return __x0033_4943;  
	}
	public void set_x0033_4943(schemaLib._x0033_4943 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_4943 = null;
		else {
			setElementName(value.getBase(), "_x0033_4943");
			__x0033_4943 = value; 
		}
	}
	protected schemaLib._x0033_4943 __x0033_4943;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_9624 get_x0034_9624() {
		return __x0034_9624;  
	}
	public void set_x0034_9624(schemaLib._x0034_9624 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_9624 = null;
		else {
			setElementName(value.getBase(), "_x0034_9624");
			__x0034_9624 = value; 
		}
	}
	protected schemaLib._x0034_9624 __x0034_9624;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_6258 get_x0035_6258() {
		return __x0035_6258;  
	}
	public void set_x0035_6258(schemaLib._x0035_6258 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_6258 = null;
		else {
			setElementName(value.getBase(), "_x0035_6258");
			__x0035_6258 = value; 
		}
	}
	protected schemaLib._x0035_6258 __x0035_6258;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_1386", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_1035", "", findGetterMethod("schemaLib._x0034_1386", "get_x0032_1035"), findSetterMethod("schemaLib._x0034_1386", "set_x0032_1035", "schemaLib._x0032_1035"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_1035.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0032_3436", "", findGetterMethod("schemaLib._x0034_1386", "get_x0032_3436"), findSetterMethod("schemaLib._x0034_1386", "set_x0032_3436", "schemaLib._x0032_3436"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0032_3436.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_1732", "", findGetterMethod("schemaLib._x0034_1386", "get_x0033_1732"), findSetterMethod("schemaLib._x0034_1386", "set_x0033_1732", "schemaLib._x0033_1732"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_1732.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_4943", "", findGetterMethod("schemaLib._x0034_1386", "get_x0033_4943"), findSetterMethod("schemaLib._x0034_1386", "set_x0033_4943", "schemaLib._x0033_4943"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_4943.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_9624", "", findGetterMethod("schemaLib._x0034_1386", "get_x0034_9624"), findSetterMethod("schemaLib._x0034_1386", "set_x0034_9624", "schemaLib._x0034_9624"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_9624.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_6258", "", findGetterMethod("schemaLib._x0034_1386", "get_x0035_6258"), findSetterMethod("schemaLib._x0034_1386", "set_x0035_6258", "schemaLib._x0035_6258"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_6258.class)
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


