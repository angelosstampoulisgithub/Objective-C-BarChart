//
//  ViewController.m
//  Objective-C-BarChart
//
//  Created by Angelos Staboulis on 9/10/24.
//

#import "ViewController.h"
#import "BarChart.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *values = [NSArray arrayWithObjects:
                    [NSNumber numberWithInt:30000],
                    [NSNumber numberWithInt:40000],
                    [NSNumber numberWithInt:80000],
                    [NSNumber numberWithInt:115000],
                    [NSNumber numberWithInt:90000],
                    [NSNumber numberWithInt:34000],
                    [NSNumber numberWithInt:43000],
                    nil];
    CGRect rect = [[self view] frame];
    BarChart *chart = [[BarChart alloc] initWithFrame:rect values:values];
    [self.view addSubview:chart];
    
}

@end
