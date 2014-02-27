//
//  UIImage+ScaleAndFilter.m
//  UIImageTest
//
//  Created by Stanford University CS193p Instructor
//  Copyright (c) 2013 Stanford University. All rights reserved.
//
//  This category was taken from Stanford University's CS193p course
//   and modified to have more appropriately named category to more 
//   closely reflect actual purpose of class extension.
//

#import "UIImage+ScaleAndFilter.h"

@implementation UIImage (ScaleAndFilter)

- (UIImage *)imageByScalingToSize:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *resizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resizedImage;
}

- (UIImage *)imageByApplyingFilterNamed:(NSString *)filterName
{
    UIImage *filteredImage;
    
    // Step 1: create the CIImage object
    CIImage *inputImage = [CIImage imageWithCGImage:[self CGImage]];
    if (inputImage) {
        // Step 2: get the filter
        CIFilter *filter = [CIFilter filterWithName:filterName];
        // Step 3: provide the arguments
        [filter setValue:inputImage forKey:kCIInputImageKey];
        // Step 4: get output image
        CIImage *outputImage = [filter outputImage];
        if (outputImage) {
            filteredImage = [UIImage imageWithCIImage:outputImage];
            if (filteredImage) {
                // Step 5: draw it into a new image
                UIGraphicsBeginImageContextWithOptions(self.size, YES, 0.0);
                [filteredImage drawAtPoint:CGPointZero];
                filteredImage = UIGraphicsGetImageFromCurrentImageContext();
                UIGraphicsEndImageContext();
            }
        }
    }
    
    return filteredImage;
}

@end
