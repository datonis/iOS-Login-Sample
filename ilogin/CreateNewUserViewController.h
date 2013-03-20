//  CreateNewUserViewController.h
//  CreateNewUserViewController.h
//  ilogin
//
//  Created by Saray Gómez on 3/19/13.
//  Copyright (c) 2013 Saray Gómez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateNewUserViewController : UIViewController <UITextFieldDelegate>{
    UITextField *ucreateTextField;
    UITextField *ecreateTextField;
    UITextField *pcreateTextField;
}

@property (nonatomic, retain) IBOutlet UITextField *ucreateTextField;
@property (nonatomic, retain) IBOutlet UITextField *ecreateTextField;
@property (nonatomic, retain) IBOutlet UITextField *pcreateFieldText;

- (IBAction)sendCredentials:(id)sender;
@end
