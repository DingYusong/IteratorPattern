//
//  ViewController.m
//  IteratorPattern
//
//  Created by 丁玉松 on 2018/12/26.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *array = @[@"a",@"b",@"c",@"d",@"e",@"f",@"g",];
    
    NSEnumerator *em = [array objectEnumerator];
    
    while (em.nextObject) {
//        NSString *obj = em.nextObject;
        NSLog(@"aaa");
    };
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *objStr = obj;
        NSLog(@"%@",objStr);
    }];
    
    for (NSString *item in array) {
        NSLog(@"%@",item);
    }
    
}


@end
