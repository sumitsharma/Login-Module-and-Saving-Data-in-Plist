//
//  LoginVC.m
//  LoginModule
//
//  Created by Magnon International on 25/07/13.
//  Copyright (c) 2013 Magnon International. All rights reserved.
//

#import "LoginVC.h"
#import "DashBoardVC.h"
#import "RegisterVC.h"
#import "AppDelegate.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self = [super initWithNibName:@"LoginVC_iphone4" bundle:nibBundleOrNil];
    } else {
        self = [super initWithNibName:@"LoginVC_iPad" bundle:nibBundleOrNil];
    }
    
  //  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    
   
}

-(IBAction)tapDetected:(id)sender{
    RegisterVC *rvc =[[RegisterVC alloc] init];
    [self.navigationController pushViewController:rvc animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden=YES;
}
-(IBAction)btnLoginIsClicked:(id)sender{
    if ([txtEmailID.text isEqualToString:@""] || [txtPassword.text isEqualToString:@""]) {
    [self showAlert:@"Both Fields are Compulsory"];
    }
    else{
        DashBoardVC *dvc=[[DashBoardVC alloc] init];
        [self.navigationController pushViewController:dvc animated:YES];        
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)showAlert:(NSString *)alertMessage{
    
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"Login" message:alertMessage delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
    [alert release];
    
}
@end
