
const dbgateApi = require(process.env.DBGATE_API);
dbgateApi.initializeApiEnvironment();
dbgateApi.registerPlugins();

require=null;
async function run() {
const reader=await dbgateApi.jsonLinesReader({"fileName":"G:\\Windows\\Panther\\MigLog.xml","limitRows":100});
const writer=await dbgateApi.collectorWriter({runid: '921965c0-c728-11ec-bb2a-05f0868feb1d'});
await dbgateApi.copyStream(reader, writer);
}
dbgateApi.runScript(run);
