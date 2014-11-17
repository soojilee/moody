//
//  colourTableViewController.m
//  ParseStarterProject
//
//  Created by Soo-ji Lee on 2014-11-07.
//
//

#import "colourTableViewController.h"
#import "colourTableViewCell.h"
#import "colour.h"

@interface colourTableViewController ()
@property (nonatomic, strong) NSArray * coloursArray;
@property (nonatomic, strong) NSMutableArray *coloursCodes;
@end

@implementation colourTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.coloursArray = [NSArray array];
    self.coloursCodes = [NSMutableArray array];
    [self.colourTable registerClass: [colourTableViewCell class] forCellReuseIdentifier:[colourTableViewCell reuseIdentifier]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
}

- (void)didReceiveMemoryWarning {
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 9;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    colourTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[colourTableViewCell reuseIdentifier] forIndexPath:indexPath];
    
    [self queryColors];
    [self ColorCodes];
    cell.colourCode = [self.coloursCodes objectAtIndex:indexPath.row];
    [cell designCell];
    return cell;

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
}


@end
