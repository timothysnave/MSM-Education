//
//  AddEvaluationTVC.h
//  MSM Education
//
//  Created by Timothy Evans on 5/19/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Evaluation.h"

@class AddEvaluationTVC;

@protocol AddEvaluationDelegate

- (void)addEvaluation:(Evaluation *)evaluation;

@end

@interface AddEvaluationTVC : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *evaluationTextField;
@property (weak, nonatomic) IBOutlet UITextField *subjectTextField;
@property (weak, nonatomic) IBOutlet UITextField *gradeLevelTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberOfStudentsTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *internshipSegControl;



@property (weak, nonatomic) id <AddEvaluationDelegate> delegate;

- (IBAction)addEvaluationSaveButtonWasPressed:(id)sender;


@end
