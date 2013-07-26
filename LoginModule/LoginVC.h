//
//  LoginVC.h
//  LoginModule
//
/**
 *   Created By Sumit Sharma on 26/07/13
 *   iPhone Application Developer, India
 *
 **/

#import <UIKit/UIKit.h>

@interface LoginVC : UIViewController<UITextFieldDelegate>{
    IBOutlet UITextField *txtEmailID;
    IBOutlet UITextField *txtPassword;
    
    IBOutlet UIButton *btnLogin;
    IBOutlet UIButton *btnRememberMe;
    IBOutlet UIButton *btnRegisterMe;
    IBOutlet UIButton *btnForgotPassword;
    
    BOOL rememberMeIsChecked;
}


-(IBAction)btnLoginIsClicked:(id)sender;
-(IBAction)btnRememberMeIsClicked:(id)sender;// This is CheckBox
-(IBAction)btnForgotPasswordIsClicked:(id)sender;
-(IBAction)btnRegisterMeIsClicked:(id)sender;// This is Button Register
@end
