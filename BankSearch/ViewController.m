//
//  ViewController.m
//  BankSearch
//
//  Created by 郑文明 on 16/9/26.
//  Copyright © 2016年 郑文明. All rights reserved.
//

#import "ViewController.h"
#import "BankCardDataManager.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    self.title = @"银行卡查询";
    [super viewDidLoad];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.text.length > 0) {
        //这地方还没想到好的匹配算法，先直接遍历
        for (NSString * key in [BankCardDataManager shareManager].cardDataDict) {
            if ([textField.text hasPrefix:key]) {
                self.resultLabel.text = [BankCardDataManager shareManager].cardDataDict[key];
                break;
            }else{
                self.resultLabel.text = @"无结果";
            }
        }
    }
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
