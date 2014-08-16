//
//  SSESelfSizingCollectionViewController.m
//  SelfSizingExperiments
//
//  Created by Hok Shun Poon on 16/08/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import "SSESelfSizingCollectionViewController.h"
#import "SSESelfSizingCell.h"

@interface SSESelfSizingCollectionViewController ()
@end

@implementation SSESelfSizingCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *lyric = @"supercalifragilisticexpialidocious";
    NSString *lyrics = @"I see trees of green, \n"
            "red roses too. \n"
            "I see them bloom, \n"
            "for me and you. \n"
            "And I think to myself,\n"
            "what a wonderful world. \n"
            "\n"
            "I see skies of blue, \n"
            "And clouds of white. \n"
            "The bright blessed day, \n"
            "The dark sacred night. \n"
            "And I think to myself, \n"
            "What a wonderful world. \n"
            "\n"
            "The colors of the rainbow, \n"
            "So pretty in the sky. \n"
            "Are also on the faces, \n"
            "Of people going by, \n"
            "I see friends shaking hands. \n"
            "Saying, \"How do you do?\" \n"
            "They're really saying, \n"
            "\"I love you\". \n"
            "\n"
            "I hear babies cry, \n"
            "I watch them grow, \n"
            "They'll learn much more, \n"
            "Than I'll ever know. \n"
            "And I think to myself, \n"
            "What a wonderful supercalifragilisticexpialidocious world. \n"
            "\n"
            "Yes, I think to myself, \n"
            "What a wonderful world. ""I see trees of green, \n"
            "red roses too. \n"
            "I see them bloom, \n"
            "for me and you. \n"
            "And I think to myself,\n"
            "what a wonderful world.\n";

    self.indexPathController.dataModel = [[TLIndexPathDataModel alloc] initWithItems:[lyrics componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];

    // Layout react to label size.
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *) self.collectionView.collectionViewLayout;
    layout.estimatedItemSize = CGSizeMake(100, 60);
}


#pragma mark - TLCollectionViewDelegate

- (NSString *)collectionView:(UICollectionView *)collectionView cellIdentifierAtIndexPath:(NSIndexPath *)indexPath {
    return @"ruid_selfSizingCell";
}

- (void)collectionView:(UICollectionView *)collectionView configureCell:(UICollectionViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    SSESelfSizingCell *selfSizingCell = (SSESelfSizingCell *) cell;

    selfSizingCell.label.text = [self.indexPathController.dataModel itemAtIndexPath:indexPath];
    CGSize inSize = selfSizingCell.label.intrinsicContentSize;
    selfSizingCell.label.frame = CGRectMake(0, 0, inSize.width, inSize.height);
    NSLog(@"Finished assigning text in %s", sel_getName(_cmd));
}

@end
