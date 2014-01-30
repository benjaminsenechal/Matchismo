//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Benjamin SENECHAL on 30/01/2014.
//  Copyright (c) 2014 Benjamin SENECHAL. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (strong, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic)int flipCount;
@end

@implementation CardGameViewController

-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    PlayingCardDeck *card = [[PlayingCardDeck alloc]init]; // init 
    Card* cardSelected = [card drawRandomCard];
    
    if([[sender currentTitle] length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"back"]
                      forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"front"]
                          forState:UIControlStateNormal];
        [sender setTitle:cardSelected.contents forState:UIControlStateNormal];
    }
    // call the setter 
    self.flipCount++;
}

@end
