#import "SavanaPluginPlugin.h"

@implementation SavanaPluginPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
  FlutterMethodChannel *channel =
      [FlutterMethodChannel methodChannelWithName:@"savana_plugin_ios"
                                  binaryMessenger:registrar.messenger];
  [channel setMethodCallHandler:^(FlutterMethodCall *call, FlutterResult result) {
    if ([@"getPlatformName" isEqualToString:call.method]) {
      result(@"iOS");
    } else {
      result(FlutterMethodNotImplemented);
    }
  }];
}

@end