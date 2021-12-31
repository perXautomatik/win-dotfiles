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
// This class represents the ComplexType _x0031_6218
// </summary>
public class _x0031_6218 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_6218
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_6218() {
		setElementName("_x0031_6218");
		init();
	}
	public _x0031_6218(String elementName) {
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
			__x0031_6224 = null;
			__x0031_6227 = null;
			__x0031_6282 = null;
			__x0031_6291 = null;
			__x0031_6301 = null;
			__x0031_6311 = null;
			__x0031_6329 = null;
			__x0031_6335 = null;
			__x0031_6348 = null;
			__x0031_6354 = null;
			__x0031_6360 = null;
			__x0031_6369 = null;
			__x0031_6372 = null;
			__x0031_6378 = null;
			__x0031_6384 = null;
			__x0031_6393 = null;
			__x0031_6396 = null;
			__x0031_6402 = null;
			__x0031_6405 = null;
			__x0031_6411 = null;
			__x0031_6419 = null;
			__x0031_6434 = null;
			__x0031_6437 = null;
			__x0031_6440 = null;

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
			schemaLib._x0031_6218 newObject = (schemaLib._x0031_6218)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_6224 = null;
			if (__x0031_6224 != null)
				newObject.__x0031_6224 = (schemaLib._x0031_6224)__x0031_6224.clone();
			newObject.__x0031_6227 = null;
			if (__x0031_6227 != null)
				newObject.__x0031_6227 = (schemaLib._x0031_6227)__x0031_6227.clone();
			newObject.__x0031_6282 = null;
			if (__x0031_6282 != null)
				newObject.__x0031_6282 = (schemaLib._x0031_6282)__x0031_6282.clone();
			newObject.__x0031_6291 = null;
			if (__x0031_6291 != null)
				newObject.__x0031_6291 = (schemaLib._x0031_6291)__x0031_6291.clone();
			newObject.__x0031_6301 = null;
			if (__x0031_6301 != null)
				newObject.__x0031_6301 = (schemaLib._x0031_6301)__x0031_6301.clone();
			newObject.__x0031_6311 = null;
			if (__x0031_6311 != null)
				newObject.__x0031_6311 = (schemaLib._x0031_6311)__x0031_6311.clone();
			newObject.__x0031_6329 = null;
			if (__x0031_6329 != null)
				newObject.__x0031_6329 = (schemaLib._x0031_6329)__x0031_6329.clone();
			newObject.__x0031_6335 = null;
			if (__x0031_6335 != null)
				newObject.__x0031_6335 = (schemaLib._x0031_6335)__x0031_6335.clone();
			newObject.__x0031_6348 = null;
			if (__x0031_6348 != null)
				newObject.__x0031_6348 = (schemaLib._x0031_6348)__x0031_6348.clone();
			newObject.__x0031_6354 = null;
			if (__x0031_6354 != null)
				newObject.__x0031_6354 = (schemaLib._x0031_6354)__x0031_6354.clone();
			newObject.__x0031_6360 = null;
			if (__x0031_6360 != null)
				newObject.__x0031_6360 = (schemaLib._x0031_6360)__x0031_6360.clone();
			newObject.__x0031_6369 = null;
			if (__x0031_6369 != null)
				newObject.__x0031_6369 = (schemaLib._x0031_6369)__x0031_6369.clone();
			newObject.__x0031_6372 = null;
			if (__x0031_6372 != null)
				newObject.__x0031_6372 = (schemaLib._x0031_6372)__x0031_6372.clone();
			newObject.__x0031_6378 = null;
			if (__x0031_6378 != null)
				newObject.__x0031_6378 = (schemaLib._x0031_6378)__x0031_6378.clone();
			newObject.__x0031_6384 = null;
			if (__x0031_6384 != null)
				newObject.__x0031_6384 = (schemaLib._x0031_6384)__x0031_6384.clone();
			newObject.__x0031_6393 = null;
			if (__x0031_6393 != null)
				newObject.__x0031_6393 = (schemaLib._x0031_6393)__x0031_6393.clone();
			newObject.__x0031_6396 = null;
			if (__x0031_6396 != null)
				newObject.__x0031_6396 = (schemaLib._x0031_6396)__x0031_6396.clone();
			newObject.__x0031_6402 = null;
			if (__x0031_6402 != null)
				newObject.__x0031_6402 = (schemaLib._x0031_6402)__x0031_6402.clone();
			newObject.__x0031_6405 = null;
			if (__x0031_6405 != null)
				newObject.__x0031_6405 = (schemaLib._x0031_6405)__x0031_6405.clone();
			newObject.__x0031_6411 = null;
			if (__x0031_6411 != null)
				newObject.__x0031_6411 = (schemaLib._x0031_6411)__x0031_6411.clone();
			newObject.__x0031_6419 = null;
			if (__x0031_6419 != null)
				newObject.__x0031_6419 = (schemaLib._x0031_6419)__x0031_6419.clone();
			newObject.__x0031_6434 = null;
			if (__x0031_6434 != null)
				newObject.__x0031_6434 = (schemaLib._x0031_6434)__x0031_6434.clone();
			newObject.__x0031_6437 = null;
			if (__x0031_6437 != null)
				newObject.__x0031_6437 = (schemaLib._x0031_6437)__x0031_6437.clone();
			newObject.__x0031_6440 = null;
			if (__x0031_6440 != null)
				newObject.__x0031_6440 = (schemaLib._x0031_6440)__x0031_6440.clone();
	
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
	public schemaLib._x0031_6224 get_x0031_6224() {
		return __x0031_6224;  
	}
	public void set_x0031_6224(schemaLib._x0031_6224 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6224 = null;
		else {
			setElementName(value.getBase(), "_x0031_6224");
			__x0031_6224 = value; 
		}
	}
	protected schemaLib._x0031_6224 __x0031_6224;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6227 get_x0031_6227() {
		return __x0031_6227;  
	}
	public void set_x0031_6227(schemaLib._x0031_6227 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6227 = null;
		else {
			setElementName(value.getBase(), "_x0031_6227");
			__x0031_6227 = value; 
		}
	}
	protected schemaLib._x0031_6227 __x0031_6227;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6282 get_x0031_6282() {
		return __x0031_6282;  
	}
	public void set_x0031_6282(schemaLib._x0031_6282 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6282 = null;
		else {
			setElementName(value.getBase(), "_x0031_6282");
			__x0031_6282 = value; 
		}
	}
	protected schemaLib._x0031_6282 __x0031_6282;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6291 get_x0031_6291() {
		return __x0031_6291;  
	}
	public void set_x0031_6291(schemaLib._x0031_6291 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6291 = null;
		else {
			setElementName(value.getBase(), "_x0031_6291");
			__x0031_6291 = value; 
		}
	}
	protected schemaLib._x0031_6291 __x0031_6291;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6301 get_x0031_6301() {
		return __x0031_6301;  
	}
	public void set_x0031_6301(schemaLib._x0031_6301 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6301 = null;
		else {
			setElementName(value.getBase(), "_x0031_6301");
			__x0031_6301 = value; 
		}
	}
	protected schemaLib._x0031_6301 __x0031_6301;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6311 get_x0031_6311() {
		return __x0031_6311;  
	}
	public void set_x0031_6311(schemaLib._x0031_6311 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6311 = null;
		else {
			setElementName(value.getBase(), "_x0031_6311");
			__x0031_6311 = value; 
		}
	}
	protected schemaLib._x0031_6311 __x0031_6311;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6329 get_x0031_6329() {
		return __x0031_6329;  
	}
	public void set_x0031_6329(schemaLib._x0031_6329 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6329 = null;
		else {
			setElementName(value.getBase(), "_x0031_6329");
			__x0031_6329 = value; 
		}
	}
	protected schemaLib._x0031_6329 __x0031_6329;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6335 get_x0031_6335() {
		return __x0031_6335;  
	}
	public void set_x0031_6335(schemaLib._x0031_6335 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6335 = null;
		else {
			setElementName(value.getBase(), "_x0031_6335");
			__x0031_6335 = value; 
		}
	}
	protected schemaLib._x0031_6335 __x0031_6335;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6348 get_x0031_6348() {
		return __x0031_6348;  
	}
	public void set_x0031_6348(schemaLib._x0031_6348 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6348 = null;
		else {
			setElementName(value.getBase(), "_x0031_6348");
			__x0031_6348 = value; 
		}
	}
	protected schemaLib._x0031_6348 __x0031_6348;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6354 get_x0031_6354() {
		return __x0031_6354;  
	}
	public void set_x0031_6354(schemaLib._x0031_6354 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6354 = null;
		else {
			setElementName(value.getBase(), "_x0031_6354");
			__x0031_6354 = value; 
		}
	}
	protected schemaLib._x0031_6354 __x0031_6354;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6360 get_x0031_6360() {
		return __x0031_6360;  
	}
	public void set_x0031_6360(schemaLib._x0031_6360 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6360 = null;
		else {
			setElementName(value.getBase(), "_x0031_6360");
			__x0031_6360 = value; 
		}
	}
	protected schemaLib._x0031_6360 __x0031_6360;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6369 get_x0031_6369() {
		return __x0031_6369;  
	}
	public void set_x0031_6369(schemaLib._x0031_6369 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6369 = null;
		else {
			setElementName(value.getBase(), "_x0031_6369");
			__x0031_6369 = value; 
		}
	}
	protected schemaLib._x0031_6369 __x0031_6369;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6372 get_x0031_6372() {
		return __x0031_6372;  
	}
	public void set_x0031_6372(schemaLib._x0031_6372 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6372 = null;
		else {
			setElementName(value.getBase(), "_x0031_6372");
			__x0031_6372 = value; 
		}
	}
	protected schemaLib._x0031_6372 __x0031_6372;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6378 get_x0031_6378() {
		return __x0031_6378;  
	}
	public void set_x0031_6378(schemaLib._x0031_6378 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6378 = null;
		else {
			setElementName(value.getBase(), "_x0031_6378");
			__x0031_6378 = value; 
		}
	}
	protected schemaLib._x0031_6378 __x0031_6378;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6384 get_x0031_6384() {
		return __x0031_6384;  
	}
	public void set_x0031_6384(schemaLib._x0031_6384 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6384 = null;
		else {
			setElementName(value.getBase(), "_x0031_6384");
			__x0031_6384 = value; 
		}
	}
	protected schemaLib._x0031_6384 __x0031_6384;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6393 get_x0031_6393() {
		return __x0031_6393;  
	}
	public void set_x0031_6393(schemaLib._x0031_6393 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6393 = null;
		else {
			setElementName(value.getBase(), "_x0031_6393");
			__x0031_6393 = value; 
		}
	}
	protected schemaLib._x0031_6393 __x0031_6393;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6396 get_x0031_6396() {
		return __x0031_6396;  
	}
	public void set_x0031_6396(schemaLib._x0031_6396 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6396 = null;
		else {
			setElementName(value.getBase(), "_x0031_6396");
			__x0031_6396 = value; 
		}
	}
	protected schemaLib._x0031_6396 __x0031_6396;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6402 get_x0031_6402() {
		return __x0031_6402;  
	}
	public void set_x0031_6402(schemaLib._x0031_6402 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6402 = null;
		else {
			setElementName(value.getBase(), "_x0031_6402");
			__x0031_6402 = value; 
		}
	}
	protected schemaLib._x0031_6402 __x0031_6402;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6405 get_x0031_6405() {
		return __x0031_6405;  
	}
	public void set_x0031_6405(schemaLib._x0031_6405 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6405 = null;
		else {
			setElementName(value.getBase(), "_x0031_6405");
			__x0031_6405 = value; 
		}
	}
	protected schemaLib._x0031_6405 __x0031_6405;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6411 get_x0031_6411() {
		return __x0031_6411;  
	}
	public void set_x0031_6411(schemaLib._x0031_6411 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6411 = null;
		else {
			setElementName(value.getBase(), "_x0031_6411");
			__x0031_6411 = value; 
		}
	}
	protected schemaLib._x0031_6411 __x0031_6411;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6419 get_x0031_6419() {
		return __x0031_6419;  
	}
	public void set_x0031_6419(schemaLib._x0031_6419 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6419 = null;
		else {
			setElementName(value.getBase(), "_x0031_6419");
			__x0031_6419 = value; 
		}
	}
	protected schemaLib._x0031_6419 __x0031_6419;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6434 get_x0031_6434() {
		return __x0031_6434;  
	}
	public void set_x0031_6434(schemaLib._x0031_6434 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6434 = null;
		else {
			setElementName(value.getBase(), "_x0031_6434");
			__x0031_6434 = value; 
		}
	}
	protected schemaLib._x0031_6434 __x0031_6434;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6437 get_x0031_6437() {
		return __x0031_6437;  
	}
	public void set_x0031_6437(schemaLib._x0031_6437 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6437 = null;
		else {
			setElementName(value.getBase(), "_x0031_6437");
			__x0031_6437 = value; 
		}
	}
	protected schemaLib._x0031_6437 __x0031_6437;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_6440 get_x0031_6440() {
		return __x0031_6440;  
	}
	public void set_x0031_6440(schemaLib._x0031_6440 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_6440 = null;
		else {
			setElementName(value.getBase(), "_x0031_6440");
			__x0031_6440 = value; 
		}
	}
	protected schemaLib._x0031_6440 __x0031_6440;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_6218", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6224", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6224"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6224", "schemaLib._x0031_6224"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6224.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6227", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6227"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6227", "schemaLib._x0031_6227"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6227.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6282", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6282"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6282", "schemaLib._x0031_6282"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6282.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6291", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6291"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6291", "schemaLib._x0031_6291"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6291.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6301", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6301"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6301", "schemaLib._x0031_6301"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6301.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6311", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6311"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6311", "schemaLib._x0031_6311"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6311.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6329", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6329"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6329", "schemaLib._x0031_6329"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6329.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6335", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6335"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6335", "schemaLib._x0031_6335"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6335.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6348", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6348"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6348", "schemaLib._x0031_6348"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6348.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6354", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6354"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6354", "schemaLib._x0031_6354"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6354.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6360", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6360"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6360", "schemaLib._x0031_6360"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6360.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6369", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6369"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6369", "schemaLib._x0031_6369"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6369.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6372", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6372"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6372", "schemaLib._x0031_6372"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6372.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6378", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6378"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6378", "schemaLib._x0031_6378"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6378.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6384", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6384"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6384", "schemaLib._x0031_6384"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6384.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6393", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6393"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6393", "schemaLib._x0031_6393"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6393.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6396", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6396"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6396", "schemaLib._x0031_6396"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6396.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6402", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6402"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6402", "schemaLib._x0031_6402"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6402.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6405", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6405"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6405", "schemaLib._x0031_6405"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6405.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6411", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6411"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6411", "schemaLib._x0031_6411"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6411.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6419", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6419"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6419", "schemaLib._x0031_6419"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6419.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6434", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6434"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6434", "schemaLib._x0031_6434"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6434.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6437", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6437"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6437", "schemaLib._x0031_6437"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6437.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_6440", "", findGetterMethod("schemaLib._x0031_6218", "get_x0031_6440"), findSetterMethod("schemaLib._x0031_6218", "set_x0031_6440", "schemaLib._x0031_6440"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_6440.class)
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


