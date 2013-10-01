//
//  formBEmbedView.m
//  MSM Education
//
//  Created by Timothy Evans on 6/5/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "formBEmbedView.h"
#import "EvalTabViewController.h"

@interface formBEmbedView ()

@end

@implementation formBEmbedView

@synthesize evaluation = _evaluation;

@synthesize planApprovedTextView = _planApprovedTextView;
@synthesize planApprovedSegControl = _planApprovedSegControl;


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"View Loaded");
    [self registerForKeyboardNotifications];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self populateView];
}

-(void)populateView
{
    NSLog(@"Populating Form B...");
    // SegControls
    
    [self.planApprovedSegControl setSelectedSegmentIndex:self.evaluation.planApproved];
    [self.followsCurriculumSegControl setSelectedSegmentIndex:self.evaluation.followsCurriculum];
    [self.includesComponentsSegView setSelectedSegmentIndex:self.evaluation.includesComponents];
    [self.clearlyStatedSegControl setSelectedSegmentIndex:self.evaluation.clearlyStated];
    [self.gainsAttentionSegControl setSelectedSegmentIndex:self.evaluation.gainsAttention];
    [self.statesObjectiveSegControl setSelectedSegmentIndex:self.evaluation.statesObjective];
    [self.motivatesStudentsSegControl setSelectedSegmentIndex:self.evaluation.motivatesStudents];
    [self.abilityToPresentContentSegControl setSelectedSegmentIndex:self.evaluation.abilityToPresentContent];
    [self.abilityToAnticpateQuestionsSegView setSelectedSegmentIndex:self.evaluation.abilityToAnticipateQuestions];
    [self.checksForUnderstandingSegControl setSelectedSegmentIndex:self.evaluation.checksForUnderstanding];
    [self.followsUpAssignmentSegControl setSelectedSegmentIndex:self.evaluation.followsUpAssignment];
    [self.facilitatesUnderstandingSegControl setSelectedSegmentIndex:self.evaluation.facilitatesUnderstanding];
    [self.maintainsRulesSegControl setSelectedSegmentIndex:self.evaluation.maintainsRules];
    [self.distributesMaterialSegControl setSelectedSegmentIndex:self.evaluation.distributesMaterial];
    [self.managesTransitionsSegControl setSelectedSegmentIndex:self.evaluation.managesTransitions];
    [self.providesDirectionsSegControl setSelectedSegmentIndex:self.evaluation.providesDirections];
    [self.establishesLearningEnvironmentSegControl setSelectedSegmentIndex:self.evaluation.establishesLearningEnvironment];
    [self.communicatesExpectationSegControl setSelectedSegmentIndex:self.evaluation.communicatesExpectations];
    [self.usesTechnologySegControl setSelectedSegmentIndex:self.evaluation.usesTechnology];
    [self.closureSegControl setSelectedSegmentIndex:self.evaluation.closure];
    [self.independentPracticeSegControl setSelectedSegmentIndex:self.evaluation.independentPractice];
    [self.modelsActivitySegControl setSelectedSegmentIndex:self.evaluation.modelsActivity];

    
    // Text Views
    
    self.planApprovedTextView.text = self.evaluation.planApprovedText;
    self.planApprovedTextView.delegate = self;
    self.followsCurriculumTextView.text = self.evaluation.followsCurriculumText;
    self.followsCurriculumTextView.delegate = self;
    self.includesComponentsTextView.text = self.evaluation.includesComponentsText;
    self.includesComponentsTextView.delegate = self;
    self.clearlyStatedTextView.text = self.evaluation.clearlyStatedText;
    self.clearlyStatedTextView.delegate = self;
    self.gainsAttentionTextView.text = self.evaluation.gainsAttentionText;
    self.gainsAttentionTextView.delegate = self;
    self.statesObjectiveTextView.text = self.evaluation.statesObjectiveText;
    self.statesObjectiveTextView.delegate = self;
    self.motivatesStudentsTextView.text = self.evaluation.motivatesStudentsText;
    self.motivatesStudentsTextView.delegate = self;
    self.abilityToPresentContentTextView.text = self.evaluation.abilityToPresentContentText;
    self.abilityToPresentContentTextView.delegate = self;
    self.abilityToAnticipateQuestionsTextView.text = self.evaluation.abilityToAnticipateQuestionsText;
    self.abilityToAnticipateQuestionsTextView.delegate = self;
    self.checksForUnderstandingTextView.text = self.evaluation.checksForUnderstandingText;
    self.checksForUnderstandingTextView.delegate = self;
    self.followsUpAssignmentTextView.text = self.evaluation.followsUpAssignmentText;
    self.followsUpAssignmentTextView.delegate = self;
    self.facilitatesUnderstandingTextView.text = self.evaluation.facilitatesUnderstandingText;
    self.facilitatesUnderstandingTextView.delegate = self;
    self.maintainsRulesTextView.text = self.evaluation.maintainsRulesText;
    self.maintainsRulesTextView.delegate = self;
    self.distributesMaterialTextView.text = self.evaluation.distributesMaterialText;
    self.distributesMaterialTextView.delegate = self;
    self.managesTransitionsTextView.text = self.evaluation.managesTransitionsText;
    self.managesTransitionsTextView.delegate = self;
    self.providesDirectionsTextView.text = self.evaluation.providesDirectionsText;
    self.providesDirectionsTextView.delegate = self;
    self.establishesLearningEnvironmentTextView.text = self.evaluation.establishesLearningEnvironmentText;
    self.establishesLearningEnvironmentTextView.delegate = self;
    self.communicatesExpectationsTextView.text = self.evaluation.communicatesExpectationsText;
    self.communicatesExpectationsTextView.delegate = self;
    self.usesTechnologyTextView.text = self.evaluation.usesTechnologyText;
    self.usesTechnologyTextView.delegate = self;
    self.closureTextView.text = self.evaluation.closureText;
    self.closureTextView.delegate = self;
    self.independentPracticeTextView.text = self.evaluation.independentPracticeText;
    self.independentPracticeTextView.delegate = self;
    self.modelsActivityTextView.text = self.evaluation.modelsActivityText;
    self.modelsActivityTextView.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self save];
}

