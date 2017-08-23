//
//  LRSChartView.h
//  LRSChartView
//
//  Created by lreson on 16/7/21.
//  Copyright © 2016年 lreson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LRSChartView : UIView

@property (nonatomic, assign) NSInteger numOfX;

/** Y轴坐标数据 */
@property (nonatomic, strong) NSArray *dataArrOfY;
/** X轴坐标数据 */
@property (nonatomic, strong) NSArray *dataArrOfX;
/** 左边数据 */
@property (nonatomic,strong) NSArray *leftDataArr;
/** 右边数据 没有不用传递 */
@property (nonatomic,strong) NSArray *rightDataArr;
/** X轴标题 */
@property (nonatomic, strong) UILabel *titleOfX;
/** Y轴标题 */
@property (nonatomic, strong) UILabel *titleOfY;

@property (nonatomic, copy) NSString *titleOfXStr;
@property (nonatomic, copy) NSString *titleOfYStr;
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
//y轴数量分布
@property(nonatomic,assign) NSInteger tagNum;
//连线宽度
@property(nonatomic,assign) float lineWidth;
//上层透明度
@property(nonatomic,assign) float upAlpha;
//下层透明度
@property(nonatomic,assign) float downAlpha;

@end
