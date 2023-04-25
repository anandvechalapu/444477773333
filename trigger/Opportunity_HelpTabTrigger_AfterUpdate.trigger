trigger HelpTabTrigger on Opportunity (after update) {
    Set<ID> oppIds = new Set<ID>();
    for (Opportunity opp : Trigger.new) {
        if (opp.Help_Tab__c != Trigger.oldMap.get(opp.Id).Help_Tab__c) {
            oppIds.add(opp.Id);
        }
    }
    if (!oppIds.isEmpty()) {
        List<Opportunity> oppList = [SELECT Id, Help_Tab__c FROM Opportunity WHERE Id IN :oppIds];
        for (Opportunity opp : oppList) {
            if (opp.Help_Tab__c == 'Data Entry') {
                Pagereference pageRef = Page.NDMUserGuideDataEntry;
                pageRef.setRedirect(true);
                ApexPages.currentPage().getHeaders().put('Location', pageRef.getUrl());
            }
            else if (opp.Help_Tab__c == 'Drill Down') {
                Pagereference pageRef = Page.NDMUserGuideDrillDown;
                pageRef.setRedirect(true);
                ApexPages.currentPage().getHeaders().put('Location', pageRef.getUrl());
            }
            else if (opp.Help_Tab__c == 'Performance') {
                Pagereference pageRef = Page.NDMUserGuidePerformance;
                pageRef.setRedirect(true);
                ApexPages.currentPage().getHeaders().put('Location', pageRef.getUrl());
            }
            else if (opp.Help_Tab__c == 'Regional Data') {
                Pagereference pageRef = Page.NDMUserGuideRegionalData;
                pageRef.setRedirect(true);
                ApexPages.currentPage().getHeaders().put('Location', pageRef.getUrl());
            }
            else if (opp.Help_Tab__c == 'Trend page') {
                Pagereference pageRef = Page.NDMUserGuideTrend;
                pageRef.setRedirect(true);
                ApexPages.currentPage().getHeaders().put('Location', pageRef.getUrl());
            }
            else if (opp.Help_Tab__c == 'Viewing Data') {
                Pagereference pageRef = Page.NDMUserGuideViewingData;
                pageRef.setRedirect(true);
                ApexPages.currentPage().getHeaders().put('Location', pageRef.getUrl());
            }
        }
    }
}