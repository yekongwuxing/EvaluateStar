//
//  RchStarRateView.h
//  EvaluateStar
//
//  Created by jiangmm on 2017/9/21.
//  Copyright © 2017年 jchvip.rch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RchStarRateView;
typedef void(^finishBlock)(CGFloat currentScore);
typedef NS_ENUM(NSInteger, RateStyle)
{
    WholeStar = 0, //只能整星评论
    HalfStar = 1,  //允许半星评论
    IncompleteStar = 2  //允许不完整星评论
};
@protocol RchStarRateViewDelegate <NSObject>
-(void)starRateView:(RchStarRateView *)starRateView currentScore:(CGFloat)currentScore;
@end

@interface RchStarRateView : UIView
@property (nonatomic,assign)BOOL isAnimation;       //是否动画显示，默认NO
@property (nonatomic,assign)RateStyle rateStyle;    //评分样式    默认是WholeStar
@property (nonatomic,assign)CGFloat currentScore;   // 当前评分：0-5  默认0
@property (nonatomic, weak) id<RchStarRateViewDelegate>delegate;
/**
 *通过代理的方法获取当前评分数currentScore
 */
-(instancetype)initWithFrame:(CGRect)frame;
-(instancetype)initWithFrame:(CGRect)frame numberOfStars:(NSInteger)numberOfStars rateStyle:(RateStyle)rateStyle isAnination:(BOOL)isAnimation delegate:(id)delegate;
/**
 *通过Block传值的方法获取当前评分数currentScore
 */
-(instancetype)initWithFrame:(CGRect)frame finish:(finishBlock)finish;
-(instancetype)initWithFrame:(CGRect)frame numberOfStars:(NSInteger)numberOfStars rateStyle:(RateStyle)rateStyle isAnination:(BOOL)isAnimation finish:(finishBlock)finish;
@end

