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

            //NSURL* urlDocument = [[NSURL alloc] initWithString:@"/Users/ryavkinto/Documents/Objective C/Dictionary/Dictionary/englishDictijnary.pdf"];
        NSURL* urlDocument = [[NSURL alloc] initFileURLWithPath:@"/Users/ryavkinto/Documents/Objective C/Dictionary/Dictionary/englishDictijnary.pdf"];

        self.document = [[PDFDocument alloc]initWithURL:urlDocument];

        NSOperationQueue*queue = [[NSOperationQueue alloc]init];

        NSBlockOperation*block = [[NSBlockOperation alloc] init];

        [block addExecutionBlock:^{
            NSString*str = [self.document string];
            self.str = str;
        }];

        [queue addOperations:@[block] waitUntilFinished:YES];

        //NSLog(@"doc: %@",self.str);

    }

    return self;
}

@end
