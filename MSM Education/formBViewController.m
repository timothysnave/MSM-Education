//
//  formBViewController.m
//  MSM Education
//
//  Created by Timothy Evans on 5/30/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "formBViewController.h"
#import "EvalTabViewController.h"
#import "formBEmbedView.h"

@interface formBViewController ()

@end

@implementation formBViewController

@synthesize evaluation = _evaluation;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self populateView];
}

- (void)populateView
{
    self.evaluation = ((EvalTabViewController *)self.tabBarController).evaluation;
    self.formB.evaluation = self.evaluation;
    [self.formB populateView];
     
}

- (void)save
{
    [self.formB save];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"formBEmbedSegue"])
    {
        self.formB = (formBEmbedView *)segue.destinationViewController;
    }
}

@end
