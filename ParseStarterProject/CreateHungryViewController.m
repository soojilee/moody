//
//  CreateHungryViewController.m
//  ParseStarterProject
//
//  Created by SooYoul Lee on 2014-10-19.
//
//

#import "CreateHungryViewController.h"
#import "colour.h"
#import "colourCollectionViewCell.h"

@interface CreateHungryViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (nonatomic, strong) NSArray * coloursArray;
@property (nonatomic, strong) NSMutableArray *coloursCodes;
@property (nonatomic, strong) UICollectionViewFlowLayout *myCollectionViewFlowLayout;
@end

@implementation CreateHungryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.coloursArray = [NSArray array];
    self.coloursCodes = [NSMutableArray array];
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.myCollectionViewFlowLayout = [[UICollectionViewFlowLayout alloc] init];
    [self.myCollectionViewFlowLayout setItemSize:CGSizeMake(100, 100)];
    [self.myCollectionViewFlowLayout setSectionInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    [self.myCollectionViewFlowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    self.myCollectionViewFlowLayout.minimumLineSpacing = 0;
    self.myCollectionViewFlowLayout.minimumInteritemSpacing = 0;
    [self.collectionView setCollectionViewLayout:self.myCollectionViewFlowLayout];
    //testing to see if the collection view is loading
    self.collectionView.backgroundColor = [UIColor colorWithWhite:0.25f alpha:1.0f];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)queryColors{
    PFQuery *coloursQuery = [PFQuery queryWithClassName:@"colour"];
    self.coloursArray = [coloursQuery findObjects];
//    [colorsQuery findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
//        if(!error){
//            self.coloursArray = objects;
//        }else{
//            NSLog(@"ERROR querying colours");
//        }
//    }];
    
}

- (void)ColorCodes{
    [self.coloursArray enumerateObjectsUsingBlock:^(colour *col, NSUInteger idx, BOOL *stop) {
        NSString *colourstring = col.colourcode;
        [self.coloursCodes addObject:colourstring];
    }];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //return 0;
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    colourCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:
                                      [colourCollectionViewCell reuseIdentifier]forIndexPath:indexPath];
    
    [self queryColors];
    [self ColorCodes];
    cell.colourCode = @"#FF0000";
    [cell designCell];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }
 */


@end
