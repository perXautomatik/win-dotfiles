
const dbgateApi = require(process.env.DBGATE_API);
dbgateApi.initializeApiEnvironment();
const dbgatePluginXml = require(process.env.PLUGIN_dbgatePluginXml);
dbgateApi.registerPlugins(dbgatePluginXml);

require=null;
async function run() {
const reader=await dbgatePluginXml.shellApi.reader({"fileName":"G:\\Windows\\Panther\\MigLog.xml","limitRows":100});
const writer=await dbgateApi.collectorWriter({runid: '5c524ec0-c728-11ec-bb2a-05f0868feb1d'});
await dbgateApi.copyStream(reader, writer);
}
dbgateApi.runScript(run);
