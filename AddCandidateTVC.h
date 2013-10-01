//
//  AddCandidateTVC.h
//  MSM Education
//
//  Created by Timothy Evans on 5/19/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Candidate.h"

@class AddCandidateTVC;

@protocol AddCandidateDelegate
- (void)addCandidate:(Candidate *)candidate;
@end


@interface AddCandidateTVC : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;

- (IBAction)addCandidateSaveButtonWasPressed:(id)sender;

@property (nonatomic, strong) id <AddCandidateDelegate> delegate;
@end
