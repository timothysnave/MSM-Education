//
//  DataSaver.m
//  MSM Education
//
//  Created by Timothy Evans on 8/18/13.
//  Copyright (c) 2013 Timothy Evans. All rights reserved.
//

#import "DataSaver.h"

@implementation DataSaver

+(NSMutableArray *)loadArrayWithFilename:(NSString *)filename{
    
    // Get a file manager
    NSFileManager *fm = [NSFileManager defaultManager];
    
    // Get the available URLs using the file manager
    NSArray *availableURLs = [fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    
    // Get the actual directory to work in
    NSURL *directory = [availableURLs objectAtIndex:0];
    
    // Get the full filepath
    NSURL *filePath = [directory URLByAppendingPathComponent:filename];
     
    // Read the data
    NSData *data = [NSData dataWithContentsOfURL:filePath];
    
    // Unarchive the data into an array
    NSMutableArray *arrayReadFromFile = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    // If array is nil, create an empty array to put things in
    if(arrayReadFromFile == nil)
    {
        NSLog(@"Array is empty -- Creating new Array");
        arrayReadFromFile = [[NSMutableArray alloc] init];
    }
    
    return arrayReadFromFile;
}

+ (BOOL)saveArray:(NSMutableArray *)array withFilename:(NSString *)filename{
    NSLog(@"Writing array to disk");
    
    // First archive the data into a 'bag of bits'
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:array];
    
    // Get a file manager
    NSFileManager *fm = [NSFileManager defaultManager];
    
    // Get the available URLs from the file manager
    NSArray *availableURLs = [fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    
    // Get the actual directory to work in
    NSURL *directory = [availableURLs objectAtIndex:0];
    
    // Get the full filepath
    NSURL *filePath = [directory URLByAppendingPathComponent:filename];
    
    // Write the data and return result
    return [data writeToURL:filePath atomically:YES];
    
}

+ (void)deleteArrayWithFileName:(NSString *)filename
{
    // Get a file manager
    NSFileManager *fm = [NSFileManager defaultManager];
    
    // Get the available URLs from the file manager
    NSArray *availableURLs = [fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    
    // Get the actual directory to work in
    NSURL *directory = [availableURLs objectAtIndex:0];
    
    // Get the full filepath
    NSURL *filePath = [directory URLByAppendingPathComponent:filename];
    
    // Delete the file
    [fm removeItemAtURL:filePath error:nil];
}

@end
