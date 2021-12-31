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
// This class represents the ComplexType _x0031_7826
// </summary>
public class _x0031_7826 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_7826
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_7826() {
		setElementName("_x0031_7826");
		init();
	}
	public _x0031_7826(String elementName) {
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
			__x0031_7830 = null;
			__x0031_7847 = null;
			__x0031_7854 = null;
			__x0031_7888 = null;
			__x0031_7894 = null;
			__x0031_7900 = null;
			__x0031_7906 = null;
			__x0031_7912 = null;
			__x0031_7920 = null;
			__x0031_7926 = null;
			__x0031_7938 = null;
			__x0031_7944 = null;

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
			schemaLib._x0031_7826 newObject = (schemaLib._x0031_7826)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_7830 = null;
			if (__x0031_7830 != null)
				newObject.__x0031_7830 = (schemaLib._x0031_7830)__x0031_7830.clone();
			newObject.__x0031_7847 = null;
			if (__x0031_7847 != null)
				newObject.__x0031_7847 = (schemaLib._x0031_7847)__x0031_7847.clone();
			newObject.__x0031_7854 = null;
			if (__x0031_7854 != null)
				newObject.__x0031_7854 = (schemaLib._x0031_7854)__x0031_7854.clone();
			newObject.__x0031_7888 = null;
			if (__x0031_7888 != null)
				newObject.__x0031_7888 = (schemaLib._x0031_7888)__x0031_7888.clone();
			newObject.__x0031_7894 = null;
			if (__x0031_7894 != null)
				newObject.__x0031_7894 = (schemaLib._x0031_7894)__x0031_7894.clone();
			newObject.__x0031_7900 = null;
			if (__x0031_7900 != null)
				newObject.__x0031_7900 = (schemaLib._x0031_7900)__x0031_7900.clone();
			newObject.__x0031_7906 = null;
			if (__x0031_7906 != null)
				newObject.__x0031_7906 = (schemaLib._x0031_7906)__x0031_7906.clone();
			newObject.__x0031_7912 = null;
			if (__x0031_7912 != null)
				newObject.__x0031_7912 = (schemaLib._x0031_7912)__x0031_7912.clone();
			newObject.__x0031_7920 = null;
			if (__x0031_7920 != null)
				newObject.__x0031_7920 = (schemaLib._x0031_7920)__x0031_7920.clone();
			newObject.__x0031_7926 = null;
			if (__x0031_7926 != null)
				newObject.__x0031_7926 = (schemaLib._x0031_7926)__x0031_7926.clone();
			newObject.__x0031_7938 = null;
			if (__x0031_7938 != null)
				newObject.__x0031_7938 = (schemaLib._x0031_7938)__x0031_7938.clone();
			newObject.__x0031_7944 = null;
			if (__x0031_7944 != null)
				newObject.__x0031_7944 = (schemaLib._x0031_7944)__x0031_7944.clone();
	
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
	public schemaLib._x0031_7830 get_x0031_7830() {
		return __x0031_7830;  
	}
	public void set_x0031_7830(schemaLib._x0031_7830 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7830 = null;
		else {
			setElementName(value.getBase(), "_x0031_7830");
			__x0031_7830 = value; 
		}
	}
	protected schemaLib._x0031_7830 __x0031_7830;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7847 get_x0031_7847() {
		return __x0031_7847;  
	}
	public void set_x0031_7847(schemaLib._x0031_7847 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7847 = null;
		else {
			setElementName(value.getBase(), "_x0031_7847");
			__x0031_7847 = value; 
		}
	}
	protected schemaLib._x0031_7847 __x0031_7847;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7854 get_x0031_7854() {
		return __x0031_7854;  
	}
	public void set_x0031_7854(schemaLib._x0031_7854 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7854 = null;
		else {
			setElementName(value.getBase(), "_x0031_7854");
			__x0031_7854 = value; 
		}
	}
	protected schemaLib._x0031_7854 __x0031_7854;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7888 get_x0031_7888() {
		return __x0031_7888;  
	}
	public void set_x0031_7888(schemaLib._x0031_7888 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7888 = null;
		else {
			setElementName(value.getBase(), "_x0031_7888");
			__x0031_7888 = value; 
		}
	}
	protected schemaLib._x0031_7888 __x0031_7888;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7894 get_x0031_7894() {
		return __x0031_7894;  
	}
	public void set_x0031_7894(schemaLib._x0031_7894 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7894 = null;
		else {
			setElementName(value.getBase(), "_x0031_7894");
			__x0031_7894 = value; 
		}
	}
	protected schemaLib._x0031_7894 __x0031_7894;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7900 get_x0031_7900() {
		return __x0031_7900;  
	}
	public void set_x0031_7900(schemaLib._x0031_7900 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7900 = null;
		else {
			setElementName(value.getBase(), "_x0031_7900");
			__x0031_7900 = value; 
		}
	}
	protected schemaLib._x0031_7900 __x0031_7900;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7906 get_x0031_7906() {
		return __x0031_7906;  
	}
	public void set_x0031_7906(schemaLib._x0031_7906 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7906 = null;
		else {
			setElementName(value.getBase(), "_x0031_7906");
			__x0031_7906 = value; 
		}
	}
	protected schemaLib._x0031_7906 __x0031_7906;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7912 get_x0031_7912() {
		return __x0031_7912;  
	}
	public void set_x0031_7912(schemaLib._x0031_7912 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7912 = null;
		else {
			setElementName(value.getBase(), "_x0031_7912");
			__x0031_7912 = value; 
		}
	}
	protected schemaLib._x0031_7912 __x0031_7912;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7920 get_x0031_7920() {
		return __x0031_7920;  
	}
	public void set_x0031_7920(schemaLib._x0031_7920 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7920 = null;
		else {
			setElementName(value.getBase(), "_x0031_7920");
			__x0031_7920 = value; 
		}
	}
	protected schemaLib._x0031_7920 __x0031_7920;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7926 get_x0031_7926() {
		return __x0031_7926;  
	}
	public void set_x0031_7926(schemaLib._x0031_7926 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7926 = null;
		else {
			setElementName(value.getBase(), "_x0031_7926");
			__x0031_7926 = value; 
		}
	}
	protected schemaLib._x0031_7926 __x0031_7926;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7938 get_x0031_7938() {
		return __x0031_7938;  
	}
	public void set_x0031_7938(schemaLib._x0031_7938 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7938 = null;
		else {
			setElementName(value.getBase(), "_x0031_7938");
			__x0031_7938 = value; 
		}
	}
	protected schemaLib._x0031_7938 __x0031_7938;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_7944 get_x0031_7944() {
		return __x0031_7944;  
	}
	public void set_x0031_7944(schemaLib._x0031_7944 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_7944 = null;
		else {
			setElementName(value.getBase(), "_x0031_7944");
			__x0031_7944 = value; 
		}
	}
	protected schemaLib._x0031_7944 __x0031_7944;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_7826", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7830", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7830"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7830", "schemaLib._x0031_7830"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7830.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7847", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7847"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7847", "schemaLib._x0031_7847"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7847.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7854", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7854"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7854", "schemaLib._x0031_7854"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7854.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7888", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7888"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7888", "schemaLib._x0031_7888"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7888.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7894", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7894"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7894", "schemaLib._x0031_7894"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7894.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7900", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7900"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7900", "schemaLib._x0031_7900"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7900.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7906", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7906"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7906", "schemaLib._x0031_7906"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7906.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7912", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7912"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7912", "schemaLib._x0031_7912"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7912.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7920", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7920"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7920", "schemaLib._x0031_7920"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7920.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7926", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7926"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7926", "schemaLib._x0031_7926"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7926.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7938", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7938"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7938", "schemaLib._x0031_7938"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7938.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_7944", "", findGetterMethod("schemaLib._x0031_7826", "get_x0031_7944"), findSetterMethod("schemaLib._x0031_7826", "set_x0031_7944", "schemaLib._x0031_7944"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_7944.class)
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


