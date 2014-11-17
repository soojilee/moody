//
//  CreateHungryViewController.h
//  ParseStarterProject
//
//  Created by SooYoul Lee on 2014-10-19.
//
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface CreateHungryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
- (void)queryColors;
@end
