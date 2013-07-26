//
//  AppDelegate.m
//  LoginModule
//
/**
 *   Created By Sumit Sharma on 26/07/13
 *   iPhone Application Developer, India
 *
**/

#import "AppDelegate.h"

#import "LoginVC.h"
#import "RegisterVC.h"
#import "ForgotPasswordVC.h"
#import "DashBoardVC.h"

@implementation AppDelegate



- (void)dealloc
{
    ReleaseObj(objLoginView);
    ReleaseObj(objRegisterView);
    
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    
     
    [self addLoginView];
   
    return YES;
}

+(AppDelegate*)GetAppDelegate{
    
    return (AppDelegate*)([UIApplication sharedApplication].delegate);
}
#pragma mark - Add Login and Register View
-(void)addRegisterView{
    self.window.rootViewController=nil;
    [self releaseViews];
    objRegisterView =[[RegisterVC alloc] initWithNibName:@"RegisterVC" bundle:nil];
    self.window.rootViewController=objRegisterView;
    
}
-(void)addLoginView{    
    self.window.rootViewController=nil;
    [self releaseViews];
    objLoginView=[[LoginVC alloc] initWithNibName:@"LoginVC" bundle:nil];
    self.window.rootViewController=objLoginView;
    
}
-(void)addForgotPasswordView{
    self.window.rootViewController=nil;
    [self releaseViews];
    objForgotPasswordView=[[ForgotPasswordVC alloc] initWithNibName:@"ForgotPasswordVC" bundle:nil];
    self.window.rootViewController=objForgotPasswordView;
}
-(void)addDashBoardView{ 
    self.window.rootViewController=nil;
    [self releaseViews];
    objDashBoardView=[[[DashBoardVC alloc] initWithNibName:@"DashBoardVC" bundle:nil] autorelease];    
    navigationController=[[UINavigationController alloc] initWithRootViewController:objDashBoardView];
    self.window.rootViewController=navigationController;
}
-(void) releaseViews{
    ReleaseObj(objLoginView);
    ReleaseObj(objRegisterView);
    ReleaseObj(objForgotPasswordView);
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
