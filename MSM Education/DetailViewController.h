//
//  DetailViewController.h
//  MSM Education
//
//  Created by Timothy Evans on 5/19/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EvalTabViewController.h"
#import "Evaluation.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) EvalTabViewController *evalTabView;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sendButton;
@property (weak, nonatomic) NSMutableArray *evals;
@property (strong, nonatomic) Evaluation *evaluation;
@property (weak, nonatomic) Candidate *candidate;

- (void)showTabViewControllerWithEvaluation:(Evaluation *)evaluation;

@end
