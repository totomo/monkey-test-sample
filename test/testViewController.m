//
//  testViewController.m
//  test
//
//  Created by toku on 2013/10/07.
//  Copyright (c) 2013年 toku. All rights reserved.
//

#import "testViewController.h"

@interface testViewController ()
@property (nonatomic) NSUInteger pageIndex;
@property (nonatomic, strong) UIButton *button;
@end

@implementation testViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame = CGRectMake(100, 100, 100, 100);
    [_button addTarget:self
               action:@selector(causeCrash)
     forControlEvents:UIControlEventTouchUpInside];
    [_button setTitle:[NSString stringWithFormat:@"%lu", (unsigned long)self.pageIndex] forState:UIControlStateNormal];
    [_button setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:_button];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)causeCrash
{
    self.pageIndex++;
    if(_pageIndex > 30){
        [@[].mutableCopy addObject:nil];
    }
}

- (void)setPageIndex:(NSUInteger)pageIndex
{
    _pageIndex = pageIndex;
    [_button setTitle:[NSString stringWithFormat:@"%lu", (unsigned long)self.pageIndex] forState:UIControlStateNormal];
}
@end
