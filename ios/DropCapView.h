// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef DropCapViewNativeComponent_h
#define DropCapViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface DropCapView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* DropCapViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
