/*
 * QUtils.h
 *
 *  Created on: 2015年12月12日
 *      Author: Hodge
 */

#ifndef SRC_QUTILS_H_
#define SRC_QUTILS_H_

#define Chr_len 20

uint8_t convertASCII2Hex(char * aWord);
char convertHex2ASCII_HighNibble(uint8_t  hexdigit);
char convertHex2ASCII_LowNibble(uint8_t  hexdigit);

#endif /* SRC_QUTILS_H_ */
