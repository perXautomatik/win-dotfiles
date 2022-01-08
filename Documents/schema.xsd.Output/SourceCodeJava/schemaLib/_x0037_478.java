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
// This class represents the ComplexType _x0037_478
// </summary>
public class _x0037_478 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0037_478
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0037_478() {
		setElementName("_x0037_478");
		init();
	}
	public _x0037_478(String elementName) {
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
			__x0037_687 = null;
			__x0037_690 = null;
			__x0037_693 = null;
			__x0037_696 = null;
			__x0037_710 = null;
			__x0037_753 = null;
			__x0037_756 = null;
			__x0037_763 = null;
			__x0037_776 = null;
			__x0037_782 = null;
			__x0038_119 = null;

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
			schemaLib._x0037_478 newObject = (schemaLib._x0037_478)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0037_687 = null;
			if (__x0037_687 != null)
				newObject.__x0037_687 = (schemaLib._x0037_687)__x0037_687.clone();
			newObject.__x0037_690 = null;
			if (__x0037_690 != null)
				newObject.__x0037_690 = (schemaLib._x0037_690)__x0037_690.clone();
			newObject.__x0037_693 = null;
			if (__x0037_693 != null)
				newObject.__x0037_693 = (schemaLib._x0037_693)__x0037_693.clone();
			newObject.__x0037_696 = null;
			if (__x0037_696 != null)
				newObject.__x0037_696 = (schemaLib._x0037_696)__x0037_696.clone();
			newObject.__x0037_710 = null;
			if (__x0037_710 != null)
				newObject.__x0037_710 = (schemaLib._x0037_710)__x0037_710.clone();
			newObject.__x0037_753 = null;
			if (__x0037_753 != null)
				newObject.__x0037_753 = (schemaLib._x0037_753)__x0037_753.clone();
			newObject.__x0037_756 = null;
			if (__x0037_756 != null)
				newObject.__x0037_756 = (schemaLib._x0037_756)__x0037_756.clone();
			newObject.__x0037_763 = null;
			if (__x0037_763 != null)
				newObject.__x0037_763 = (schemaLib._x0037_763)__x0037_763.clone();
			newObject.__x0037_776 = null;
			if (__x0037_776 != null)
				newObject.__x0037_776 = (schemaLib._x0037_776)__x0037_776.clone();
			newObject.__x0037_782 = null;
			if (__x0037_782 != null)
				newObject.__x0037_782 = (schemaLib._x0037_782)__x0037_782.clone();
			newObject.__x0038_119 = null;
			if (__x0038_119 != null)
				newObject.__x0038_119 = (schemaLib._x0038_119)__x0038_119.clone();
	
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
	public schemaLib._x0037_687 get_x0037_687() {
		return __x0037_687;  
	}
	public void set_x0037_687(schemaLib._x0037_687 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_687 = null;
		else {
			setElementName(value.getBase(), "_x0037_687");
			__x0037_687 = value; 
		}
	}
	protected schemaLib._x0037_687 __x0037_687;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_690 get_x0037_690() {
		return __x0037_690;  
	}
	public void set_x0037_690(schemaLib._x0037_690 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_690 = null;
		else {
			setElementName(value.getBase(), "_x0037_690");
			__x0037_690 = value; 
		}
	}
	protected schemaLib._x0037_690 __x0037_690;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_693 get_x0037_693() {
		return __x0037_693;  
	}
	public void set_x0037_693(schemaLib._x0037_693 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_693 = null;
		else {
			setElementName(value.getBase(), "_x0037_693");
			__x0037_693 = value; 
		}
	}
	protected schemaLib._x0037_693 __x0037_693;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_696 get_x0037_696() {
		return __x0037_696;  
	}
	public void set_x0037_696(schemaLib._x0037_696 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_696 = null;
		else {
			setElementName(value.getBase(), "_x0037_696");
			__x0037_696 = value; 
		}
	}
	protected schemaLib._x0037_696 __x0037_696;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_710 get_x0037_710() {
		return __x0037_710;  
	}
	public void set_x0037_710(schemaLib._x0037_710 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_710 = null;
		else {
			setElementName(value.getBase(), "_x0037_710");
			__x0037_710 = value; 
		}
	}
	protected schemaLib._x0037_710 __x0037_710;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_753 get_x0037_753() {
		return __x0037_753;  
	}
	public void set_x0037_753(schemaLib._x0037_753 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_753 = null;
		else {
			setElementName(value.getBase(), "_x0037_753");
			__x0037_753 = value; 
		}
	}
	protected schemaLib._x0037_753 __x0037_753;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_756 get_x0037_756() {
		return __x0037_756;  
	}
	public void set_x0037_756(schemaLib._x0037_756 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_756 = null;
		else {
			setElementName(value.getBase(), "_x0037_756");
			__x0037_756 = value; 
		}
	}
	protected schemaLib._x0037_756 __x0037_756;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_763 get_x0037_763() {
		return __x0037_763;  
	}
	public void set_x0037_763(schemaLib._x0037_763 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_763 = null;
		else {
			setElementName(value.getBase(), "_x0037_763");
			__x0037_763 = value; 
		}
	}
	protected schemaLib._x0037_763 __x0037_763;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_776 get_x0037_776() {
		return __x0037_776;  
	}
	public void set_x0037_776(schemaLib._x0037_776 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_776 = null;
		else {
			setElementName(value.getBase(), "_x0037_776");
			__x0037_776 = value; 
		}
	}
	protected schemaLib._x0037_776 __x0037_776;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0037_782 get_x0037_782() {
		return __x0037_782;  
	}
	public void set_x0037_782(schemaLib._x0037_782 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0037_782 = null;
		else {
			setElementName(value.getBase(), "_x0037_782");
			__x0037_782 = value; 
		}
	}
	protected schemaLib._x0037_782 __x0037_782;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0038_119 get_x0038_119() {
		return __x0038_119;  
	}
	public void set_x0038_119(schemaLib._x0038_119 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0038_119 = null;
		else {
			setElementName(value.getBase(), "_x0038_119");
			__x0038_119 = value; 
		}
	}
	protected schemaLib._x0038_119 __x0038_119;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0037_478", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_687", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_687"), findSetterMethod("schemaLib._x0037_478", "set_x0037_687", "schemaLib._x0037_687"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_687.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_690", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_690"), findSetterMethod("schemaLib._x0037_478", "set_x0037_690", "schemaLib._x0037_690"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_690.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_693", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_693"), findSetterMethod("schemaLib._x0037_478", "set_x0037_693", "schemaLib._x0037_693"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_693.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_696", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_696"), findSetterMethod("schemaLib._x0037_478", "set_x0037_696", "schemaLib._x0037_696"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_696.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_710", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_710"), findSetterMethod("schemaLib._x0037_478", "set_x0037_710", "schemaLib._x0037_710"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_710.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_753", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_753"), findSetterMethod("schemaLib._x0037_478", "set_x0037_753", "schemaLib._x0037_753"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_753.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_756", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_756"), findSetterMethod("schemaLib._x0037_478", "set_x0037_756", "schemaLib._x0037_756"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_756.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_763", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_763"), findSetterMethod("schemaLib._x0037_478", "set_x0037_763", "schemaLib._x0037_763"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_763.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_776", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_776"), findSetterMethod("schemaLib._x0037_478", "set_x0037_776", "schemaLib._x0037_776"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_776.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0037_782", "", findGetterMethod("schemaLib._x0037_478", "get_x0037_782"), findSetterMethod("schemaLib._x0037_478", "set_x0037_782", "schemaLib._x0037_782"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0037_782.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0038_119", "", findGetterMethod("schemaLib._x0037_478", "get_x0038_119"), findSetterMethod("schemaLib._x0037_478", "set_x0038_119", "schemaLib._x0038_119"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0038_119.class)
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


