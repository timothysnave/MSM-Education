//

//  webViewController.m
//  MSM Education
//
//  Created by Timothy Evans on 8/1/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "webViewController.h"

@implementation webViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView.delegate = self;
    
    if ([self.form isEqualToString:@"Form A"]){
        [self pushFormAToWebView];
    }
    else if ([self.form isEqualToString:@"Form B"])
    {
        [self pushFormBToWebView];
    }
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self populate];
}

- (void)populate
{
    NSString *javascript;
    NSString *result;

    
    javascript = [self setElement:@"name" withContents:self.evaluation.candidate.description];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"date" withContents:self.evaluation.date];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"subject" withContents:self.evaluation.subject];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"grade level" withContents:self.evaluation.gradeLevel];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"number of students" withContents:self.evaluation.numStudents];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"grade" withContents:self.evaluation.grade];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"evaluator" withContents:@"Insert Evaluator Signature"];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"internship" withContents:[NSString stringWithFormat:@"%d", (self.evaluation.semester+1)]];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    
    
    if ([self.form isEqualToString:@"Form A"])
    {
    javascript = [self setElement:@"instructional planning" withContents:self.evaluation.instructionalPlanning];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"instructional delivery" withContents:self.evaluation.instructionalDelivery];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"content knowledge" withContents:self.evaluation.contentKnowledge];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"management of classroom" withContents:self.evaluation.managementOfClassroom];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    javascript = [self setElement:@"interpersonal relationships" withContents:self.evaluation.interpersonalRelationships];
    result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    }
    
    else if ([self.form isEqualToString:@"Form B"])
    {
        
        javascript = [self setElement:@"plan is approved" withContents:[self getWordsFromCode:self.evaluation.planApproved]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"plan is approved comments" withContents:self.evaluation.planApprovedText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"lesson follows the curriculum" withContents:[self getWordsFromCode:self.evaluation.followsCurriculum]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"lesson follows the curriculum comments" withContents:self.evaluation.followsCurriculumText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"plan includes all components" withContents:[self getWordsFromCode:self.evaluation.includesComponents]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"plan includes all components comments" withContents:self.evaluation.includesComponentsText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"lesson objective is clearly stated" withContents:[self getWordsFromCode:self.evaluation.clearlyStated]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"lesson objective is clearly stated comments" withContents:self.evaluation.clearlyStatedText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"gains attention" withContents:[self getWordsFromCode:self.evaluation.gainsAttention]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"gains attention comments" withContents:self.evaluation.gainsAttentionText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"states objective" withContents:[self getWordsFromCode:self.evaluation.statesObjective]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"states objective comments" withContents:self.evaluation.statesObjectiveText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"motivates student learning" withContents:[self getWordsFromCode:self.evaluation.motivatesStudents]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"motivates student learning comments" withContents:self.evaluation.motivatesStudentsText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"ability to present content" withContents:[self getWordsFromCode:self.evaluation.abilityToPresentContent]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"ability to present content comments" withContents:self.evaluation.abilityToPresentContentText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"models activity" withContents:[self getWordsFromCode:self.evaluation.modelsActivity]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"models activity comments" withContents:self.evaluation.modelsActivityText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"anticipates questions" withContents:[self getWordsFromCode:self.evaluation.abilityToAnticipateQuestions]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"anticipates questions comments" withContents:self.evaluation.abilityToAnticipateQuestionsText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"monitors student learning" withContents:[self getWordsFromCode:self.evaluation.checksForUnderstanding]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"monitors student learning comments" withContents:self.evaluation.checksForUnderstandingText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"uses technology appropriately" withContents:[self getWordsFromCode:self.evaluation.usesTechnology]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"uses technology appropriately comments" withContents:self.evaluation.usesTechnologyText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"closure" withContents:[self getWordsFromCode:self.evaluation.closure]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"closure comments" withContents:self.evaluation.closureText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"independent practice" withContents:[self getWordsFromCode:self.evaluation.independentPractice]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"independent practice comments" withContents:self.evaluation.independentPracticeText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"follows up assignment" withContents:[self getWordsFromCode:self.evaluation.followsUpAssignment]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"follows up assignment comments" withContents:self.evaluation.followsUpAssignmentText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"facilitates understanding" withContents:[self getWordsFromCode:self.evaluation.facilitatesUnderstanding]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"facilitates understanding comments" withContents:self.evaluation.facilitatesUnderstandingText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"communicates" withContents:[self getWordsFromCode:self.evaluation.communicatesExpectations]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"communicates comments" withContents:self.evaluation.communicatesExpectationsText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"maintains rules" withContents:[self getWordsFromCode:self.evaluation.maintainsRules]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"maintains rules comments" withContents:self.evaluation.maintainsRulesText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"distributes material" withContents:[self getWordsFromCode:self.evaluation.distributesMaterial]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"distributes material comments" withContents:self.evaluation.distributesMaterialText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"manages transitions" withContents:[self getWordsFromCode:self.evaluation.managesTransitions]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"manages transitions comments" withContents:self.evaluation.managesTransitionsText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"provides directions" withContents:[self getWordsFromCode:self.evaluation.providesDirections]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"provides directions comments" withContents:self.evaluation.providesDirectionsText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        
        javascript = [self setElement:@"establishes environment" withContents:[self getWordsFromCode:self.evaluation.establishesLearningEnvironment]];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
        javascript = [self setElement:@"establishes environment comments" withContents:self.evaluation.establishesLearningEnvironmentText];
        result = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    }
}


