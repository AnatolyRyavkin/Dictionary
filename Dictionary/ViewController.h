//
//  ViewController.h
//  Dictionary
//
//  Created by Anatoly Ryavkin on 12/09/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVDictionary.h"
#import "AVTextView.h"
#import "AVObjectElement.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet AVTextView *textViewDict;

@property NSMutableString *ollString;

@property NSMutableString *tempObjectString;

@property NSArray *arrayObject;

@property AVDictionary*dictionary;

@end

