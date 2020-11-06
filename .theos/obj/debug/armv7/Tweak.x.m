#line 1 "Tweak.x"
#include "Tweak.h"


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

@class NCNotificationDispatcher; 
static void (*_logos_orig$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$)(_LOGOS_SELF_TYPE_NORMAL NCNotificationDispatcher* _LOGOS_SELF_CONST, SEL, NCNotificationRequest*); static void _logos_method$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$(_LOGOS_SELF_TYPE_NORMAL NCNotificationDispatcher* _LOGOS_SELF_CONST, SEL, NCNotificationRequest*); 

#line 3 "Tweak.x"



static void _logos_method$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$(_LOGOS_SELF_TYPE_NORMAL NCNotificationDispatcher* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NCNotificationRequest* arg1) {
    NSLog(@"[strife]: %@", arg1);
    NSLog(@"[strife] title: %@", [[arg1 content] title]);
    NSLog(@"[strife] message: %@", [[arg1 content] message]);
    _logos_orig$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NCNotificationDispatcher = objc_getClass("NCNotificationDispatcher"); { MSHookMessageEx(_logos_class$_ungrouped$NCNotificationDispatcher, @selector(postNotificationWithRequest:), (IMP)&_logos_method$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$, (IMP*)&_logos_orig$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$);}} }
#line 13 "Tweak.x"
