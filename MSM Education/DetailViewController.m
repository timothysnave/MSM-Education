//
//  DetailViewController.m
//  MSM Education
//
//  Created by Timothy Evans on 5/19/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "DetailViewController.h"
#import "Candidate.h"
#import "Evaluation.h"
#import "webViewController.h"
#import "DataSaver.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.evalTabView = [self.storyboard instantiateViewControllerWithIdentifier:@"Eval Tab View Controller"];
    
    [self addChildViewController:self.evalTabView];
    [self.evalTabView.view setAutoresizingMask:(UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth)];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Preview Segue"])
    {
        [self.evalTabView save];
        [DataSaver saveArray:self.evals withFilename:self.candidate.description];
        
        webViewController *webView = (webViewController *)segue.destinationViewController;
        webView.evaluation = self.evaluation;
        
        if ([self.evalTabView selectedViewController] == self.evalTabView.formA){
            webView.form = @"Form A";
        }
        else if ([self.evalTabView selectedViewController] == self.evalTabView.formB){
            webView.form = @"Form B";
        }
    }
}

- (void)showTabViewControllerWithEvaluation:(Evaluation *)evaluation
{
    [self.sendButton setEnabled:YES];
    
    self.evaluation = evaluation;
    self.evaluation.candidate = self.candidate;
    self.evalTabView.evaluation = self.evaluation;
    self.evalTabView.candidate = self.candidate;
    self.evalTabView.evals = self.evals;
    
    [self.view addSubview:self.evalTabView.view];
    [self.evalTabView populateView];

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES]; 
    }
}


#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Evaluations", @"Evaluations");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}


@end
