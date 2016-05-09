//
//  ViewController.m
//  TWCycleScrollView
//
//  Created by HaKim on 16/2/26.
//  Copyright © 2016年 haKim. All rights reserved.
//

#import "ViewController.h"
#import "TWCycleScrollView.h"

@interface ViewController () <TWCycleScrollViewDelegate>
@property (nonatomic, weak) TWCycleScrollView *cycleScrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectZero];
    view1.backgroundColor = [UIColor redColor];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectZero];
    view2.backgroundColor = [UIColor greenColor];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectZero];
    view3.backgroundColor = [UIColor blueColor];
    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectZero];
    view4.backgroundColor = [UIColor orangeColor];
    
    
    NSArray *imageNames = @[view1,view2,view3,view4];
     CGFloat w = self.view.bounds.size.width;
    TWCycleScrollView *cycleScrollView = [TWCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 64, w, 180) shouldInfiniteLoop:YES viewsGroup:imageNames];
    cycleScrollView.delegate = self;
    [self.view addSubview:cycleScrollView];
    self.cycleScrollView = cycleScrollView;
}
- (IBAction)preBtnClicked:(UIButton *)sender {
    [self.cycleScrollView scrollToPreviousPage];
}

- (IBAction)nextBtnClicked:(UIButton *)sender {
    [self.cycleScrollView scrollToNextPage];
}

#pragma mark - SDCycleScrollViewDelegate

- (void)cycleScrollView:(TWCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"--->>>点击了第%ld个view", (long)index);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
