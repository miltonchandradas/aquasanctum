// using {aqua} from '../db/schema';

// service AquaService {
//     entity ConFlowmeters as select from aqua.Con_Flowmeters;
//     entity Leakage as select from aqua.Leakage;
// }


using {
    AQUASERVICE_FLOWMETER_DATA_METRICS,
    AQUASERVICE_FLOWMETERS,
    AQUASERVICE_CON_FLOWMETERS,
    AQUASERVICE_TECHNICIANS,
    AQUASERVICE_CON_LEAKAGE_DATA

} from '../db/schema.cds';

service AQUASERVICE {

    @readonly
    entity FLOWMETER_DATA_METRICS as SELECT FROM AQUASERVICE_FLOWMETER_DATA_METRICS;

    entity Flowmeters as SELECT FROM AQUASERVICE_FLOWMETERS;
    entity ChildFlowmeters as SELECT FROM AQUASERVICE_FLOWMETERS;
    entity CON_FLOWMETERS as SELECT FROM AQUASERVICE_CON_FLOWMETERS;
    entity TECHNICIANS as SELECT FROM AQUASERVICE_TECHNICIANS;
    entity CON_LEAKAGE_DATA as SELECT FROM AQUASERVICE_CON_LEAKAGE_DATA;
}