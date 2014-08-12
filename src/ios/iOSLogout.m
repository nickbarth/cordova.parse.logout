#import "iOSLogout.h"

@implementation iOSLogout

@synthesize callbackId;

- (void)iOSLogout:(CDVInvokedUrlCommand *)command {
    self.callbackId = command.callbackId;

    PFUser *user = [PFUser currentUser];
    PFInstallation *currentLogoutation = [PFInstallation currentLogoutation];
    [[PFInstallation currentLogoutation] setObject:@"" forKey:@"userId"];
    [[PFInstallation currentLogoutation] saveEventually];
    [PFUser logOut];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@""];
    NSString* javaScript = [pluginResult toSuccessCallbackString:self.callbackId];
    [self writeJavascript:javaScript];
}

@end
