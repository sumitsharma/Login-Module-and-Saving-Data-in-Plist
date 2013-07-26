//
//  AppDelegate.h
//  LoginModule
//
/**
 *   Created By Sumit Sharma on 26/07/13
 *   iPhone Application Developer, India
 *
**/

#import <UIKit/UIKit.h>

@class LoginVC;
@class RegisterVC;
@class ForgotPasswordVC;
@class DashBoardVC;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
    LoginVC *objLoginView;
    RegisterVC *objRegisterView;
    ForgotPasswordVC *objForgotPasswordView;
    DashBoardVC *objDashBoardView;
    
    UINavigationController *navigationController;
}

@property (strong, nonatomic) UIWindow *window;

//@property(strong, nonatomic)LoginVC *loginVC;

+(AppDelegate*)GetAppDelegate;
-(void)addLoginView;
-(void)addRegisterView;
-(void)addForgotPasswordView;
-(void)addDashBoardView;
@end
