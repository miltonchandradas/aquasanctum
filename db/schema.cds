@cds.persistence.exists 
Entity ![AQUA_ADMIN_NEW_CUST_CONNECTIONS] {
key     ![Board]: String(80)  @title: 'BOARD' ; 
     ![Zone]: String(40)  @title: 'ZONE' ; 
     ![City]: String(40)  @title: 'CITY' ; 
     ![State]: String(40)  @title: 'STATE' ; 
     ![Country]: String(40)  @title: 'COUNTRY' ; 
     ![Month]: String(3)  @title: 'MONTH' ; 
     ![Year]: String(4)  @title: 'YEAR' ; 
     ![Currency]: String(3)  @title: 'CURRENCY' ; 
     ![CustAddKey]: String(16)  @title: 'CUSTADDKEY' ; 
     ![NewCustomerCount]: Decimal(10)  @title: 'NEWCUSTOMERCOUNT' ; 
     ![RevIncrease]: Decimal(10, 2)  @title: 'REVINCREASE' ; 
}

@cds.persistence.exists 
Entity ![AQUA_LEAKAGE_CALC] {
key     ![City]: String(40)  @title: 'CITY' ; 
     ![SavedWaterUoM]: String(6)  @title: 'SAVEDWATERUOM' ; 
     ![Currency]: String(3)  @title: 'CURRENCY' ; 
     ![DetectedLeaksCount]: Decimal(10)  @title: 'DETECTEDLEAKSCOUNT' ; 
     ![FixedLeaksCount]: Decimal(10)  @title: 'FIXEDLEAKSCOUNT' ; 
     ![SavedWater]: Decimal(10, 2)  @title: 'SAVEDWATER' ; 
     ![SavedRevenue]: Decimal(20)  @title: 'SAVEDREVENUE' ; 
}

@cds.persistence.exists 
Entity ![AQUA_ZONE_NEW_CONNECTIONS] {
key     ![Board]: String(80)  @title: 'BOARD' ; 
key     ![Zone]: String(40)  @title: 'ZONE' ; 
     ![Currency]: String(3)  @title: 'CURRENCY' ; 
     ![NewCustomerCount]: Decimal(10)  @title: 'NEWCUSTOMERCOUNT' ; 
     ![RevIncrease]: Decimal(10, 2)  @title: 'REVINCREASE' ; 
}

@cds.persistence.exists 
Entity ![AQUA_CITY_NEW_CONNECTIONS] {
key     ![City]: String(40)  @title: 'CITY' ; 
     ![Currency]: String(3)  @title: 'CURRENCY' ; 
     ![NewCustomerCount]: Decimal(10)  @title: 'NEWCUSTOMERCOUNT' ; 
     ![RevIncrease]: Decimal(10, 2)  @title: 'REVINCREASE' ; 
}

@cds.persistence.exists
entity![AQUA_LATEST_LEAKAGE_DATA]{
    key![FmID]           : String(16)    @title : 'FmID';
     ![Timestamp]      : Timestamp     @title : 'TIMESTAMP';
       ![FmDesc]         : String(80)    @title : 'FMDESC';
       ![FmType]         : String(40)    @title : 'FMTYPE';
       ![FmZone]         : String(40)    @title : 'FMZONE';
       ![FmCity]         : String(40)    @title : 'FMCITY';
       ![FmState]        : String(40)    @title : 'FMSTATE';
       ![FmCountry]      : String(40)    @title : 'FMCOUNTRY';
       ![FmLatitude]     : String(40)    @title : 'FMLATITUDE';
       ![FmLongitude]    : String(40)    @title : 'FMLONGITUDE';
       ![SourceFmID]     : String(16)    @title : 'SOURCEFMID';
       ![TechnicianID]   : String(4)     @title : 'TECHNICIANID';
       ![Currency]       : String(3)     @title : 'CURRENCY';
       ![WaterFlowUoM]   : String(12)    @title : 'WATERFLOWUOM';
       ![Supply]         : Decimal(10, 2)@title : 'SUPPLY';
       ![Consumption]    : Double        @title : 'CONSUMPTION';
       ![Leakage]        : Double        @title : 'LEAKAGE';
       ![LeakPercentage] : Decimal(34, 2)@title : 'LEAKPERCENTAGE';
       ![RevenueLoss]    : Double        @title : 'REVENUELOSS';
}

