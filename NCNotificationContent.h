#import <UserNotificationsKit/UserNotificationsKit-Structs.h>
#import <UserNotificationsKit/BSDescriptionProviding.h>
#import <UserNotificationsKit/NSCopying.h>
#import <UserNotificationsKit/NSMutableCopying.h>

@class NSString, UIImage, NSDate, NSTimeZone;

@interface NCNotificationContent : NSObject <BSDescriptionProviding, NSCopying, NSMutableCopying> {

    NSString* _header;
    NSString* _title;
    NSString* _subtitle;
    NSString* _message;
    NSString* _hiddenPreviewsBodyPlaceholder;
    UIImage* _icon;
    UIImage* _attachmentImage;
    NSDate* _date;
    bool _dateAllDay;
    NSTimeZone* _timeZone;
    NSString* _topic;
}

@property (nonatomic,copy,readonly) NSString* header;                                  //@synthesize header=_header - In the implementation block
@property (nonatomic,copy,readonly) NSString* title;                                   //@synthesize title=_title - In the implementation block

 
@property (nonatomic,copy,readonly) NSString* subtitle;                                //@synthesize subtitle=_subtitle - In the implementation block
@property (nonatomic,copy,readonly) NSString* message;                                 //@synthesize message=_message - In the implementation block
@property (nonatomic,copy,readonly) NSString* hiddenPreviewsBodyPlaceholder;           //@synthesize hiddenPreviewsBodyPlaceholder=_hiddenPreviewsBodyPlaceholder - In the implementation block
@property (nonatomic,copy,readonly) NSString* topic;                                   //@synthesize topic=_topic - In the implementation block
@property (nonatomic,readonly) UIImage* icon;                                          //@synthesize icon=_icon - In the implementation block
@property (nonatomic,readonly) UIImage* attachmentImage;                               //@synthesize attachmentImage=_attachmentImage - In the implementation block
@property (nonatomic,readonly) NSDate* date;                                           //@synthesize date=_date - In the implementation block
@property (getter=isDateAllDay,nonatomic,readonly) bool dateAllDay;                    //@synthesize dateAllDay=_dateAllDay - In the implementation block
@property (nonatomic,readonly) NSTimeZone* timeZone;                                   //@synthesize timeZone=_timeZone - In the implementation block
@property (readonly) unsignedlonglong hash; 
@property (readonly) Class superclass; 
@property (copy,readonly) NSString* description; 
@property (copy,readonly) NSString* debugDescription; 
-(void).cxx_destruct;
-(bool)isEqual:(id)arg1 ;
-(unsigned long long)hash;
-(id)description;
-(id)debugDescription;
-(id)title;
-(id)date;
-(id)copyWithZone:(NSZoneRef)arg1 ;
-(id)subtitle;
-(id)message;
-(id)timeZone;
-(id)mutableCopyWithZone:(NSZoneRef)arg1 ;
-(id)icon;
-(id)header;
-(id)topic;
-(id)initWithNotificationContent:(id)arg1 ;
-(bool)isDateAllDay;
-(id)succinctDescription;
-(id)descriptionWithMultilinePrefix:(id)arg1 ;
-(id)descriptionBuilderWithMultilinePrefix:(id)arg1 ;
-(id)succinctDescriptionBuilder;
-(id)hiddenPreviewsBodyPlaceholder;
-(id)attachmentImage;
@end
