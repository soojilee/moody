//
//  colourTableViewCell.h
//  ParseStarterProject
//
//  Created by Soo-ji Lee on 2014-11-07.
//
//

#import <UIKit/UIKit.h>

@interface colourTableViewCell : UITableViewCell

@property (nonatomic, strong) NSString *colourCode;

+ (NSString *)reuseIdentifier;

- (void)designCell;

@end
