//
//  colour.m
//  ParseStarterProject
//
//  Created by Soo-ji Lee on 2014-11-05.
//
//

#import "colour.h"


#import <Parse/PFObject+Subclass.h>

@implementation colour
@dynamic colourcode;


+ (void)load {
    [self registerSubclass];
}

+ (NSString *)parseClassName {
    return @"colour";
}


@end
