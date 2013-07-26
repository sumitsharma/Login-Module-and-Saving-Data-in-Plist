//
//  RegisterVC.h
//  LoginModule
//
/**
 *   Created By Sumit Sharma on 26/07/13
 *   iPhone Application Developer, India
 *
 **/

#import <UIKit/UIKit.h>

@interface RegisterVC : UIViewController<UITextFieldDelegate>{
    
    IBOutlet UIButton *btnRegisterMe;
    IBOutlet UIButton *btnCancel;
    IBOutlet UIScrollView *scrollView;
    
    IBOutlet UITextField *txtFirstName;
    IBOutlet UITextField *txtLastName;
    IBOutlet UITextField *txtAge;
    IBOutlet UITextField *txtEmailId;
    IBOutlet UITextField *txtPassword;
    IBOutlet UITextField *txtConPassword;
    
    NSString *strFirstName, *strLastName, *strAge, *strEmailID, *strPassword, *strConPassword;


}
@property(nonatomic, retain)UITextField *txtFirstName;
@property(nonatomic, retain)UITextField *txtLastName;
@property(nonatomic, retain)UITextField *txtAge;
@property(nonatomic, retain)UITextField *txtEmailId;
@property(nonatomic, retain)UITextField *txtPassword;
@property(nonatomic, retain)UITextField *txtConPassword;


@property(nonatomic, retain)NSString *strFirstName, *strLastName, *strAge, *strEmailID, *strPassword, *strConPassword;

-(IBAction)btnRegisterMeIsClicked:(id)sender;
-(IBAction)btnCancelIsClicked:(id)sender;

@end
