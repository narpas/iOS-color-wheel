//
//  NSString+SelectorName.m
//
//  Created by Darrel Wright on 5/2/14.
//  Copyright (c) 2014 Darrel Wright.
//  Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
//

#import "NSString+SelectorName.h"

@implementation NSString (SelectorName)

+(NSString*)stringWithNameOfSelector:(SEL)selector {
    const char* selectorName = sel_getName(selector);
    //not sure if selectorName is an ascii string or utf8 string.
    // just going with ascii.
    return [NSString stringWithCString:selectorName encoding:NSASCIIStringEncoding];
}

@end
