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
// This class represents the ComplexType _x0037_855
// </summary>
public class _x0037_855 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_855
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_855() {
		setElementName("_x0037_855");
		init();
	}
	public _x0037_855(String elementName) {
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
			__x0037_857 = null;
			__x0037_858 = null;
			__x0037_859 = null;
			__x0037_861 = null;
			__x0037_865 = null;
			__x0037_866 = null;
			__x0037_867 = null;
			__x0037_868 = null;
			__x0037_869 = null;
			__x0037_870 = null;
			__x0037_871 = null;
			__x0037_872 = null;
			__x0037_873 = null;
			__x0037_874 = null;
			__x0037_875 = null;
			__x0037_876 = null;
			__x0037_938 = null;
			__x0037_944 = null;
			__x0037_947 = null;
			__x0037_950 = null;

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
			schemaLib._x0037_855 newObject = (schemaLib._x0037_855)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_857 = null;
			if (__x0037_857 != null)
				newObject.__x0037_857 = (schemaLib._x0037_857)__x0037_857.clone();
			newObject.__x0037_858 = null;
			if (__x0037_858 != null)
				newObject.__x0037_858 = (schemaLib._x0037_858)__x0037_858.clone();
			newObject.__x0037_859 = null;
			if (__x0037_859 != null)
				newObject.__x0037_859 = (schemaLib._x0037_859)__x0037_859.clone();
			newObject.__x0037_861 = null;
			if (__x0037_861 != null)
				newObject.__x0037_861 = (schemaLib._x0037_861)__x0037_861.clone();
			newObject.__x0037_865 = null;
			if (__x0037_865 != null)
				newObject.__x0037_865 = (schemaLib._x0037_865)__x0037_865.clone();
			newObject.__x0037_866 = null;
			if (__x0037_866 != null)
				newObject.__x0037_866 = (schemaLib._x0037_866)__x0037_866.clone();
			newObject.__x0037_867 = null;
			if (__x0037_867 != null)
				newObject.__x0037_867 = (schemaLib._x0037_867)__x0037_867.clone();
			newObject.__x0037_868 = null;
			if (__x0037_868 != null)
				newObject.__x0037_868 = (schemaLib._x0037_868)__x0037_868.clone();
			newObject.__x0037_869 = null;
			if (__x0037_869 != null)
				newObject.__x0037_869 = (schemaLib._x0037_869)__x0037_869.clone();
			newObject.__x0037_870 = null;
			if (__x0037_870 != null)
				newObject.__x0037_870 = (schemaLib._x0037_870)__x0037_870.clone();
			newObject.__x0037_871 = null;
			if (__x0037_871 != null)
				newObject.__x0037_871 = (schemaLib._x0037_871)__x0037_871.clone();
			newObject.__x0037_872 = null;
			if (__x0037_872 != null)
				newObject.__x0037_872 = (schemaLib._x0037_872B)__x0037_872.clone();
			newObject.__x0037_873 = null;
			if (__x0037_873 != null)
				newObject.__x0037_873 = (schemaLib._x0037_873)__x0037_873.clone();
			newObject.__x0037_874 = null;
			if (__x0037_874 != null)
				newObject.__x0037_874 = (schemaLib._x0037_874)__x0037_874.clone();
			newObject.__x0037_875 = null;
			if (__x0037_875 != null)
				newObject.__x0037_875 = (schemaLib._x0037_875)__x0037_875.clone();
			newObject.__x0037_876 = null;
			if (__x0037_876 != null)
				newObject.__x0037_876 = (schemaLib._x0037_876)__x0037_876.clone();
			newObject.__x0037_938 = null;
			if (__x0037_938 != null)
				newObject.__x0037_938 = (schemaLib._x0037_938)__x0037_938.clone();
			newObject.__x0037_944 = null;
			if (__x0037_944 != null)
				newObject.__x0037_944 = (schemaLib._x0037_944)__x0037_944.clone();
			newObject.__x0037_947 = null;
			if (__x0037_947 != null)
				newObject.__x0037_947 = (schemaLib._x0037_947)__x0037_947.clone();
			newObject.__x0037_950 = null;
			if (__x0037_950 != null)
				newObject.__x0037_950 = (schemaLib._x0037_950)__x0037_950.clone();
	
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
	public schemaLib._x0037_857 get_x0037_857() {
		return __x0037_857;  
	}
	public void set_x0037_857(schemaLib._x0037_857 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_857 = null;
		else {
			setElementName(value.getBase(), "_x0037_857");
			__x0037_857 = value; 
		}
	}
	protected schemaLib._x0037_857 __x0037_857;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_858 get_x0037_858() {
		return __x0037_858;  
	}
	public void set_x0037_858(schemaLib._x0037_858 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_858 = null;
		else {
			setElementName(value.getBase(), "_x0037_858");
			__x0037_858 = value; 
		}
	}
	protected schemaLib._x0037_858 __x0037_858;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_859 get_x0037_859() {
		return __x0037_859;  
	}
	public void set_x0037_859(schemaLib._x0037_859 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_859 = null;
		else {
			setElementName(value.getBase(), "_x0037_859");
			__x0037_859 = value; 
		}
	}
	protected schemaLib._x0037_859 __x0037_859;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_861 get_x0037_861() {
		return __x0037_861;  
	}
	public void set_x0037_861(schemaLib._x0037_861 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_861 = null;
		else {
			setElementName(value.getBase(), "_x0037_861");
			__x0037_861 = value; 
		}
	}
	protected schemaLib._x0037_861 __x0037_861;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_865 get_x0037_865() {
		return __x0037_865;  
	}
	public void set_x0037_865(schemaLib._x0037_865 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_865 = null;
		else {
			setElementName(value.getBase(), "_x0037_865");
			__x0037_865 = value; 
		}
	}
	protected schemaLib._x0037_865 __x0037_865;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_866 get_x0037_866() {
		return __x0037_866;  
	}
	public void set_x0037_866(schemaLib._x0037_866 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_866 = null;
		else {
			setElementName(value.getBase(), "_x0037_866");
			__x0037_866 = value; 
		}
	}
	protected schemaLib._x0037_866 __x0037_866;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_867 get_x0037_867() {
		return __x0037_867;  
	}
	public void set_x0037_867(schemaLib._x0037_867 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_867 = null;
		else {
			setElementName(value.getBase(), "_x0037_867");
			__x0037_867 = value; 
		}
	}
	protected schemaLib._x0037_867 __x0037_867;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_868 get_x0037_868() {
		return __x0037_868;  
	}
	public void set_x0037_868(schemaLib._x0037_868 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_868 = null;
		else {
			setElementName(value.getBase(), "_x0037_868");
			__x0037_868 = value; 
		}
	}
	protected schemaLib._x0037_868 __x0037_868;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_869 get_x0037_869() {
		return __x0037_869;  
	}
	public void set_x0037_869(schemaLib._x0037_869 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_869 = null;
		else {
			setElementName(value.getBase(), "_x0037_869");
			__x0037_869 = value; 
		}
	}
	protected schemaLib._x0037_869 __x0037_869;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_870 get_x0037_870() {
		return __x0037_870;  
	}
	public void set_x0037_870(schemaLib._x0037_870 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_870 = null;
		else {
			setElementName(value.getBase(), "_x0037_870");
			__x0037_870 = value; 
		}
	}
	protected schemaLib._x0037_870 __x0037_870;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_871 get_x0037_871() {
		return __x0037_871;  
	}
	public void set_x0037_871(schemaLib._x0037_871 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_871 = null;
		else {
			setElementName(value.getBase(), "_x0037_871");
			__x0037_871 = value; 
		}
	}
	protected schemaLib._x0037_871 __x0037_871;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_872B get_x0037_872() {
		return __x0037_872;  
	}
	public void set_x0037_872(schemaLib._x0037_872B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_872 = null;
		else {
			setElementName(value.getBase(), "_x0037_872");
			__x0037_872 = value; 
		}
	}
	protected schemaLib._x0037_872B __x0037_872;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_873 get_x0037_873() {
		return __x0037_873;  
	}
	public void set_x0037_873(schemaLib._x0037_873 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_873 = null;
		else {
			setElementName(value.getBase(), "_x0037_873");
			__x0037_873 = value; 
		}
	}
	protected schemaLib._x0037_873 __x0037_873;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_874 get_x0037_874() {
		return __x0037_874;  
	}
	public void set_x0037_874(schemaLib._x0037_874 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_874 = null;
		else {
			setElementName(value.getBase(), "_x0037_874");
			__x0037_874 = value; 
		}
	}
	protected schemaLib._x0037_874 __x0037_874;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_875 get_x0037_875() {
		return __x0037_875;  
	}
	public void set_x0037_875(schemaLib._x0037_875 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_875 = null;
		else {
			setElementName(value.getBase(), "_x0037_875");
			__x0037_875 = value; 
		}
	}
	protected schemaLib._x0037_875 __x0037_875;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_876 get_x0037_876() {
		return __x0037_876;  
	}
	public void set_x0037_876(schemaLib._x0037_876 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_876 = null;
		else {
			setElementName(value.getBase(), "_x0037_876");
			__x0037_876 = value; 
		}
	}
	protected schemaLib._x0037_876 __x0037_876;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_938 get_x0037_938() {
		return __x0037_938;  
	}
	public void set_x0037_938(schemaLib._x0037_938 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_938 = null;
		else {
			setElementName(value.getBase(), "_x0037_938");
			__x0037_938 = value; 
		}
	}
	protected schemaLib._x0037_938 __x0037_938;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_944 get_x0037_944() {
		return __x0037_944;  
	}
	public void set_x0037_944(schemaLib._x0037_944 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_944 = null;
		else {
			setElementName(value.getBase(), "_x0037_944");
			__x0037_944 = value; 
		}
	}
	protected schemaLib._x0037_944 __x0037_944;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_947 get_x0037_947() {
		return __x0037_947;  
	}
	public void set_x0037_947(schemaLib._x0037_947 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_947 = null;
		else {
			setElementName(value.getBase(), "_x0037_947");
			__x0037_947 = value; 
		}
	}
	protected schemaLib._x0037_947 __x0037_947;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_950 get_x0037_950() {
		return __x0037_950;  
	}
	public void set_x0037_950(schemaLib._x0037_950 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_950 = null;
		else {
			setElementName(value.getBase(), "_x0037_950");
			__x0037_950 = value; 
		}
	}
	protected schemaLib._x0037_950 __x0037_950;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_855", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_857", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_857"), findSetterMethod("schemaLib._x0037_855", "set_x0037_857", "schemaLib._x0037_857"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_857.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_858", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_858"), findSetterMethod("schemaLib._x0037_855", "set_x0037_858", "schemaLib._x0037_858"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_858.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_859", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_859"), findSetterMethod("schemaLib._x0037_855", "set_x0037_859", "schemaLib._x0037_859"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_859.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_861", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_861"), findSetterMethod("schemaLib._x0037_855", "set_x0037_861", "schemaLib._x0037_861"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_861.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_865", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_865"), findSetterMethod("schemaLib._x0037_855", "set_x0037_865", "schemaLib._x0037_865"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_865.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_866", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_866"), findSetterMethod("schemaLib._x0037_855", "set_x0037_866", "schemaLib._x0037_866"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_866.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_867", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_867"), findSetterMethod("schemaLib._x0037_855", "set_x0037_867", "schemaLib._x0037_867"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_867.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_868", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_868"), findSetterMethod("schemaLib._x0037_855", "set_x0037_868", "schemaLib._x0037_868"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_868.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_869", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_869"), findSetterMethod("schemaLib._x0037_855", "set_x0037_869", "schemaLib._x0037_869"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_869.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_870", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_870"), findSetterMethod("schemaLib._x0037_855", "set_x0037_870", "schemaLib._x0037_870"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_870.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_871", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_871"), findSetterMethod("schemaLib._x0037_855", "set_x0037_871", "schemaLib._x0037_871"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_871.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_872", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_872"), findSetterMethod("schemaLib._x0037_855", "set_x0037_872", "schemaLib._x0037_872B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_872B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_873", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_873"), findSetterMethod("schemaLib._x0037_855", "set_x0037_873", "schemaLib._x0037_873"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_873.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_874", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_874"), findSetterMethod("schemaLib._x0037_855", "set_x0037_874", "schemaLib._x0037_874"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_874.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_875", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_875"), findSetterMethod("schemaLib._x0037_855", "set_x0037_875", "schemaLib._x0037_875"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_875.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_876", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_876"), findSetterMethod("schemaLib._x0037_855", "set_x0037_876", "schemaLib._x0037_876"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_876.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_938", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_938"), findSetterMethod("schemaLib._x0037_855", "set_x0037_938", "schemaLib._x0037_938"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_938.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_944", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_944"), findSetterMethod("schemaLib._x0037_855", "set_x0037_944", "schemaLib._x0037_944"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_944.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_947", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_947"), findSetterMethod("schemaLib._x0037_855", "set_x0037_947", "schemaLib._x0037_947"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_947.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_950", "", findGetterMethod("schemaLib._x0037_855", "get_x0037_950"), findSetterMethod("schemaLib._x0037_855", "set_x0037_950", "schemaLib._x0037_950"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_950.class)
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


