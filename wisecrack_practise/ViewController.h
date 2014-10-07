//
//  ViewController.h
//  wisecrack_practise
//
//  Created by ありす料理長 on 2014/10/01.
//  Copyright (c) 2014年 ありす料理長. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *PublicTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *ClassTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *MethodTextLabel;
@property (weak, nonatomic) IBOutlet UIButton *PublicTextCangeButton;
@property (weak, nonatomic) IBOutlet UIButton *ClassTextChangeButton;
@property (weak, nonatomic) IBOutlet UIButton *MethodTextChangeButton;

@property (weak, nonatomic) NSString *FreeAccessString;

- (IBAction)PTChangeBtn:(id)sender;
- (IBAction)CTChangeButton:(id)sender;
- (IBAction)MTChangeButton:(id)sender;
@end