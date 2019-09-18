//
//  AVDictionary.h
//  Dictionary
//
//  Created by Anatoly Ryavkin on 12/09/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PDFKit/PDFKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AVDictionary : NSObject
@property PDFDocument* document;

@property NSString*str;

@property NSDictionary*dictionary;

@end

NS_ASSUME_NONNULL_END
