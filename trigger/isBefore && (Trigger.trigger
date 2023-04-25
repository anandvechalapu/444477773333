trigger GlobalSettingsTrigger on Global_Settings__c (before insert, before update) {
    //Validate Weighting Factor (0 mins) field
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        if(Trigger.new[0].Weighting_Factor_0_mins__c == null || Trigger.new[0].Weighting_Factor_0_mins__c < 0 || Trigger.new[0].Weighting_Factor_0_mins__c > 100) {
            Trigger.new[0].addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/Number should be <=100');
        }
    }
    
    //Validate Weighting Factor (1-10 mins) field
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        if(Trigger.new[0].Weighting_Factor_1_10_mins__c == null || Trigger.new[0].Weighting_Factor_1_10_mins__c < 0 || Trigger.new[0].Weighting_Factor_1_10_mins__c > 100) {
            Trigger.new[0].addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/Number should be <=100');
        }
    }
    
    //Validate Weighting Factor (11-20 mins) field
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        if(Trigger.new[0].Weighting_Factor_11_20_mins__c == null || Trigger.new[0].Weighting_Factor_11_20_mins__c < 0 || Trigger.new[0].Weighting_Factor_11_20_mins__c > 100) {
            Trigger.new[0].addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/Number should be <=100');
        }
    }
    
    //Validate Weighting Factor (21-30 mins) field
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        if(Trigger.new[0].Weighting_Factor_21_30_mins__c == null || Trigger.new[0].Weighting_Factor_21_30_mins__c < 0 || Trigger.new[0].Weighting_Factor_21_30_mins__c > 100) {
            Trigger.new[0].addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/Number should be <=100');
        }
    }
    
    //Validate Weighting Factor (31-60 mins) field
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        if(Trigger.new[0].Weighting_Factor_31_60_mins__c == null || Trigger.new[0].Weighting_Factor_31_60_mins__c < 0 || Trigger.new[0].Weighting_Factor_31_60_mins__c > 100) {
            Trigger.new[0].addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/Number should be <=100');
        }
    }
    
    //Validate Weighting Factor (60+ mins) field
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        if(Trigger.new[0].Weighting_Factor_60_plus_mins__c == null || Trigger.new[0].Weighting_Factor_60_plus_mins__c < 0 || Trigger.new[0].Weighting_Factor_60_plus_mins__c > 100) {
            Trigger.new[0].addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/Number should be <=100');
        }
    }
    
    //Validate Delivery Cut-off Efficiency field
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        if(Trigger.new[0].Delivery_Cut_off_Efficiency__c == null || Trigger.new[0].Delivery_Cut_off_Efficiency__c < 0 || Trigger.new[0].Delivery_Cut_off_Efficiency__c > 100) {
            Trigger.new[0].addError('SETUP INVALID PERCENTAGE/NUMERIC VALUE/Number should be <=100');
        }
    }
    
    //Validate Maximum Cap Compensation field
    if(Trigger.