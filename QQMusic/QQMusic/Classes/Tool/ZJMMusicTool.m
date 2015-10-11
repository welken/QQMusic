//
//  ZJMMusicTool.m
//  QQMusic
//
//  Created by 张峻鸣 on 15/10/11.
//  Copyright © 2015年 zjm. All rights reserved.
//

#import "ZJMMusicTool.h"
#import "MJExtension.h"

@implementation ZJMMusicTool

static NSArray *_music;
static ZJMMusic *_playingMusic;

+ (void)initialize
{
    _music = [ZJMMusicTool objectArrayWithFilename:@"Musics.plist"];
    _playingMusic = _music[0];
}

+ (NSArray *)music
{
    return _music;
}
+ (ZJMMusic *)playingMusic
{
    return _playingMusic;
}
+ (void)setPlayingMusic:(ZJMMusic *)playingMusic
{
    _playingMusic = playingMusic;
}

@end
