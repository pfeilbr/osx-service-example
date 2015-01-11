//
//  AppDelegate.m
//  MacTestApp03
//
//  Created by Brian Pfeil on 1/10/15.
//  Copyright (c) 2015 Brian Pfeil. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

// service entry point
-(void)uploadFromPasteboard:(NSPasteboard *)pboard userData:(NSString *)udata error:(NSString **)err
{
    NSString *filename = [pboard stringForType:NSURLPboardType];
    NSSound *s = [NSSound soundNamed:@"Pop"];
    s.delegate = self;
    [s play];
    NSLog(@"file: %@", filename);
    //
}

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    [NSApp setServicesProvider:self];
}

- (void)sound:(NSSound *)sound didFinishPlaying:(BOOL)aBool {
    [NSApp terminate:nil];
}



- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
