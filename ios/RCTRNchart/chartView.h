//
//  chartView.h
//  RCTEchart
//
//  Created by Dowin on 17/1/4.
//  Copyright © 2017年 Dowin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LRSChartView.h"
@interface chartView : UIView
@property(nonatomic,strong)NSArray *dataArr;
@property(nonatomic,strong)NSArray *dataArrOfX;
@property (nonatomic, strong) LRSChartView *incomeChartLineView;
//折线的颜色
@property (nonatomic, copy) NSString *lineColor;
//渐变图层的颜色
@property (nonatomic, copy) NSString *layerColor;
/**默认显示网格  YES*/
@property(nonatomic,assign)BOOL isShow;
//详情小方块字体颜色
@property(nonatomic,strong) NSString *labelTextColor;
//详情小方框背景颜色
@property(nonatomic,strong) NSString *labelLayerColor;
//y轴坐标最大值
@property(nonatomic,strong) NSString *maxValue;
//y轴坐标最小值
@property(nonatomic,strong) NSString *minValue;
//y轴显示格子个数
@property(nonatomic,assign) NSInteger tagNum;
//连线宽度
@property(nonatomic,assign) float lineWidth;
//上层透明度
@property(nonatomic,assign) float upAlpha;
//下层透明度
@property(nonatomic,assign) float downAlpha;
@end
