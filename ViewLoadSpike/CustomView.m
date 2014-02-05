//
//  CustomView.m
//  ViewLoadSpike
//
//  Created by u16suzu on 2014/02/05.
//  Copyright (c) 2014年 IGNIS LTD. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()
@property (nonatomic) UIButton*firstButton;
@property (nonatomic) UIButton*secondButton;
@property (nonatomic) UILabel*firstLabel;
@end

@implementation CustomView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
    
        [self addSubview:self.firstButton];
        [self addSubview:self.secondButton];
        [self addSubview:self.firstLabel];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    NSLog(@"%s", __func__);

    
    [self.firstButton sizeToFit];
    [self.secondButton sizeToFit];
    [self.firstLabel sizeToFit];
    
    
    CGRect frame = CGRectMake(0, 0, 60, 30);
    self.firstButton.frame = frame;

    CGRect frame2=CGRectMake(0, 30, 60, 30);
    self.secondButton.frame = frame2;
 
    CGRect frame3 = CGRectMake(0, 60, 100, 30);
    self.firstLabel.frame = frame3;
    
    [self.firstLabel sizeToFit];
}

- (UIButton*)firstButton{
    NSLog(@"%s", __func__);
    if(!_firstButton){
        _firstButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_firstButton setTitle:@"firstButton" forState:UIControlStateNormal];
    }
    return _firstButton;
}

- (UIButton*)secondButton{
    if(!_secondButton){
        _secondButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_secondButton setTitle:@"secondButton" forState:UIControlStateNormal];
    }
    return _secondButton;
}

- (UILabel*)firstLabel{
    if(!_firstLabel){
        _firstLabel = [UILabel new];
        _firstLabel.font = [UIFont systemFontOfSize:20];
        _firstLabel.text = @"firstLabel";
        _firstLabel.backgroundColor  = [UIColor greenColor];
    }
    return _firstLabel;
}

@end
