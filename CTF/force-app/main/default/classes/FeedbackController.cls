public class FeedbackController {
    public Feedback__c feedback { get; set; }
    
    public FeedbackController() {
        feedback = new Feedback__c();
    }
    
    public PageReference submitFeedback() {
        try {
            insert feedback; // No CRUD/FLS checks are performed here
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, 'Can you find Hint on this page?'));
            // HINT: Visit /resource/sensitiveData.txt to find more clues.
        } catch (Exception e) {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error submitting feedback: ' + e.getMessage()));
        }
        return null;
    }
}