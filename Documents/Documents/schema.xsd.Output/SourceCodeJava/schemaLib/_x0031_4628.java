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
// This class represents the ComplexType _x0031_4628
// </summary>
public class _x0031_4628 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_4628
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_4628() {
		setElementName("_x0031_4628");
		init();
	}
	public _x0031_4628(String elementName) {
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
			__x0031_4638 = null;
			__x0031_4644 = null;
			__x0031_4666 = null;
			__x0031_4669 = null;
			__x0031_4674 = null;
			__x0031_4677 = null;
			__x0031_4680 = null;
			__x0031_4683 = null;

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
			schemaLib._x0031_4628 newObject = (schemaLib._x0031_4628)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_4638 = null;
			if (__x0031_4638 != null)
				newObject.__x0031_4638 = (schemaLib._x0031_4638)__x0031_4638.clone();
			newObject.__x0031_4644 = null;
			if (__x0031_4644 != null)
				newObject.__x0031_4644 = (schemaLib._x0031_4644)__x0031_4644.clone();
			newObject.__x0031_4666 = null;
			if (__x0031_4666 != null)
				newObject.__x0031_4666 = (schemaLib._x0031_4666)__x0031_4666.clone();
			newObject.__x0031_4669 = null;
			if (__x0031_4669 != null)
				newObject.__x0031_4669 = (schemaLib._x0031_4669)__x0031_4669.clone();
			newObject.__x0031_4674 = null;
			if (__x0031_4674 != null)
				newObject.__x0031_4674 = (schemaLib._x0031_4674)__x0031_4674.clone();
			newObject.__x0031_4677 = null;
			if (__x0031_4677 != null)
				newObject.__x0031_4677 = (schemaLib._x0031_4677)__x0031_4677.clone();
			newObject.__x0031_4680 = null;
			if (__x0031_4680 != null)
				newObject.__x0031_4680 = (schemaLib._x0031_4680)__x0031_4680.clone();
			newObject.__x0031_4683 = null;
			if (__x0031_4683 != null)
				newObject.__x0031_4683 = (schemaLib._x0031_4683)__x0031_4683.clone();
	
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
	public schemaLib._x0031_4638 get_x0031_4638() {
		return __x0031_4638;  
	}
	public void set_x0031_4638(schemaLib._x0031_4638 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_4638 = null;
		else {
			setElementName(value.getBase(), "_x0031_4638");
			__x0031_4638 = value; 
		}
	}
	protected schemaLib._x0031_4638 __x0031_4638;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_4644 get_x0031_4644() {
		return __x0031_4644;  
	}
	public void set_x0031_4644(schemaLib._x0031_4644 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_4644 = null;
		else {
			setElementName(value.getBase(), "_x0031_4644");
			__x0031_4644 = value; 
		}
	}
	protected schemaLib._x0031_4644 __x0031_4644;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_4666 get_x0031_4666() {
		return __x0031_4666;  
	}
	public void set_x0031_4666(schemaLib._x0031_4666 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_4666 = null;
		else {
			setElementName(value.getBase(), "_x0031_4666");
			__x0031_4666 = value; 
		}
	}
	protected schemaLib._x0031_4666 __x0031_4666;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_4669 get_x0031_4669() {
		return __x0031_4669;  
	}
	public void set_x0031_4669(schemaLib._x0031_4669 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_4669 = null;
		else {
			setElementName(value.getBase(), "_x0031_4669");
			__x0031_4669 = value; 
		}
	}
	protected schemaLib._x0031_4669 __x0031_4669;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_4674 get_x0031_4674() {
		return __x0031_4674;  
	}
	public void set_x0031_4674(schemaLib._x0031_4674 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_4674 = null;
		else {
			setElementName(value.getBase(), "_x0031_4674");
			__x0031_4674 = value; 
		}
	}
	protected schemaLib._x0031_4674 __x0031_4674;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_4677 get_x0031_4677() {
		return __x0031_4677;  
	}
	public void set_x0031_4677(schemaLib._x0031_4677 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_4677 = null;
		else {
			setElementName(value.getBase(), "_x0031_4677");
			__x0031_4677 = value; 
		}
	}
	protected schemaLib._x0031_4677 __x0031_4677;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_4680 get_x0031_4680() {
		return __x0031_4680;  
	}
	public void set_x0031_4680(schemaLib._x0031_4680 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_4680 = null;
		else {
			setElementName(value.getBase(), "_x0031_4680");
			__x0031_4680 = value; 
		}
	}
	protected schemaLib._x0031_4680 __x0031_4680;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_4683 get_x0031_4683() {
		return __x0031_4683;  
	}
	public void set_x0031_4683(schemaLib._x0031_4683 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_4683 = null;
		else {
			setElementName(value.getBase(), "_x0031_4683");
			__x0031_4683 = value; 
		}
	}
	protected schemaLib._x0031_4683 __x0031_4683;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_4628", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_4638", "", findGetterMethod("schemaLib._x0031_4628", "get_x0031_4638"), findSetterMethod("schemaLib._x0031_4628", "set_x0031_4638", "schemaLib._x0031_4638"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_4638.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_4644", "", findGetterMethod("schemaLib._x0031_4628", "get_x0031_4644"), findSetterMethod("schemaLib._x0031_4628", "set_x0031_4644", "schemaLib._x0031_4644"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_4644.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_4666", "", findGetterMethod("schemaLib._x0031_4628", "get_x0031_4666"), findSetterMethod("schemaLib._x0031_4628", "set_x0031_4666", "schemaLib._x0031_4666"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_4666.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_4669", "", findGetterMethod("schemaLib._x0031_4628", "get_x0031_4669"), findSetterMethod("schemaLib._x0031_4628", "set_x0031_4669", "schemaLib._x0031_4669"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_4669.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_4674", "", findGetterMethod("schemaLib._x0031_4628", "get_x0031_4674"), findSetterMethod("schemaLib._x0031_4628", "set_x0031_4674", "schemaLib._x0031_4674"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_4674.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_4677", "", findGetterMethod("schemaLib._x0031_4628", "get_x0031_4677"), findSetterMethod("schemaLib._x0031_4628", "set_x0031_4677", "schemaLib._x0031_4677"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_4677.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_4680", "", findGetterMethod("schemaLib._x0031_4628", "get_x0031_4680"), findSetterMethod("schemaLib._x0031_4628", "set_x0031_4680", "schemaLib._x0031_4680"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_4680.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_4683", "", findGetterMethod("schemaLib._x0031_4628", "get_x0031_4683"), findSetterMethod("schemaLib._x0031_4628", "set_x0031_4683", "schemaLib._x0031_4683"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_4683.class)
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


