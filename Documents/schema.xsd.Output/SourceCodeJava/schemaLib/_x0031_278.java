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
// This class represents the ComplexType _x0031_278
// </summary>
public class _x0031_278 extends com.liquid_technologies.ltxmllib19.XmlGeneratedClass {
	private static final long serialVersionUID = 13L;

	// <summary>
	// 	Constructor for _x0031_278
	// </summary>
	// <remarks>
	// The class is created with all the mandatory fields populated with the
	// default data. 
	// All Collection object are created.
	// However any 1-n relationships (these are represented as collections) are
	// empty. To comply with the schema these must be populated before the xml
	// obtained from ToXml is valid against the schema C:/Users/chris/OneDrive/Dokument/schema.xsd
	// </remarks>
	public _x0031_278() {
		setElementName("_x0031_278");
		init();
	}
	public _x0031_278(String elementName) {
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
			__x0031_232 = null;
			__x0031_236 = null;
			__x0031_237 = null;
			__x0031_238 = null;
			__x0031_239 = null;
			__x0031_241 = null;
			__x0031_242 = null;
			__x0031_243 = null;
			__x0031_244 = null;
			__x0031_245 = null;
			__x0031_246 = null;
			__x0031_247 = null;
			__x0031_248 = null;
			__x0031_249 = null;
			__x0031_250 = null;
			__x0031_251 = null;
			__x0031_252 = null;
			__x0031_253 = null;
			__x0031_255 = null;
			__x0031_256 = null;
			__x0031_258 = null;
			__x0031_259 = null;
			__x0031_263 = null;
			__x0031_265 = null;
			__x0031_271 = null;
			__x0031_272 = null;
			__x0031_273 = null;
			__x0031_274 = null;
			__x0031_275 = null;
			__x0031_276 = null;

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
			schemaLib._x0031_278 newObject = (schemaLib._x0031_278)super.clone();

			// clone, creates a bitwise copy of the class, so all the collections are the
			// same as the parents. Init will re-create our own collections, and classes, 
			// preventing objects being shared between the new an original objects
			newObject.init();
			newObject.__x0031_232 = null;
			if (__x0031_232 != null)
				newObject.__x0031_232 = (schemaLib._x0031_232)__x0031_232.clone();
			newObject.__x0031_236 = null;
			if (__x0031_236 != null)
				newObject.__x0031_236 = (schemaLib._x0031_236)__x0031_236.clone();
			newObject.__x0031_237 = null;
			if (__x0031_237 != null)
				newObject.__x0031_237 = (schemaLib._x0031_237)__x0031_237.clone();
			newObject.__x0031_238 = null;
			if (__x0031_238 != null)
				newObject.__x0031_238 = (schemaLib._x0031_238)__x0031_238.clone();
			newObject.__x0031_239 = null;
			if (__x0031_239 != null)
				newObject.__x0031_239 = (schemaLib._x0031_239)__x0031_239.clone();
			newObject.__x0031_241 = null;
			if (__x0031_241 != null)
				newObject.__x0031_241 = (schemaLib._x0031_241)__x0031_241.clone();
			newObject.__x0031_242 = null;
			if (__x0031_242 != null)
				newObject.__x0031_242 = (schemaLib._x0031_242)__x0031_242.clone();
			newObject.__x0031_243 = null;
			if (__x0031_243 != null)
				newObject.__x0031_243 = (schemaLib._x0031_243)__x0031_243.clone();
			newObject.__x0031_244 = null;
			if (__x0031_244 != null)
				newObject.__x0031_244 = (schemaLib._x0031_244)__x0031_244.clone();
			newObject.__x0031_245 = null;
			if (__x0031_245 != null)
				newObject.__x0031_245 = (schemaLib._x0031_245B)__x0031_245.clone();
			newObject.__x0031_246 = null;
			if (__x0031_246 != null)
				newObject.__x0031_246 = (schemaLib._x0031_246)__x0031_246.clone();
			newObject.__x0031_247 = null;
			if (__x0031_247 != null)
				newObject.__x0031_247 = (schemaLib._x0031_247)__x0031_247.clone();
			newObject.__x0031_248 = null;
			if (__x0031_248 != null)
				newObject.__x0031_248 = (schemaLib._x0031_248)__x0031_248.clone();
			newObject.__x0031_249 = null;
			if (__x0031_249 != null)
				newObject.__x0031_249 = (schemaLib._x0031_249)__x0031_249.clone();
			newObject.__x0031_250 = null;
			if (__x0031_250 != null)
				newObject.__x0031_250 = (schemaLib._x0031_250)__x0031_250.clone();
			newObject.__x0031_251 = null;
			if (__x0031_251 != null)
				newObject.__x0031_251 = (schemaLib._x0031_251)__x0031_251.clone();
			newObject.__x0031_252 = null;
			if (__x0031_252 != null)
				newObject.__x0031_252 = (schemaLib._x0031_252)__x0031_252.clone();
			newObject.__x0031_253 = null;
			if (__x0031_253 != null)
				newObject.__x0031_253 = (schemaLib._x0031_253)__x0031_253.clone();
			newObject.__x0031_255 = null;
			if (__x0031_255 != null)
				newObject.__x0031_255 = (schemaLib._x0031_255)__x0031_255.clone();
			newObject.__x0031_256 = null;
			if (__x0031_256 != null)
				newObject.__x0031_256 = (schemaLib._x0031_256)__x0031_256.clone();
			newObject.__x0031_258 = null;
			if (__x0031_258 != null)
				newObject.__x0031_258 = (schemaLib._x0031_258)__x0031_258.clone();
			newObject.__x0031_259 = null;
			if (__x0031_259 != null)
				newObject.__x0031_259 = (schemaLib._x0031_259)__x0031_259.clone();
			newObject.__x0031_263 = null;
			if (__x0031_263 != null)
				newObject.__x0031_263 = (schemaLib._x0031_263)__x0031_263.clone();
			newObject.__x0031_265 = null;
			if (__x0031_265 != null)
				newObject.__x0031_265 = (schemaLib._x0031_265)__x0031_265.clone();
			newObject.__x0031_271 = null;
			if (__x0031_271 != null)
				newObject.__x0031_271 = (schemaLib._x0031_271)__x0031_271.clone();
			newObject.__x0031_272 = null;
			if (__x0031_272 != null)
				newObject.__x0031_272 = (schemaLib._x0031_272)__x0031_272.clone();
			newObject.__x0031_273 = null;
			if (__x0031_273 != null)
				newObject.__x0031_273 = (schemaLib._x0031_273)__x0031_273.clone();
			newObject.__x0031_274 = null;
			if (__x0031_274 != null)
				newObject.__x0031_274 = (schemaLib._x0031_274)__x0031_274.clone();
			newObject.__x0031_275 = null;
			if (__x0031_275 != null)
				newObject.__x0031_275 = (schemaLib._x0031_275)__x0031_275.clone();
			newObject.__x0031_276 = null;
			if (__x0031_276 != null)
				newObject.__x0031_276 = (schemaLib._x0031_276)__x0031_276.clone();
	
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
	public schemaLib._x0031_232 get_x0031_232() {
		return __x0031_232;  
	}
	public void set_x0031_232(schemaLib._x0031_232 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_232 = null;
		else {
			setElementName(value.getBase(), "_x0031_232");
			__x0031_232 = value; 
		}
	}
	protected schemaLib._x0031_232 __x0031_232;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_236 get_x0031_236() {
		return __x0031_236;  
	}
	public void set_x0031_236(schemaLib._x0031_236 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_236 = null;
		else {
			setElementName(value.getBase(), "_x0031_236");
			__x0031_236 = value; 
		}
	}
	protected schemaLib._x0031_236 __x0031_236;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_237 get_x0031_237() {
		return __x0031_237;  
	}
	public void set_x0031_237(schemaLib._x0031_237 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_237 = null;
		else {
			setElementName(value.getBase(), "_x0031_237");
			__x0031_237 = value; 
		}
	}
	protected schemaLib._x0031_237 __x0031_237;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_238 get_x0031_238() {
		return __x0031_238;  
	}
	public void set_x0031_238(schemaLib._x0031_238 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_238 = null;
		else {
			setElementName(value.getBase(), "_x0031_238");
			__x0031_238 = value; 
		}
	}
	protected schemaLib._x0031_238 __x0031_238;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_239 get_x0031_239() {
		return __x0031_239;  
	}
	public void set_x0031_239(schemaLib._x0031_239 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_239 = null;
		else {
			setElementName(value.getBase(), "_x0031_239");
			__x0031_239 = value; 
		}
	}
	protected schemaLib._x0031_239 __x0031_239;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_241 get_x0031_241() {
		return __x0031_241;  
	}
	public void set_x0031_241(schemaLib._x0031_241 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_241 = null;
		else {
			setElementName(value.getBase(), "_x0031_241");
			__x0031_241 = value; 
		}
	}
	protected schemaLib._x0031_241 __x0031_241;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_242 get_x0031_242() {
		return __x0031_242;  
	}
	public void set_x0031_242(schemaLib._x0031_242 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_242 = null;
		else {
			setElementName(value.getBase(), "_x0031_242");
			__x0031_242 = value; 
		}
	}
	protected schemaLib._x0031_242 __x0031_242;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_243 get_x0031_243() {
		return __x0031_243;  
	}
	public void set_x0031_243(schemaLib._x0031_243 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_243 = null;
		else {
			setElementName(value.getBase(), "_x0031_243");
			__x0031_243 = value; 
		}
	}
	protected schemaLib._x0031_243 __x0031_243;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_244 get_x0031_244() {
		return __x0031_244;  
	}
	public void set_x0031_244(schemaLib._x0031_244 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_244 = null;
		else {
			setElementName(value.getBase(), "_x0031_244");
			__x0031_244 = value; 
		}
	}
	protected schemaLib._x0031_244 __x0031_244;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_245B get_x0031_245() {
		return __x0031_245;  
	}
	public void set_x0031_245(schemaLib._x0031_245B value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_245 = null;
		else {
			setElementName(value.getBase(), "_x0031_245");
			__x0031_245 = value; 
		}
	}
	protected schemaLib._x0031_245B __x0031_245;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_246 get_x0031_246() {
		return __x0031_246;  
	}
	public void set_x0031_246(schemaLib._x0031_246 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_246 = null;
		else {
			setElementName(value.getBase(), "_x0031_246");
			__x0031_246 = value; 
		}
	}
	protected schemaLib._x0031_246 __x0031_246;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_247 get_x0031_247() {
		return __x0031_247;  
	}
	public void set_x0031_247(schemaLib._x0031_247 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_247 = null;
		else {
			setElementName(value.getBase(), "_x0031_247");
			__x0031_247 = value; 
		}
	}
	protected schemaLib._x0031_247 __x0031_247;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_248 get_x0031_248() {
		return __x0031_248;  
	}
	public void set_x0031_248(schemaLib._x0031_248 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_248 = null;
		else {
			setElementName(value.getBase(), "_x0031_248");
			__x0031_248 = value; 
		}
	}
	protected schemaLib._x0031_248 __x0031_248;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_249 get_x0031_249() {
		return __x0031_249;  
	}
	public void set_x0031_249(schemaLib._x0031_249 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_249 = null;
		else {
			setElementName(value.getBase(), "_x0031_249");
			__x0031_249 = value; 
		}
	}
	protected schemaLib._x0031_249 __x0031_249;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_250 get_x0031_250() {
		return __x0031_250;  
	}
	public void set_x0031_250(schemaLib._x0031_250 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_250 = null;
		else {
			setElementName(value.getBase(), "_x0031_250");
			__x0031_250 = value; 
		}
	}
	protected schemaLib._x0031_250 __x0031_250;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_251 get_x0031_251() {
		return __x0031_251;  
	}
	public void set_x0031_251(schemaLib._x0031_251 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_251 = null;
		else {
			setElementName(value.getBase(), "_x0031_251");
			__x0031_251 = value; 
		}
	}
	protected schemaLib._x0031_251 __x0031_251;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_252 get_x0031_252() {
		return __x0031_252;  
	}
	public void set_x0031_252(schemaLib._x0031_252 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_252 = null;
		else {
			setElementName(value.getBase(), "_x0031_252");
			__x0031_252 = value; 
		}
	}
	protected schemaLib._x0031_252 __x0031_252;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_253 get_x0031_253() {
		return __x0031_253;  
	}
	public void set_x0031_253(schemaLib._x0031_253 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_253 = null;
		else {
			setElementName(value.getBase(), "_x0031_253");
			__x0031_253 = value; 
		}
	}
	protected schemaLib._x0031_253 __x0031_253;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_255 get_x0031_255() {
		return __x0031_255;  
	}
	public void set_x0031_255(schemaLib._x0031_255 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_255 = null;
		else {
			setElementName(value.getBase(), "_x0031_255");
			__x0031_255 = value; 
		}
	}
	protected schemaLib._x0031_255 __x0031_255;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_256 get_x0031_256() {
		return __x0031_256;  
	}
	public void set_x0031_256(schemaLib._x0031_256 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_256 = null;
		else {
			setElementName(value.getBase(), "_x0031_256");
			__x0031_256 = value; 
		}
	}
	protected schemaLib._x0031_256 __x0031_256;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_258 get_x0031_258() {
		return __x0031_258;  
	}
	public void set_x0031_258(schemaLib._x0031_258 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_258 = null;
		else {
			setElementName(value.getBase(), "_x0031_258");
			__x0031_258 = value; 
		}
	}
	protected schemaLib._x0031_258 __x0031_258;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_259 get_x0031_259() {
		return __x0031_259;  
	}
	public void set_x0031_259(schemaLib._x0031_259 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_259 = null;
		else {
			setElementName(value.getBase(), "_x0031_259");
			__x0031_259 = value; 
		}
	}
	protected schemaLib._x0031_259 __x0031_259;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_263 get_x0031_263() {
		return __x0031_263;  
	}
	public void set_x0031_263(schemaLib._x0031_263 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_263 = null;
		else {
			setElementName(value.getBase(), "_x0031_263");
			__x0031_263 = value; 
		}
	}
	protected schemaLib._x0031_263 __x0031_263;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_265 get_x0031_265() {
		return __x0031_265;  
	}
	public void set_x0031_265(schemaLib._x0031_265 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_265 = null;
		else {
			setElementName(value.getBase(), "_x0031_265");
			__x0031_265 = value; 
		}
	}
	protected schemaLib._x0031_265 __x0031_265;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_271 get_x0031_271() {
		return __x0031_271;  
	}
	public void set_x0031_271(schemaLib._x0031_271 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_271 = null;
		else {
			setElementName(value.getBase(), "_x0031_271");
			__x0031_271 = value; 
		}
	}
	protected schemaLib._x0031_271 __x0031_271;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_272 get_x0031_272() {
		return __x0031_272;  
	}
	public void set_x0031_272(schemaLib._x0031_272 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_272 = null;
		else {
			setElementName(value.getBase(), "_x0031_272");
			__x0031_272 = value; 
		}
	}
	protected schemaLib._x0031_272 __x0031_272;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_273 get_x0031_273() {
		return __x0031_273;  
	}
	public void set_x0031_273(schemaLib._x0031_273 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_273 = null;
		else {
			setElementName(value.getBase(), "_x0031_273");
			__x0031_273 = value; 
		}
	}
	protected schemaLib._x0031_273 __x0031_273;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_274 get_x0031_274() {
		return __x0031_274;  
	}
	public void set_x0031_274(schemaLib._x0031_274 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_274 = null;
		else {
			setElementName(value.getBase(), "_x0031_274");
			__x0031_274 = value; 
		}
	}
	protected schemaLib._x0031_274 __x0031_274;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_275 get_x0031_275() {
		return __x0031_275;  
	}
	public void set_x0031_275(schemaLib._x0031_275 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_275 = null;
		else {
			setElementName(value.getBase(), "_x0031_275");
			__x0031_275 = value; 
		}
	}
	protected schemaLib._x0031_275 __x0031_275;

	// <summary>
	// Represents an optional Element in the XML document
	// </summary>
	// <remarks>
	// This property is represented as an Element in the XML.
	// It is optional, initially it is null.

	// </remarks>
	public schemaLib._x0031_276 get_x0031_276() {
		return __x0031_276;  
	}
	public void set_x0031_276(schemaLib._x0031_276 value) throws com.liquid_technologies.ltxmllib19.exceptions.LtException { 
		if (value == null)
			__x0031_276 = null;
		else {
			setElementName(value.getBase(), "_x0031_276");
			__x0031_276 = value; 
		}
	}
	protected schemaLib._x0031_276 __x0031_276;

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
																	com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, "_x0031_278", "", true, false,
																	null, null, com.liquid_technologies.ltxmllib19.Conversions.ConversionType.TYPE_NONE, com.liquid_technologies.ltxmllib19.WhitespaceRule.NONE, null, false);
		}
		return __parentElementInfo;
	}

	protected com.liquid_technologies.ltxmllib19.ElementInfo[] getClassElementInfo() throws Exception {
		if (__elementInfo == null) {
			__elementInfo = new com.liquid_technologies.ltxmllib19.ElementInfo[] {
				 new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_232", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_232"), findSetterMethod("schemaLib._x0031_278", "set_x0031_232", "schemaLib._x0031_232"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_232.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_236", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_236"), findSetterMethod("schemaLib._x0031_278", "set_x0031_236", "schemaLib._x0031_236"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_236.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_237", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_237"), findSetterMethod("schemaLib._x0031_278", "set_x0031_237", "schemaLib._x0031_237"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_237.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_238", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_238"), findSetterMethod("schemaLib._x0031_278", "set_x0031_238", "schemaLib._x0031_238"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_238.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_239", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_239"), findSetterMethod("schemaLib._x0031_278", "set_x0031_239", "schemaLib._x0031_239"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_239.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_241", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_241"), findSetterMethod("schemaLib._x0031_278", "set_x0031_241", "schemaLib._x0031_241"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_241.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_242", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_242"), findSetterMethod("schemaLib._x0031_278", "set_x0031_242", "schemaLib._x0031_242"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_242.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_243", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_243"), findSetterMethod("schemaLib._x0031_278", "set_x0031_243", "schemaLib._x0031_243"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_243.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_244", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_244"), findSetterMethod("schemaLib._x0031_278", "set_x0031_244", "schemaLib._x0031_244"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_244.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_245", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_245"), findSetterMethod("schemaLib._x0031_278", "set_x0031_245", "schemaLib._x0031_245B"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_245B.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_246", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_246"), findSetterMethod("schemaLib._x0031_278", "set_x0031_246", "schemaLib._x0031_246"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_246.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_247", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_247"), findSetterMethod("schemaLib._x0031_278", "set_x0031_247", "schemaLib._x0031_247"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_247.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_248", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_248"), findSetterMethod("schemaLib._x0031_278", "set_x0031_248", "schemaLib._x0031_248"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_248.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_249", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_249"), findSetterMethod("schemaLib._x0031_278", "set_x0031_249", "schemaLib._x0031_249"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_249.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_250", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_250"), findSetterMethod("schemaLib._x0031_278", "set_x0031_250", "schemaLib._x0031_250"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_250.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_251", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_251"), findSetterMethod("schemaLib._x0031_278", "set_x0031_251", "schemaLib._x0031_251"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_251.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_252", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_252"), findSetterMethod("schemaLib._x0031_278", "set_x0031_252", "schemaLib._x0031_252"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_252.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_253", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_253"), findSetterMethod("schemaLib._x0031_278", "set_x0031_253", "schemaLib._x0031_253"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_253.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_255", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_255"), findSetterMethod("schemaLib._x0031_278", "set_x0031_255", "schemaLib._x0031_255"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_255.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_256", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_256"), findSetterMethod("schemaLib._x0031_278", "set_x0031_256", "schemaLib._x0031_256"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_256.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_258", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_258"), findSetterMethod("schemaLib._x0031_278", "set_x0031_258", "schemaLib._x0031_258"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_258.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_259", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_259"), findSetterMethod("schemaLib._x0031_278", "set_x0031_259", "schemaLib._x0031_259"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_259.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_263", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_263"), findSetterMethod("schemaLib._x0031_278", "set_x0031_263", "schemaLib._x0031_263"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_263.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_265", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_265"), findSetterMethod("schemaLib._x0031_278", "set_x0031_265", "schemaLib._x0031_265"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_265.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_271", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_271"), findSetterMethod("schemaLib._x0031_278", "set_x0031_271", "schemaLib._x0031_271"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_271.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_272", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_272"), findSetterMethod("schemaLib._x0031_278", "set_x0031_272", "schemaLib._x0031_272"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_272.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_273", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_273"), findSetterMethod("schemaLib._x0031_278", "set_x0031_273", "schemaLib._x0031_273"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_273.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_274", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_274"), findSetterMethod("schemaLib._x0031_278", "set_x0031_274", "schemaLib._x0031_274"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_274.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_275", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_275"), findSetterMethod("schemaLib._x0031_278", "set_x0031_275", "schemaLib._x0031_275"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_275.class)
				,new com.liquid_technologies.ltxmllib19.data.ElementInfoSeqClsOpt("_x0031_276", "", findGetterMethod("schemaLib._x0031_278", "get_x0031_276"), findSetterMethod("schemaLib._x0031_278", "set_x0031_276", "schemaLib._x0031_276"), com.liquid_technologies.ltxmllib19.XmlObjectBase.XmlElementType.ELEMENT, schemaLib._x0031_276.class)
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


