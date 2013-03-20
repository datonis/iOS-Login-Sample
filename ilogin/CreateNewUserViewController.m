//
//  CreateNewUserViewController.m
//  ilogin
//
//  Created by Saray Gómez on 3/19/13.
//  Copyright (c) 2013 Saray Gómez. All rights reserved.
//

#import "CreateNewUserViewController.h"
#import <GamedoniaSDK/Gamedonia.h>

@interface CreateNewUserViewController ()

@end

@implementation CreateNewUserViewController

@synthesize ucreateTextField, ecreateTextField, pcreateFieldText;

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [ucreateTextField resignFirstResponder];
    [ecreateTextField resignFirstResponder];
    [pcreateFieldText resignFirstResponder];
    
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
    
    //Hide keyboard
    ucreateTextField.delegate = self;
    ecreateTextField.delegate = self;
    pcreateFieldText.delegate = self;
    
    //Hide keyboard on touch
    
    UITapGestureRecognizer *touch = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dissmiskeyboard)];
    [self.view addGestureRecognizer:touch];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) dissmiskeyboard {
    [ucreateTextField resignFirstResponder];
    [ecreateTextField resignFirstResponder];
    [pcreateFieldText resignFirstResponder];
}

- (void) loginData{
    //We will take the credentials
    NSString *newusername = ucreateTextField.text;
    NSString *newemail = ecreateTextField.text;
    NSString *newpass = pcreateFieldText.text;
    
    
    // First create the credentials object for the account. In this example email credentials are used
    Credentials *credentials = [[Credentials alloc] init];
    [credentials setEmail:newemail];
    [credentials setPassword:newpass];
    
    // Create the user account with some profile data and attach to it the credentials created in the previous block
    GDUser * user = [GDUser alloc];
    NSMutableDictionary *profile = [NSMutableDictionary dictionary];
    [profile setObject:newusername forKey:@"name"];
    [user setProfile:profile];
    [user setCredentials:credentials];
    
    // Make the request to the Gamedonia Backend to create the account and process the result in a block.
    [[Gamedonia users] createUser:user
                         callback:^(BOOL success)
     {
         if (success) {
             //TODO Your success processing
         }else {
             //TODO Your fail processing
         }
     }];}

- (IBAction)sendCredentials:(id)sender {
    [self loginData];
}
@end
