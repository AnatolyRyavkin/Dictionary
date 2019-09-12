//
//  AVTextView.h
//  Dictionary
//
//  Created by Anatoly Ryavkin on 12/09/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVDictionary.h"

NS_ASSUME_NONNULL_BEGIN

@interface AVTextView : UITextView

@property NSString*string;
@property AVDictionary*dictionary;

-(void)initPropertys;



@end

NS_ASSUME_NONNULL_END
