// using {aqua} from '../db/schema';

// service AquaService {
//     entity ConFlowmeters as select from aqua.Con_Flowmeters;
//     entity Leakage as select from aqua.Leakage;
// }


using {
    AQUA_FLOWMETER_DATA_METRICS as AquaFlowMeterDataMetrics,
    AQUA_FLOWMETERS as AquaFlowMeters,
    AQUA_CHILDFLOWMETERS as AquaChildFlowMeters,
    AQUA_CON_FLOWMETERS as AquaConFlowMeters,
    AQUA_TECHNICIANS as AquaTechnicians,
    AQUA_CON_LEAKAGE_DATA as AquaConLeakageData

} from '../db/schema.cds';

service AQUASERVICE {

    @readonly
    entity FlowmeterDataMetrics as projection on AquaFlowMeterDataMetrics;

    entity Flowmeters as projection on AquaFlowMeters;
    entity ChildFlowmeters as projection on AquaChildFlowMeters;
    entity ConFlowmeters as projection on AquaConFlowMeters;
    entity Technicians as projection on AquaTechnicians;
    entity ConLeakageData as projection on AquaConLeakageData;

}