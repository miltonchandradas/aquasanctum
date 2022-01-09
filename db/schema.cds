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
entity AQUA_CHILDFLOWMETERS {
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

@cds.persistence.exists
entity![AQUA_CON_LEAKAGE_DATA]{
    key![FmID]           : String(16)    @title : 'FmID';
       ![TIMESTAMP]      : Timestamp     @title : 'TIMESTAMP';
       ![FMDESC]         : String(80)    @title : 'FMDESC';
       ![FMTYPE]         : String(40)    @title : 'FMTYPE';
       ![FMZONE]         : String(40)    @title : 'FMZONE';
       ![FMCITY]         : String(40)    @title : 'FMCITY';
       ![FMSTATE]        : String(40)    @title : 'FMSTATE';
       ![FMCOUNTRY]      : String(40)    @title : 'FMCOUNTRY';
       ![FMLATITUDE]     : String(40)    @title : 'FMLATITUDE';
       ![FMLONGITUDE]    : String(40)    @title : 'FMLONGITUDE';
       ![SOURCEFMID]     : String(16)    @title : 'SOURCEFMID';
       ![TECHNICIANID]   : String(4)     @title : 'TECHNICIANID';
       ![CURRENCY]       : String(3)     @title : 'CURRENCY';
       ![WATERFLOWUOM]   : String(12)    @title : 'WATERFLOWUOM';
       ![MONTH]          : String(12)    @title : 'MONTH';
       ![DATE]           : String(12)    @title : 'DATE';
       ![SUPPLY]         : Decimal(10, 2)@title : 'SUPPLY';
       ![CONSUMPTION]    : Double        @title : 'CONSUMPTION';
       ![LEAKAGE]        : Double        @title : 'LEAKAGE';
       ![LEAKPERCENTAGE] : Decimal(34, 2)@title : 'LEAKPERCENTAGE';
       ![REVENUELOSS]    : Double        @title : 'REVENUELOSS';
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
