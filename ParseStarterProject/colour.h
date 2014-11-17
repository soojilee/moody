//
//  colour.h
//  ParseStarterProject
//
//  Created by Soo-ji Lee on 2014-11-05.
//
//

#import <Parse/Parse.h>

@interface colour : PFObject<PFSubclassing>
+ (NSString *)parseClassName;
@property (nonatomic, strong) NSString *colourcode;

@end
