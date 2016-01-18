//
//  UIColor+IQRandomTextColor.m
// https://github.com/hackiftekhar/IQAsyncImage
// Copyright (c) 2016 Iftekhar Qurashi.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "UIColor+IQRandomTextColor.h"

@implementation UIColor (IQRandomTextColor)

+ (UIColor *)colorForText:(NSString*)text
{
    NSInteger counter = 0;
    
    if ([text length])
    {
        for (NSInteger i = 0; i<text.length; i++)
        {
            counter += [text characterAtIndex:i];
        }
    }
    else
    {
        counter = 100;
    }
    
    NSInteger red = MAX(30, (counter*1)%225);
    NSInteger green = MAX(30, (counter*2)%225);
    NSInteger blue = MAX(30, (counter*3)%225);
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0f];
}

@end
