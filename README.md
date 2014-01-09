DRFormattedLabel
================

A UILabel that displays a given value in a given format string.


**Instantiate** the label with a format string and a default value. For example, `[[DRFormattedLabel alloc] initWithFormat:@"Current tempurature: %@", defaultValue: @"--"]`

**Set the value** by using the generated `setValue` method. When the temperature changes, for example `[label setValue:@32]`

And finally, to **clear** the current value of the label, and go back to displaying the default label, you can call `[label clear]`

For reference, here is the full public interface:

    - (instancetype)initWithFrame:(CGRect)frame format:(NSString*)format defaultValue:(NSString*)defaultValue;
    - (instancetype)initWithFormat:(NSString*)format defaultValue:(NSString*)defaultValue;

    @property (nonatomic, strong) NSString* format;
    @property (nonatomic, strong) NSString* defaultValue;
    @property (nonatomic, strong) id value;

    -(void)clear;
