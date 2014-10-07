//
//  InstanceVariableClass.h
//  wisecrack_practise
//
//  Created by ありす料理長 on 2014/10/07.
//  Copyright (c) 2014年 ありす料理長. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "ViewController.m"

@interface InstanceVariableClass : NSObject

/* インスタンス変数の宣言が可能なタイミング①
   ヘッダーの中*/
@property (nonatomic,strong)NSString *DeclarationString;
@property NSInteger *DeclarationInt;
@property ViewController *controller;
@end