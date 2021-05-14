![BidMachine iOS](https://appodeal-ios.s3-us-west-1.amazonaws.com/docs/bidmachine.png)

# BidMachine IOS BidPayload demo

### Getting Started

##### Add following lines into your project Podfile

> **_NOTE:_** The beta version of the SDK is used, so you need to connect the private repository as well

```ruby
source 'https://github.com/appodeal/CocoaPods.git'
source 'https://github.com/CocoaPods/Specs.git'

target 'Target' do
  project 'Project.xcodeproj'
  pod "BDMIABAdapter", '~> 1.7.3.0'
end
```

### Initialize SDK

```objc
    BDMSdkConfiguration *configuration = BDMSdkConfiguration.new;
    [[BDMSdk sharedSdk] startSessionWithSellerID:@"1" configuration:configuration completion:nil];
```

### Banner Implementation

Make request

```objc
    self.request = BDMBannerRequest.new;
    self.request.adSize = BDMBannerAdSize320x50;
    self.request.bidPayload = @"bid payload";
    [self.request performWithDelegate:self];
```

Load ad

```objc
    - (void)request:(nonnull BDMRequest *)request completeWithInfo:(nonnull BDMAuctionInfo *)info {
         [self.bannerView populateWithRequest:self.request];
    }
```

### MREC Implementation

Make request

```objc
    self.request = BDMBannerRequest.new;
    self.request.adSize = BDMBannerAdSize300x250;
    self.request.bidPayload = @"bid payload";
    [self.request performWithDelegate:self];
```

Load ad

```objc
     - (void)request:(nonnull BDMRequest *)request completeWithInfo:(nonnull BDMAuctionInfo *)info {
         [self.bannerView populateWithRequest:self.request];
     }
```

### Interstitial Implementation

Make request

```objc
    self.request = BDMInterstitialRequest.new;
    self.request.bidPayload = @"bid payload";
    [self.request performWithDelegate:self];
```

Load ad

```objc
    - (void)request:(nonnull BDMRequest *)request completeWithInfo:(nonnull BDMAuctionInfo *)info {
        self.interstitial = [BDMInterstitial new];
        self.interstitial.delegate = self;
        [self.interstitial populateWithRequest:self.request];
    }
```

Present ad

```objc
    if ([self.interstitial canShow]) {
        [self.interstitial presentFromRootViewController:self];
    }
```

### Rewarded Implementation

Make request

```objc
    self.request = BDMRewardedRequest.new;
    self.request.bidPayload = @"bid payload";
    [self.request performWithDelegate:self];
```

Load ad

```objc
    - (void)request:(nonnull BDMRequest *)request completeWithInfo:(nonnull BDMAuctionInfo *)info {
        self.rewarded = [BDMRewarded new];
        self.rewarded.delegate = self;
        [self.rewarded populateWithRequest:self.request];
    }
```

Present ad

```objc
    if ([self.rewarded canShow]) {
        [self.rewarded presentFromRootViewController:self];
    }
```

