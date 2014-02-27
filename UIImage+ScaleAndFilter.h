//
//  UIImage+ScaleAndFilter.h
//  UIImageTest
//
//  Created by Stanford University CS193p Instructor
//  Copyright (c) 2013 Stanford University. All rights reserved.
//
//  This category was taken from Stanford University's CS193p course
//   and modified to have more appropriately named category to more 
//   closely reflect actual purpose of class extension.
//

#import <UIKit/UIKit.h>

@interface UIImage (ScaleAndFilter)

- (UIImage *)imageByScalingToSize:(CGSize)size;
- (UIImage *)imageByApplyingFilterNamed:(NSString *)filterName;

@end
