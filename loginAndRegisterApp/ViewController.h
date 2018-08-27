//
//  ViewController.h
//  loginAndRegisterApp
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditInformationViewController.h"
@interface ViewController : UIViewController<EditInformationViewControllerDeleget>

@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *fullNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
- (IBAction)EditMyProfilePress:(UIButton *)sender;

@end

