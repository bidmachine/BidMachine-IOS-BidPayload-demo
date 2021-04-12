//
//  AppDelegate.m
//  Copyright © 2019 BidMachine. All rights reserved.
//

#import "AppDelegate.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    BDMSdkConfiguration *configuration = BDMSdkConfiguration.new;
    [[BDMSdk sharedSdk] startSessionWithSellerID:@"1" configuration:configuration completion:nil];
    
    return YES;
}

@end
