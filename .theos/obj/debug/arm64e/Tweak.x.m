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

@class NCNotificationDispatcher; @class SBDefaultBannerTextView; @class SBLockScreenBulletinCell; @class SBBannerContextView; @class SBBannerContainerViewController; 
static void (*_logos_orig$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$)(_LOGOS_SELF_TYPE_NORMAL NCNotificationDispatcher* _LOGOS_SELF_CONST, SEL, NCNotificationRequest*); static void _logos_method$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$(_LOGOS_SELF_TYPE_NORMAL NCNotificationDispatcher* _LOGOS_SELF_CONST, SEL, NCNotificationRequest*); static SBBannerContainerViewController* (*_logos_orig$_ungrouped$SBBannerContainerViewController$initWithNibName$bundle$)(_LOGOS_SELF_TYPE_INIT SBBannerContainerViewController*, SEL, id, id) _LOGOS_RETURN_RETAINED; static SBBannerContainerViewController* _logos_method$_ungrouped$SBBannerContainerViewController$initWithNibName$bundle$(_LOGOS_SELF_TYPE_INIT SBBannerContainerViewController*, SEL, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SBBannerContainerViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBBannerContainerViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBBannerContainerViewController$loadView)(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBBannerContainerViewController$loadView(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBBannerContainerViewController$viewWillLayoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBBannerContainerViewController$viewWillLayoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBBannerContextView$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL SBBannerContextView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBBannerContextView$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBBannerContextView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBDefaultBannerTextView$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL SBDefaultBannerTextView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBDefaultBannerTextView$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBDefaultBannerTextView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBLockScreenBulletinCell$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBulletinCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBLockScreenBulletinCell$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBulletinCell* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.x"


static void _logos_method$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$(_LOGOS_SELF_TYPE_NORMAL NCNotificationDispatcher* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NCNotificationRequest* arg1) {
    
    
    NSLog(@"[strife] title: %@", [[arg1 content] title]);
    NSLog(@"[strife] message: %@", [[arg1 content] message]);
    
    

    _logos_orig$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$(self, _cmd, arg1);
}




static SBBannerContainerViewController* _logos_method$_ungrouped$SBBannerContainerViewController$initWithNibName$bundle$(_LOGOS_SELF_TYPE_INIT SBBannerContainerViewController* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED  {
    NSLog(@"-[<SBBannerContainerViewController: %p> initWithNibName:%@ bundle:%@]", self, arg1, arg2); 
id r = _logos_orig$_ungrouped$SBBannerContainerViewController$initWithNibName$bundle$(self, _cmd, arg1, arg2);
NSLog(@"[strife] nib init: %@\n%@", arg1, arg2);
 return r;
 }

static void _logos_method$_ungrouped$SBBannerContainerViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSLog(@"[strife]: banner ontreioaoi view");
    _logos_orig$_ungrouped$SBBannerContainerViewController$viewDidLoad(self, _cmd);
}




static void _logos_method$_ungrouped$SBBannerContextView$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBBannerContextView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { NSLog(@"[strife]: sb banner contexnt"); _logos_orig$_ungrouped$SBBannerContextView$viewDidLoad(self, _cmd); }




static void _logos_method$_ungrouped$SBDefaultBannerTextView$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBDefaultBannerTextView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { NSLog(@"[strife]: default banner tv"); _logos_orig$_ungrouped$SBDefaultBannerTextView$viewDidLoad(self, _cmd); }



static void _logos_method$_ungrouped$SBLockScreenBulletinCell$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBLockScreenBulletinCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { NSLog(@"[strife]: sb lock screen"); _logos_orig$_ungrouped$SBLockScreenBulletinCell$viewDidLoad(self, _cmd); }



static void _logos_method$_ungrouped$SBBannerContainerViewController$loadView(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { 
    NSLog(@"[strife] sb banner loadview");
_logos_orig$_ungrouped$SBBannerContainerViewController$loadView(self, _cmd);
 }
static void _logos_method$_ungrouped$SBBannerContainerViewController$viewWillLayoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBBannerContainerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSLog(@"[strife] sb banner layout subview mate");
 _logos_orig$_ungrouped$SBBannerContainerViewController$viewWillLayoutSubviews(self, _cmd); 
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NCNotificationDispatcher = objc_getClass("NCNotificationDispatcher"); { MSHookMessageEx(_logos_class$_ungrouped$NCNotificationDispatcher, @selector(postNotificationWithRequest:), (IMP)&_logos_method$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$, (IMP*)&_logos_orig$_ungrouped$NCNotificationDispatcher$postNotificationWithRequest$);}Class _logos_class$_ungrouped$SBBannerContainerViewController = objc_getClass("SBBannerContainerViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBBannerContainerViewController, @selector(initWithNibName:bundle:), (IMP)&_logos_method$_ungrouped$SBBannerContainerViewController$initWithNibName$bundle$, (IMP*)&_logos_orig$_ungrouped$SBBannerContainerViewController$initWithNibName$bundle$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBBannerContainerViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SBBannerContainerViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SBBannerContainerViewController$viewDidLoad);}{ MSHookMessageEx(_logos_class$_ungrouped$SBBannerContainerViewController, @selector(loadView), (IMP)&_logos_method$_ungrouped$SBBannerContainerViewController$loadView, (IMP*)&_logos_orig$_ungrouped$SBBannerContainerViewController$loadView);}{ MSHookMessageEx(_logos_class$_ungrouped$SBBannerContainerViewController, @selector(viewWillLayoutSubviews), (IMP)&_logos_method$_ungrouped$SBBannerContainerViewController$viewWillLayoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBBannerContainerViewController$viewWillLayoutSubviews);}Class _logos_class$_ungrouped$SBBannerContextView = objc_getClass("SBBannerContextView"); { MSHookMessageEx(_logos_class$_ungrouped$SBBannerContextView, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SBBannerContextView$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SBBannerContextView$viewDidLoad);}Class _logos_class$_ungrouped$SBDefaultBannerTextView = objc_getClass("SBDefaultBannerTextView"); { MSHookMessageEx(_logos_class$_ungrouped$SBDefaultBannerTextView, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SBDefaultBannerTextView$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SBDefaultBannerTextView$viewDidLoad);}Class _logos_class$_ungrouped$SBLockScreenBulletinCell = objc_getClass("SBLockScreenBulletinCell"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenBulletinCell, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SBLockScreenBulletinCell$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SBLockScreenBulletinCell$viewDidLoad);}} }
#line 57 "Tweak.x"
