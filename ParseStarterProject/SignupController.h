//
//  SignupController.h
//  ParseStarterProject
//
//  Created by SooYoul Lee on 2014-10-19.
//
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface SignupController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)signupHandler:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *displayName;


@end
