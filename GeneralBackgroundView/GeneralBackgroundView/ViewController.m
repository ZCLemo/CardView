//
//  ViewController.m
//  GeneralBackgroundView
//
//  Created by 赵琛 on 16/10/12.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "ViewController.h"
#import "GeneralBackgroundView.h"
#import "UIColor+LFColor.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    __weak typeof(self) weakSelf = self;
    
    self.view.backgroundColor = [UIColor colorWithHex:@"#f5f5f5"];
    
    UIView *backgroundView = [[UIView alloc] init];
    backgroundView.backgroundColor = [UIColor whiteColor];
    backgroundView.layer.cornerRadius = 4;
    [self.view addSubview:backgroundView];
    
    [backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view).with.offset(84);
        make.left.equalTo(weakSelf.view).with.offset(15);
        make.right.equalTo(weakSelf.view).with.offset(-15);
    }];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"succese"]];
    [backgroundView addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(backgroundView.mas_centerX);
        make.top.equalTo(backgroundView.mas_top).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(120, 120));
    }];
    
    UILabel *titleLb = [UILabel new];
    titleLb.text = @"恭喜您";
    titleLb.font = [UIFont systemFontOfSize:24];
    titleLb.textColor = [UIColor colorWithHex:@"96786e"];
    titleLb.textAlignment = NSTextAlignmentCenter;
    [backgroundView addSubview:titleLb];
    [titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(imageView.mas_bottom).with.offset(10);
        make.left.and.right.equalTo(backgroundView);
        make.height.equalTo(@24);
    }];
    
    
    UILabel *successLb = [UILabel new];
    successLb.text = @"恭喜，您已成功开户!";
    successLb.font = [UIFont systemFontOfSize:16];
    successLb.textColor = [UIColor colorWithHex:@"96786e"];
    successLb.textAlignment = NSTextAlignmentCenter;
    [backgroundView addSubview:successLb];
    [successLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(titleLb.mas_bottom).with.offset(15);
        make.left.and.right.equalTo(backgroundView);
        make.height.equalTo(@16);
    }];

    GeneralBackgroundView *generalView = [GeneralBackgroundView new];
    [backgroundView addSubview:generalView];
    [generalView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(successLb.mas_bottom).with.offset(20);
        make.left.and.right.equalTo(backgroundView);
        make.height.equalTo(@20);
    }];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"马上赚钱" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    button.layer.cornerRadius = 22;
    button.backgroundColor = [UIColor colorWithHex:@"#f75c5c"];
    [backgroundView addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(generalView.mas_bottom).with.offset(20);
        make.left.equalTo(backgroundView.mas_left).with.offset(20);
        make.right.equalTo(backgroundView.mas_right).with.offset(-20);
        make.height.equalTo(@44);
    }];
    
    [backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(button.mas_bottom).with.offset(35);
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
