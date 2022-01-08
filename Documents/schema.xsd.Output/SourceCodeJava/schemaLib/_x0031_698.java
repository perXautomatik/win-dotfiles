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
// This class represents the ComplexType _x0031_698
// </summary>
public class _x0031_698 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_698
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_698() {
		setElementName("_x0031_698");
		init();
	}
	public _x0031_698(String elementName) {
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
			__x0031_740 = null;
			__x0031_755 = null;
			__x0031_782 = null;
			__x0031_796 = null;
			__x0031_809 = null;
			__x0031_821 = null;
			__x0031_830 = null;
			__x0031_835 = null;
			__x0031_839 = null;
			__x0031_842 = null;
			__x0031_845 = null;
			__x0031_846 = null;
			__x0031_847 = null;

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
			schemaLib._x0031_698 newObject = (schemaLib._x0031_698)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_740 = null;
			if (__x0031_740 != null)
				newObject.__x0031_740 = (schemaLib._x0031_740)__x0031_740.clone();
			newObject.__x0031_755 = null;
			if (__x0031_755 != null)
				newObject.__x0031_755 = (schemaLib._x0031_755)__x0031_755.clone();
			newObject.__x0031_782 = null;
			if (__x0031_782 != null)
				newObject.__x0031_782 = (schemaLib._x0031_782)__x0031_782.clone();
			newObject.__x0031_796 = null;
			if (__x0031_796 != null)
				newObject.__x0031_796 = (schemaLib._x0031_796)__x0031_796.clone();
			newObject.__x0031_809 = null;
			if (__x0031_809 != null)
				newObject.__x0031_809 = (schemaLib._x0031_809)__x0031_809.clone();
			newObject.__x0031_821 = null;
			if (__x0031_821 != null)
				newObject.__x0031_821 = (schemaLib._x0031_821)__x0031_821.clone();
			newObject.__x0031_830 = null;
			if (__x0031_830 != null)
				newObject.__x0031_830 = (schemaLib._x0031_830)__x0031_830.clone();
			newObject.__x0031_835 = null;
			if (__x0031_835 != null)
				newObject.__x0031_835 = (schemaLib._x0031_835)__x0031_835.clone();
			newObject.__x0031_839 = null;
			if (__x0031_839 != null)
				newObject.__x0031_839 = (schemaLib._x0031_839)__x0031_839.clone();
			newObject.__x0031_842 = null;
			if (__x0031_842 != null)
				newObject.__x0031_842 = (schemaLib._x0031_842)__x0031_842.clone();
			newObject.__x0031_845 = null;
			if (__x0031_845 != null)
				newObject.__x0031_845 = (schemaLib._x0031_845)__x0031_845.clone();
			newObject.__x0031_846 = null;
			if (__x0031_846 != null)
				newObject.__x0031_846 = (schemaLib._x0031_846)__x0031_846.clone();
			newObject.__x0031_847 = null;
			if (__x0031_847 != null)
				newObject.__x0031_847 = (schemaLib._x0031_847)__x0031_847.clone();
	
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
	public schemaLib._x0031_740 get_x0031_740() {
		return __x0031_740;  
	}
	public void set_x0031_740(schemaLib._x0031_740 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_740 = null;
		else {
			setElementName(value.getBase(), "_x0031_740");
			__x0031_740 = value; 
		}
	}
	protected schemaLib._x0031_740 __x0031_740;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_755 get_x0031_755() {
		return __x0031_755;  
	}
	public void set_x0031_755(schemaLib._x0031_755 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_755 = null;
		else {
			setElementName(value.getBase(), "_x0031_755");
			__x0031_755 = value; 
		}
	}
	protected schemaLib._x0031_755 __x0031_755;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_782 get_x0031_782() {
		return __x0031_782;  
	}
	public void set_x0031_782(schemaLib._x0031_782 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_782 = null;
		else {
			setElementName(value.getBase(), "_x0031_782");
			__x0031_782 = value; 
		}
	}
	protected schemaLib._x0031_782 __x0031_782;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_796 get_x0031_796() {
		return __x0031_796;  
	}
	public void set_x0031_796(schemaLib._x0031_796 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_796 = null;
		else {
			setElementName(value.getBase(), "_x0031_796");
			__x0031_796 = value; 
		}
	}
	protected schemaLib._x0031_796 __x0031_796;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_809 get_x0031_809() {
		return __x0031_809;  
	}
	public void set_x0031_809(schemaLib._x0031_809 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_809 = null;
		else {
			setElementName(value.getBase(), "_x0031_809");
			__x0031_809 = value; 
		}
	}
	protected schemaLib._x0031_809 __x0031_809;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_821 get_x0031_821() {
		return __x0031_821;  
	}
	public void set_x0031_821(schemaLib._x0031_821 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_821 = null;
		else {
			setElementName(value.getBase(), "_x0031_821");
			__x0031_821 = value; 
		}
	}
	protected schemaLib._x0031_821 __x0031_821;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_830 get_x0031_830() {
		return __x0031_830;  
	}
	public void set_x0031_830(schemaLib._x0031_830 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_830 = null;
		else {
			setElementName(value.getBase(), "_x0031_830");
			__x0031_830 = value; 
		}
	}
	protected schemaLib._x0031_830 __x0031_830;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_835 get_x0031_835() {
		return __x0031_835;  
	}
	public void set_x0031_835(schemaLib._x0031_835 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_835 = null;
		else {
			setElementName(value.getBase(), "_x0031_835");
			__x0031_835 = value; 
		}
	}
	protected schemaLib._x0031_835 __x0031_835;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_839 get_x0031_839() {
		return __x0031_839;  
	}
	public void set_x0031_839(schemaLib._x0031_839 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_839 = null;
		else {
			setElementName(value.getBase(), "_x0031_839");
			__x0031_839 = value; 
		}
	}
	protected schemaLib._x0031_839 __x0031_839;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_842 get_x0031_842() {
		return __x0031_842;  
	}
	public void set_x0031_842(schemaLib._x0031_842 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_842 = null;
		else {
			setElementName(value.getBase(), "_x0031_842");
			__x0031_842 = value; 
		}
	}
	protected schemaLib._x0031_842 __x0031_842;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_845 get_x0031_845() {
		return __x0031_845;  
	}
	public void set_x0031_845(schemaLib._x0031_845 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_845 = null;
		else {
			setElementName(value.getBase(), "_x0031_845");
			__x0031_845 = value; 
		}
	}
	protected schemaLib._x0031_845 __x0031_845;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_846 get_x0031_846() {
		return __x0031_846;  
	}
	public void set_x0031_846(schemaLib._x0031_846 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_846 = null;
		else {
			setElementName(value.getBase(), "_x0031_846");
			__x0031_846 = value; 
		}
	}
	protected schemaLib._x0031_846 __x0031_846;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_847 get_x0031_847() {
		return __x0031_847;  
	}
	public void set_x0031_847(schemaLib._x0031_847 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_847 = null;
		else {
			setElementName(value.getBase(), "_x0031_847");
			__x0031_847 = value; 
		}
	}
	protected schemaLib._x0031_847 __x0031_847;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_698", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_740", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_740"), findSetterMethod("schemaLib._x0031_698", "set_x0031_740", "schemaLib._x0031_740"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_740.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_755", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_755"), findSetterMethod("schemaLib._x0031_698", "set_x0031_755", "schemaLib._x0031_755"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_755.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_782", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_782"), findSetterMethod("schemaLib._x0031_698", "set_x0031_782", "schemaLib._x0031_782"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_782.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_796", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_796"), findSetterMethod("schemaLib._x0031_698", "set_x0031_796", "schemaLib._x0031_796"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_796.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_809", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_809"), findSetterMethod("schemaLib._x0031_698", "set_x0031_809", "schemaLib._x0031_809"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_809.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_821", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_821"), findSetterMethod("schemaLib._x0031_698", "set_x0031_821", "schemaLib._x0031_821"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_821.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_830", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_830"), findSetterMethod("schemaLib._x0031_698", "set_x0031_830", "schemaLib._x0031_830"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_830.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_835", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_835"), findSetterMethod("schemaLib._x0031_698", "set_x0031_835", "schemaLib._x0031_835"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_835.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_839", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_839"), findSetterMethod("schemaLib._x0031_698", "set_x0031_839", "schemaLib._x0031_839"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_839.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_842", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_842"), findSetterMethod("schemaLib._x0031_698", "set_x0031_842", "schemaLib._x0031_842"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_842.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_845", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_845"), findSetterMethod("schemaLib._x0031_698", "set_x0031_845", "schemaLib._x0031_845"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_845.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_846", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_846"), findSetterMethod("schemaLib._x0031_698", "set_x0031_846", "schemaLib._x0031_846"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_846.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_847", "", findGetterMethod("schemaLib._x0031_698", "get_x0031_847"), findSetterMethod("schemaLib._x0031_698", "set_x0031_847", "schemaLib._x0031_847"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_847.class)
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


