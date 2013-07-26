//
//  ForgotPasswordVC.m
//  LoginModule
//
/**
 *   Created By Sumit Sharma on 26/07/13
 *   iPhone Application Developer, India
 *
 **/
#import "ForgotPasswordVC.h"
#import "AppDelegate.h"

@interface ForgotPasswordVC ()

@end

@implementation ForgotPasswordVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self = [super initWithNibName:@"ForgotPassword_iPhone4" bundle:nibBundleOrNil];
    } else {
        self = [super initWithNibName:@"ForgotPasswordVC_iPad" bundle:nibBundleOrNil];
    }
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Forgot Password Send & Cancel Button
-(IBAction)btnCancelForgotPasswordIsClicked:(id)sender{
    [[AppDelegate GetAppDelegate] addLoginView];
}
-(IBAction)btnSendForgotPasswordIsClicked:(id)sender{
    [[AppDelegate GetAppDelegate] addLoginView];
}


#pragma mark - textfield Delegate Methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return TRUE;
}
@end
