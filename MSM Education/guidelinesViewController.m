//
//  guidelinesViewController.m
//  MSM Education
//
//  Created by Timothy Evans on 8/7/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "guidelinesViewController.h"

@implementation guidelinesViewController

- (void)viewDidLoad
{
    NSString *content = @"<html>\
    <head>\
    <style type='text/css'>\
    *{font-family: sans-serif;}\
    </style>\
    </head>\
    <body>\
    <h1>Lesson Evaluation Guidelines</h1>\
    <b>Instructional Planning</b>\
    <ul>\
    <li>Written plan includes</li>\
    <ul>\
    <li>MD Content Standards</li>\
    <li>FCPS Essential Curriculum Objectives & Benchmarks</li>\
    <li>INTASC</li>\
    <li>Materials</li>\
    <li>Objective in ABCD order</li>\
    <li>Motivation</li>\
    <li>Procedure</li>\
    <li>Modeling</li>\
    <li>Guided Practice</li>\
    <li>Independent Practice</li>\
    <li>Assessment for each component (e.g., EPR, constructed response, selected response)</li>\
        <li>Closure</li>\
        <li>Differentiation</li>\
        </ul>\
        <li>Lesson is pre-approved</li>\
        <li>Lesson integrates curricula</li>\
        <li>Intern is thoroughly prepared for lesson</li>\
            </ul>\
            <b>Instructional Delivery</b>\
            <ul>\
            <li>Motivates active participation</li>\
            <li>Asks questions of higher order</li>\
            <li>Paces instruction</li>\
            <li>Shares objective</li>\
            <li>Draws closure</li>\
            <li>Incorporates technology/teaching aids</li>\
            <li>Accomodates different learning modalities</li>\
            <li>Employs varied methods</li>\
            </ul>\
            <b>Content Knowledge</b>\
            <ul>\
            <li>Connects lesson content to prior knowledge and personal experience of learners</li>\
            <li>Presents accurate information</li>\
            <li>Chooses key information as focus of lesson and supports curricular goals</li>\
            <li>Teaches key vocabulary for conceptual understanding</li>\
                <li>Demonstrates solid grasp of content (e.g., ability to respond to questions, elaborate)</li>\
                </ul>\
                <b>Classroom Management</b>\
                <ul>\
                <li>Gives clear directions</li>\
                <li>Maintains classroom rules</li>\
                <li>Keeps accurate record</li>\
                <li>Elicits responses from many</li>\
                <li>Initiates smooth transitions</li>\
                <li>Accepts responsibility for care and use of materials, supplies, and equipment</li>\
                    </ul>\
                    <b>Behavior Management</b>\
                    <ul>\
                    <li>Employs multiple techniques (e.g., proximity, eye contact, change in voice, signals)</li>\
                    <li>Diffuses conflicts</li>\
                    </ul>\
                    <b>Interpersonal Relationships</b>\
                    <ul>\
                    <li>Uses effective communication to establish rapport</li>\
                    <li>Creates positive learning environment</li>\
                    <li>Serves as model for acceptable grammar, handwriting, spelling</li>\
                        <li>Engages with everty pupil</li>\
                        <li>Maintains professional demeanor</li>\
                        </ul>\
                        </body>\
                        </html>";
    
    [self.webView loadHTMLString:content baseURL:nil];
}

@end
