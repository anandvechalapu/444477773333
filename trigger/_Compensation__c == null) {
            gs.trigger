trigger globalSettingsTrigger on NDM__Global_Settings__c (before insert, before update) {
    for (NDM__Global_Settings__c gs : Trigger.new) {
        //Validate Weighting Factor (0 mins)
        if (gs.NDM__Weighting_Factor_0_mins__c == null) {
            gs.addError('Weighting Factor (0 mins) is required');
        }
        else if (gs.NDM__Weighting_Factor_0_mins__c < 0 || gs.NDM__Weighting_Factor_0_mins__c > 100) {
            gs.addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100');
        }
        //Validate Weighting Factor (1-10 mins)
        if (gs.NDM__Weighting_Factor_1_10_mins__c == null) {
            gs.addError('Weighting Factor (1-10 mins) is required');
        }
        else if (gs.NDM__Weighting_Factor_1_10_mins__c < 0 || gs.NDM__Weighting_Factor_1_10_mins__c > 100) {
            gs.addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100');
        }
        //Validate Weighting Factor (11-20 mins)
        if (gs.NDM__Weighting_Factor_11_20_mins__c == null) {
            gs.addError('Weighting Factor (11-20 mins) is required');
        }
        else if (gs.NDM__Weighting_Factor_11_20_mins__c < 0 || gs.NDM__Weighting_Factor_11_20_mins__c > 100) {
            gs.addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100');
        }
        //Validate Weighting Factor (21-30 mins)
        if (gs.NDM__Weighting_Factor_21_30_mins__c == null) {
            gs.addError('Weighting Factor (21-30 mins) is required');
        }
        else if (gs.NDM__Weighting_Factor_21_30_mins__c < 0 || gs.NDM__Weighting_Factor_21_30_mins__c > 100) {
            gs.addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100');
        }
        //Validate Weighting Factor (31-60 mins)
        if (gs.NDM__Weighting_Factor_31_60_mins__c == null) {
            gs.addError('Weighting Factor (31-60 mins) is required');
        }
        else if (gs.NDM__Weighting_Factor_31_60_mins__c < 0 || gs.NDM__Weighting_Factor_31_60_mins__c > 100) {
            gs.addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100');
        }
        //Validate Weighting Factor (60+ mins)
        if (gs.NDM__Weighting_Factor_60_plus_mins__c == null) {
            gs.addError('Weighting Factor (60+ mins) is required');
        }
        else if (gs.NDM__Weighting_Factor_60_plus_mins__c < 0 || gs.NDM__Weighting_Factor_60_plus_mins__c > 100) {
            gs.addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100');
        }
        //Validate Delivery Cut-off Efficiency
        if (gs.NDM__Delivery_Cut_off_Efficiency__c == null) {
            gs.addError('Delivery Cut-off Efficiency is required');
        }
        else if (gs.NDM__Delivery_Cut_off_Efficiency__c < 0 || gs.NDM__Delivery_Cut_off_Efficiency__c > 100) {
            gs.addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100');
        }
        //Validate Maximum Cap Compensation
        if (gs.NDM__Maximum_Cap