#import <AudioToolbox/AudioToolbox.h>

%hook SBVolumeHardwareButton

-(void)volumeIncreasePress:(id)arg1  { 
    %log; 
    %orig; 
}
-(void)volumeDecreasePress:(id)arg1  { 
NSLog(@"garrepi strife This is it: %@", @"This is my string text!");
AudioServicesPlaySystemSound(103);
    %log;
    %orig;
 }
%end
