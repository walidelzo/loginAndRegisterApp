//
//  EditInformationViewController.m
//  loginAndRegisterApp
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "EditInformationViewController.h"
#import "PrefixHeader.pch"
@interface EditInformationViewController ()

@end

@implementation EditInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _userNameEditTextField.text=[[NSUserDefaults standardUserDefaults]objectForKey:R_USER_NAME];
    _pasWordEditTextField.text=[[NSUserDefaults standardUserDefaults]objectForKey:R_PASS_WORD];
    _fullNameEditTextField.text=[[NSUserDefaults standardUserDefaults]objectForKey:R_FULL_NAME];
    _emailEditTextField.text=[[NSUserDefaults standardUserDefaults]objectForKey:R_USER_EMAIL];
    _confirmPasswordEditTextField.text=[[NSUserDefaults standardUserDefaults] objectForKey:R_PASS_WORD];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)MakeAlert:(NSString*)Message{
    UIAlertController*alert=[UIAlertController alertControllerWithTitle:@"Alert" message:Message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}


- (IBAction)SaveEditTextFiled:(UIButton *)sender
{
    if (_userNameEditTextField.text.length==0 || _pasWordEditTextField.text.length==0 || _confirmPasswordEditTextField.text.length==0){
        [self MakeAlert:@"Please Enter user name , password and confirm Pasword "];
    }else if (![_confirmPasswordEditTextField.text isEqualToString:_pasWordEditTextField.text]){
        [self MakeAlert:@"password and confirmpassword not match"];
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:_userNameEditTextField.text forKey:R_USER_NAME];
        [[NSUserDefaults standardUserDefaults]setObject:_pasWordEditTextField.text forKey:R_PASS_WORD];
        [[NSUserDefaults standardUserDefaults]setObject:_fullNameEditTextField.text forKey:R_FULL_NAME];
        [[NSUserDefaults standardUserDefaults]setObject:_emailEditTextField.text forKey:R_USER_EMAIL];
        [[NSUserDefaults standardUserDefaults]synchronize];
        
        
    [self.delegate DidSave];
    
    }
    
}

- (IBAction)cancelEditPress:(UIButton *)sender
{
    [self.delegate DidCancel];
}
@end
