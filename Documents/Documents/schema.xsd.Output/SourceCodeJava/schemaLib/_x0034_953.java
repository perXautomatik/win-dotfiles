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
// This class represents the ComplexType _x0034_953
// </summary>
public class _x0034_953 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_953
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_953() {
		setElementName("_x0034_953");
		init();
	}
	public _x0034_953(String elementName) {
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
			__x0034_944 = null;
			__x0034_948 = null;
			__x0034_958 = null;
			__x0034_962 = null;
			__x0034_965 = null;
			__x0034_968 = null;
			__x0034_971 = null;
			__x0034_974 = null;
			__x0034_977 = null;
			__x0034_980 = null;
			__x0034_983 = null;
			__x0034_986 = null;
			__x0034_989 = null;
			__x0034_992 = null;
			__x0034_995 = null;
			__x0034_998 = null;
			__x0035_008 = null;
			__x0035_012 = null;
			__x0035_013 = null;

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
			schemaLib._x0034_953 newObject = (schemaLib._x0034_953)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_944 = null;
			if (__x0034_944 != null)
				newObject.__x0034_944 = (schemaLib._x0034_944)__x0034_944.clone();
			newObject.__x0034_948 = null;
			if (__x0034_948 != null)
				newObject.__x0034_948 = (schemaLib._x0034_948)__x0034_948.clone();
			newObject.__x0034_958 = null;
			if (__x0034_958 != null)
				newObject.__x0034_958 = (schemaLib._x0034_958)__x0034_958.clone();
			newObject.__x0034_962 = null;
			if (__x0034_962 != null)
				newObject.__x0034_962 = (schemaLib._x0034_962)__x0034_962.clone();
			newObject.__x0034_965 = null;
			if (__x0034_965 != null)
				newObject.__x0034_965 = (schemaLib._x0034_965)__x0034_965.clone();
			newObject.__x0034_968 = null;
			if (__x0034_968 != null)
				newObject.__x0034_968 = (schemaLib._x0034_968)__x0034_968.clone();
			newObject.__x0034_971 = null;
			if (__x0034_971 != null)
				newObject.__x0034_971 = (schemaLib._x0034_971)__x0034_971.clone();
			newObject.__x0034_974 = null;
			if (__x0034_974 != null)
				newObject.__x0034_974 = (schemaLib._x0034_974)__x0034_974.clone();
			newObject.__x0034_977 = null;
			if (__x0034_977 != null)
				newObject.__x0034_977 = (schemaLib._x0034_977)__x0034_977.clone();
			newObject.__x0034_980 = null;
			if (__x0034_980 != null)
				newObject.__x0034_980 = (schemaLib._x0034_980)__x0034_980.clone();
			newObject.__x0034_983 = null;
			if (__x0034_983 != null)
				newObject.__x0034_983 = (schemaLib._x0034_983)__x0034_983.clone();
			newObject.__x0034_986 = null;
			if (__x0034_986 != null)
				newObject.__x0034_986 = (schemaLib._x0034_986)__x0034_986.clone();
			newObject.__x0034_989 = null;
			if (__x0034_989 != null)
				newObject.__x0034_989 = (schemaLib._x0034_989)__x0034_989.clone();
			newObject.__x0034_992 = null;
			if (__x0034_992 != null)
				newObject.__x0034_992 = (schemaLib._x0034_992)__x0034_992.clone();
			newObject.__x0034_995 = null;
			if (__x0034_995 != null)
				newObject.__x0034_995 = (schemaLib._x0034_995)__x0034_995.clone();
			newObject.__x0034_998 = null;
			if (__x0034_998 != null)
				newObject.__x0034_998 = (schemaLib._x0034_998)__x0034_998.clone();
			newObject.__x0035_008 = null;
			if (__x0035_008 != null)
				newObject.__x0035_008 = (schemaLib._x0035_008A)__x0035_008.clone();
			newObject.__x0035_012 = null;
			if (__x0035_012 != null)
				newObject.__x0035_012 = (schemaLib._x0035_012A)__x0035_012.clone();
			newObject.__x0035_013 = null;
			if (__x0035_013 != null)
				newObject.__x0035_013 = (schemaLib._x0035_013A)__x0035_013.clone();
	
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
	public schemaLib._x0034_944 get_x0034_944() {
		return __x0034_944;  
	}
	public void set_x0034_944(schemaLib._x0034_944 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_944 = null;
		else {
			setElementName(value.getBase(), "_x0034_944");
			__x0034_944 = value; 
		}
	}
	protected schemaLib._x0034_944 __x0034_944;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_948 get_x0034_948() {
		return __x0034_948;  
	}
	public void set_x0034_948(schemaLib._x0034_948 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_948 = null;
		else {
			setElementName(value.getBase(), "_x0034_948");
			__x0034_948 = value; 
		}
	}
	protected schemaLib._x0034_948 __x0034_948;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_958 get_x0034_958() {
		return __x0034_958;  
	}
	public void set_x0034_958(schemaLib._x0034_958 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_958 = null;
		else {
			setElementName(value.getBase(), "_x0034_958");
			__x0034_958 = value; 
		}
	}
	protected schemaLib._x0034_958 __x0034_958;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_962 get_x0034_962() {
		return __x0034_962;  
	}
	public void set_x0034_962(schemaLib._x0034_962 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_962 = null;
		else {
			setElementName(value.getBase(), "_x0034_962");
			__x0034_962 = value; 
		}
	}
	protected schemaLib._x0034_962 __x0034_962;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_965 get_x0034_965() {
		return __x0034_965;  
	}
	public void set_x0034_965(schemaLib._x0034_965 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_965 = null;
		else {
			setElementName(value.getBase(), "_x0034_965");
			__x0034_965 = value; 
		}
	}
	protected schemaLib._x0034_965 __x0034_965;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_968 get_x0034_968() {
		return __x0034_968;  
	}
	public void set_x0034_968(schemaLib._x0034_968 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_968 = null;
		else {
			setElementName(value.getBase(), "_x0034_968");
			__x0034_968 = value; 
		}
	}
	protected schemaLib._x0034_968 __x0034_968;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_971 get_x0034_971() {
		return __x0034_971;  
	}
	public void set_x0034_971(schemaLib._x0034_971 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_971 = null;
		else {
			setElementName(value.getBase(), "_x0034_971");
			__x0034_971 = value; 
		}
	}
	protected schemaLib._x0034_971 __x0034_971;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_974 get_x0034_974() {
		return __x0034_974;  
	}
	public void set_x0034_974(schemaLib._x0034_974 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_974 = null;
		else {
			setElementName(value.getBase(), "_x0034_974");
			__x0034_974 = value; 
		}
	}
	protected schemaLib._x0034_974 __x0034_974;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_977 get_x0034_977() {
		return __x0034_977;  
	}
	public void set_x0034_977(schemaLib._x0034_977 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_977 = null;
		else {
			setElementName(value.getBase(), "_x0034_977");
			__x0034_977 = value; 
		}
	}
	protected schemaLib._x0034_977 __x0034_977;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_980 get_x0034_980() {
		return __x0034_980;  
	}
	public void set_x0034_980(schemaLib._x0034_980 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_980 = null;
		else {
			setElementName(value.getBase(), "_x0034_980");
			__x0034_980 = value; 
		}
	}
	protected schemaLib._x0034_980 __x0034_980;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_983 get_x0034_983() {
		return __x0034_983;  
	}
	public void set_x0034_983(schemaLib._x0034_983 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_983 = null;
		else {
			setElementName(value.getBase(), "_x0034_983");
			__x0034_983 = value; 
		}
	}
	protected schemaLib._x0034_983 __x0034_983;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_986 get_x0034_986() {
		return __x0034_986;  
	}
	public void set_x0034_986(schemaLib._x0034_986 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_986 = null;
		else {
			setElementName(value.getBase(), "_x0034_986");
			__x0034_986 = value; 
		}
	}
	protected schemaLib._x0034_986 __x0034_986;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_989 get_x0034_989() {
		return __x0034_989;  
	}
	public void set_x0034_989(schemaLib._x0034_989 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_989 = null;
		else {
			setElementName(value.getBase(), "_x0034_989");
			__x0034_989 = value; 
		}
	}
	protected schemaLib._x0034_989 __x0034_989;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_992 get_x0034_992() {
		return __x0034_992;  
	}
	public void set_x0034_992(schemaLib._x0034_992 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_992 = null;
		else {
			setElementName(value.getBase(), "_x0034_992");
			__x0034_992 = value; 
		}
	}
	protected schemaLib._x0034_992 __x0034_992;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_995 get_x0034_995() {
		return __x0034_995;  
	}
	public void set_x0034_995(schemaLib._x0034_995 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_995 = null;
		else {
			setElementName(value.getBase(), "_x0034_995");
			__x0034_995 = value; 
		}
	}
	protected schemaLib._x0034_995 __x0034_995;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_998 get_x0034_998() {
		return __x0034_998;  
	}
	public void set_x0034_998(schemaLib._x0034_998 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_998 = null;
		else {
			setElementName(value.getBase(), "_x0034_998");
			__x0034_998 = value; 
		}
	}
	protected schemaLib._x0034_998 __x0034_998;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_008A get_x0035_008() {
		return __x0035_008;  
	}
	public void set_x0035_008(schemaLib._x0035_008A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_008 = null;
		else {
			setElementName(value.getBase(), "_x0035_008");
			__x0035_008 = value; 
		}
	}
	protected schemaLib._x0035_008A __x0035_008;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_012A get_x0035_012() {
		return __x0035_012;  
	}
	public void set_x0035_012(schemaLib._x0035_012A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_012 = null;
		else {
			setElementName(value.getBase(), "_x0035_012");
			__x0035_012 = value; 
		}
	}
	protected schemaLib._x0035_012A __x0035_012;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0035_013A get_x0035_013() {
		return __x0035_013;  
	}
	public void set_x0035_013(schemaLib._x0035_013A value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0035_013 = null;
		else {
			setElementName(value.getBase(), "_x0035_013");
			__x0035_013 = value; 
		}
	}
	protected schemaLib._x0035_013A __x0035_013;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_953", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_944", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_944"), findSetterMethod("schemaLib._x0034_953", "set_x0034_944", "schemaLib._x0034_944"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_944.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_948", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_948"), findSetterMethod("schemaLib._x0034_953", "set_x0034_948", "schemaLib._x0034_948"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_948.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_958", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_958"), findSetterMethod("schemaLib._x0034_953", "set_x0034_958", "schemaLib._x0034_958"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_958.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_962", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_962"), findSetterMethod("schemaLib._x0034_953", "set_x0034_962", "schemaLib._x0034_962"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_962.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_965", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_965"), findSetterMethod("schemaLib._x0034_953", "set_x0034_965", "schemaLib._x0034_965"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_965.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_968", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_968"), findSetterMethod("schemaLib._x0034_953", "set_x0034_968", "schemaLib._x0034_968"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_968.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_971", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_971"), findSetterMethod("schemaLib._x0034_953", "set_x0034_971", "schemaLib._x0034_971"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_971.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_974", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_974"), findSetterMethod("schemaLib._x0034_953", "set_x0034_974", "schemaLib._x0034_974"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_974.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_977", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_977"), findSetterMethod("schemaLib._x0034_953", "set_x0034_977", "schemaLib._x0034_977"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_977.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_980", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_980"), findSetterMethod("schemaLib._x0034_953", "set_x0034_980", "schemaLib._x0034_980"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_980.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_983", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_983"), findSetterMethod("schemaLib._x0034_953", "set_x0034_983", "schemaLib._x0034_983"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_983.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_986", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_986"), findSetterMethod("schemaLib._x0034_953", "set_x0034_986", "schemaLib._x0034_986"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_986.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_989", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_989"), findSetterMethod("schemaLib._x0034_953", "set_x0034_989", "schemaLib._x0034_989"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_989.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_992", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_992"), findSetterMethod("schemaLib._x0034_953", "set_x0034_992", "schemaLib._x0034_992"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_992.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_995", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_995"), findSetterMethod("schemaLib._x0034_953", "set_x0034_995", "schemaLib._x0034_995"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_995.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_998", "", findGetterMethod("schemaLib._x0034_953", "get_x0034_998"), findSetterMethod("schemaLib._x0034_953", "set_x0034_998", "schemaLib._x0034_998"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_998.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_008", "", findGetterMethod("schemaLib._x0034_953", "get_x0035_008"), findSetterMethod("schemaLib._x0034_953", "set_x0035_008", "schemaLib._x0035_008A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_008A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_012", "", findGetterMethod("schemaLib._x0034_953", "get_x0035_012"), findSetterMethod("schemaLib._x0034_953", "set_x0035_012", "schemaLib._x0035_012A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_012A.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0035_013", "", findGetterMethod("schemaLib._x0034_953", "get_x0035_013"), findSetterMethod("schemaLib._x0034_953", "set_x0035_013", "schemaLib._x0035_013A"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0035_013A.class)
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


