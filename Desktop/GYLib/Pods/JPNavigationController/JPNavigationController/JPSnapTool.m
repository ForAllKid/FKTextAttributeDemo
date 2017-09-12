/*
 * This file is part of the JPNavigationController package.
 * (c) NewPan <13246884282@163.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 * Click https://github.com/Chris-Pan
 * or http://www.jianshu.com/users/e2f2d779c022/latest_articles to contact me.
 */

#import "JPSnapTool.h"

#define kShadowImagePath @"JPImage.bundle/shadow"

@implementation JPSnapTool

+(UIImage *)snapShotWithView:(UIView *)view{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *aImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return aImage;
}

+(UIImage *)mixShadowWithView:(UIView *)view{
    UIImage *aImage = [self snapShotWithView:view];
    
    UIImage *shadow = [UIImage imageNamed:kShadowImagePath];
    CGRect snapRect = CGRectMake(0, 0, shadow.size.width+shadowWidth, JPScreenHeight);
    CGRect imageRect = CGRectMake(shadowWidth, 0, JPScreenWidth, JPScreenHeight);
    
    UIGraphicsBeginImageContextWithOptions(snapRect.size, NO, aImage.scale);
    [shadow drawInRect:snapRect];
    [aImage drawInRect:imageRect];
    UIImage *snapImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapImage;
}

+(UIImage *)imageWithColor:(UIColor *)color{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
