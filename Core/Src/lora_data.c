/*
 * lora_data.c
 *
 *  Created on: Oct 26, 2026
 *      Author: Admin
 */

#include "lora_data.h"

u16 crc16_modbus(const u8 *d, u8 len)
{
	u16 crc = 0xFFFF;
	while(len--)
	{
		crc ^= *d++;
		for(u8 i=0;i<8;i++)
		{
			crc =(crc&1) ? (crc>>1) ^ 0xA001 : (crc >> 1);
		}
	}
	return crc;
}
