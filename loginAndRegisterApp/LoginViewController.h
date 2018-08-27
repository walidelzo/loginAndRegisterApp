//
//  LoginViewController.h
//  loginAndRegisterApp
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAccountViewController.h"
@interface LoginViewController : UIViewController<CreateAccountViewControllerDelegete,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passWordTextField;
- (IBAction)LoginButtonPress:(UIButton *)sender;
- (IBAction)createAccountBarButtonPress:(UIBarButtonItem *)sender;

@end
