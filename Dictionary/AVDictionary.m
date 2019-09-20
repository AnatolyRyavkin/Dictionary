//
//  AVDictionary.m
//  Dictionary
//
//  Created by Anatoly Ryavkin on 12/09/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import "AVDictionary.h"

@implementation AVDictionary

-(id)init{
    self = [super init];
    if(self){

        //NSURL* urlDocument = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle]pathForResource:@"englishDictijnary" ofType:@"pdf"]];
        //self.document = [[PDFDocument alloc]initWithURL:urlDocument];
        NSOperationQueue*queue = [[NSOperationQueue alloc]init];
        NSBlockOperation*block = [[NSBlockOperation alloc] init];
        [block addExecutionBlock:^{
            NSError*error = nil;
            self.str = [NSString stringWithContentsOfFile:@"/Users/ryavkinto/Documents/Objective C/1/savedString2.txt" encoding:NSUnicodeStringEncoding error:&error];
            if(error!=nil)
                NSLog(@"error= %@",[error description]);
        }];

        [queue addOperations:@[block] waitUntilFinished:YES];
    }
    return self;
}

@end
