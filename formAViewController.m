//
//  formAViewController.m
//  MSM Education
//
//  Created by Timothy Evans on 5/28/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "formAViewController.h"
#import "EvalTabViewController.h"

@interface formAViewController ()

@end

@implementation formAViewController
@synthesize activeField = _activeField;

@synthesize evaluation = _evaluation;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self registerForKeyboardNotifications];
      
}

- (void)viewWillAppear:(BOOL)animated
{
    [self populateView];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self save];
}

- (void)populateView
{
    self.evaluation = ((EvalTabViewController *)self.tabBarController).evaluation;
    
    NSLog(@"Populating Form A...");
    
    // Populate
    
    self.instructionalPlanningTextArea.text = self.evaluation.instructionalPlanning;
    self.instructionalPlanningTextArea.delegate = self;
    self.instructionalDeliveryTextArea.text = self.evaluation.instructionalDelivery;
    self.instructionalDeliveryTextArea.delegate = self;
    self.contentKnowledgeTextArea.text = self.evaluation.contentKnowledge;
    self.contentKnowledgeTextArea.delegate = self;
    self.managementOfClassroomTextArea.text = self.evaluation.managementOfClassroom;
    self.managementOfClassroomTextArea.delegate = self;
    self.interpersonalRelationshipsTextArea.text = self.evaluation.interpersonalRelationships;
    self.interpersonalRelationshipsTextArea.delegate = self;
    self.gradeTextField.text = self.evaluation.grade;
    
}

- (void)save
{
    NSLog(@"Saving Form A...");
    
    self.evaluation.instructionalPlanning = self.instructionalPlanningTextArea.text;
    self.evaluation.instructionalDelivery = self.instructionalDeliveryTextArea.text;
    self.evaluation.contentKnowledge = self.contentKnowledgeTextArea.text;
    self.evaluation.managementOfClassroom = self.managementOfClassroomTextArea.text;
    self.evaluation.interpersonalRelationships = self.interpersonalRelationshipsTextArea.text;
    self.evaluation.grade = self.gradeTextField.text;
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