- (void)pushFormAToWebView
{
    NSLog(@"Executing: Pushing form A");
    self.contents = @"<html>\
    <head>\
    <title></title>\
    <meta name='viewport' content='width=device-width' />\
    <script type='text/javascript'>\
    function setValue(tag, value) {\
        document.getElementById(tag).innerHTML = value;\
        return 'Set Element Inner HTML';\
    }\
    function getHTML() {\
    return document.documentElement.innerHTML;\
    }\
    </script>\
    <style type='text/css'>\
    *, html, body{\
    margin: 0; padding: 0;\
        font-family: sans-serif;\
    }\
    h2{ font-weight:  normal; }\
    #bounds{\
    margin: 15px;\
    width: 100%;\
    }\
    #title{ font-weight: bold; margin: 15px; font-size: 16pt; }\
    #evalID{ margin:15px; width:100%; }\
    table{ margin:15px; width:100%; }\
    #evalID td{  }\
    underlined{ text-decoration: underline; }\
    .form1Box {\
    border: 1px solid;\
    margin: 15px;\
    padding: 15px;\
    border-radius: 20px;\
    }\
    </style>\
    </head>\
    <body>\
    <div id='bounds'>\
    <p><span id='title'>Lesson Evaluation</span></p>\
    <table id='evalID'>\
    <tr>\
    <td>Name: &nbsp;&nbsp;&nbsp;&nbsp; <span id='name' class='underlined'></span></td>\
    <td>Date: &nbsp;&nbsp;&nbsp;&nbsp; <span id='date' class='underlined'></span></td>\
    <td>Internship: &nbsp;&nbsp;&nbsp;&nbsp; <span id='internship' class='underlined'></span></td>\
    </tr>\
    <tr>\
    <td>Subject: &nbsp;&nbsp;&nbsp;&nbsp; <span id='subject' class='underlined'></span></td>\
    <td>Grade Level: &nbsp;&nbsp;&nbsp;&nbsp; <span id='grade level' class='underlined'></span></td>\
    <td>Number of Students: &nbsp;&nbsp;&nbsp;&nbsp; <span id='number of students' class='underlined'></span></td>\
    </tr>\
    </table>\
    <div class='form1Box'><p>Instructional Planning</p>\
    <br /><br /><p id='instructional planning'></p>\
    </div>\
    <div class='form1Box'><p>Instructional Delivery/Assessment</p>\
    <br /><br /><p id='instructional delivery'></p>\
    </div>\
    <div class='form1Box'><p>Content Knowledge</p>\
    <br /><br /><p id='content knowledge'></p>\
    </div>\
    <div class='form1Box'><p>Management of Classroom/Behavior</p>\
    <br /><br /><p id='management of classroom'></p>\
    </div>\
    <div class='form1Box'><p>Interpersonal Relationships</p>\
    <br /><br /><p id='interpersonal relationships'></p>\
    </div>\
    <table>\
    <tr>\
    <td>Grade: &nbsp;&nbsp;&nbsp;&nbsp; <span id='grade'></span></td>\
    <td> <!-- Evaluator: &nbsp;&nbsp;&nbsp;&nbsp; <span id='evaluator'></span> --> </td>\
    </tr>\
    </table>\
    </div>\
    </body>\
    </html>";
    [self.webView loadHTMLString:self.contents baseURL:nil];
    
}

