//
//  formBViewController.h
//  MSM Education
//
//  Created by Timothy Evans on 5/30/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Evaluation.h"
#import "formBEmbedView.h"

@interface formBViewController : UIViewController

@property (weak, nonatomic)Evaluation *evaluation;
@property (weak, nonatomic)formBEmbedView *formB;

- (void)populateView;
- (void)save;



@end
