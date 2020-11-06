#include "Tweak.h"

%hook NCNotificationDispatcher

-(void)postNotificationWithRequest:(NCNotificationRequest*)arg1 {
    NSLog(@"[strife]: %@", arg1);
    NSLog(@"[strife] title: %@", [[arg1 content] title]);
    NSLog(@"[strife] message: %@", [[arg1 content] message]);
    %orig;
}
%end
