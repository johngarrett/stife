@protocol BSDescriptionProviding <NSObject>

@required
-(id)succinctDescription;
-(id)descriptionWithMultilinePrefix:(id)arg1;
-(id)descriptionBuilderWithMultilinePrefix:(id)arg1;
-(id)succinctDescriptionBuilder;
@end
