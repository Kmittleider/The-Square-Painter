#include "myLib.h"

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[OFFSET(col, row, SCREENWIDTH)] = color;
}

void drawRect(int col, int row, int width, int height, unsigned short color) {
    // TODO #1: implement this function
    int i, j;
    for (i = 0; i < height; i++) {
        for (j = 0; j < width; j++) {
            setPixel(col + i, row + j, color);
        }
    }    
}

void fillScreen(unsigned short color) {
    // TODO #2: implement this function
    // note: you may only use a single loop
    for (int i = 0; i < 38400; i++) {
        videoBuffer[i] = color;
    }

}

void waitForVBlank() {
    while (SCANLINECOUNTER > 160);
    while (SCANLINECOUNTER < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    // TODO #5.0: Implement this function
    if (rowA < (rowB + heightB - 1) && (rowA + heightA - 1) > rowB && colA < (colB + widthB - 1) && (colA + widthA - 1) > colB) {
        return 1;
    } else {
        return 0;
    }

}