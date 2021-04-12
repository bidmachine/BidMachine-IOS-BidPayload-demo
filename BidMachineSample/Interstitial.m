//
//  Interstitial.m
//  Copyright © 2019 bidmachine. All rights reserved.
//

#import "Interstitial.h"

@interface Interstitial ()<BDMInterstitialDelegate, BDMRequestDelegate>

@property (nonatomic, strong) BDMInterstitial *interstitial;
@property (nonatomic, strong) BDMInterstitialRequest *request;

@end

@implementation Interstitial

- (void)loadAd:(id)sender {
    self.request = BDMInterstitialRequest.new;
    [self.request performWithDelegate:self];
}

- (void)showAd:(id)sender {
    if ([self.interstitial canShow]) {
        [self.interstitial presentFromRootViewController:self];
    }
}

#pragma mark - BDMRequestDelegate

- (void)request:(nonnull BDMRequest *)request failedWithError:(nonnull NSError *)error {
    
}

- (void)request:(nonnull BDMRequest *)request completeWithInfo:(nonnull BDMAuctionInfo *)info {
    self.interstitial = [BDMInterstitial new];
    self.interstitial.delegate = self;
    [self.interstitial populateWithRequest:self.request];
}

- (void)requestDidExpire:(nonnull BDMRequest *)request {
    
}

#pragma mark - BDMInterstitialDelegate

- (void)interstitialReadyToPresent:(nonnull BDMInterstitial *)interstitial {
    
}

- (void)interstitial:(nonnull BDMInterstitial *)interstitial failedWithError:(nonnull NSError *)error {
    
}

- (void)interstitial:(nonnull BDMInterstitial *)interstitial failedToPresentWithError:(nonnull NSError *)error {
    
}

- (void)interstitialWillPresent:(nonnull BDMInterstitial *)interstitial {
    
}

- (void)interstitialDidDismiss:(nonnull BDMInterstitial *)interstitial {
    
}

- (void)interstitialRecieveUserInteraction:(nonnull BDMInterstitial *)interstitial {
    
}

@end
