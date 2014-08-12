#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>
#import <Parse/Parse.h>

@interface iOSLogout: CDVPlugin{
  NSString* callbackId;
}

@property (nonatomic, retain) NSString* callbackId;
- (void)iOSLogout:(CDVInvokedUrlCommand *)command;
@end
