trigger GlobalSettingsTrigger on Global_Settings__c (before insert, before update) {
  //Set up a list to store validation errors
  List<String> errors = new List<String>();

  //Validate Weighting Factor (0 mins)
  if(Trigger.isBefore && Trigger.isInsert || Trigger.isBefore && Trigger.isUpdate){
    for(Global_Settings__c gs : Trigger.new){
      if(gs.Weighting_Factor_0_mins__c == null || gs.Weighting_Factor_0_mins__c <= 0 || gs.Weighting_Factor_0_mins__c > 100){
        errors.add('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100 for Weighting Factor (0 mins)');
      }
    }
  }
  
  //Validate Weighting Factor (1-10 mins)
  if(Trigger.isBefore && Trigger.isInsert || Trigger.isBefore && Trigger.isUpdate){
    for(Global_Settings__c gs : Trigger.new){
      if(gs.Weighting_Factor_1_10_mins__c == null || gs.Weighting_Factor_1_10_mins__c <= 0 || gs.Weighting_Factor_1_10_mins__c > 100){
        errors.add('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100 for Weighting Factor (1-10 mins)');
      }
    }
  }

  //Validate Weighting Factor (11-20 mins)
  if(Trigger.isBefore && Trigger.isInsert || Trigger.isBefore && Trigger.isUpdate){
    for(Global_Settings__c gs : Trigger.new){
      if(gs.Weighting_Factor_11_20_mins__c == null || gs.Weighting_Factor_11_20_mins__c <= 0 || gs.Weighting_Factor_11_20_mins__c > 100){
        errors.add('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100 for Weighting Factor (11-20 mins)');
      }
    }
  }
  
  //Validate Weighting Factor (21-30 mins)
  if(Trigger.isBefore && Trigger.isInsert || Trigger.isBefore && Trigger.isUpdate){
    for(Global_Settings__c gs : Trigger.new){
      if(gs.Weighting_Factor_21_30_mins__c == null || gs.Weighting_Factor_21_30_mins__c <= 0 || gs.Weighting_Factor_21_30_mins__c > 100){
        errors.add('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100 for Weighting Factor (21-30 mins)');
      }
    }
  }
  
  //Validate Weighting Factor (31-60 mins)
  if(Trigger.isBefore && Trigger.isInsert || Trigger.isBefore && Trigger.isUpdate){
    for(Global_Settings__c gs : Trigger.new){
      if(gs.Weighting_Factor_31_60_mins__c == null || gs.Weighting_Factor_31_60_mins__c <= 0 || gs.Weighting_Factor_31_60_mins__c > 100){
        errors.add('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100 for Weighting Factor (31-60 mins)');
      }
    }
  }
  
  //Validate Weighting Factor (60+ mins)
  if(Trigger.isBefore && Trigger.isInsert || Trigger.isBefore && Trigger.isUpdate){
    for(Global_Settings__c gs : Trigger.new){
      if(gs.Weighting_Factor_60_plus_mins__c == null || gs.Weighting_Factor_60_plus_mins__c <= 0 || gs.Weighting_Factor_60_plus_mins__c > 100){
        errors.add('SETUP INVALID PERCENTAGE/NUMERIC VALUE/ Number should be <=100 for Weighting Factor (60+ mins)');
      }
    }
  }
  
  //Validate Delivery Cut-off Efficiency
  if(Trigger.isBefore && Trigger.isInsert || Trigger.isBefore && Trigger.isUpdate){
    for(Global