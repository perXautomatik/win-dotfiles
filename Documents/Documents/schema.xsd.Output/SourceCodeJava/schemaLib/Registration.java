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

public class Registration {
	private static int registerLicense() {
		com.liquid_technologies.ltxmllib19.XmlObjectBase.register("Trial 01/07/2021", "schema.xsd", "MLPCC9D4T41TAYPN000000AA");
		// ##HAND_CODED_BLOCK_START ID="Namespace Declarations"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS
		// Add Additional namespace declarations here...
		com.liquid_technologies.ltxmllib19.SerializationContext.Default.setSchemaType(com.liquid_technologies.ltxmllib19.SchemaType.XSD);
		// com.liquid_technologies.ltxmllib19.SerializationContext.Default.setDefaultNamespaceURI("http://www.fpml.org/2003/FpML-4-0");
		// com.liquid_technologies.ltxmllib19.SerializationContext.Default.getNamespaceAliases().add("dsig", "http://www.w3.org/2000/09/xmldsig#");

		com.liquid_technologies.ltxmllib19.SerializationContext.Default.getNamespaceAliases().add("xs", "http://www.w3.org/2001/XMLSchema-instance");

		// ##HAND_CODED_BLOCK_END ID="Namespace Declarations"## DO NOT MODIFY ANYTHING OUTSIDE OF THESE TAGS
		return 1;
	}
	static public int iRegistrationIndicator = registerLicense();
}


