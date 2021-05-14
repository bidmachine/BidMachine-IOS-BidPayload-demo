platform :ios, '10.0'
install! 'cocoapods', :deterministic_uuids => false, :warn_for_multiple_pod_sources => false

source 'https://github.com/appodeal/CocoaPods.git'
source 'https://github.com/CocoaPods/Specs.git'

$BDMVersion = '~> 1.7.3.0'

def bidmachine
  pod "BDMIABAdapter", $BDMVersion
end

target 'BidMachineSample' do
  bidmachine
end
