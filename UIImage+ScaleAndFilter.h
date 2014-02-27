//
//  UIImage+ScaleAndFilter.h
//  UIImageTest
//
//  Created by BJ Miller on 2/26/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ScaleAndFilter)

- (UIImage *)imageByScalingToSize:(CGSize)size;
- (UIImage *)imageByApplyingFilterNamed:(NSString *)filterName;

@end
