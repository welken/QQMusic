//
//  ZJMPlayingViewController.m
//  QQMusic
//
//  Created by 张峻鸣 on 15/10/11.
//  Copyright © 2015年 zjm. All rights reserved.
//

#import "ZJMPlayingViewController.h"
#import "Masonry.h"
#import "ZJMMusicTool.h"
#import "ZJMMusic.h"

@interface ZJMPlayingViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *albumView;
@property (weak, nonatomic) IBOutlet UILabel *songName;
@property (weak, nonatomic) IBOutlet UILabel *singerName;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation ZJMPlayingViewController

#pragma - mark 初始化View

- (void)viewDidLoad {
    [super viewDidLoad];
//    添加一个毛玻璃效果
    [self setupGlass];
//    设置滑块
    [self.slider setThumbImage:[UIImage imageNamed:@"player_slider_playback_thumb"] forState:UIControlStateNormal];
//    开始播放歌曲
    [self startPlayingMusic];
    
}
- (void)setupGlass
{
    UIToolbar *toolBar = [[UIToolbar alloc] init];
    toolBar.barStyle = UIBarStyleBlack;
    [self.albumView addSubview:toolBar];
//    设置约束
    [toolBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.albumView);
        
    }];
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.iconView.layer.cornerRadius = self.iconView.bounds.size.width * 0.5;
    self.iconView.layer.masksToBounds = YES;
    self.iconView.layer.borderWidth = 7;
    self.iconView.layer.borderColor = [UIColor grayColor].CGColor;
}

- (void)startPlayingMusic
{
//    取出当前正在播放的歌曲模型,更新界面
    ZJMMusic *playingMusic = [ZJMMusicTool playingMusic];
    self.iconView.image = [UIImage imageNamed:playingMusic.icon];
    self.albumView.image = [UIImage imageNamed:playingMusic.icon];
    self.songName.text = playingMusic.name;
    self.singerName.text = playingMusic.singer;
    
    
}






@end
