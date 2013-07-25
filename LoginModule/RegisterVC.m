//
//  RegisterVC.m
//  LoginModule
//
//  Created by Magnon International on 25/07/13.
//  Copyright (c) 2013 Magnon International. All rights reserved.
//

#import "RegisterVC.h"
#import "LoginVC.h"

@interface RegisterVC ()

@end

@implementation RegisterVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self = [super initWithNibName:@"RegisterVC_iPhone4" bundle:nibBundleOrNil];
    } else {
        self = [super initWithNibName:@"RegisterVC_iPad" bundle:nibBundleOrNil];
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
    
    scrollView.contentSize = CGSizeMake(320, 500);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)btnRegisterMeIsClicked:(id)sender{
    
    LoginVC *lvc =[[LoginVC alloc] init];
    [self.navigationController pushViewController:lvc animated:YES];
    
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    [scrollView setContentOffset:CGPointMake(0,textField.center.y-140) animated:YES];
    
    return YES;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [scrollView setContentOffset:CGPointMake(0,0) animated:YES];
    [textField resignFirstResponder];
    return YES;
}

@end
