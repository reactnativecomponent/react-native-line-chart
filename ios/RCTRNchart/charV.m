//
//  charV.m
//  RCTEchart
//
//  Created by Dowin on 17/1/4.
//  Copyright © 2017年 Dowin. All rights reserved.
//

#import "charV.h"

@implementation charV
RCT_EXPORT_MODULE()
- (UIView *)view
{
    _charV = [[chartView alloc]init];
    return _charV;
}
//将所需参数导出给JS

RCT_EXPORT_VIEW_PROPERTY(dataArr, NSArray)
RCT_EXPORT_VIEW_PROPERTY(dataArrOfX, NSArray)
RCT_EXPORT_VIEW_PROPERTY(isShow, BOOL)
RCT_EXPORT_VIEW_PROPERTY(lineColor, NSString)
RCT_EXPORT_VIEW_PROPERTY(layerColor, NSString)
RCT_EXPORT_VIEW_PROPERTY(labelTextColor, NSString)
RCT_EXPORT_VIEW_PROPERTY(labelLayerColor, NSString)
RCT_EXPORT_VIEW_PROPERTY(maxValue, NSString)
RCT_EXPORT_VIEW_PROPERTY(minValue, NSString)
RCT_EXPORT_VIEW_PROPERTY(tagNum, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(lineWidth, float)
RCT_EXPORT_VIEW_PROPERTY(upAlpha, float)
RCT_EXPORT_VIEW_PROPERTY(downAlpha, float)
@end
