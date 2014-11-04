//
//  Need.h
//  ParseStarterProject
//
//  Created by SooYoul Lee on 2014-10-19.
//
//

#import <Parse/Parse.h>

@interface Need : PFObject<PFSubclassing>
+ (NSString *)parseClassName;
@property BOOL alive;
@property NSMutableArray* categories;
@property PFUser* user;
@property NSString* description;
@end