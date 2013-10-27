//
//  DRFormattedLabel.h
//  DRFormattedLabel
//
//  Created by Daniel R on 10/27/13.
//  Copyright (c) 2013 Daniel R. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DRFormattedLabel : UILabel

- (instancetype)initWithFrame:(CGRect)frame format:(NSString*)format defaultValue:(NSString*)defaultValue;
- (instancetype)initWithFormat:(NSString*)format defaultValue:(NSString*)defaultValue;

@property (nonatomic, strong) NSString* format;
@property (nonatomic, strong) NSString* defaultValue;
@property (nonatomic, strong) id value;

-(void)clear;


@end
