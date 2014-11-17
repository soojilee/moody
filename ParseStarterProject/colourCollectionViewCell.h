//
//  colourCollectionViewCell.h
//  ParseStarterProject
//
//  Created by Soo-ji Lee on 2014-11-04.
//
//

#import <UIKit/UIKit.h>

@interface colourCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) NSString *colourCode;

+ (NSString *)reuseIdentifier;

- (void)designCell;


@end

