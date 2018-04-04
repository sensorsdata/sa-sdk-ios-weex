//
//  WeexSensorsDataAnalyticsModule.m
//  SensorsAnalyticsSDK
//
//  Created by 向作为 on 2018/1/24.
//  Copyright © 2018年 SensorsData. All rights reserved.
//

#import "WeexSensorsDataAnalyticsModule.h"
#import "SensorsAnalyticsSDK.h"
@implementation WeexSensorsDataAnalyticsModule

WX_EXPORT_METHOD(@selector(track:withProperties:))
WX_EXPORT_METHOD(@selector(trackTimerBegin:))
WX_EXPORT_METHOD(@selector(trackTimerEnd:))
WX_EXPORT_METHOD(@selector(clearTrackTimer))
WX_EXPORT_METHOD(@selector(trackInstallation:withProperties:))
WX_EXPORT_METHOD(@selector(login:))
WX_EXPORT_METHOD(@selector(logout))
WX_EXPORT_METHOD(@selector(trackViewScreen:))
WX_EXPORT_METHOD(@selector(set:))
WX_EXPORT_METHOD(@selector(setOnce:))
WX_EXPORT_METHOD(@selector(unset:))
WX_EXPORT_METHOD(@selector(increment:))
WX_EXPORT_METHOD(@selector(append:by:))
WX_EXPORT_METHOD(@selector(deleteUser))




/**
 * 导出 track 方法给 weex 使用.
 *
 * @param event  事件名称
 * @param propertyDict 事件的具体属性
 *
 * weex 中使用示例：
 *            weexSensorsAnalyticsModule.track("weex_AddToFav",{"ProductID":123456,"UserLevel":"VIP"})
 */

