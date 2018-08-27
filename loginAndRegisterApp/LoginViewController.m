//
//  LoginViewController.m
//  loginAndRegisterApp
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
#pragma  mark - Delegates
-(void)DidCreate{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)DidCancel{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma  mark Segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]])
    {
        CreateAccountViewController *creatVC=segue.destinationViewController;
        creatVC.delegate=self;
    }
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_userNameTextField resignFirstResponder];
    [_passWordTextField resignFirstResponder];
    return true;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _userNameTextField.delegate=self;
    _passWordTextField.delegate=self;
    
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




- (IBAction)LoginButtonPress:(UIButton *)sender
{
    if (_userNameTextField.text.length==0 || _passWordTextField.text.length==0){
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Alert " message:@"Please Enter User name and Password" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    }
    else
        
    {
        NSString *userName=[[NSUserDefaults standardUserDefaults]objectForKey:R_USER_NAME];
        NSString *password=[[NSUserDefaults standardUserDefaults]objectForKey:R_PASS_WORD];
        if ([_userNameTextField.text isEqualToString:userName] && [_passWordTextField.text isEqualToString:password]){
        [self performSegueWithIdentifier:@"toViewController" sender:sender];
       
        }
        else
        {
            UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Alert Message" message:@"User Name or passWord Not Correct" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *action=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
            [alert addAction:action];
            [self presentViewController:alert animated:YES completion:nil];
            
        }
        
    }
    
}

- (IBAction)createAccountBarButtonPress:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toCreatAccountSegue" sender:sender];
}
@end
