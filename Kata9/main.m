//
//  main.m
//  Kata9
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import <stdlib.h>
#import <math.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        char *input=malloc(81);//[82];
        printf("type up to 81 characters without spaces: ");
        fgets(input, 81, stdin);
        
        for(int i = 0; input[i] != '\0'; i++){
            if(input[i] == ' '){
                printf("Invalid input: spaces not allowed");
                return 1;
            }
        }
        
        unsigned long len = strlen(input) - 1;
        
        int numberOfColumns = 1 + (int)floor(sqrt(len));
        int numberOfRows    = numberOfColumns-1;
        
        if(len > (numberOfRows * numberOfColumns)){
            numberOfRows++;
        }
        
        printf("columns: %d and rows: %d for len %lu", numberOfColumns, numberOfRows, len);
        
        
        char letters[numberOfRows][numberOfColumns];
        int currentIndex = 0;
        for(int row = 0; row < numberOfRows; row++){
            for(int col = 0; col < numberOfColumns; col++){
                letters[row][col] = 0;
                currentIndex++;
            }
        }
        
        //char letters[numberOfRows][numberOfColumns];
        //int
        currentIndex = 0;
        for(int row = 0; row < numberOfRows; row++){
            for(int col = 0; col < numberOfColumns; col++){
                if(input[currentIndex] != 0){
                    letters[row][col] = input[currentIndex];
                }
                currentIndex++;
            }
        }
        
        printf("\n");
        for(int i = 0; i < numberOfRows; i++){
            for(int j = 0; j < numberOfColumns; j++){
                if(letters[i][j] != 0){
                    printf("%c", letters[i][j]);
                }
                
            }
            printf("\n");
        }
        // ifmanwasmeanttostayonthegroundgodwouldhavegivenusroots
        
        printf("\n");
        for(int i = 0; i < numberOfColumns; i++){
            for(int j = 0; j < numberOfRows; j++){
                printf("%c", letters[j][i]);
            
            }
            printf(" ");
        }
        printf("\n");
        //printf("You typed %s which has %lu characters\n", input, len);
        
    }
    return 0;
}
