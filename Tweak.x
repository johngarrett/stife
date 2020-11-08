#include "Tweak.h"

%hook NCNotificationDispatcher

-(void)postNotificationWithRequest:(NCNotificationRequest*)arg1 {
    //arg1.content.title = @"Hello world";
    //NSLog(@"[strife]: %@", arg1);
    NSLog(@"[strife] title: %@", [[arg1 content] title]);
    NSLog(@"[strife] message: %@", [[arg1 content] message]);
    //NCNotificationRequest *copy = [arg1 mutableCopy];
    //[[[arg1 content] message] appendString: @" and it is mine!"];

    %orig;
}
%end

%hook SBBannerContainerViewController

-(id)initWithNibName:(id)arg1 bundle:(id)arg2  {
    %log; 
id r = %orig;
NSLog(@"[strife] nib init: %@\n%@", arg1, arg2);
 return r;
 }

- (void)viewDidLoad {
    NSLog(@"[strife]: banner ontreioaoi view");
    %orig;
}

%end

%hook SBBannerContextView
- (void)viewDidLoad { NSLog(@"[strife]: sb banner contexnt"); %orig; }

%end

%hook SBDefaultBannerTextView
- (void)viewDidLoad { NSLog(@"[strife]: default banner tv"); %orig; }
%end

%hook SBLockScreenBulletinCell
- (void)viewDidLoad { NSLog(@"[strife]: sb lock screen"); %orig; }
%end

%hook SBBannerContainerViewController
-(void)loadView { 
    NSLog(@"[strife] sb banner loadview");
%orig;
 }
-(void)viewWillLayoutSubviews {
    NSLog(@"[strife] sb banner layout subview mate");
 %orig; 
}

%end
