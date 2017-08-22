//
//  chartView.m
//  RCTEchart
//
//  Created by Dowin on 17/1/4.
//  Copyright © 2017年 Dowin. All rights reserved.
//

#import "chartView.h"
@implementation chartView
{
    NSArray *_DataArr;
    NSArray  *_dataArrOfX;
}

-(instancetype)init{
    self = [super init];
    if (self) {
        _isShow = YES;
    }
    return self;
}

-(void)setDataArr:(NSArray *)DataArr{
    _DataArr  = [NSArray arrayWithArray:DataArr];
    
}
-(void)setDataArrOfX:(NSArray *)dataArrOfX{
    _dataArrOfX = [NSArray arrayWithArray:dataArrOfX];
}
-(void)setIsShow:(BOOL)isShow{
    if (isShow == 0) {
           _isShow = NO;
    }
 
}
-(void)setLabelLayerColor:(NSString *)labelLayerColor{
    _labelLayerColor = labelLayerColor;
}
-(void)setLabelTextColor:(NSString *)labelTextColor{
    _labelTextColor = labelTextColor;
}
-(void)setLayerColor:(NSString *)layerColor{
    _layerColor = layerColor;
}
-(void)setLineColor:(NSString *)lineColor{

    _lineColor  = lineColor;
}
-(void)setMaxValue:(NSString *)maxValue{
    _maxValue = maxValue;
}
-(void)setMinValue:(NSString *)minValue{
    _minValue = minValue;
}
-(void)setTagNum:(NSInteger)tagNum{
    _tagNum = tagNum;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    _incomeChartLineView = [[LRSChartView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width,self.bounds.size.height)];
    //循环拿到收益最大值
//    float tempMax = [_DataArr[0] floatValue];
//    for (int i = 1; i < _DataArr.count; ++i) {
//        if ([_DataArr[i] floatValue] > tempMax) {
//            tempMax = [_DataArr[i] floatValue];
//        }
//    }
//    NSMutableArray *dataOfY = [NSMutableArray array];
//    float m = tempMax/6;
//    for (int i = 0; i < 7; i++) {
//        if (i == 6) {
//            [dataOfY addObject:[NSString stringWithFormat:@"%.2f",0.0]];
//        }else{
//            [dataOfY addObject:[NSString stringWithFormat:@"%.2f",(tempMax - i * [[NSString stringWithFormat:@"%.2f",m] floatValue])]];
//        }
//    }
    float  tempMax =  [_maxValue floatValue];
    float  tempMin = [_minValue floatValue];
    NSMutableArray *dataOfY = [NSMutableArray array];
    float m =( tempMax - tempMin )/(_tagNum - 1);
    for (int i = 0; i < _tagNum; i++) {
        [dataOfY addObject:[NSString stringWithFormat:@"%.2f",tempMin + i * m]];
    }
    _incomeChartLineView.leftDataArr = _DataArr;
    _incomeChartLineView.dataArrOfY = (NSArray *)[[dataOfY reverseObjectEnumerator] allObjects];//拿到Y轴坐标
    _incomeChartLineView.dataArrOfX = _dataArrOfX;//拿到X轴坐标
    _incomeChartLineView.isShow = _isShow;
    _incomeChartLineView.lineColor = _lineColor;
    _incomeChartLineView.layerColor = _layerColor;
    _incomeChartLineView.labelTextColor = _labelTextColor;
    _incomeChartLineView.labelLayerColor = _labelLayerColor;
    _incomeChartLineView.tagNum = _tagNum;
    [self addSubview:_incomeChartLineView];

}
#pragma mark - React View Management

- (void)insertReactSubview:(UIView *)view atIndex:(NSInteger)atIndex
{

       return;
}

- (void)removeReactSubview:(UIView *)subview
{

    return;
}
@end
