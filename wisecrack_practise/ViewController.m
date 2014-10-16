//
//  ViewController.m
//  wisecrack_practise
//
//  Created by ありす料理長 on 2014/10/01.
//  Copyright (c) 2014年 ありす料理長. All rights reserved.
//

#import "ViewController.h"
#import "ClassMethodExsample.m"
@interface ViewController ()

@end
//どこからでもアクセス出来る「Public変数」のような扱い
NSString *publicText;

@implementation ViewController
//クラスの宣言内のみで使用出来る「Private変数」の様な扱い
NSString *ClassInText;

- (void)viewDidLoad {
    [super viewDidLoad];
    publicText = [NSString stringWithFormat:@"パブリックテキスト書き換えOK"];
    //最初からボタン１を押した処理を入れておく。
    [self PTChangeBtn:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    //クラス宣言の範囲外でインスタンス変数の宣言を行っている為、どこからでも使用出来る。
}

//ボタンアクション(JAVAで言う"OnClickListener")
- (IBAction)PTChangeBtn:(id)sender {
    _PublicTextLabel.text = publicText;
}

- (IBAction)CTChangeButton:(id)sender {
    //クラス内で宣言している為、クラス内であればどこからでも使用出来る。
    ClassInText = [NSString stringWithFormat:@"クラステキスト書き換えOK"];
    _ClassTextLabel.text = ClassInText;
    
    [WCP_ClassMethod Write];
}

- (IBAction)MTChangeButton:(id)sender {
    //メソッド内のみで使用できる「インスタンス変数」。メソッドを抜けると使用出来なくなる。
    NSString *MTText;
    MTText = [NSString stringWithFormat:@"メソッド内テキスト書き換えOK"];
    _MethodTextLabel.text = MTText;
}
@end