-(void)save
{
    // Save stuff back into the evaluation, here

    NSLog(@"Saving Form B...");
    
    //Seg Controls
    self.evaluation.planApproved = [self.planApprovedSegControl selectedSegmentIndex];
    self.evaluation.followsCurriculum = [self.followsCurriculumSegControl selectedSegmentIndex];
    self.evaluation.includesComponents = [self.includesComponentsSegView selectedSegmentIndex];
    self.evaluation.clearlyStated = [self.clearlyStatedSegControl selectedSegmentIndex];
    self.evaluation.gainsAttention = [self.gainsAttentionSegControl selectedSegmentIndex];
    self.evaluation.statesObjective = [self.statesObjectiveSegControl selectedSegmentIndex];
    self.evaluation.motivatesStudents = [self.motivatesStudentsSegControl selectedSegmentIndex];
    self.evaluation.abilityToPresentContent = [self.abilityToPresentContentSegControl selectedSegmentIndex];
    self.evaluation.abilityToAnticipateQuestions = [self.abilityToAnticpateQuestionsSegView selectedSegmentIndex];
    self.evaluation.checksForUnderstanding = [self.checksForUnderstandingSegControl selectedSegmentIndex];
    self.evaluation.followsUpAssignment = [self.followsUpAssignmentSegControl selectedSegmentIndex];
    self.evaluation.facilitatesUnderstanding = [self.facilitatesUnderstandingSegControl selectedSegmentIndex];
    self.evaluation.maintainsRules = [self.maintainsRulesSegControl selectedSegmentIndex];
    self.evaluation.distributesMaterial = [self.distributesMaterialSegControl selectedSegmentIndex];
    self.evaluation.managesTransitions = [self.managesTransitionsSegControl selectedSegmentIndex];
    self.evaluation.providesDirections = [self.providesDirectionsSegControl selectedSegmentIndex];
    self.evaluation.establishesLearningEnvironment = [self.establishesLearningEnvironmentSegControl selectedSegmentIndex];
    self.evaluation.communicatesExpectations = [self.communicatesExpectationSegControl selectedSegmentIndex];
    self.evaluation.usesTechnology = [self.usesTechnologySegControl selectedSegmentIndex];
    self.evaluation.closure = [self.closureSegControl selectedSegmentIndex];
    self.evaluation.independentPractice = [self.independentPracticeSegControl selectedSegmentIndex];
    self.evaluation.modelsActivity = [self.modelsActivitySegControl selectedSegmentIndex];
    
    // Text Views
    
    self.evaluation.planApprovedText = self.planApprovedTextView.text;
    self.evaluation.followsCurriculumText = self.followsCurriculumTextView.text;
    self.evaluation.includesComponentsText = self.includesComponentsTextView.text;
    self.evaluation.clearlyStatedText = self.clearlyStatedTextView.text;
    self.evaluation.gainsAttentionText = self.gainsAttentionTextView.text;
    self.evaluation.statesObjectiveText = self.statesObjectiveTextView.text;
    self.evaluation.motivatesStudentsText = self.motivatesStudentsTextView.text;
    self.evaluation.abilityToPresentContentText = self.abilityToPresentContentTextView.text;
    self.evaluation.abilityToAnticipateQuestionsText = self.abilityToAnticipateQuestionsTextView.text;
    self.evaluation.checksForUnderstandingText = self.checksForUnderstandingTextView.text;
    self.evaluation.followsUpAssignmentText = self.followsUpAssignmentTextView.text;
    self.evaluation.facilitatesUnderstandingText = self.facilitatesUnderstandingTextView.text;
    self.evaluation.maintainsRulesText = self.maintainsRulesTextView.text;
    self.evaluation.distributesMaterialText = self.distributesMaterialTextView.text;
    self.evaluation.managesTransitionsText = self.managesTransitionsTextView.text;
    self.evaluation.providesDirectionsText = self.providesDirectionsTextView.text;
    self.evaluation.establishesLearningEnvironmentText = self.establishesLearningEnvironmentTextView.text;
    self.evaluation.communicatesExpectationsText = self.communicatesExpectationsTextView.text;
    self.evaluation.usesTechnologyText = self.usesTechnologyTextView.text;
    self.evaluation.closureText = self.closureTextView.text;
    self.evaluation.independentPracticeText = self.independentPracticeTextView.text;
    self.evaluation.modelsActivityText = self.modelsActivityTextView.text;
    
}


