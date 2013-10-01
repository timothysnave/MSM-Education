//
//  DataSaver.h
//  MSM Education
//
//  Created by Timothy Evans on 8/18/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataSaver : UIViewController

+ (BOOL)saveArray:(NSMutableArray *)array withFilename:(NSString *)filename;
+ (NSMutableArray *)loadArrayWithFilename:(NSString *)filename;
+ (void)deleteArrayWithFileName:(NSString *)filename;

@end
