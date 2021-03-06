/**
 * Created by Dowin on 17/1/4.
 */
import React, { Component } from 'react';
import { requireNativeComponent} from 'react-native';
var ChartView = requireNativeComponent('charV', ZKChartView);
import PropTypes from 'prop-types';

export default class ZKChartView extends Component {
    static propTypes = {
        /**
         *
         * 定义组件需要传到原生端的属性
         * 使用React.PropTypes来进行校验
         */
        dataArr:PropTypes.array,
        dataArrOfX:PropTypes.array,
        isShow:PropTypes.bool, //可为空 默认true
        lineColor:PropTypes.string, //可为空 默认0xf38b10
        layerColor:PropTypes.string, //可为空 默认0xf38b10
        labelTextColor:PropTypes.string, //可为空 默认0xf38b10
        labelLayerColor:PropTypes.string, //可为空 默认0xf38b10
        maxValue:PropTypes.string,  //y轴最大值
        minValue:PropTypes.string, //y轴最小值
        tagNum:PropTypes.number, //y轴分布数
        lineWidth:PropTypes.number,//连线宽度
        upAlpha:PropTypes.number,//上层透明度
        downAlpha:PropTypes.number,//下层透明度
    };
    render() {
        return (
            <ChartView {...this.props} />
        );
    }
}