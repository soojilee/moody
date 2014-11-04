//
//  Need.m
//  ParseStarterProject
//
//  Created by SooYoul Lee on 2014-10-19.
//
//

#import "Need.h"

#import <Parse/PFObject+Subclass.h>

@implementation Need
@dynamic alive;
@dynamic categories;
@dynamic user;
@dynamic description;


+ (void)load {
    [self registerSubclass];
}

+ (NSString *)parseClassName {
    return @"Need";
}






@end