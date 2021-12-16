//
//  CAAnalytics.h
//  CAAnalytics
//
//  Created by OsamaNadeem on 7/12/21.
//

#import <Foundation/Foundation.h>

@interface CAAnalytics : NSObject

+ (CAAnalytics*)getInstance;
- (void)initSDK: (NSString *) packageName;
@end
