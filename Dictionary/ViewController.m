//
//  ViewController.m
//  Dictionary
//
//  Created by Anatoly Ryavkin on 12/09/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.textViewDict initPropertys];

    NSLog(@"count=%lu",(unsigned long)self.textViewDict.string.length);

    NSArray*array = [[NSArray alloc]init];
    NSString*string = self.textViewDict.string;
    array = [string componentsSeparatedByString:@" "];
    NSMutableString*mutableString = [[NSMutableString alloc]init];
    for(NSString*string in array){
        [mutableString appendFormat:@"%@\n",string];
    }
    NSLog(@"ArrayCount=%lu",(unsigned long)array.count);
    //self.textViewDict.text = self.textViewDict.string;
    self.textViewDict.text =mutableString;

}


@end
