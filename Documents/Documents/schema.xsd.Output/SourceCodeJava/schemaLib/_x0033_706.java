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
// This class represents the ComplexType _x0033_706
// </summary>
public class _x0033_706 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_706
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_706() {
		setElementName("_x0033_706");
		init();
	}
	public _x0033_706(String elementName) {
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
			__x0033_730 = null;
			__x0033_754 = null;
			__x0033_830 = null;
			__x0033_870 = null;
			__x0033_907 = null;
			__x0033_938 = null;
			__x0033_961 = null;
			__x0033_975 = null;
			__x0033_987 = null;

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
			schemaLib._x0033_706 newObject = (schemaLib._x0033_706)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_730 = null;
			if (__x0033_730 != null)
				newObject.__x0033_730 = (schemaLib._x0033_730)__x0033_730.clone();
			newObject.__x0033_754 = null;
			if (__x0033_754 != null)
				newObject.__x0033_754 = (schemaLib._x0033_754)__x0033_754.clone();
			newObject.__x0033_830 = null;
			if (__x0033_830 != null)
				newObject.__x0033_830 = (schemaLib._x0033_830)__x0033_830.clone();
			newObject.__x0033_870 = null;
			if (__x0033_870 != null)
				newObject.__x0033_870 = (schemaLib._x0033_870)__x0033_870.clone();
			newObject.__x0033_907 = null;
			if (__x0033_907 != null)
				newObject.__x0033_907 = (schemaLib._x0033_907)__x0033_907.clone();
			newObject.__x0033_938 = null;
			if (__x0033_938 != null)
				newObject.__x0033_938 = (schemaLib._x0033_938A)__x0033_938.clone();
			newObject.__x0033_961 = null;
			if (__x0033_961 != null)
				newObject.__x0033_961 = (schemaLib._x0033_961)__x0033_961.clone();
			newObject.__x0033_975 = null;
			if (__x0033_975 != null)
				newObject.__x0033_975 = (schemaLib._x0033_975)__x0033_975.clone();
			newObject.__x0033_987 = null;
			if (__x0033_987 != null)
				newObject.__x0033_987 = (schemaLib._x0033_987)__x0033_987.clone();
	
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
	public schemaLib._x0033_730 get_x0033_730() {
		return __x0033_730;  
	}
	public void set_x0033_730(schemaLib._x0033_730 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_730 = null;
		else {
			setElementName(value.getBase(), "_x0033_730");
			__x0033_730 = value; 
		}
	}
	protected schemaLib._x0033_730 __x0033_730;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_754 get_x0033_754() {
		return __x0033_754;  
	}
	public void set_x0033_754(schemaLib._x0033_754 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_754 = null;
		else {
			setElementName(value.getBase(), "_x0033_754");
			__x0033_754 = value; 
		}
	}
	protected schemaLib._x0033_754 __x0033_754;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_830 get_x0033_830() {
		return __x0033_830;  
	}
	public void set_x0033_830(schemaLib._x0033_830 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_830 = null;
		else {
			setElementName(value.getBase(), "_x0033_830");
			__x0033_830 = value; 
		}
	}
	protected schemaLib._x0033_830 __x0033_830;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_870 get_x0033_870() {
		return __x0033_870;  
	}
	public void set_x0033_870(schemaLib._x0033_870 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_870 = null;
		else {
			setElementName(value.getBase(), "_x0033_870");
			__x0033_870 = value; 
		}
	}
	protected schemaLib._x0033_870 __x0033_870;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_907 get_x0033_907() {
		return __x0033_907;  
	}
	public void set_x0033_907(schemaLib._x0033_907 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_907 = null;
		else {
			setElementName(value.getBase(), "_x0033_907");
			__x0033_907 = value; 
		}
	}
	protected schemaLib._x0033_907 __x0033_907;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_938A get_x0033_938() {
		return __x0033_938;  
	}
	public void set_x0033_938(schemaLib._x0033_938A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_938 = null;
		else {
			setElementName(value.getBase(), "_x0033_938");
			__x0033_938 = value; 
		}
	}
	protected schemaLib._x0033_938A __x0033_938;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_961 get_x0033_961() {
		return __x0033_961;  
	}
	public void set_x0033_961(schemaLib._x0033_961 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_961 = null;
		else {
			setElementName(value.getBase(), "_x0033_961");
			__x0033_961 = value; 
		}
	}
	protected schemaLib._x0033_961 __x0033_961;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_975 get_x0033_975() {
		return __x0033_975;  
	}
	public void set_x0033_975(schemaLib._x0033_975 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_975 = null;
		else {
			setElementName(value.getBase(), "_x0033_975");
			__x0033_975 = value; 
		}
	}
	protected schemaLib._x0033_975 __x0033_975;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_987 get_x0033_987() {
		return __x0033_987;  
	}
	public void set_x0033_987(schemaLib._x0033_987 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_987 = null;
		else {
			setElementName(value.getBase(), "_x0033_987");
			__x0033_987 = value; 
		}
	}
	protected schemaLib._x0033_987 __x0033_987;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_706", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_730", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_730"), findSetterMethod("schemaLib._x0033_706", "set_x0033_730", "schemaLib._x0033_730"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_730.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_754", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_754"), findSetterMethod("schemaLib._x0033_706", "set_x0033_754", "schemaLib._x0033_754"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_754.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_830", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_830"), findSetterMethod("schemaLib._x0033_706", "set_x0033_830", "schemaLib._x0033_830"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_830.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_870", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_870"), findSetterMethod("schemaLib._x0033_706", "set_x0033_870", "schemaLib._x0033_870"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_870.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_907", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_907"), findSetterMethod("schemaLib._x0033_706", "set_x0033_907", "schemaLib._x0033_907"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_907.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_938", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_938"), findSetterMethod("schemaLib._x0033_706", "set_x0033_938", "schemaLib._x0033_938A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_938A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_961", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_961"), findSetterMethod("schemaLib._x0033_706", "set_x0033_961", "schemaLib._x0033_961"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_961.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_975", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_975"), findSetterMethod("schemaLib._x0033_706", "set_x0033_975", "schemaLib._x0033_975"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_975.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_987", "", findGetterMethod("schemaLib._x0033_706", "get_x0033_987"), findSetterMethod("schemaLib._x0033_706", "set_x0033_987", "schemaLib._x0033_987"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_987.class)
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


