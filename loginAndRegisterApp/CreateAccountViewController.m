//
//  CreateAccountViewController.m
//  loginAndRegisterApp
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()<UITextFieldDelegate>

@end

@implementation CreateAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for(UIView *subview in self.view.subviews)
    {
        if([subview isKindOfClass: [UITextView class]])
        {
            ((UITextField*)subview).delegate = (id) self;
        }

        if([subview isKindOfClass: [UITextField class]])
        {
            ((UITextField*)subview).delegate = (id) self;
        }
    }

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

-(void)MakeAlert :(NSString*)message{
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Error Message" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action =[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}


#pragma  mark UItextFiled Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)CreateAccountPress:(UIButton *)sender
{
    if (_UserNameTextField.text.length==0 && _passWordTextFiled.text.length==0){
       [self MakeAlert:@"please enter userName and password"];
    }else if (![_passWordTextFiled.text isEqualToString:_confirmPassWordTextField.text]){
        [self MakeAlert:@"password and confirm password no equal"];
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:_UserNameTextField.text forKey:R_USER_NAME];
        [[NSUserDefaults standardUserDefaults]setObject:_passWordTextFiled.text forKey:R_PASS_WORD];
        [[NSUserDefaults standardUserDefaults]setObject:_fullNameTextField.text forKey:R_FULL_NAME];
        [[NSUserDefaults standardUserDefaults]setObject:_EmailTextField.text forKey:R_USER_EMAIL];
        [[NSUserDefaults standardUserDefaults]synchronize];
       [self.delegate DidCreate];
    }
}

- (IBAction)CancelPress:(UIButton *)sender
{
    [self.delegate DidCancel];
}

@end
