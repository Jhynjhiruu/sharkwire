#ifndef _COLOUR_H
#define _COLOUR_H

#define RGB5_TO_COL(r, g, b) (((r) << 11) | ((g) << 6) | ((b) << 1))
#define _RGB5_TO_COL(x) RGB5_TO_COL(x)
#define _CONV(c) (((c) * 31) / 255)
#define RGB8_TO_RGB5(r, g, b) _CONV(r), _CONV(g), _CONV(b)
#define RGB8_TO_COL(r, g, b) _RGB5_TO_COL(RGB8_TO_RGB5(r, g, b))

#define WHITE RGB8_TO_COL(0xFF, 0xFF, 0xFF)
#define BLACK RGB8_TO_COL(0x00, 0x00, 0x00)

#define RED RGB8_TO_COL(0xFF, 0x00, 0x00)
#define GREEN RGB8_TO_COL(0x00, 0xFF, 0x00)
#define BLUE RGB8_TO_COL(0x00, 0x00, 0xFF)

#endif
