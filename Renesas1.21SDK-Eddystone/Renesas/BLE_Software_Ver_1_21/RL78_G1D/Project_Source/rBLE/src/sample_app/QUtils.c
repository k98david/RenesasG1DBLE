/*
 * QUtils.c
 *
 *  Created on: 2015年12月12日
 *      Author: Hodge
 */
//#include "hal_types.h"
#include    "rwke_api.h"

uint8_t convertASCII2Hex(char * aWord){

	char abyte;

	if ( (aWord[0]>=0x30) & (aWord[0]<=0x39)){
		abyte = aWord[0]-0x30;
		abyte = abyte <<4;
	}else{
		if ((aWord[0]>='A')&(aWord[0]<='F')){
			abyte = aWord[0]-'A'+10;
			abyte = abyte <<4;
		}else if((aWord[0]>='a')&(aWord[0]<='f')){
                  	abyte = aWord[0]-'a'+10;
			abyte = abyte <<4;
                }
	}
	if ( (aWord[1]>0x30) & (aWord[1]<=0x39)){
		abyte += aWord[1]-0x30;
	}else{
		if ((aWord[1]>='A')&(aWord[1]<='F')){
			abyte += aWord[1]-'A'+10;
		}else if((aWord[1]>='a')&(aWord[1]<='f')){
                  	abyte += aWord[1]-'a'+10;
                }
	}

	return abyte;
}

char convertHex2ASCII_HighNibble(uint8_t  hexdigit){
	char result;
	uint8_t value;
	value = hexdigit>>4;
	if (value<10){
		result = 0x30+value;
	}else{
		result = 'A'+ value-10;
	}
	return result;
}

char convertHex2ASCII_LowNibble(uint8_t  hexdigit){
	char result;
	uint8_t value;
	value = hexdigit&0x0F;
	if (value<10){
		result = 0x30+value;
	}else{
		result = 'A'+ value-10;
	}
	return result;
}
