//
//  EvalTabViewController.m
//  MSM Education
//
//  Created by Timothy Evans on 5/23/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "EvalTabViewController.h"
#import "Candidate.h"
#import "DataSaver.h"

@interface EvalTabViewController ()
@end

@implementation EvalTabViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
//    for (int i=0; i<[self.viewControllers count]; i++)
//    {
//        [self.viewControllers objectAtIndex:i];
//    }
}

- (void)save
{
    [self.formA save];
    [self.formB save];
    //[DataSaver saveArray:self.evals withFilename:self.candidate.description];
}

- (void)populateView
{
    
    self.formA = (formAViewController *)[self.viewControllers objectAtIndex:0];
    self.formB = (formBViewController *)[self.viewControllers  objectAtIndex:1];
        
    //[self.formA save];
    [self.formA populateView];
    
    //[self.formB save];
    [self.formB populateView];
}

- (void)viewWillDisappear:(BOOL)animated
{
    //[self save];
}



@end