@cds.persistence.exists
entity![AQUA_CON_LEAKAGE_DATA]{
    key![FmID]           : String(16)    @title : 'FmID';
    key   ![Timestamp]      : Timestamp     @title : 'TIMESTAMP';
       ![FmDesc]         : String(80)    @title : 'FMDESC';
       ![FmType]         : String(40)    @title : 'FMTYPE';
       ![FmZone]         : String(40)    @title : 'FMZONE';
       ![FmCity]         : String(40)    @title : 'FMCITY';
       ![FmState]        : String(40)    @title : 'FMSTATE';
       ![FmCountry]      : String(40)    @title : 'FMCOUNTRY';
       ![FmLatitude]     : String(40)    @title : 'FMLATITUDE';
       ![FmLongitude]    : String(40)    @title : 'FMLONGITUDE';
       ![SourceFmID]     : String(16)    @title : 'SOURCEFMID';
       ![TechnicianID]   : String(4)     @title : 'TECHNICIANID';
       ![Currency]       : String(3)     @title : 'CURRENCY';
       ![WaterFlowUoM]   : String(12)    @title : 'WATERFLOWUOM';
       ![Month]          : String(12)    @title : 'MONTH';
       ![Date]           : String(12)    @title : 'DATE';
       ![Supply]         : Decimal(10, 2)@title : 'SUPPLY';
       ![Consumption]    : Double        @title : 'CONSUMPTION';
       ![Leakage]        : Double        @title : 'LEAKAGE';
       ![LeakPercentage] : Decimal(34, 2)@title : 'LEAKPERCENTAGE';
       ![RevenueLoss]    : Double        @title : 'REVENUELOSS';
}

@cds.persistence.exists 
Entity ![AQUA_IOT] {
key     ![C_TIMESTAMP]: Timestamp  @title: 'C_TIMESTAMP' ; 
key     ![C_FLOWMETERID]: String(16)  @title: 'C_FLOWMETERID' ; 
key     ![C_FLOWVALUE]: Decimal(10, 2)  @title: 'C_FLOWVALUE' ; 
}

@cds.persistence.exists 
Entity ![AQUA_LEAKAGE] {
key     ![LeakageKey]: String(16)  @title: 'LEAKAGEKEY' ; 
     ![Board]: String(80)  @title: 'BOARD' ; 
     ![Zone]: String(40)  @title: 'ZONE' ; 
     ![City]: String(40)  @title: 'CITY' ; 
     ![State]: String(40)  @title: 'STATE' ; 
     ![Country]: String(40)  @title: 'COUNTRY' ; 
     ![Month]: String(3)  @title: 'MONTH' ; 
     ![Year]: String(4)  @title: 'YEAR' ; 
     ![DetectedLeaksCount]: Decimal(10)  @title: 'DETECTEDLEAKSCOUNT' ; 
     ![FixedLeaksCount]: Decimal(10)  @title: 'FIXEDLEAKSCOUNT' ; 
     ![SavedWater]: Decimal(10, 2)  @title: 'SAVEDWATER' ; 
     ![SavedWaterUoM]: String(6)  @title: 'SAVEDWATERUOM' ; 
     ![NewCustomerCount]: Decimal(10)  @title: 'NEWCUSTOMERCOUNT' ; 
     ![RevIncrease]: Decimal(10, 2)  @title: 'REVINCREASE' ; 
     ![Currency]: String(3)  @title: 'CURRENCY' ; 
     ![CreatedBy]: String(40)  @title: 'CREATEDBY' ; 
     ![CreatedTimestamp]: Timestamp  @title: 'CREATEDTIMESTAMP' ; 
}

@cds.persistence.exists
entity![AQUA_FLOWMETER_DATA_METRICS]{
    key FmID              : String(16);
        FmDesc            : String(80);
        FmType            : String(40);
        FmZone            : String(40);
        FmCity            : String(40);
        FmState           : String(40);
        FmCountry         : String(40);
        FmLatitude        : String(40);
        FmLongitude       : String(40);
        SourceFmID        : String(16);
        TechnicianID      : String(4);
        Currency          : String(3);
        WaterFlowUoM      : String(12);
        SourceFmDesc      : String(80);
        SourceFmLatitude  : String(40);
        SourceFmLongitude : String(40);
        Supply            : Double;
        Leakage           : Double;
        LeakPercentage    : Decimal(34, 2);
        RevenueLoss       : Double;
        Timestamp         : DateTime;
}


@cds.persistence.exists
entity![AQUA_FLOWMETERS]{
    key FmID             : String(16);
        FmDesc           : String(80);
        FmType           : String(40);
        FmZone           : String(40);
        FmCity           : String(40);
        FmState          : String(40);
        FmCountry        : String(40);
        FmLatitude       : String(40);
        FmLongitude      : String(40);
        SourceFmID       : String(16);
        TechnicianID     : String(4);
        CURRENCY         : String(3);
        WATERFLOWUOM     : String(12);
        END_BRANCH       : String(1);
        CreatedBy        : String(40);
        CreatedTimeStamp : DateTime;
}

