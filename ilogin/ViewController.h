//
//  ViewController.h
//  ilogin
//
//  Created by Saray Gómez on 3/19/13.
//  Copyright (c) 2013 Saray Gómez. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITextFieldDelegate>{
    UITextField *usernameTextField;
    UITextField *passwordTextField;
}
@property (nonatomic, retain) IBOutlet UITextField *usernameTextField;
@property (nonatomic, retain) IBOutlet UITextField *passwordTextField;

- (IBAction)sendLogin:(id)sender;
@end
