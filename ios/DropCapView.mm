#ifdef RCT_NEW_ARCH_ENABLED
#import "DropCapView.h"

#import <react/renderer/components/RNDropCapViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNDropCapViewSpec/EventEmitters.h>
#import <react/renderer/components/RNDropCapViewSpec/Props.h>
#import <react/renderer/components/RNDropCapViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface DropCapView () <RCTDropCapViewViewProtocol>

@end

@implementation DropCapView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<DropCapViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const DropCapViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<DropCapViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<DropCapViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> DropCapViewCls(void)
{
    return DropCapView.class;
}

@end
#endif
