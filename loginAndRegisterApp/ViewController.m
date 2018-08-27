//
//  ViewController.m
//  loginAndRegisterApp
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "ViewController.h"
#import "PrefixHeader.pch"
@interface ViewController ()

@end

@implementation ViewController

#pragma  mark - editviewcontroller delegate
-(void)DidSave{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)DidCancel{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.destinationViewController isKindOfClass:[EditInformationViewController class] ]){
        EditInformationViewController *editVC=segue.destinationViewController;
        editVC.delegate=self;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _userLabel.text=[[NSUserDefaults standardUserDefaults]objectForKey:R_USER_NAME];
    _fullNameLabel.text=[[NSUserDefaults standardUserDefaults] objectForKey:R_FULL_NAME ];
    _emailLabel.text=[[NSUserDefaults standardUserDefaults]objectForKey:R_USER_EMAIL];
    _passwordLabel.text=[[NSUserDefaults standardUserDefaults]objectForKey:R_PASS_WORD];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    
}


- (IBAction)EditMyProfilePress:(UIButton *)sender {
    [self performSegueWithIdentifier:@"toEditInfoSegue" sender:sender];
}
@end
