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

/// <summary>
/// This is the base class for all the generated object collection classes. 
/// </summary>
/// <remarks>
/// You can extend this class to provide common functionality to all
/// generated collection classes. Be sure to place all you additions inside the
/// hand coded blocks (or they will be lost when you re-generate the code.	
/// </remarks>
public class XmlObjectCollection<T extends com.liquid_technologies.ltxmllib19.XmlObjectBase> extends com.liquid_technologies.ltxmllib19.XmlCollection<T> {
	private static final long serialVersionUID = 13L;

	public XmlObjectCollection(String elementName, String targetNamespace, int minOccurs, int maxOccurs, boolean isPseudoElement, Class<? extends com.liquid_technologies.ltxmllib19.XmlObjectBase> clazz) {
		super(elementName, targetNamespace, minOccurs, maxOccurs, isPseudoElement, clazz);
		// ##HAND_CODED_BLOCK_START ID="XmlObjectCollection Constructor"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS

		// Add Constructor Code here...

		// ##HAND_CODED_BLOCK_END ID="XmlObjectCollection Constructor"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS
	}

	/*
	 * You can use the following hand coded section to override the XmlObjectBase FromXml... and ToXml...
	 * virtual methods to provide custom pre or post processing for all your generated classes,
	 * or to add your own common methods.
	 *
	 * For Example you can add the following here:
	 *
	 *	@Override
	 *	public void toXmlFile(String FileName) {
	 *		// Perform Custom Pre Processing
	 *
	 *		super.toXmlFile(FileName);
	 *
	 *		// Perform Custom Post Processing
	 *	}
	 *
	 */
		
	// ##HAND_CODED_BLOCK_START ID="XmlObjectCollection Custom Base Methods"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS

	// Add Custom Base Methods here...

	// ##HAND_CODED_BLOCK_END ID="XmlObjectCollection Custom Base Methods"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS
}

