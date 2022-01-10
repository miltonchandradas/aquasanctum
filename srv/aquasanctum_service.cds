using {
    AQUA_FLOWMETER_DATA_METRICS as AquaFlowMeterDataMetrics,
    AQUA_FLOWMETERS as AquaFlowMeters,
    AQUA_CON_FLOWMETERS as AquaConFlowMeters,
    AQUA_TECHNICIANS as AquaTechnicians,
    AQUA_CON_LEAKAGE_DATA as AquaConLeakageData,
    AQUA_CUST_ADDITIONS as AquaCustAdditions,
    AQUA_LEAKAGE as AquaLeakage,
    AQUA_IOT as AquaIoT,
    AQUA_LATEST_LEAKAGE_DATA as AquaLatestLeakageData,
    AQUA_CITY_NEW_CONNECTIONS as AquaCityNewConnections,
    AQUA_ZONE_NEW_CONNECTIONS as AquaZoneNewConnections,
    AQUA_LEAKAGE_CALC as AquaLeakageCalc,
    AQUA_ADMIN_NEW_CUST_CONNECTIONS as AquaAdminNewCustConnections

} from '../db/schema.cds';

service AQUASERVICE {

    @readonly
    entity H2OFlowmeterData as projection on AquaFlowMeterDataMetrics;
    entity Flowmeters as projection on AquaFlowMeters;
    entity ChildFlowmeters as projection on AquaFlowMeters;
    entity ConFlowmeters as projection on AquaConFlowMeters;
    entity Technicians as projection on AquaTechnicians;
    entity ConsumerMeters as projection on AquaConFlowMeters;
    entity H2OConLeakageData as projection on AquaConLeakageData;
    entity NewCustAdditions as projection on AquaCustAdditions;
    entity PhysicalLeakage as projection on AquaLeakage;
    entity Flowvalues as projection on AquaIoT;
    entity H2OLatestLeakageData as projection on AquaLatestLeakageData;
    entity H2OCityNewConnections as projection on AquaCityNewConnections;
    entity H2OZoneNewConnections as projection on AquaZoneNewConnections;
    entity H2OCityLeakages as projection on AquaLeakageCalc;
    entity H2OAdminNewConnections as projection on AquaAdminNewCustConnections;
    entity H2OLatestFlowValues as projection on AquaFlowMeterDataMetrics;
}