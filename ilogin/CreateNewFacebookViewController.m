//
//  CreateNewFacebookViewController.m
//  ilogin
//
//  Created by Saray Gómez on 3/19/13.
//  Copyright (c) 2013 Saray Gómez. All rights reserved.
//

#import "CreateNewFacebookViewController.h"

@interface CreateNewFacebookViewController ()

@end

@implementation CreateNewFacebookViewController
@synthesize facebookuiTextField,pfacebookTextField;

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [facebookuiTextField resignFirstResponder];
    [pfacebookTextField resignFirstResponder];
    return YES;
}

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
    
    //Hide Keyboard
    facebookuiTextField.delegate=self;
    pfacebookTextField.delegate=self;
    //Hide Keyboard on touch
    
    UITapGestureRecognizer *touch = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dissmiskeyboard)];
    [self.view addGestureRecognizer:touch];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) dissmiskeyboard{
    [facebookuiTextField resignFirstResponder];
    [pfacebookTextField resignFirstResponder];
}

@end
