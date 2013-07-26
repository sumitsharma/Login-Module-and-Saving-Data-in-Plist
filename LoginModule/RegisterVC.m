//
//  RegisterVC.m
//  LoginModule
//
//  Created by Magnon International on 25/07/13.
//  Copyright (c) 2013 Sumit Sharma. All rights reserved.
//  iPhone Application Developer

#import "RegisterVC.h"
#import "LoginVC.h"
#import "AppDelegate.h"

@interface RegisterVC ()

@end

@implementation RegisterVC;
@synthesize txtFirstName, txtLastName, txtAge, txtEmailId, txtPassword, txtConPassword;
@synthesize strFirstName, strLastName, strAge, strEmailID, strPassword, strConPassword;

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
    
    
    [self saveData]; // Save Data into plist
    
    [[AppDelegate GetAppDelegate] addLoginView];    
}
-(IBAction)btnCancelIsClicked:(id)sender{
    [[AppDelegate GetAppDelegate] addLoginView];
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    [scrollView setContentOffset:CGPointMake(0,textField.center.y-140) animated:YES];
    return YES;
}

#pragma mark - Save Data into pList
-(void)saveData{
    // get paths from root direcory
	NSArray *paths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
	// get documents path
	NSString *documentsPath = [paths objectAtIndex:0];
	// get the path to our Data/plist file
	NSString *plistPath = [documentsPath stringByAppendingPathComponent:@"Data.plist"];
	
	// set the variables to the values in the text fields

	strFirstName=txtFirstName.text;
    strLastName=txtLastName.text;
    strAge=txtAge.text;
    strEmailID=txtEmailId.text;
    strPassword=txtPassword.text;

    
    NSDictionary *plistDictionary =[NSDictionary dictionaryWithObjectsAndKeys:strFirstName,@"FirstName",strLastName,@"LastName", strAge, @"Age", strEmailID, @"EmailID", strPassword,@"Password", nil];
	
	NSString *error = nil;
	// create NSData from dictionary
    NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:plistDictionary format:NSPropertyListXMLFormat_v1_0 errorDescription:&error];
	
    // check is plistData exists
	if(plistData)
	{
		// write plistData to our Data.plist file
        [plistData writeToFile:plistPath atomically:YES];
    }
    else
	{
        NSLog(@"Error in saveData: %@", error);
        [error release];
    }
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [scrollView setContentOffset:CGPointMake(0,0) animated:YES];
    [textField resignFirstResponder];
    return YES;
}

@end
