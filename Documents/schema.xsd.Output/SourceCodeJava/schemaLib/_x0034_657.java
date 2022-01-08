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
// This class represents the ComplexType _x0034_657
// </summary>
public class _x0034_657 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0034_657
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0034_657() {
		setElementName("_x0034_657");
		init();
	}
	public _x0034_657(String elementName) {
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
			__x0034_666 = null;
			__x0034_667 = null;
			__x0034_672 = null;
			__x0034_675 = null;
			__x0034_681 = null;
			__x0034_684 = null;
			__x0034_687 = null;
			__x0034_690 = null;

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
			schemaLib._x0034_657 newObject = (schemaLib._x0034_657)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0034_666 = null;
			if (__x0034_666 != null)
				newObject.__x0034_666 = (schemaLib._x0034_666)__x0034_666.clone();
			newObject.__x0034_667 = null;
			if (__x0034_667 != null)
				newObject.__x0034_667 = (schemaLib._x0034_667)__x0034_667.clone();
			newObject.__x0034_672 = null;
			if (__x0034_672 != null)
				newObject.__x0034_672 = (schemaLib._x0034_672)__x0034_672.clone();
			newObject.__x0034_675 = null;
			if (__x0034_675 != null)
				newObject.__x0034_675 = (schemaLib._x0034_675)__x0034_675.clone();
			newObject.__x0034_681 = null;
			if (__x0034_681 != null)
				newObject.__x0034_681 = (schemaLib._x0034_681)__x0034_681.clone();
			newObject.__x0034_684 = null;
			if (__x0034_684 != null)
				newObject.__x0034_684 = (schemaLib._x0034_684)__x0034_684.clone();
			newObject.__x0034_687 = null;
			if (__x0034_687 != null)
				newObject.__x0034_687 = (schemaLib._x0034_687)__x0034_687.clone();
			newObject.__x0034_690 = null;
			if (__x0034_690 != null)
				newObject.__x0034_690 = (schemaLib._x0034_690)__x0034_690.clone();
	
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
	public schemaLib._x0034_666 get_x0034_666() {
		return __x0034_666;  
	}
	public void set_x0034_666(schemaLib._x0034_666 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_666 = null;
		else {
			setElementName(value.getBase(), "_x0034_666");
			__x0034_666 = value; 
		}
	}
	protected schemaLib._x0034_666 __x0034_666;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_667 get_x0034_667() {
		return __x0034_667;  
	}
	public void set_x0034_667(schemaLib._x0034_667 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_667 = null;
		else {
			setElementName(value.getBase(), "_x0034_667");
			__x0034_667 = value; 
		}
	}
	protected schemaLib._x0034_667 __x0034_667;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_672 get_x0034_672() {
		return __x0034_672;  
	}
	public void set_x0034_672(schemaLib._x0034_672 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_672 = null;
		else {
			setElementName(value.getBase(), "_x0034_672");
			__x0034_672 = value; 
		}
	}
	protected schemaLib._x0034_672 __x0034_672;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_675 get_x0034_675() {
		return __x0034_675;  
	}
	public void set_x0034_675(schemaLib._x0034_675 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_675 = null;
		else {
			setElementName(value.getBase(), "_x0034_675");
			__x0034_675 = value; 
		}
	}
	protected schemaLib._x0034_675 __x0034_675;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_681 get_x0034_681() {
		return __x0034_681;  
	}
	public void set_x0034_681(schemaLib._x0034_681 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_681 = null;
		else {
			setElementName(value.getBase(), "_x0034_681");
			__x0034_681 = value; 
		}
	}
	protected schemaLib._x0034_681 __x0034_681;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_684 get_x0034_684() {
		return __x0034_684;  
	}
	public void set_x0034_684(schemaLib._x0034_684 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_684 = null;
		else {
			setElementName(value.getBase(), "_x0034_684");
			__x0034_684 = value; 
		}
	}
	protected schemaLib._x0034_684 __x0034_684;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_687 get_x0034_687() {
		return __x0034_687;  
	}
	public void set_x0034_687(schemaLib._x0034_687 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_687 = null;
		else {
			setElementName(value.getBase(), "_x0034_687");
			__x0034_687 = value; 
		}
	}
	protected schemaLib._x0034_687 __x0034_687;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0034_690 get_x0034_690() {
		return __x0034_690;  
	}
	public void set_x0034_690(schemaLib._x0034_690 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0034_690 = null;
		else {
			setElementName(value.getBase(), "_x0034_690");
			__x0034_690 = value; 
		}
	}
	protected schemaLib._x0034_690 __x0034_690;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0034_657", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_666", "", findGetterMethod("schemaLib._x0034_657", "get_x0034_666"), findSetterMethod("schemaLib._x0034_657", "set_x0034_666", "schemaLib._x0034_666"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_666.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_667", "", findGetterMethod("schemaLib._x0034_657", "get_x0034_667"), findSetterMethod("schemaLib._x0034_657", "set_x0034_667", "schemaLib._x0034_667"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_667.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_672", "", findGetterMethod("schemaLib._x0034_657", "get_x0034_672"), findSetterMethod("schemaLib._x0034_657", "set_x0034_672", "schemaLib._x0034_672"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_672.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_675", "", findGetterMethod("schemaLib._x0034_657", "get_x0034_675"), findSetterMethod("schemaLib._x0034_657", "set_x0034_675", "schemaLib._x0034_675"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_675.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_681", "", findGetterMethod("schemaLib._x0034_657", "get_x0034_681"), findSetterMethod("schemaLib._x0034_657", "set_x0034_681", "schemaLib._x0034_681"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_681.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_684", "", findGetterMethod("schemaLib._x0034_657", "get_x0034_684"), findSetterMethod("schemaLib._x0034_657", "set_x0034_684", "schemaLib._x0034_684"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_684.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_687", "", findGetterMethod("schemaLib._x0034_657", "get_x0034_687"), findSetterMethod("schemaLib._x0034_657", "set_x0034_687", "schemaLib._x0034_687"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_687.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0034_690", "", findGetterMethod("schemaLib._x0034_657", "get_x0034_690"), findSetterMethod("schemaLib._x0034_657", "set_x0034_690", "schemaLib._x0034_690"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0034_690.class)
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


