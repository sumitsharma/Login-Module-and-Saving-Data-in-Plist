//
//  DashBoardVC.m
//  LoginModule
//
//  Created by Magnon International on 25/07/13.
//  Copyright (c) 2013 Magnon International. All rights reserved.
//

#import "DashBoardVC.h"

@interface DashBoardVC ()

@end

@implementation DashBoardVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self = [super initWithNibName:@"DashBoardVC_iPhone4" bundle:nibBundleOrNil];
    } else {
        self = [super initWithNibName:@"DashBoardVC_iPad" bundle:nibBundleOrNil];
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
-(void)viewDidAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden=NO;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
