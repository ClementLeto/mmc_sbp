#import "MmcSbpPlugin.h"

@implementation MmcSbpPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
            methodChannelWithName:@"mmc_sbp"
                  binaryMessenger:[registrar messenger]];
    MmcSbpPlugin* instance = [[MmcSbpPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"getInstalledBanks" isEqualToString:call.method]) {
        NSArray<NSString *> *schemaApplications = call.arguments;
        [self getInstalledBanks:schemaApplications result:result];
    } else if ([call.method isEqualToString:@"openBank"]) {
        NSDictionary *arguments = (NSDictionary *)call.arguments;
        NSString *scheme = arguments[@"schema"];
        NSString *urlString = arguments[@"url"];

        if (scheme != nil && ![scheme isKindOfClass:[NSNull class]]) {
            NSURL *url = [self schemaLink:scheme link:urlString];
            [self open:url result:result];
        } else if (urlString != nil) {
            NSURL *url = [NSURL URLWithString:urlString];
            [self open:url result:result];
        } else {
            result([FlutterError errorWithCode:@"InvalidArguments"
                                       message:@"Both scheme and url are null or empty"
                                       details:@"sbp_plugin"]);
        }
    } else {
        result(FlutterMethodNotImplemented);
    }
}

- (void)getInstalledBanks:(NSArray<NSString *> *)schemaApplications result:(FlutterResult)result {
    NSMutableArray<NSString *> *schemas = [NSMutableArray array];

    for (NSString *schemaApplication in schemaApplications) {
        NSURL *schema = [NSURL URLWithString:[NSString stringWithFormat:@"%@://", schemaApplication]];
        if ([[UIApplication sharedApplication] canOpenURL:schema]) {
            [schemas addObject:schemaApplication];
        }
    }

    result(schemas);
}

- (void)open:(NSURL *)url result:(FlutterResult)result {
    printf("%s", [url.absoluteString UTF8String]);
    if (@available(iOS 10.0, *)) {
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
        result(@(YES));
    } else {
        [[UIApplication sharedApplication] openURL:url];
        result(@(YES));
    }
}

- (NSURL *)schemaLink:(NSString *)scheme link:(NSString *)link {
    NSString *modifiedLink = [link stringByReplacingOccurrencesOfString:@"https://" withString:[NSString stringWithFormat:@"%@://", scheme]];
    modifiedLink = [modifiedLink stringByReplacingOccurrencesOfString:@"http://" withString:[NSString stringWithFormat:@"%@://", scheme]];

    NSURL *url = [NSURL URLWithString:modifiedLink];
    return url;
}

@end
