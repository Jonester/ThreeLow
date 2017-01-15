//
//  main.m
//  ThreeLow
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Dice.h"
#import "GameManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        GameManager  *gameManager = [GameManager new];
        
        NSMutableArray *tempArray = [NSMutableArray new];
        for (int i = 1; i <= 5; i++) {
            Dice *die = [Dice new];
            [tempArray addObject:die];
        }
        gameManager.diceArray = [NSArray arrayWithArray:tempArray];
        
        NSLog(@"Welcome to ThreeLow. \nEnter the word 'roll' or 'r' to roll the dice, or 'quit' to quit.");
       
        while (gameOn) {
            NSString *input = [InputCollector collectInfo];
            if ([input isEqualToString:@"r"] || [input isEqualToString:@"roll"]) {
                for (NSInteger i = 0; i <= 4; i++) {
                    [gameManager diceRoll:gameManager.diceArray[i]];
                    NSLog(@"Dice # %ld: %@", i + 1, gameManager.dieFace);
                }
                NSLog(@"\n\nPlease enter the dice numbers that you would like to hold separated by a space.");
                NSString *holdDice = [InputCollector collectInfo];
                NSArray *parsedInput = [holdDice componentsSeparatedByString:@" "];
                for (int i = 0; i <= parsedInput.count; i++) {
                    if ([[parsedInput objectAtIndex:i] isEqual:[gameManager.diceArray objectAtIndex:i]]) {
                        
                    }
                }
            }
        else if ([input isEqualToString:@"q"] || [input isEqualToString:@"quit"]) {
            gameOn = NO;
            NSLog(@"Thanks for playing.");
        } else {
            NSLog(@"That is an ivalid entry, please try again.");
            continue;
        }
    }
}
return 0;
}
