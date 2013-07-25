//
//  LoginVC.h
//  LoginModule
//
//  Created by Magnon International on 25/07/13.
//  Copyright (c) 2013 Magnon International. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginVC : UIViewController<UITextFieldDelegate>{
    IBOutlet UITextField *txtEmailID;
    IBOutlet UITextField *txtPassword;
    
    IBOutlet UIButton *btnLogin;
    
   IBOutlet UILabel *lblRegisterMe;
}


-(IBAction)btnLoginIsClicked:(id)sender;
-(IBAction)tapDetected:(id)sender;
@end
