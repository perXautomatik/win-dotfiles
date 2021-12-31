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
// This class represents the ComplexType _x0037_872
// </summary>
public class _x0037_872 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_872
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_872() {
		setElementName("_x0037_872");
		init();
	}
	public _x0037_872(String elementName) {
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
			__x0037_893 = null;
			__x0037_904 = null;
			__x0037_910 = null;
			__x0037_919 = null;
			__x0037_926 = null;
			__x0037_956 = null;

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
			schemaLib._x0037_872 newObject = (schemaLib._x0037_872)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_893 = null;
			if (__x0037_893 != null)
				newObject.__x0037_893 = (schemaLib._x0037_893)__x0037_893.clone();
			newObject.__x0037_904 = null;
			if (__x0037_904 != null)
				newObject.__x0037_904 = (schemaLib._x0037_904)__x0037_904.clone();
			newObject.__x0037_910 = null;
			if (__x0037_910 != null)
				newObject.__x0037_910 = (schemaLib._x0037_910)__x0037_910.clone();
			newObject.__x0037_919 = null;
			if (__x0037_919 != null)
				newObject.__x0037_919 = (schemaLib._x0037_919)__x0037_919.clone();
			newObject.__x0037_926 = null;
			if (__x0037_926 != null)
				newObject.__x0037_926 = (schemaLib._x0037_926)__x0037_926.clone();
			newObject.__x0037_956 = null;
			if (__x0037_956 != null)
				newObject.__x0037_956 = (schemaLib._x0037_956)__x0037_956.clone();
	
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
	public schemaLib._x0037_893 get_x0037_893() {
		return __x0037_893;  
	}
	public void set_x0037_893(schemaLib._x0037_893 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_893 = null;
		else {
			setElementName(value.getBase(), "_x0037_893");
			__x0037_893 = value; 
		}
	}
	protected schemaLib._x0037_893 __x0037_893;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_904 get_x0037_904() {
		return __x0037_904;  
	}
	public void set_x0037_904(schemaLib._x0037_904 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_904 = null;
		else {
			setElementName(value.getBase(), "_x0037_904");
			__x0037_904 = value; 
		}
	}
	protected schemaLib._x0037_904 __x0037_904;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_910 get_x0037_910() {
		return __x0037_910;  
	}
	public void set_x0037_910(schemaLib._x0037_910 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_910 = null;
		else {
			setElementName(value.getBase(), "_x0037_910");
			__x0037_910 = value; 
		}
	}
	protected schemaLib._x0037_910 __x0037_910;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_919 get_x0037_919() {
		return __x0037_919;  
	}
	public void set_x0037_919(schemaLib._x0037_919 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_919 = null;
		else {
			setElementName(value.getBase(), "_x0037_919");
			__x0037_919 = value; 
		}
	}
	protected schemaLib._x0037_919 __x0037_919;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_926 get_x0037_926() {
		return __x0037_926;  
	}
	public void set_x0037_926(schemaLib._x0037_926 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_926 = null;
		else {
			setElementName(value.getBase(), "_x0037_926");
			__x0037_926 = value; 
		}
	}
	protected schemaLib._x0037_926 __x0037_926;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_956 get_x0037_956() {
		return __x0037_956;  
	}
	public void set_x0037_956(schemaLib._x0037_956 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_956 = null;
		else {
			setElementName(value.getBase(), "_x0037_956");
			__x0037_956 = value; 
		}
	}
	protected schemaLib._x0037_956 __x0037_956;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_872", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_893", "", findGetterMethod("schemaLib._x0037_872", "get_x0037_893"), findSetterMethod("schemaLib._x0037_872", "set_x0037_893", "schemaLib._x0037_893"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_893.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_904", "", findGetterMethod("schemaLib._x0037_872", "get_x0037_904"), findSetterMethod("schemaLib._x0037_872", "set_x0037_904", "schemaLib._x0037_904"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_904.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_910", "", findGetterMethod("schemaLib._x0037_872", "get_x0037_910"), findSetterMethod("schemaLib._x0037_872", "set_x0037_910", "schemaLib._x0037_910"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_910.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_919", "", findGetterMethod("schemaLib._x0037_872", "get_x0037_919"), findSetterMethod("schemaLib._x0037_872", "set_x0037_919", "schemaLib._x0037_919"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_919.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_926", "", findGetterMethod("schemaLib._x0037_872", "get_x0037_926"), findSetterMethod("schemaLib._x0037_872", "set_x0037_926", "schemaLib._x0037_926"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_926.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_956", "", findGetterMethod("schemaLib._x0037_872", "get_x0037_956"), findSetterMethod("schemaLib._x0037_872", "set_x0037_956", "schemaLib._x0037_956"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_956.class)
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


