//
// Created by Hok Shun Poon on 16/08/2014.
// Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import "SSESelfSizingCell.h"
#import "MASConstraintMaker.h"
#import "View+MASAdditions.h"

@interface SSESelfSizingCell ()
@end

@implementation SSESelfSizingCell

- (void)updateConstraints {
    NSLog(@"Intrinsic size @ A: %@", NSStringFromCGSize([self.label intrinsicContentSize]));
    NSLog(@"Label Constraints @ A: %@", self.label.constraints);
    NSLog(@"ContentView Constraints @ A: %@", self.contentView.constraints);

    // Then, shrink-wrap the contentView around the label
    [self.contentView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.label);
    }];

    NSLog(@"Intrinsic size @ B: %@", NSStringFromCGSize([self.label intrinsicContentSize]));
    NSLog(@"Label Constraints @ B: %@", self.label.constraints);
    NSLog(@"ContentView Constraints @ B: %@", self.contentView.constraints);

    [super updateConstraints];
}

@end