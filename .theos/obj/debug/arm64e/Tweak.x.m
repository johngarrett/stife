#line 1 "Tweak.x"
#import <AudioToolbox/AudioToolbox.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBVolumeHardwareButton; 
static void (*_logos_orig$_ungrouped$SBVolumeHardwareButton$volumeIncreasePress$)(_LOGOS_SELF_TYPE_NORMAL SBVolumeHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBVolumeHardwareButton$volumeIncreasePress$(_LOGOS_SELF_TYPE_NORMAL SBVolumeHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBVolumeHardwareButton$volumeDecreasePress$)(_LOGOS_SELF_TYPE_NORMAL SBVolumeHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBVolumeHardwareButton$volumeDecreasePress$(_LOGOS_SELF_TYPE_NORMAL SBVolumeHardwareButton* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.x"


static void _logos_method$_ungrouped$SBVolumeHardwareButton$volumeIncreasePress$(_LOGOS_SELF_TYPE_NORMAL SBVolumeHardwareButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1)  { 
    NSLog(@"-[<SBVolumeHardwareButton: %p> volumeIncreasePress:%@]", self, arg1); 
    _logos_orig$_ungrouped$SBVolumeHardwareButton$volumeIncreasePress$(self, _cmd, arg1); 
}
static void _logos_method$_ungrouped$SBVolumeHardwareButton$volumeDecreasePress$(_LOGOS_SELF_TYPE_NORMAL SBVolumeHardwareButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1)  { 
NSLog(@"garrepi strife This is it: %@", @"This is my string text!");
AudioServicesPlaySystemSound(103);
    NSLog(@"-[<SBVolumeHardwareButton: %p> volumeDecreasePress:%@]", self, arg1);
    _logos_orig$_ungrouped$SBVolumeHardwareButton$volumeDecreasePress$(self, _cmd, arg1);
 }

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBVolumeHardwareButton = objc_getClass("SBVolumeHardwareButton"); { MSHookMessageEx(_logos_class$_ungrouped$SBVolumeHardwareButton, @selector(volumeIncreasePress:), (IMP)&_logos_method$_ungrouped$SBVolumeHardwareButton$volumeIncreasePress$, (IMP*)&_logos_orig$_ungrouped$SBVolumeHardwareButton$volumeIncreasePress$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBVolumeHardwareButton, @selector(volumeDecreasePress:), (IMP)&_logos_method$_ungrouped$SBVolumeHardwareButton$volumeDecreasePress$, (IMP*)&_logos_orig$_ungrouped$SBVolumeHardwareButton$volumeDecreasePress$);}} }
#line 16 "Tweak.x"
