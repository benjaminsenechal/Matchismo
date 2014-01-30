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
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

// Deck getter : lazy instantiation

- (Deck *)deck{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *)createDeck{
    return [[PlayingCardDeck alloc]init];
}

-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if([[sender currentTitle] length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"back"]
                      forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        Card* randomCard = [self.deck drawRandomCard]; // getter + createDeck called
        if (randomCard){
            [sender setBackgroundImage:[UIImage imageNamed:@"front"]
                          forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
        }
    }
    // call the setter 
    self.flipCount++;
}

@end
