//
//  AddEvaluationTVC.m
//  MSM Education
//
//  Created by Timothy Evans on 5/19/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "AddEvaluationTVC.h"

@interface AddEvaluationTVC ()

@end

@implementation AddEvaluationTVC

- (void)viewDidLoad
{
    NSDateFormatter *dateForm = [[NSDateFormatter alloc] init];
    [dateForm setDateFormat:@"MMMM dd, yyyy"];
    
    NSString *date = [dateForm stringFromDate:[NSDate date]];
    
    self.evaluationTextField.text = date;
    
}

- (IBAction)addEvaluationSaveButtonWasPressed:(id)sender {
    Evaluation *evaluation = [[Evaluation alloc] init];
    
    evaluation.date = self.evaluationTextField.text;
    evaluation.subject = self.subjectTextField.text;
    evaluation.gradeLevel = self.gradeLevelTextField.text;
    evaluation.numStudents = self.numberOfStudentsTextField.text;
    evaluation.semester = self.internshipSegControl.selectedSegmentIndex;
    
    [self.delegate addEvaluation:evaluation];
}
@end
