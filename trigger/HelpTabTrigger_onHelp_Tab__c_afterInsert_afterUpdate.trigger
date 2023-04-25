trigger HelpTabTrigger on Help_Tab__c (after insert, after update)
{
    //list of help tabs
    List<Help_Tab__c> helpTabs = new List<Help_Tab__c>();
    
    //query the help tab records
    for (Help_Tab__c h : Trigger.new)
    {
        if (h.Name == 'Data Entry')
        {
            helpTabs.add(h);
        }
        else if (h.Name == 'Drill Down')
        {
            helpTabs.add(h);
        }
        else if (h.Name == 'Performance')
        {
            helpTabs.add(h);
        }
        else if (h.Name == 'Regional Data')
        {
            helpTabs.add(h);
        }
        else if (h.Name == 'Trend page')
        {
            helpTabs.add(h);
        }
        else if (h.Name == 'Viewing Data')
        {
            helpTabs.add(h);
        }
    }
    
    //display the NDM User Guide based on the selected Help Tab
    if (helpTabs.size() > 0)
    {
        for (Help_Tab__c h : helpTabs)
        {
            if (h.Name == 'Data Entry')
            {
                //display NDM User Guide for Data Entry
            }
            else if (h.Name == 'Drill Down')
            {
                //display NDM User Guide for Drill Down
            }
            else if (h.Name == 'Performance')
            {
                //display NDM User Guide for Performance
            }
            else if (h.Name == 'Regional Data')
            {
                //display NDM User Guide for Regional Data
            }
            else if (h.Name == 'Trend page')
            {
                //display NDM User Guide for Trend
            }
            else if (h.Name == 'Viewing Data')
            {
                //display NDM User Guide for Viewing Data
            }
        }
    }
}