//
//  Rewarded.m
//  BidMachineSample
//
//  Created by Ilia Lozhkin on 12.04.2021.
//  Copyright © 2021 BidMachine. All rights reserved.
//

#import "Rewarded.h"

@interface Rewarded ()<BDMRewardedDelegate, BDMRequestDelegate>

@property (nonatomic, strong) BDMRewarded *rewarded;
@property (nonatomic, strong) BDMRewardedRequest *request;

@end

@implementation Rewarded

- (void)loadAd:(id)sender {
    self.request = BDMRewardedRequest.new;
    self.request.bidPayload = BDMRewardedPayloadString;
    [self.request performWithDelegate:self];
}

- (void)showAd:(id)sender {
    if ([self.rewarded canShow]) {
        [self.rewarded presentFromRootViewController:self];
    }
}

#pragma mark - BDMRequestDelegate

- (void)request:(nonnull BDMRequest *)request failedWithError:(nonnull NSError *)error {
    
}

- (void)request:(nonnull BDMRequest *)request completeWithInfo:(nonnull BDMAuctionInfo *)info {
    self.rewarded = [BDMRewarded new];
    self.rewarded.delegate = self;
    [self.rewarded populateWithRequest:self.request];
}

- (void)requestDidExpire:(nonnull BDMRequest *)request {
    
}

#pragma mark - BDMRewardedDelegate

- (void)rewardedReadyToPresent:(nonnull BDMRewarded *)rewarded {
    
}

- (void)rewarded:(nonnull BDMRewarded *)rewarded failedWithError:(nonnull NSError *)error {
    
}

- (void)rewarded:(nonnull BDMRewarded *)rewarded failedToPresentWithError:(nonnull NSError *)error {
    
}

- (void)rewardedWillPresent:(nonnull BDMRewarded *)rewarded {
    
}

- (void)rewardedDidDismiss:(nonnull BDMRewarded *)rewarded {
    
}

- (void)rewardedRecieveUserInteraction:(nonnull BDMRewarded *)rewarded {
    
}

- (void)rewardedFinishRewardAction:(nonnull BDMRewarded *)rewarded {
    
}

@end
