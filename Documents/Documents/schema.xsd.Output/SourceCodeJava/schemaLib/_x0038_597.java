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
// This class represents the ComplexType _x0038_597
// </summary>
public class _x0038_597 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0038_597
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0038_597() {
		setElementName("_x0038_597");
		init();
	}
	public _x0038_597(String elementName) {
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
			__x0038_606 = null;
			__x0038_615 = null;
			__x0038_624 = null;
			__x0038_641 = null;
			__x0038_648 = null;
			__x0038_659 = null;
			__x0038_666 = null;
			__x0038_675 = null;
			__x0038_684 = null;
			__x0038_689 = null;
			__x0038_693 = null;

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
			schemaLib._x0038_597 newObject = (schemaLib._x0038_597)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0038_606 = null;
			if (__x0038_606 != null)
				newObject.__x0038_606 = (schemaLib._x0038_606)__x0038_606.clone();
			newObject.__x0038_615 = null;
			if (__x0038_615 != null)
				newObject.__x0038_615 = (schemaLib._x0038_615)__x0038_615.clone();
			newObject.__x0038_624 = null;
			if (__x0038_624 != null)
				newObject.__x0038_624 = (schemaLib._x0038_624)__x0038_624.clone();
			newObject.__x0038_641 = null;
			if (__x0038_641 != null)
				newObject.__x0038_641 = (schemaLib._x0038_641)__x0038_641.clone();
			newObject.__x0038_648 = null;
			if (__x0038_648 != null)
				newObject.__x0038_648 = (schemaLib._x0038_648)__x0038_648.clone();
			newObject.__x0038_659 = null;
			if (__x0038_659 != null)
				newObject.__x0038_659 = (schemaLib._x0038_659)__x0038_659.clone();
			newObject.__x0038_666 = null;
			if (__x0038_666 != null)
				newObject.__x0038_666 = (schemaLib._x0038_666)__x0038_666.clone();
			newObject.__x0038_675 = null;
			if (__x0038_675 != null)
				newObject.__x0038_675 = (schemaLib._x0038_675)__x0038_675.clone();
			newObject.__x0038_684 = null;
			if (__x0038_684 != null)
				newObject.__x0038_684 = (schemaLib._x0038_684)__x0038_684.clone();
			newObject.__x0038_689 = null;
			if (__x0038_689 != null)
				newObject.__x0038_689 = (schemaLib._x0038_689)__x0038_689.clone();
			newObject.__x0038_693 = null;
			if (__x0038_693 != null)
				newObject.__x0038_693 = (schemaLib._x0038_693)__x0038_693.clone();
	
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
	public schemaLib._x0038_606 get_x0038_606() {
		return __x0038_606;  
	}
	public void set_x0038_606(schemaLib._x0038_606 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_606 = null;
		else {
			setElementName(value.getBase(), "_x0038_606");
			__x0038_606 = value; 
		}
	}
	protected schemaLib._x0038_606 __x0038_606;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_615 get_x0038_615() {
		return __x0038_615;  
	}
	public void set_x0038_615(schemaLib._x0038_615 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_615 = null;
		else {
			setElementName(value.getBase(), "_x0038_615");
			__x0038_615 = value; 
		}
	}
	protected schemaLib._x0038_615 __x0038_615;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_624 get_x0038_624() {
		return __x0038_624;  
	}
	public void set_x0038_624(schemaLib._x0038_624 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_624 = null;
		else {
			setElementName(value.getBase(), "_x0038_624");
			__x0038_624 = value; 
		}
	}
	protected schemaLib._x0038_624 __x0038_624;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_641 get_x0038_641() {
		return __x0038_641;  
	}
	public void set_x0038_641(schemaLib._x0038_641 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_641 = null;
		else {
			setElementName(value.getBase(), "_x0038_641");
			__x0038_641 = value; 
		}
	}
	protected schemaLib._x0038_641 __x0038_641;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_648 get_x0038_648() {
		return __x0038_648;  
	}
	public void set_x0038_648(schemaLib._x0038_648 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_648 = null;
		else {
			setElementName(value.getBase(), "_x0038_648");
			__x0038_648 = value; 
		}
	}
	protected schemaLib._x0038_648 __x0038_648;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_659 get_x0038_659() {
		return __x0038_659;  
	}
	public void set_x0038_659(schemaLib._x0038_659 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_659 = null;
		else {
			setElementName(value.getBase(), "_x0038_659");
			__x0038_659 = value; 
		}
	}
	protected schemaLib._x0038_659 __x0038_659;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_666 get_x0038_666() {
		return __x0038_666;  
	}
	public void set_x0038_666(schemaLib._x0038_666 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_666 = null;
		else {
			setElementName(value.getBase(), "_x0038_666");
			__x0038_666 = value; 
		}
	}
	protected schemaLib._x0038_666 __x0038_666;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_675 get_x0038_675() {
		return __x0038_675;  
	}
	public void set_x0038_675(schemaLib._x0038_675 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_675 = null;
		else {
			setElementName(value.getBase(), "_x0038_675");
			__x0038_675 = value; 
		}
	}
	protected schemaLib._x0038_675 __x0038_675;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_684 get_x0038_684() {
		return __x0038_684;  
	}
	public void set_x0038_684(schemaLib._x0038_684 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_684 = null;
		else {
			setElementName(value.getBase(), "_x0038_684");
			__x0038_684 = value; 
		}
	}
	protected schemaLib._x0038_684 __x0038_684;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_689 get_x0038_689() {
		return __x0038_689;  
	}
	public void set_x0038_689(schemaLib._x0038_689 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_689 = null;
		else {
			setElementName(value.getBase(), "_x0038_689");
			__x0038_689 = value; 
		}
	}
	protected schemaLib._x0038_689 __x0038_689;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_693 get_x0038_693() {
		return __x0038_693;  
	}
	public void set_x0038_693(schemaLib._x0038_693 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_693 = null;
		else {
			setElementName(value.getBase(), "_x0038_693");
			__x0038_693 = value; 
		}
	}
	protected schemaLib._x0038_693 __x0038_693;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0038_597", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_606", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_606"), findSetterMethod("schemaLib._x0038_597", "set_x0038_606", "schemaLib._x0038_606"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_606.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_615", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_615"), findSetterMethod("schemaLib._x0038_597", "set_x0038_615", "schemaLib._x0038_615"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_615.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_624", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_624"), findSetterMethod("schemaLib._x0038_597", "set_x0038_624", "schemaLib._x0038_624"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_624.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_641", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_641"), findSetterMethod("schemaLib._x0038_597", "set_x0038_641", "schemaLib._x0038_641"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_641.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_648", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_648"), findSetterMethod("schemaLib._x0038_597", "set_x0038_648", "schemaLib._x0038_648"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_648.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_659", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_659"), findSetterMethod("schemaLib._x0038_597", "set_x0038_659", "schemaLib._x0038_659"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_659.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_666", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_666"), findSetterMethod("schemaLib._x0038_597", "set_x0038_666", "schemaLib._x0038_666"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_666.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_675", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_675"), findSetterMethod("schemaLib._x0038_597", "set_x0038_675", "schemaLib._x0038_675"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_675.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_684", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_684"), findSetterMethod("schemaLib._x0038_597", "set_x0038_684", "schemaLib._x0038_684"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_684.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_689", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_689"), findSetterMethod("schemaLib._x0038_597", "set_x0038_689", "schemaLib._x0038_689"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_689.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_693", "", findGetterMethod("schemaLib._x0038_597", "get_x0038_693"), findSetterMethod("schemaLib._x0038_597", "set_x0038_693", "schemaLib._x0038_693"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_693.class)
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


