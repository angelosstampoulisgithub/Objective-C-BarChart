//
//  BarChart.h
//  Objective-C-BarChart
//
//  Created by Angelos Staboulis on 9/10/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BarChart : UIView
- (BarChart *)initWithFrame:(CGRect)frame
                     values:(NSArray*) numbers;
@property NSArray *values;
@property float height;

@end

NS_ASSUME_NONNULL_END