@cds.persistence.exists 
Entity ![AQUA_CUST_ADDITIONS] {
key     ![CustAddKey]: String(16)  @title: 'CUSTADDKEY' ; 
     ![Board]: String(80)  @title: 'BOARD' ; 
    ![Zone]: String(40)  @title: 'ZONE' ; 
     ![City]: String(40)  @title: 'CITY' ; 
     ![State]: String(40)  @title: 'STATE' ; 
     ![Country]: String(40)  @title: 'COUNTRY' ; 
     ![Month]: String(3)  @title: 'MONTH' ; 
     ![Year]: String(4)  @title: 'YEAR' ; 
     ![NewCustomerCount]: Decimal(10)  @title: 'NEWCUSTOMERCOUNT' ; 
     ![RevIncrease]: Decimal(10, 2)  @title: 'REVINCREASE' ; 
     ![Currency]: String(3)  @title: 'CURRENCY' ; 
     ![CreatedBy]: String(40)  @title: 'CREATEDBY' ; 
     ![CreatedTimestamp]: Timestamp  @title: 'CREATEDTIMESTAMP' ; 
}

// @cds.persistence.exists
// entity AQUA_CHILDFLOWMETERS {
//     key FmID             : String(16);
//         FmDesc           : String(80);
//         FmType           : String(40);
//         FmZone           : String(40);
//         FmCity           : String(40);
//         FmState          : String(40);
//         FmCountry        : String(40);
//         FmLatitude       : String(40);
//         FmLongitude      : String(40);
//         SourceFmID       : String(16);
//         TechnicianID     : String(4);
//         CURRENCY         : String(3);
//         WATERFLOWUOM     : String(12);
//         END_BRANCH       : String(1);
//         CreatedBy        : String(40);
//         CreatedTimeStamp : DateTime;
// }

@cds.persistence.exists
entity![AQUA_CON_FLOWMETERS]{
    key ConFmID          : String(16);
        ConFmType        : String(40);
        ConFirstname     : String(80);
        ConLastname      : String(80);
        ConAddress1      : String(80);
        ConAddress2      : String(80);
        ConFmZone        : String(40);
        ConFmCity        : String(40);
        ConFmState       : String(40);
        ConFmCountry     : String(40);
        ConHouseArea     : String(16);
        ConHouseAreaUoM  : String(6);
        ConHouseNoOfMem  : String(6);
        AccumCons        : Decimal(10, 2);
        AccumConsUoM     : String(6);
        WaterQuality     : String(20);
        SourceFmID       : String(16);
        CreatedBy        : String(40);
        CreatedTimeStamp : DateTime;
}

@cds.persistence.exists
entity AQUA_TECHNICIANS {

    key ![TechID]              : String(4);
        ![TechFirstname]    : String(80);
        ![TechLastname]     : String(80);
        ![TechRole]         : String(80);
        ![TechEmail]        : String(100);
        ![TechMobile]       : String(80);
        ![CreatedBy]        : String(40);
        ![CreatedTimestamp] : DateTime;

}




// using {
//     Currency,
//     Country,
//     cuid,
//     managed
// } from '@sap/cds/common';

// namespace aqua;

// entity Con_Flowmeters : cuid, managed {
//     ConFmType       : String(40);
//     ConFirstName    : String(80);
//     ConLastName     : String(80);
//     ConAddress1     : String(80);
//     ConAddress2     : String(80);
//     ConFmZone       : String(40);
//     ConFmCity       : String(40);
//     ConFmState      : String(40);
//     ConFmCountry    : String(40);
//     ConHouseArea    : String(16);
//     ConHouseAreaUoM : String(6);
//     ConHouseNoOfMem : Integer;
//     AccumCons       : Decimal(10, 2);
//     AccumConsUoM    : String(6);
//     WaterQuality    : String(20);
//     SourceFmID      : String(16);
// }

// entity Leakage : cuid, managed {
//     Board              : String(80);
//     Zone               : String(40);
//     City               : String(40);
//     State              : String(40);
//     Country            : String(40);
//     Month              : String(3);
//     Year               : String(4);
//     DetectedLeaksCount : Decimal(10, 0);
//     FixedLeaksCount    : Decimal(10, 0);
//     SavedWater         : Decimal(10, 2);
//     SavedWaterUoM      : String(6);
//     NewCustomerCount   : Decimal(10, 0);
//     RevIncrease        : Decimal(10, 2);
// }
