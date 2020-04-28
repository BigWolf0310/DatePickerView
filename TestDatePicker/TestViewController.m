//
//  TestViewController.m
//  TestDatePicker
//
//  Created by syt on 2020/4/28.
//  Copyright © 2020 syt. All rights reserved.
//

#import "TestViewController.h"

#import "DateTimePickerView.h"


@interface TestViewController ()<DateTimePickerViewDelegate>

@property (nonatomic, strong) UIButton *dateButton;
@property (nonatomic, strong) DateTimePickerView *dateView;

@property (nonatomic, strong) NSDate *date;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    [self createSubViews];
}

- (void)createSubViews
{
    [self.view addSubview:self.dateButton];
}



#pragma mark -dateButtonAction
- (void)dateButtonAction
{
    [self.dateView showDateTimePickerView];
}




#pragma mark - DateTimePickerViewDelegate
- (void)didClickFinishDateTimePickerView:(NSString *)date
{
    NSLog(@"选中的日期：date = %@", date);
    [self.dateButton setTitle:date forState:UIControlStateNormal];
}


#pragma mark - lazy loading

- (UIButton *)dateButton
{
    if (!_dateButton) {
        _dateButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _dateButton.frame = CGRectMake(50, 100, [UIScreen mainScreen].bounds.size.width - 100, 50);
        [_dateButton setTitle:@"日期选择" forState:UIControlStateNormal];
        _dateButton.backgroundColor = UIColor.blueColor;
        _dateButton.layer.masksToBounds = YES;
        _dateButton.layer.cornerRadius = 5;
        [_dateButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
        _dateButton.titleLabel.font = [UIFont systemFontOfSize:16];
        [_dateButton addTarget:self action:@selector(dateButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _dateButton;
}

- (DateTimePickerView *)dateView
{
    if (!_dateView) {
        _dateView = [[DateTimePickerView alloc] init];
        _dateView.delegate = self;
        // 此处更改所要显示的日期样式
        _dateView.pickerViewMode = DatePickerViewDateYearMonthDayHourMinuteSecond;
        _dateView.titleL.text = @"日期选择";
        [self.view.window addSubview:_dateView];
    }
    return _dateView;
}







@end