-(void)track:(NSString *)event withProperties:(NSDictionary *)propertyDict{
    @try {
        [[SensorsAnalyticsSDK sharedInstance] track:event withProperties:propertyDict];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 trackTimer 方法给 weex 使用.
 *
 * 初始化事件的计时器，默认计时单位为毫秒(计时开始).
 * @param eventName 事件的名称.
 *
 *  weex 中使用示例：（计时器事件名称 viewTimer ）
 *            weexSensorsAnalyticsModule.trackTimerBegin("viewTimer")
 *            weexSensorsAnalyticsModule.trackTimerEnd("viewTimer")
 */
-(void)trackTimerBegin:(NSString *)event{
    @try {
        [[SensorsAnalyticsSDK sharedInstance] trackTimerBegin:event];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
-(void)trackTimerEnd:(NSString *)event{
    @try {
        [[SensorsAnalyticsSDK sharedInstance] trackTimerEnd:event];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}

/**
 * 导出 clearTrackTimer 方法给 weex 使用.
 * <p>
 * 清除所有事件计时器
 * <p>
 * weex 中使用示例：
 *                 weexSensorsAnalyticsModule.clearTrackTimer()
 */
-(void)clearTrackTimer{
    @try {
        [[SensorsAnalyticsSDK sharedInstance] clearTrackTimer];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 trackInstallation 方法给 weex 使用.
 *
 * 用于记录首次安装激活、渠道追踪的事件.
 * @param event  事件名.
 * @param propertyDict 事件属性.
 *
 *  weex 中使用示例：
 *            const date = new Date();
 *            this.year = date.getFullYear();
 *            this.month = date.getMonth() + 1;
 *            this.date = date.getDate();
 *            this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
 *            this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
 *            this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
 *            var currentTime =  this.year + "-" + this.month + "-" + this.date + " " + this.hour
 *                               + ":" + this.minute + ":" + this.second;
 *            weexSensorsAnalyticsModule.trackInstallation("AppInstall",{"FirstUseTime":currentTime})
 */
-(void)trackInstallation:(NSString *)event withProperties:(NSDictionary *)propertyDict{
    @try {
        [[SensorsAnalyticsSDK sharedInstance] trackInstallation:event withProperties:propertyDict];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 login 方法给 weex 使用.
 *
 * @param loginId 用户唯一下登录ID
 *
 * weex 中使用示例：
 *            weexSensorsAnalyticsModule.login("developer@sensorsdata.cn")
 */
-(void)login:(NSString *)loginId{
    @try {
        [[SensorsAnalyticsSDK sharedInstance] login:loginId];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 logout 方法给 weex 使用.
 *
 * weex 中使用示例：
 *            weexSensorsAnalyticsModule.logout()
 */
-(void)logout{
    @try {
        [[SensorsAnalyticsSDK sharedInstance] logout];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 trackViewScreen 方法给 weex 使用.
 *
 * 此方法用于 weex 中 Tab 切换页面的时候调用，用于记录 $AppViewScreen 事件.
 *
 * @param url        页面的 url  记录到 $url 字段中(如果不需要此属性，可以传 null ).
 * @param properties 页面的属性.
 *
 * 注：为保证记录到的 $AppViewScreen 事件和 Auto Track 采集的一致，
 *    需要传入 $title（页面的title） 、$screen_name （页面的名称，即 包名.类名）字段.
 *
 * weex 中使用示例：
 *            weexSensorsAnalyticsModule.trackViewScreen(null,{"$title":"weex主页","$screen_name":"cn.sensorsdata.demo.weexHome"})
 */
-(void)trackViewScreen:(NSString *)url withProperties:(NSDictionary *)properties{
    @try {
        [[SensorsAnalyticsSDK sharedInstance] trackViewScreen:url withProperties:properties];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }

}
/**
 * 导出 set 方法给 weex 使用.
 *
 * @param profileDict 用户属性
 *
 * weex 中使用示例：（保存用户的属性 "sex":"男"）
 *            weexSensorsAnalyticsModule.set({"sex":"男"})
 */
-(void)set:(NSDictionary *)profileDict{
    @try {
        [[[SensorsAnalyticsSDK sharedInstance] people] set:profileDict];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 setOnce 方法给 weex 使用.
 *
 * 首次设置用户的一个或多个 Profile.
 * 与set接口不同的是，如果之前存在，则忽略，否则，新创建.
 *
 * @param profileDict 属性列表
 *
 *  weex 中使用示例：（保存用户的属性 "sex":"男"）
 *            weexSensorsAnalyticsModule.setOnce({"sex":"男"})
 */
-(void)setOnce:(NSDictionary *)profileDict{
    @try {
        [[[SensorsAnalyticsSDK sharedInstance] people] setOnce:profileDict];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 unset 方法给 weex 使用.
 * <p>
 * 删除用户的一个 Profile.
 *
 * @param property 属性名称.
 *                 <p>
 *                 weex 中使用示例：
 *                 weexSensorsAnalyticsModule.unset("sex")
 */
-(void)unset:(NSString *) profile{
    @try {
        [[[SensorsAnalyticsSDK sharedInstance] people] unset:profile];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 increment 方法给 weex 使用.
 *
 * 给一个数值类型的Profile增加一个数值. 只能对数值型属性进行操作，若该属性
 * 未设置，则添加属性并设置默认值为0.
 *
 * @param property 属性名称
 * @param value    属性的值，值的类型只允许为 Number .
 *
 * weex 中使用示例：
 *            weexSensorsAnalyticsModule.increment("money",10)
 */
-(void)increment:(NSString *)profile by:(NSNumber *)amount{
    @try {
        [[[SensorsAnalyticsSDK sharedInstance] people] increment:profile by:amount];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 append 方法给 weex 使用.
 * <p>
 * 向一个<code>NSSet</code>类型的value添加一些值
 *
 * @param property 属性名称.
 * @param value    新增的元素.
 *                 <p>
 * weex 中使用示例：
 *                   var list = ["Sicario","Love Letter"];
 *                   weexSensorsAnalyticsModule.append("Move",list)

 */
-(void)append:(NSString *)profile by:(NSArray *)content{
    @try {
        NSSet *setCntent = [NSSet setWithArray:content];
        [[[SensorsAnalyticsSDK sharedInstance] people] append:profile by:setCntent];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
/**
 * 导出 deleteUser 方法给 weex 使用.
 * <p>
 * 删除当前这个用户的所有记录.
 * <p>
 * weex 中使用示例：
 *                weexSensorsAnalyticsModule.deleteUser()
 */
-(void)deleteUser{
    @try {
        [[[SensorsAnalyticsSDK sharedInstance] people] deleteUser];
    } @catch (NSException *exception) {
        NSLog(@"[weexSensorsAnalytics] error:%@",exception);
    }
}
@end
