//
//  ViewController.m
//  CollectionView
//
//  Created by vpjacob on 2017/3/8.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"
#import "PictureView.h"
#import "CollectionViewCell.h"

@interface ViewController ()<UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout* Layout = [[UICollectionViewFlowLayout alloc] init];
    PictureView* pictview = [[PictureView alloc] initWithFrame:CGRectMake(0, 0, 375, 350) collectionViewLayout:Layout];
    Layout.minimumLineSpacing = 5;
    Layout.minimumInteritemSpacing = 5;
    Layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    Layout.itemSize = CGSizeMake(150, 150);
//    UINib* nib = [UINib nibWithNibName:@"PictureCell" bundle:[NSBundle mainBundle]];
//    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview:pictview];
    
    
}

//-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
//    NSLog(@"ddd");
//}
//
//-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    return 50;
//}
//
//- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
//    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
//    
//    return cell;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
