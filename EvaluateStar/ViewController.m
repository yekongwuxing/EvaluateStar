//
//  ViewController.m
//  EvaluateStar
//
//  Created by jiangmm on 2017/9/21.
//  Copyright © 2017年 jchvip.rch. All rights reserved.
//

#import "ViewController.h"
#import "RchStarRateView.h"

@interface ViewController ()<RchStarRateViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RchStarRateView *starRateView = [[RchStarRateView alloc] initWithFrame:CGRectMake(20, 60, 200, 30)];
    starRateView.isAnimation = YES;
    starRateView.rateStyle = IncompleteStar;
    starRateView.tag = 1;
    starRateView.delegate = self;
    [self.view addSubview:starRateView];
    
    RchStarRateView *starRateView2 = [[RchStarRateView alloc] initWithFrame:CGRectMake(20, 100, 200, 30) numberOfStars:5 rateStyle:HalfStar isAnination:YES delegate:self];
    starRateView2.tag = 2;
    [self.view addSubview:starRateView2];
    
    RchStarRateView *starRateView3 = [[RchStarRateView alloc] initWithFrame:CGRectMake(20, 140, 200, 30) finish:^(CGFloat currentScore) {
        NSLog(@"3----  %f",currentScore);
    }];
    [self.view addSubview:starRateView3];
    
    RchStarRateView *starRateView4 = [[RchStarRateView alloc] initWithFrame:CGRectMake(20, 180, 200, 30) numberOfStars:5 rateStyle:HalfStar isAnination:YES finish:^(CGFloat currentScore) {
        NSLog(@"4----  %f",currentScore);
    }];
    [self.view addSubview:starRateView4];
    
}

-(void)starRateView:(RchStarRateView *)starRateView currentScore:(CGFloat)currentScore{
    NSLog(@"%ld----  %f",starRateView.tag,currentScore);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
