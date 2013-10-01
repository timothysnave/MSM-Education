//
//  EvalTabViewController.h
//  MSM Education
//
//  Created by Timothy Evans on 5/23/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Evaluation.h"
#import "formBViewController.h"
#import "formAViewController.h"



@interface EvalTabViewController : UITabBarController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) Evaluation *evaluation;
@property (weak, nonatomic) Candidate *candidate;
@property (weak, nonatomic) NSMutableArray *evals;
@property (strong, nonatomic) formAViewController *formA;
@property (strong, nonatomic) formBViewController *formB;


- (void)populateView;
- (void)save;

@end
