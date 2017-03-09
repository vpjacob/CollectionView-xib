//
//  PictureView.m
//  CollectionView
//
//  Created by vpjacob on 2017/3/8.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "PictureView.h"
#import "CollectionViewCell.h"

@interface PictureView ()<UICollectionViewDataSource>

@end


@implementation PictureView



- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    
    if (self == [super initWithFrame:frame collectionViewLayout:layout]) {
        
        self.dataSource = self;
        UINib* nib = [UINib nibWithNibName:@"PictureCell" bundle:[NSBundle mainBundle]];
        [self registerNib:nib forCellWithReuseIdentifier:@"cell"];
    }
    return self;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 50;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    return cell;
}


@end
