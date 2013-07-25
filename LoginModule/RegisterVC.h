//
//  RegisterVC.h
//  LoginModule
//
//  Created by Magnon International on 25/07/13.
//  Copyright (c) 2013 Magnon International. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterVC : UIViewController<UITextFieldDelegate>{
    
    IBOutlet UIButton *btnRegisterMe;
    IBOutlet UIScrollView *scrollView;
}

-(IBAction)btnRegisterMeIsClicked:(id)sender;

@end
