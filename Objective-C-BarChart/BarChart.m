//
//  BarChart.m
//  Objective-C-BarChart
//
//  Created by Angelos Staboulis on 9/10/24.
//

#import "BarChart.h"

@implementation BarChart
- (BarChart *)initWithFrame:(CGRect)frame values:(NSArray *)numbers{
    self = [super initWithFrame:frame];
    if (self) {
        self.values = numbers;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    NSNumber *sumNumber = [self.values valueForKeyPath:@"@sum.intValue"];
    
    for(int barCount=0;barCount<self.values.count;barCount++){
        
        NSNumber *number = [self.values objectAtIndex:barCount];
        
        float heightRatio = ([number floatValue] / [sumNumber floatValue] ) ;
        
        float x= (barCount * 60);
        if (sumNumber.floatValue > 10000){
            _height = (heightRatio * rect.size.height) / 0.8;
        }else{
            _height = (heightRatio * rect.size.height) ;
        }
        float y= rect.size.height - _height;
        
        CGRect rect = CGRectMake(barCount+x, y-60, 30,_height);
        
        UILabel *chrt = [[UILabel alloc] initWithFrame:rect];
        
        [chrt setBackgroundColor:[UIColor redColor]];
        
        [self addSubview:chrt];

    }
}


@end
