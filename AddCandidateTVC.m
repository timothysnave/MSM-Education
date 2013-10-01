//
//  AddCandidateTVC.m
//  MSM Education
//
//  Created by Timothy Evans on 5/19/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "AddCandidateTVC.h"

@interface AddCandidateTVC ()

@end

@implementation AddCandidateTVC

@synthesize delegate = _delegate;



- (IBAction)addCandidateSaveButtonWasPressed:(id)sender {
    Candidate *candidate = [[Candidate alloc] init];
    
    candidate.firstName = self.firstNameTextField.text;
    candidate.lastName = self.lastNameTextField.text;
    
    [self.delegate addCandidate:candidate];
}
@end
