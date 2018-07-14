//
//  ViewController.m
//  IOS_VideoPlayer
//
//  Created by Student P_02 on 12/05/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)PlayButton:(id)sender
{
    NSString *path=[[NSBundle mainBundle]pathForResource:@"Varya varti" ofType:@"mp4"];
    
    NSURL *url=[NSURL fileURLWithPath:path];
    
    AVPlayer *player=[AVPlayer playerWithURL:url];
    
    AVPlayerViewController *playerViewController=[[AVPlayerViewController alloc]init];
    playerViewController.player=player;
    
    playerViewController.view.frame=self.view.bounds;
    
    [[self view]addSubview:playerViewController.view];
    
    [player play];
}

@end
