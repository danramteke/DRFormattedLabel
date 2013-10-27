//
//  DRFormattedLabel.m
//  DRFormattedLabel
//
//  Created by Daniel R on 10/27/13.
//  Copyright (c) 2013 Daniel R. All rights reserved.
//

#import "DRFormattedLabel.h"

@interface DRFormattedLabel ()
-(void)updateText;
@end

@implementation DRFormattedLabel

- (instancetype)initWithFrame:(CGRect)frame format:(NSString*)format defaultValue:(NSString*)defaultValue {
    self = [super initWithFrame:frame];
    if (self) {
        _format = format;
        _defaultValue = defaultValue;
    }
    [self updateText];
    return self;
}

-(instancetype)initWithFormat:(NSString*)format defaultValue:(NSString*)defaultValue {
    self = [super init];
    if (self) {
        _format = format;
        _defaultValue = defaultValue;
    }
    [self updateText];
    return self;
}

-(void)setValue:(id)newValue {
    _value = newValue;
    [self updateText];
}

-(void)setFormat:(NSString *)newFormat {
    _format = newFormat;
    [self updateText];
}

-(void)updateText {
    if (_value == nil)
        self.text = [NSString stringWithFormat:_format, _defaultValue];
    else
        self.text = [NSString stringWithFormat:_format, _value];
}

-(void)clear {
    _value = nil;
    [self updateText];
}
@end
