#ifndef PIC_TO_NDS_PICBEER_H
#define PIC_TO_NDS_PICBEER_H

#include <nds.h>

//Header file
//Code generated by PicToCode version 2.0
//From http://www.richelbilderbeek.nl/ToolPicToCode.htm
struct PicBeer
{
  void Draw(u16 * const buffer, const int x, const int y) const;
  int GetWidth() const { return 32; }
  int GetHeight() const { return 32; }
};

#endif // PIC_TO_NDS_PICBEER_H
