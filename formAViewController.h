//
//  formAViewController.h
//  MSM Education
//
//  Created by Timothy Evans on 5/28/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Evaluation.h"


@interface formAViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) Evaluation *evaluation;

// Data fields
@property (weak, nonatomic) IBOutlet UITextView *instructionalPlanningTextArea;
@property (weak, nonatomic) IBOutlet UITextView *instructionalDeliveryTextArea;
@property (weak, nonatomic) IBOutlet UITextView *contentKnowledgeTextArea;
@property (weak, nonatomic) IBOutlet UITextView *managementOfClassroomTextArea;
@property (weak, nonatomic) IBOutlet UITextView *interpersonalRelationshipsTextArea;
@property (weak, nonatomic) IBOutlet UITextField *gradeTextField;
//

@property (weak, nonatomic) UITextField *activeField;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


- (void)populateView;
- (void)save;

@end
