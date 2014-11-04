//
//  SignupController.m
//  ParseStarterProject
//
//  Created by SooYoul Lee on 2014-10-19.
//
//

#import "SignupController.h"

@implementation SignupController

- (IBAction)signupHandler:(id)sender {
    
    PFUser *user = [PFUser user];
    user.username = self.displayName.text;
    user.password = self.password.text;
    user.email = self.email.text;
    
    // other fields can be set just like with PFObject
    //    user[@"phone"] = @"415-392-0202";
    
    NSLog(@"Signup button has been pressed");
    
#warning Push view from storyboard only when signup was successful.
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
            NSLog(@"User sign up was successful %@", [PFUser currentUser].objectId);
            
//            [self.navigationController presentViewController:<#(UIViewController *)#> animated:<#(BOOL)#> completion:<#^(void)completion#>]
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
            NSLog(@"User sign up has failed %@", errorString);
        }
    }];
}
@end