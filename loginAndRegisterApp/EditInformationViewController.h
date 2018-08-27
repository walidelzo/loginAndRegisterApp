//
//  EditInformationViewController.h
//  loginAndRegisterApp
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAccountViewController.h"
@protocol EditInformationViewControllerDeleget
-(void)DidSave;
-(void)DidCancel;
@end


@interface EditInformationViewController : UIViewController
@property(weak,nonatomic) id <EditInformationViewControllerDeleget> delegate;
@property (weak, nonatomic) IBOutlet UITextField *userNameEditTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailEditTextField;
@property (weak, nonatomic) IBOutlet UITextField *fullNameEditTextField;
@property (weak, nonatomic) IBOutlet UITextField *pasWordEditTextField;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordEditTextField;
- (IBAction)SaveEditTextFiled:(UIButton *)sender;

- (IBAction)cancelEditPress:(UIButton *)sender;

@end
