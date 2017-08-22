#### 注意: react-native版本需要0.40.0及以上

## 如何安装

### 1.首先安装npm包
#ios
```bash
npm install react-native-line-chart --save
```

### 2.link
```bash
react-native link react-native-line-chart
```
#### 手动link~（如果不能够自动link）
#####ios
a.打开XCode's工程中, 右键点击Libraries文件夹 ➜ Add Files to <...>
b.去node_modules ➜ react-native-line-chart➜ ios ➜ 选择 RCTRNchart.xcodeproj
c.在工程Build Phases ➜ Link Binary With Libraries中添加RCTRNchart.a

## 如何使用

### 引入包

1、import ZKChartView from  'react-native-line-chart';
2、
<ZKChartView style={{height:200,width:375}}
             DataArr={['10.0','8.34','6.26','4.18','2.10','0.02','0.5']}
             dataArrOfX = {['12-27','12-28','12-29','12-31','01-01','01-02','01-03']}
