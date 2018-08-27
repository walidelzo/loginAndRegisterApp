//
//  CreateAccountViewController.h
//  loginAndRegisterApp
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CreateAccountViewControllerDelegete
-(void)DidCreate;
-(void)DidCancel;
@end

@interface CreateAccountViewController : UIViewController
@property (weak,nonatomic) id <CreateAccountViewControllerDelegete> delegate;
@property (weak, nonatomic) IBOutlet UITextField *UserNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *fullNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passWordTextFiled;

@property (weak, nonatomic) IBOutlet UITextField *confirmPassWordTextField;
- (IBAction)CreateAccountPress:(UIButton *)sender;
- (IBAction)CancelPress:(UIButton *)sender;

@end
