//
//  LTMainViewController.m
//  LeisureTime
//
//  Created by 刘渊 on 2019/11/1.
//  Copyright © 2019 LY. All rights reserved.
//

#import "LTMainViewController.h"

@interface LTMainViewController ()
@property (nonatomic, strong) UIButton *btnEnter;
@end

@implementation LTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.btnEnter];
    [self.btnEnter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 35));
    }];
}

- (UIButton *)btnEnter{
    if (!_btnEnter) {
        _btnEnter = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btnEnter setTitle:@"进入" forState:UIControlStateNormal];
        [_btnEnter setBackgroundColor:[UIColor cyanColor]];
        [[_btnEnter rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
//            self.navigationController
        }];
    }
    return _btnEnter;
}


@end