#pragma mark KeyboardDidAppearViewAdjustments

- (void)registerForKeyboardNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];
    
}

// Called when the UIKeyboardDidShowNotification is sent.
- (void)keyboardWasShown:(NSNotification*)aNotification
{
    NSDictionary* info = [aNotification userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbSize.height, 0.0);
    self.scrollView.contentInset = contentInsets;
    self.scrollView.scrollIndicatorInsets = contentInsets;
    
    // If active text field is hidden by keyboard, scroll it so it's visible
    // Your application might not need or want this behavior.
    CGRect aRect = self.view.frame;
    aRect.size.height -= kbSize.height;
    if (!CGRectContainsPoint(aRect, self.activeField.frame.origin) ) {
        CGPoint scrollPoint = CGPointMake(0.0, self.activeField.frame.origin.y-kbSize.height);
        [self.scrollView setContentOffset:scrollPoint animated:YES];
    }
}

// Called when the UIKeyboardWillHideNotification is sent
- (void)keyboardWillBeHidden:(NSNotification*)aNotification
{
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    self.scrollView.contentInset = contentInsets;
    self.scrollView.scrollIndicatorInsets = contentInsets;
}

#pragma mark UITextViewDelegate-Methods

- (void)textViewDidEndEditing:(UITextView *)textView
{
    [self save];
}

@end
