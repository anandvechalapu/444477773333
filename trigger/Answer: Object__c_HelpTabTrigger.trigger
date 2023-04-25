Trigger:
trigger HelpTabTrigger on Object__c (
  before insert,
  before update,
  after insert,
  after update
) 
{
  Set<String> helpTabs = new Set<String>{'Data Entry', 'Drill Down', 'Performance', 'Regional Data', 'Trend page', 'Viewing Data'};

  //Upon clicking or hovering over the "Help" tab, a drop-down menu should be displayed with the following options
  if(Trigger.isBefore){
    if(Trigger.isInsert || Trigger.isUpdate){
      for(Object__c o : Trigger.new){
        o.Help_Tab__c = helpTabs;
      }
    }
  }

//When the user selects "Data Entry" from the Help menu, the NDM User Guide for Data Entry should be displayed
  if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isUpdate){
        for(Object__c o : Trigger.new){
          if(o.Help_Tab__c == 'Data Entry'){
            o.NDM_User_Guide_for_Data_Entry__c = '<NDM User Guide for Data Entry>';
          }
        }
    }
  }

//When the user selects "Drill Down" from the Help menu, the NDM User Guide for Drill Down should be displayed
  if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isUpdate){
        for(Object__c o : Trigger.new){
          if(o.Help_Tab__c == 'Drill Down'){
            o.NDM_User_Guide_for_Drill_Down__c = '<NDM User Guide for Drill Down>';
          }
        }
    }
  }

//When the user selects "Performance" from the Help menu, the NDM User Guide for Performance should be displayed
  if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isUpdate){
        for(Object__c o : Trigger.new){
          if(o.Help_Tab__c == 'Performance'){
            o.NDM_User_Guide_for_Performance__c = '<NDM User Guide for Performance>';
          }
        }
    }
  }

//When the user selects "Regional Data" from the Help menu, the NDM User Guide for Regional Data should be displayed
  if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isUpdate){
        for(Object__c o : Trigger.new){
          if(o.Help_Tab__c == 'Regional Data'){
            o.NDM_User_Guide_for_Regional_Data__c = '<NDM User Guide for Regional Data>';
          }
        }
    }
  }

//When the user selects "Trend page" from the Help menu, the NDM User Guide for Trend should be displayed
  if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isUpdate){
        for(Object__c o : Trigger.new){
          if(o.Help_Tab__c == 'Trend page'){
            o.NDM_User_Guide_for_Trend__c = '<NDM User Guide for Trend>';
          }
        }
    }
  }

//When the user selects "Viewing Data" from the Help menu, the NDM User Guide for Viewing Data should be displayed
  if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isUpdate){
        for(Object__c o : Trigger.new){
          if(o.Help_Tab__c == 'Viewing Data'){
            o.NDM_User_Guide_for_Viewing_Data__c = '<NDM User Guide for Viewing Data>';
          }
        }
    }
  }
}