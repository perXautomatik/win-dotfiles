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
// This class represents the ComplexType _x0033_570
// </summary>
public class _x0033_570 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0033_570
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0033_570() {
		setElementName("_x0033_570");
		init();
	}
	public _x0033_570(String elementName) {
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
			__x0033_573 = null;
			__x0033_575 = null;
			__x0033_576 = null;
			__x0033_582 = null;
			__x0033_585 = null;
			__x0033_588 = null;
			__x0033_591 = null;
			__x0033_594 = null;
			__x0033_597 = null;
			__x0033_600 = null;
			__x0033_603 = null;
			__x0033_606 = null;
			__x0033_609 = null;
			__x0033_612 = null;
			__x0033_615 = null;
			__x0033_618 = null;
			__x0033_621 = null;
			__x0033_624 = null;
			__x0033_627 = null;
			__x0033_630 = null;

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
			schemaLib._x0033_570 newObject = (schemaLib._x0033_570)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0033_573 = null;
			if (__x0033_573 != null)
				newObject.__x0033_573 = (schemaLib._x0033_573)__x0033_573.clone();
			newObject.__x0033_575 = null;
			if (__x0033_575 != null)
				newObject.__x0033_575 = (schemaLib._x0033_575)__x0033_575.clone();
			newObject.__x0033_576 = null;
			if (__x0033_576 != null)
				newObject.__x0033_576 = (schemaLib._x0033_576)__x0033_576.clone();
			newObject.__x0033_582 = null;
			if (__x0033_582 != null)
				newObject.__x0033_582 = (schemaLib._x0033_582)__x0033_582.clone();
			newObject.__x0033_585 = null;
			if (__x0033_585 != null)
				newObject.__x0033_585 = (schemaLib._x0033_585)__x0033_585.clone();
			newObject.__x0033_588 = null;
			if (__x0033_588 != null)
				newObject.__x0033_588 = (schemaLib._x0033_588)__x0033_588.clone();
			newObject.__x0033_591 = null;
			if (__x0033_591 != null)
				newObject.__x0033_591 = (schemaLib._x0033_591)__x0033_591.clone();
			newObject.__x0033_594 = null;
			if (__x0033_594 != null)
				newObject.__x0033_594 = (schemaLib._x0033_594)__x0033_594.clone();
			newObject.__x0033_597 = null;
			if (__x0033_597 != null)
				newObject.__x0033_597 = (schemaLib._x0033_597)__x0033_597.clone();
			newObject.__x0033_600 = null;
			if (__x0033_600 != null)
				newObject.__x0033_600 = (schemaLib._x0033_600)__x0033_600.clone();
			newObject.__x0033_603 = null;
			if (__x0033_603 != null)
				newObject.__x0033_603 = (schemaLib._x0033_603)__x0033_603.clone();
			newObject.__x0033_606 = null;
			if (__x0033_606 != null)
				newObject.__x0033_606 = (schemaLib._x0033_606)__x0033_606.clone();
			newObject.__x0033_609 = null;
			if (__x0033_609 != null)
				newObject.__x0033_609 = (schemaLib._x0033_609)__x0033_609.clone();
			newObject.__x0033_612 = null;
			if (__x0033_612 != null)
				newObject.__x0033_612 = (schemaLib._x0033_612)__x0033_612.clone();
			newObject.__x0033_615 = null;
			if (__x0033_615 != null)
				newObject.__x0033_615 = (schemaLib._x0033_615)__x0033_615.clone();
			newObject.__x0033_618 = null;
			if (__x0033_618 != null)
				newObject.__x0033_618 = (schemaLib._x0033_618)__x0033_618.clone();
			newObject.__x0033_621 = null;
			if (__x0033_621 != null)
				newObject.__x0033_621 = (schemaLib._x0033_621B)__x0033_621.clone();
			newObject.__x0033_624 = null;
			if (__x0033_624 != null)
				newObject.__x0033_624 = (schemaLib._x0033_624)__x0033_624.clone();
			newObject.__x0033_627 = null;
			if (__x0033_627 != null)
				newObject.__x0033_627 = (schemaLib._x0033_627)__x0033_627.clone();
			newObject.__x0033_630 = null;
			if (__x0033_630 != null)
				newObject.__x0033_630 = (schemaLib._x0033_630)__x0033_630.clone();
	
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
	public schemaLib._x0033_573 get_x0033_573() {
		return __x0033_573;  
	}
	public void set_x0033_573(schemaLib._x0033_573 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_573 = null;
		else {
			setElementName(value.getBase(), "_x0033_573");
			__x0033_573 = value; 
		}
	}
	protected schemaLib._x0033_573 __x0033_573;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_575 get_x0033_575() {
		return __x0033_575;  
	}
	public void set_x0033_575(schemaLib._x0033_575 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_575 = null;
		else {
			setElementName(value.getBase(), "_x0033_575");
			__x0033_575 = value; 
		}
	}
	protected schemaLib._x0033_575 __x0033_575;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_576 get_x0033_576() {
		return __x0033_576;  
	}
	public void set_x0033_576(schemaLib._x0033_576 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_576 = null;
		else {
			setElementName(value.getBase(), "_x0033_576");
			__x0033_576 = value; 
		}
	}
	protected schemaLib._x0033_576 __x0033_576;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_582 get_x0033_582() {
		return __x0033_582;  
	}
	public void set_x0033_582(schemaLib._x0033_582 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_582 = null;
		else {
			setElementName(value.getBase(), "_x0033_582");
			__x0033_582 = value; 
		}
	}
	protected schemaLib._x0033_582 __x0033_582;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_585 get_x0033_585() {
		return __x0033_585;  
	}
	public void set_x0033_585(schemaLib._x0033_585 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_585 = null;
		else {
			setElementName(value.getBase(), "_x0033_585");
			__x0033_585 = value; 
		}
	}
	protected schemaLib._x0033_585 __x0033_585;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_588 get_x0033_588() {
		return __x0033_588;  
	}
	public void set_x0033_588(schemaLib._x0033_588 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_588 = null;
		else {
			setElementName(value.getBase(), "_x0033_588");
			__x0033_588 = value; 
		}
	}
	protected schemaLib._x0033_588 __x0033_588;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_591 get_x0033_591() {
		return __x0033_591;  
	}
	public void set_x0033_591(schemaLib._x0033_591 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_591 = null;
		else {
			setElementName(value.getBase(), "_x0033_591");
			__x0033_591 = value; 
		}
	}
	protected schemaLib._x0033_591 __x0033_591;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_594 get_x0033_594() {
		return __x0033_594;  
	}
	public void set_x0033_594(schemaLib._x0033_594 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_594 = null;
		else {
			setElementName(value.getBase(), "_x0033_594");
			__x0033_594 = value; 
		}
	}
	protected schemaLib._x0033_594 __x0033_594;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_597 get_x0033_597() {
		return __x0033_597;  
	}
	public void set_x0033_597(schemaLib._x0033_597 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_597 = null;
		else {
			setElementName(value.getBase(), "_x0033_597");
			__x0033_597 = value; 
		}
	}
	protected schemaLib._x0033_597 __x0033_597;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_600 get_x0033_600() {
		return __x0033_600;  
	}
	public void set_x0033_600(schemaLib._x0033_600 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_600 = null;
		else {
			setElementName(value.getBase(), "_x0033_600");
			__x0033_600 = value; 
		}
	}
	protected schemaLib._x0033_600 __x0033_600;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_603 get_x0033_603() {
		return __x0033_603;  
	}
	public void set_x0033_603(schemaLib._x0033_603 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_603 = null;
		else {
			setElementName(value.getBase(), "_x0033_603");
			__x0033_603 = value; 
		}
	}
	protected schemaLib._x0033_603 __x0033_603;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_606 get_x0033_606() {
		return __x0033_606;  
	}
	public void set_x0033_606(schemaLib._x0033_606 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_606 = null;
		else {
			setElementName(value.getBase(), "_x0033_606");
			__x0033_606 = value; 
		}
	}
	protected schemaLib._x0033_606 __x0033_606;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_609 get_x0033_609() {
		return __x0033_609;  
	}
	public void set_x0033_609(schemaLib._x0033_609 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_609 = null;
		else {
			setElementName(value.getBase(), "_x0033_609");
			__x0033_609 = value; 
		}
	}
	protected schemaLib._x0033_609 __x0033_609;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_612 get_x0033_612() {
		return __x0033_612;  
	}
	public void set_x0033_612(schemaLib._x0033_612 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_612 = null;
		else {
			setElementName(value.getBase(), "_x0033_612");
			__x0033_612 = value; 
		}
	}
	protected schemaLib._x0033_612 __x0033_612;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_615 get_x0033_615() {
		return __x0033_615;  
	}
	public void set_x0033_615(schemaLib._x0033_615 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_615 = null;
		else {
			setElementName(value.getBase(), "_x0033_615");
			__x0033_615 = value; 
		}
	}
	protected schemaLib._x0033_615 __x0033_615;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_618 get_x0033_618() {
		return __x0033_618;  
	}
	public void set_x0033_618(schemaLib._x0033_618 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_618 = null;
		else {
			setElementName(value.getBase(), "_x0033_618");
			__x0033_618 = value; 
		}
	}
	protected schemaLib._x0033_618 __x0033_618;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_621B get_x0033_621() {
		return __x0033_621;  
	}
	public void set_x0033_621(schemaLib._x0033_621B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_621 = null;
		else {
			setElementName(value.getBase(), "_x0033_621");
			__x0033_621 = value; 
		}
	}
	protected schemaLib._x0033_621B __x0033_621;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_624 get_x0033_624() {
		return __x0033_624;  
	}
	public void set_x0033_624(schemaLib._x0033_624 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_624 = null;
		else {
			setElementName(value.getBase(), "_x0033_624");
			__x0033_624 = value; 
		}
	}
	protected schemaLib._x0033_624 __x0033_624;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_627 get_x0033_627() {
		return __x0033_627;  
	}
	public void set_x0033_627(schemaLib._x0033_627 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_627 = null;
		else {
			setElementName(value.getBase(), "_x0033_627");
			__x0033_627 = value; 
		}
	}
	protected schemaLib._x0033_627 __x0033_627;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0033_630 get_x0033_630() {
		return __x0033_630;  
	}
	public void set_x0033_630(schemaLib._x0033_630 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0033_630 = null;
		else {
			setElementName(value.getBase(), "_x0033_630");
			__x0033_630 = value; 
		}
	}
	protected schemaLib._x0033_630 __x0033_630;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0033_570", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_573", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_573"), findSetterMethod("schemaLib._x0033_570", "set_x0033_573", "schemaLib._x0033_573"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_573.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_575", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_575"), findSetterMethod("schemaLib._x0033_570", "set_x0033_575", "schemaLib._x0033_575"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_575.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_576", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_576"), findSetterMethod("schemaLib._x0033_570", "set_x0033_576", "schemaLib._x0033_576"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_576.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_582", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_582"), findSetterMethod("schemaLib._x0033_570", "set_x0033_582", "schemaLib._x0033_582"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_582.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_585", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_585"), findSetterMethod("schemaLib._x0033_570", "set_x0033_585", "schemaLib._x0033_585"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_585.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_588", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_588"), findSetterMethod("schemaLib._x0033_570", "set_x0033_588", "schemaLib._x0033_588"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_588.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_591", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_591"), findSetterMethod("schemaLib._x0033_570", "set_x0033_591", "schemaLib._x0033_591"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_591.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_594", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_594"), findSetterMethod("schemaLib._x0033_570", "set_x0033_594", "schemaLib._x0033_594"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_594.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_597", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_597"), findSetterMethod("schemaLib._x0033_570", "set_x0033_597", "schemaLib._x0033_597"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_597.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_600", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_600"), findSetterMethod("schemaLib._x0033_570", "set_x0033_600", "schemaLib._x0033_600"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_600.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_603", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_603"), findSetterMethod("schemaLib._x0033_570", "set_x0033_603", "schemaLib._x0033_603"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_603.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_606", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_606"), findSetterMethod("schemaLib._x0033_570", "set_x0033_606", "schemaLib._x0033_606"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_606.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_609", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_609"), findSetterMethod("schemaLib._x0033_570", "set_x0033_609", "schemaLib._x0033_609"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_609.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_612", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_612"), findSetterMethod("schemaLib._x0033_570", "set_x0033_612", "schemaLib._x0033_612"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_612.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_615", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_615"), findSetterMethod("schemaLib._x0033_570", "set_x0033_615", "schemaLib._x0033_615"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_615.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_618", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_618"), findSetterMethod("schemaLib._x0033_570", "set_x0033_618", "schemaLib._x0033_618"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_618.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_621", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_621"), findSetterMethod("schemaLib._x0033_570", "set_x0033_621", "schemaLib._x0033_621B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_621B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_624", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_624"), findSetterMethod("schemaLib._x0033_570", "set_x0033_624", "schemaLib._x0033_624"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_624.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_627", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_627"), findSetterMethod("schemaLib._x0033_570", "set_x0033_627", "schemaLib._x0033_627"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_627.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0033_630", "", findGetterMethod("schemaLib._x0033_570", "get_x0033_630"), findSetterMethod("schemaLib._x0033_570", "set_x0033_630", "schemaLib._x0033_630"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0033_630.class)
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


