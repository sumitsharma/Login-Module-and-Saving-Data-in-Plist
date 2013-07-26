//
//  ForgotPasswordVC.h
//  LoginModule
//
/**
 *   Created By Sumit Sharma on 26/07/13
 *   iPhone Application Developer, India
 *
 **/

#import <UIKit/UIKit.h>

@interface ForgotPasswordVC : UIViewController<UITextFieldDelegate>{
    
    IBOutlet UIButton *btnForgotPassword;
    IBOutlet UITextField *txtForgotPassword;
    
    IBOutlet UIButton *btnCancelForgotPassword;
}

-(IBAction)btnSendForgotPasswordIsClicked:(id)sender;
-(IBAction)btnCancelForgotPasswordIsClicked:(id)sender;
@end