- (void)pushFormBToWebView
{
    NSLog(@"Executing: Pushing form B");
    self.contents = @"<html>\
    <head>\
    <title></title>\
    <script type='text/javascript'>\
    function setValue(tag, value) {\
        document.getElementById(tag).innerHTML = value;\
        return 'Set Element Inner HTML';\
    }\
    function getHTML() {\
        return document.documentElement.innerHTML;\
    }\
    </script>\
    <style type='text/css'>\
    *, html, body{\
    margin: 0; padding: 0;\
        font-family: sans-serif;\
    }\
    #title{ font-weight: bold; font-size: 16pt; }\
    #evalID{ margin:15px; width:100%; }\
    #evalID td{  }\
    #bounds{\
    width: 100%;\
    }\
    #bounds *{\
    margin: 15px;\
    }\
    .evaluationTable{\
    margin: 15px;\
    border: 0;\
    /* width: 1024px; */\
    width: 100%;\
    border-collapse: collapse;\
    }\
    .evaluationTable td{\
    border: 1px solid;\
    padding:  5px;\
    \
    }\
    .titleCell{\
    width: 25%;\
    }\
    .ratingCell{\
    width: 15%;\
    }\
    .center{\
    text-align: center;\
    }\
    th{\
    border: 0;\
    text-align: left;\
    }\
    </style>\
    </head>\
    <body>\
    <div id='bounds'>\
    <p><span id='title'>Lesson Evaluation</span></p>\
    <table id='evalID'>\
    <tr>\
    <td>Name: &nbsp;&nbsp;&nbsp;&nbsp; <span id='name' class='underlined'></span></td>\
    <td>Date: &nbsp;&nbsp;&nbsp;&nbsp; <span id='date' class='underlined'></span></td>\
    <td>Internship: &nbsp;&nbsp;&nbsp;&nbsp; <span id='internship' class='underlined'></span></td>\
    </tr>\
    <tr>\
    <td>Subject: &nbsp;&nbsp;&nbsp;&nbsp; <span id='subject' class='underlined'></span></td>\
    <td>Grade Level: &nbsp;&nbsp;&nbsp;&nbsp; <span id='grade level' class='underlined'></span></td>\
    <td>Number of Students: &nbsp;&nbsp;&nbsp;&nbsp; <span id='number of students' class='underlined'><span></td>\
    </tr>\
    </table>\
    <table class='evaluationTable'>\
    <tr><th colspan='3'>Planning</th></tr>\
    <tr>\
    <td class='titleCell'>&nbsp;</td>\
    <td class='ratingCell'>Rating</td>\
    <td id='commentsCell'>Comments</td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Plan is approved</td>\
    <td class='ratingCell'><p id='plan is approved'></p></td>\
    <td><p id='plan is approved comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Lesson follows the curriculum</td>\
    <td class='ratingCell'><p id='lesson follows the curriculum'></p></td>\
    <td><p id='lesson follows the curriculum comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Plan includes all components includeing: modeling, questions, differentiation, diversity</td>\
    <td class='ratingCell'><p id='plan includes all components'></p></td>\
    <td><p id='plan includes all components comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Lesson objective is clearly stated</td>\
    <td class='ratingCell'><p id='lesson objective is clearly stated'></p></td>\
    <td><p id='lesson objective is clearly stated comments'></p></td>\
    </tr>\
    </table>\
    <div class='center'><p id='title'>Instructional Teaching Behaviors<br />Presenting the Lesson</p></div>\
    <table class='evaluationTable'>\
    <tr><th colspan='3'>Beginning</th></tr>\
    <tr>\
    <td class='titleCell'>&nbsp;</td>\
    <td class='ratingCell'>Rating</td>\
    <td id='commentsCell'>Comments</td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Gains attention</td>\
    <td class='ratingCell'><p id='gains attention'></p></td>\
    <td><p id='gains attention comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>States objective</td>\
    <td class='ratingCell'><p id='states objective'></p></td>\
    <td><p id='states objective comments'></p></td>\
    </tr>\
    </table>\
    <table class='evaluationTable'>\
    <tr><th colspan='3'>Middle of the Lesson</th></tr>\
    <tr>\
    <td class='titleCell'>&nbsp;</td>\
    <td class='ratingCell'>Rating</td>\
    <td id='commentsCell'>Comments</td>\
    </tr>\
    <tr>\
    <td class='titleCell'>\
    <p>Motivates student learning by stimulating thinking</p>\
    <ul>\
    <li>Uses an interesting story, artifact, document</li>\
    <li>Asks challenging questions</li>\
    <li>Describes the importance of what they will learn</li>\
    </ul>\
    </td>\
    <td class='ratingCell'><p id='motivates student learning'></p></td>\
    <td><p id='motivates student learning comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Demonstrates ability to present content through a variety\
    of strategies such as lecture, group work, independent activity, etc.</td>\
    <td class='ratingCell'><p id='ability to present content'></p></td>\
    <td><p id='ability to present content comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Understands and models directions or activity</td>\
    <td class='ratingCell'><p id='models activity'></p></td>\
    <td><p id='models activity comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Is able to anticipate student questions</td>\
    <td class='ratingCell'><p id='anticipates questions'></p></td>\
    <td><p id='anticipates questions comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Checks for understanding: Demonstrates the ability to monitor student learning\
    by seeking a variety of responses from varied students.</td>\
    <td class='ratingCell'><p id='monitors student learning'></p></td>\
    <td><p id='monitors student learning comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Uses technology appropriately</td>\
    <td class='ratingCell'><p id='uses technology appropriately'></p></td>\
    <td><p id='uses technology appropriately comments'></p></td>\
    </tr>\
    </table>\
    <table class='evaluationTable'>\
    <tr><th colspan='3'>Ending the lesson</th></tr>\
    <tr>\
    <td class='titleCell'>&nbsp;</td>\
    <td class='ratingCell'>Rating</td>\
    <td id='commentsCell'>Comments</td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Closure</td>\
    <td class='ratingCell'><p id='closure'></p></td>\
    <td><p id='closure comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Independent practice</td>\
    <td class='ratingCell'><p id='independent practice'></p></td>\
    <td><p id='independent practice comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Follows up assignment or assessment<br />Uses informal assessment strategies</td>\
    <td class='ratingCell'><p id='follows up assignment'></p></td>\
    <td><p id='follows up assignment comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Facilitates understanding of material for ELL or special needs students</td>\
    <td class='ratingCell'><p id='facilitates understanding'></p></td>\
    <td><p id='facilitates understanding comments'></p></td>\
    </tr>\
    </table>\
    <table class='evaluationTable'>\
    <tr><th colspan='3'>Classroom Management Behaviors</th></tr>\
    <tr>\
    <td class='titleCell'>&nbsp;</td>\
    <td class='ratingCell'>Rating</td>\
    <td id='commentsCell'>Comments</td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Communicates clear expectations about behavior</td>\
    <td class='ratingCell'><p id='communicates'></p></td>\
    <td><p id='communicates comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Maintains classroom rules fairly, consistently, and effectively</td>\
    <td class='ratingCell'><p id='maintains rules'></p></td>\
    <td><p id='maintains rules comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Distributes material efficiently</td>\
    <td class='ratingCell'><p id='distributes material'></p></td>\
    <td><p id='distributes material comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Manages smooth transitions</td>\
    <td class='ratingCell'><p id='manages transitions'></p></td>\
    <td><p id='manages transitions comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Provides clear directions</td>\
    <td class='ratingCell'><p id='provides directions'></p></td>\
    <td><p id='provides directions comments'></p></td>\
    </tr>\
    <tr>\
    <td class='titleCell'>Establishes a supportive and positive learning environment</td>\
    <td class='ratingCell'><p id='establishes environment'></p></td>\
    <td><p id='establishes environment comments'></p></td>\
    </tr>\
    </table>\
    </div>\
    </body>\
    </html>";
    
    [self.webView loadHTMLString:self.contents baseURL:nil];
}

- (IBAction)sendButtonPressed:(id)sender {
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc]init];
    
    NSString *javascript = @"getHTML()";
    NSString *html = [self.webView stringByEvaluatingJavaScriptFromString:javascript];
    
    [composer setMessageBody:html isHTML:YES];
    composer.mailComposeDelegate = self;
    
    [self presentViewController:composer animated:YES completion:nil];
}

- (NSString *)setElement:(NSString *)element withContents:(NSString *)contents
{
    if (contents == nil)
        contents = @" ";
    
    NSString *x = @"setValue('";
    x = [x stringByAppendingString:element];
    x = [x stringByAppendingString:@"','"];
    x = [x stringByAppendingString:contents];
    x = [x stringByAppendingString:@"')"];
    
    return x;
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    [controller dismissViewControllerAnimated:YES completion:nil];
}

- (NSString *)getWordsFromCode:(NSInteger)code
{
    NSString *result;
    switch(code)
    {
        case 0:
            result = @"Exemplary";
            break;
        case 1:
            result = @"Proficient";
            break;
        case 2:
            result = @"Basic";
            break;
        case 3:
            result = @"Growth Area";
            break;
        default:
            result = @"N/A";
            break;
    }
    return result;
}

@end
