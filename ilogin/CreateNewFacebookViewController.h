//
//  CreateNewFacebookViewController.h
//  ilogin
//
//  Created by Saray Gómez on 3/19/13.
//  Copyright (c) 2013 Saray Gómez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateNewFacebookViewController : UIViewController <UITextFieldDelegate>{
    
    UITextField *facebookuiTextField;
    UITextField *pfacebookTextField;
    
}
@property (nonatomic, retain) IBOutlet UITextField *facebookuiTextField;
@property (nonatomic, retain) IBOutlet UITextField *pfacebookTextField;

@end
