//
//  MasterViewController.h
//  MSM Education
//
//  Created by Timothy Evans on 5/19/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCandidateTVC.h"

@class DetailViewController;

// DEFINE THE PROTOCOL

@interface MasterViewController : UITableViewController <AddCandidateDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) NSMutableArray *candidates;

@end
