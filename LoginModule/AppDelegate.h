//
//  AppDelegate.h
//  LoginModule
//
//  Created by Magnon International on 25/07/13.
//  Copyright (c) 2013 Magnon International. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LoginVC;
@class RegisterVC;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong, nonatomic)LoginVC *loginVC;
@property(strong, nonatomic)RegisterVC *registerVC;


-(void)addCustomViews:(NSInteger) num;
@end
