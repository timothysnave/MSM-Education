//
//  MasterViewController.m
//  MSM Education
//
//  Created by Timothy Evans on 5/19/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Candidate.h"
#import "Evaluation.h"
#import "EvaluationsTVC.h"
#import "AddCandidateTVC.h"
#import "AppDelegate.h"
#import "DataSaver.h"

@interface MasterViewController ()

- (void)sortData:(NSMutableArray *)data;

@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Retrieve the array from storage
    self.candidates = [DataSaver loadArrayWithFilename:@"Candidates"];
    
    [self sortData:self.candidates];

}

- (void)sortData:(NSMutableArray *)array
{
    [array sortUsingDescriptors:
     [NSArray arrayWithObjects:
      [NSSortDescriptor sortDescriptorWithKey:@"description" ascending:YES],nil]];
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.candidates.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Candidate Cell"];
    
    if (cell==nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Candidate Cell"];
    }
    
    cell.textLabel.text = [[self.candidates objectAtIndex:indexPath.row] description];
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Candidate *candidate = [self.candidates objectAtIndex:indexPath.row];
        [DataSaver deleteArrayWithFileName:candidate.description];
        [self.candidates removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [DataSaver saveArray:self.candidates withFilename:@"Candidates"];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Candidate Selected Segue"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        
        Candidate *thisCandidate = [self.candidates objectAtIndex:indexPath.row];
        
        EvaluationsTVC *evalTVC = (EvaluationsTVC *)segue.destinationViewController;
        
        evalTVC.candidate = thisCandidate;
        evalTVC.candidates = self.candidates;
    }
    else if ([segue.identifier isEqualToString:@"Add Candidate Segue"])
    {
        AddCandidateTVC *tvc = (AddCandidateTVC *)segue.destinationViewController;
        tvc.delegate = self;
    }
}

- (void)addCandidate:(Candidate *)candidate
{
    [self.candidates addObject:candidate];
    [self sortData:self.candidates];
    [DataSaver saveArray:self.candidates withFilename:@"Candidates"];
    [self.tableView reloadData];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
