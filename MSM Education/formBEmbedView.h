//
//  formBEmbedView.h
//  MSM Education
//
//  Created by Timothy Evans on 6/5/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Evaluation.h"

@interface formBEmbedView : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) Evaluation *evaluation;

@property (weak, nonatomic) IBOutlet UISegmentedControl *planApprovedSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *followsCurriculumSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *includesComponentsSegView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clearlyStatedSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *gainsAttentionSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *statesObjectiveSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *motivatesStudentsSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *abilityToPresentContentSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *abilityToAnticpateQuestionsSegView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *checksForUnderstandingSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *followsUpAssignmentSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *facilitatesUnderstandingSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *maintainsRulesSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *distributesMaterialSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *managesTransitionsSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *providesDirectionsSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *establishesLearningEnvironmentSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *communicatesExpectationSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *usesTechnologySegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *closureSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *independentPracticeSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *modelsActivitySegControl;


@property (weak, nonatomic) IBOutlet UITextView *planApprovedTextView;
@property (weak, nonatomic) IBOutlet UITextView *followsCurriculumTextView;
@property (weak, nonatomic) IBOutlet UITextView *includesComponentsTextView;
@property (weak, nonatomic) IBOutlet UITextView *clearlyStatedTextView;
@property (weak, nonatomic) IBOutlet UITextView *gainsAttentionTextView;
@property (weak, nonatomic) IBOutlet UITextView *statesObjectiveTextView;
@property (weak, nonatomic) IBOutlet UITextView *motivatesStudentsTextView;
@property (weak, nonatomic) IBOutlet UITextView *abilityToPresentContentTextView;
@property (weak, nonatomic) IBOutlet UITextView *abilityToAnticipateQuestionsTextView;
@property (weak, nonatomic) IBOutlet UITextView *checksForUnderstandingTextView;
@property (weak, nonatomic) IBOutlet UITextView *followsUpAssignmentTextView;
@property (weak, nonatomic) IBOutlet UITextView *facilitatesUnderstandingTextView;
@property (weak, nonatomic) IBOutlet UITextView *maintainsRulesTextView;
@property (weak, nonatomic) IBOutlet UITextView *distributesMaterialTextView;
@property (weak, nonatomic) IBOutlet UITextView *managesTransitionsTextView;
@property (weak, nonatomic) IBOutlet UITextView *providesDirectionsTextView;
@property (weak, nonatomic) IBOutlet UITextView *establishesLearningEnvironmentTextView;
@property (weak, nonatomic) IBOutlet UITextView *communicatesExpectationsTextView;
@property (weak, nonatomic) IBOutlet UITextView *usesTechnologyTextView;
@property (weak, nonatomic) IBOutlet UITextView *closureTextView;
@property (weak, nonatomic) IBOutlet UITextView *independentPracticeTextView;
@property (weak, nonatomic) IBOutlet UITextView *modelsActivityTextView;

- (void)populateView;
- (void)save;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) UITextField *activeField;

@end
