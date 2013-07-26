//
//  LoginVC.m
//  LoginModule
//
/**
 *   Created By Sumit Sharma on 26/07/13
 *   iPhone Application Developer, India
 *
 **/

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
    [[AppDelegate GetAppDelegate] addRegisterView];
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
        if ([self checkPListData:txtEmailID.text :txtPassword.text]) {
            [[AppDelegate GetAppDelegate] addDashBoardView];
        }
        else{
            [self showAlert:@"Wrong EmailID or Pasword"];
        }
        
        
    }
}
-(IBAction)btnRememberMeIsClicked:(id)sender{
    
    if (rememberMeIsChecked) {
        rememberMeIsChecked=FALSE;
        [btnRememberMe setBackgroundImage:[UIImage imageNamed:@"checkbox.png"] forState:UIControlStateNormal];
    }
    else{
        rememberMeIsChecked=TRUE;
        [btnRememberMe setBackgroundImage:[UIImage imageNamed:@"chk_checked.png"] forState:UIControlStateNormal];
    }
    
}
-(IBAction)btnRegisterMeIsClicked:(id)sender{
    [[AppDelegate GetAppDelegate] addRegisterView];
}
-(IBAction)btnForgotPasswordIsClicked:(id)sender{
    [[AppDelegate GetAppDelegate] addForgotPasswordView];
}
-(BOOL)checkPListData:(NSString *)userName :(NSString*)password{
    // get paths from root direcory
	NSArray *paths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
	// get documents path
	NSString *documentsPath = [paths objectAtIndex:0];
	// get the path to our Data/plist file
	NSString *plistPath = [documentsPath stringByAppendingPathComponent:@"Data.plist"];
	
	// check to see if Data.plist exists in documents
	if (![[NSFileManager defaultManager] fileExistsAtPath:plistPath])
	{
		// if not in documents, get property list from main bundle
		plistPath = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
	}
	
	// read property list into memory as an NSData object
	NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:plistPath];
	NSString *errorDesc = nil;
	NSPropertyListFormat format;
	// convert static property liost into dictionary object
	NSDictionary *temp = (NSDictionary *)[NSPropertyListSerialization propertyListFromData:plistXML mutabilityOption:NSPropertyListMutableContainersAndLeaves format:&format errorDescription:&errorDesc];
	if (!temp)
	{
		NSLog(@"Error reading plist: %@, format: %d", errorDesc, format);
	}
    
    if ([userName isEqualToString:[temp objectForKey:@"EmailID"]] && [password isEqualToString:[temp objectForKey:@"Password"]]) {
        return TRUE;
    }
    else{
        return FALSE;
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
