const cds = require("@sap/cds");
const proxy = require("@sap/cds-odata-v2-adapter-proxy");


cds.on("bootstrap", () => console.log("This custom function was called..."));
cds.on("bootstrap", (app) => app.use(proxy()));

module.exports = cds.server;
