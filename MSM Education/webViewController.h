//
//  webViewController.h
//  MSM Education
//
//  Created by Timothy Evans on 8/1/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Evaluation.h"
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface webViewController : UIViewController <UIWebViewDelegate, MFMailComposeViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sendButton;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSString *contents;
@property (weak, nonatomic) Evaluation *evaluation;
@property (weak, nonatomic) NSString *form;

- (void)pushFormAToWebView;
- (void)pushFormBToWebView;

- (IBAction)sendButtonPressed:(id)sender;

@end
