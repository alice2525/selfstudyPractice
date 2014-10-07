//
//  InstanceVariableClass.m
//  wisecrack_practise
//
//  Created by ありす料理長 on 2014/10/07.
//  Copyright (c) 2014年 ありす料理長. All rights reserved.
//

#import "InstanceVariableClass.h"




@interface  InstanceVariableClass(){
/* インスタンス変数の宣言が可能なタイミング②
 クラス拡張の中*/
    NSString *DeclarationStringInClassExtension;
    NSInteger *DeclarationIntInClassExtension;
}
@end

@implementation InstanceVariableClass{
/* インスタンス変数の宣言が可能なタイミング③
     実装の中*/
    NSString *DeclarationStringInImplementation;
    NSInteger *DeclarationIntInImplementation;
}

-(void)hoge{
    
    //ヘッダーに書かれている変数の呼び出し方
    self.DeclarationString = @"foo";
    _DeclarationInt = _DeclarationInt++;
    
    //クラス拡張、実装部分に書かれている変数の呼び出し方
    DeclarationStringInClassExtension = @"var";
    
}

-(void)hoge2{
    //外部の変数の使用
    //①クラスの継承
    ViewController *Controller = [ViewController new];
    //継承したクラスのインスタンス変数を呼び出す。
    Controller.FreeAccessString = @"外部変数アクセス";
}

@end