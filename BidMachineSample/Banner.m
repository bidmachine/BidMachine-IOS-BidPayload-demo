//
//  Banner.m
//  Copyright © 2019 bidmachine. All rights reserved.
//

#import "Banner.h"


@interface Banner ()<BDMBannerDelegate, BDMRequestDelegate>

@property (nonatomic, strong) BDMBannerRequest *request;
@property (weak, nonatomic) IBOutlet BDMBannerView *bannerView;

@end

@implementation Banner

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bannerView.delegate = self;
}

- (void)loadAd:(id)sender {
    self.request = BDMBannerRequest.new;
    self.request.adSize = BDMBannerAdSize320x50;
    self.request.bidPayload = BDMBanner320PayloadString;
//    MREC
//    self.request.adSize = BDMBannerAdSize300x250;
//    self.request.bidPayload = BDMBanner300PayloadString;
    [self.request performWithDelegate:self];
}

#pragma mark - BDMRequestDelegate

- (void)request:(nonnull BDMRequest *)request failedWithError:(nonnull NSError *)error {
    
}

- (void)request:(nonnull BDMRequest *)request completeWithInfo:(nonnull BDMAuctionInfo *)info {
    [self.bannerView populateWithRequest:self.request];
}

- (void)requestDidExpire:(nonnull BDMRequest *)request {
    
}

#pragma mark - BDMBannerDelegate

- (void)bannerViewReadyToPresent:(nonnull BDMBannerView *)bannerView {
    
}

- (void)bannerView:(nonnull BDMBannerView *)bannerView failedWithError:(nonnull NSError *)error {
    
}

- (void)bannerViewRecieveUserInteraction:(nonnull BDMBannerView *)bannerView {
    
}

@end
