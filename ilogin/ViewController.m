//
//  ViewController.m
//  ilogin
//
//  Created by Saray Gómez on 3/19/13.
//  Copyright (c) 2013 Saray Gómez. All rights reserved.
//

#import "ViewController.h"
#import <GamedoniaSDK/Gamedonia.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize usernameTextField, passwordTextField;

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [usernameTextField resignFirstResponder];
    [passwordTextField resignFirstResponder];
    
    return YES;
}

- (void)viewDidLoad
{
    //Connection to Gamedonia
    [self connectionGamedonia];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
     //Hide the keyboard on touch
    
    UITapGestureRecognizer *touch = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dissmiskeyboard)];
    [self.view addGestureRecognizer:touch];
    
    //Hide the keyboard 
    usernameTextField.delegate=self;
    passwordTextField.delegate=self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) dissmiskeyboard{
    [usernameTextField resignFirstResponder];
    [passwordTextField resignFirstResponder];
}
- (void) connectionGamedonia{
     
    //Initializing the Gamedonia SDK
    [Gamedonia initialize:@"9ee64267-ee3b-4b5f-9700-af4ac6a08ba9"
                   secret:@"ba60368055d8907f41078598a5bd8fc2"
             apiServerUrl:@"http://api.gamedonia.com"
               apiVersion:@"v1"
     ];
}

- (IBAction)sendLogin:(id)sender {
    //User Credentials
    NSString *user = usernameTextField.text;
    NSString *pass = passwordTextField.text;
    
    // Login user using email with Gamedonia SDK
    [[Gamedonia users] loginUserWithEmail:user
                                 password:pass
                                 callback:^(BOOL success) {
                                     if (success) {
                                         //TODO Your success processing
                                         
                                     }else {
                                         //TODO Your fail processing
                                     }
                                 }];
       
}
@end
