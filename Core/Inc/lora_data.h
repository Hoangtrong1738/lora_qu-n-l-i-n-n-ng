/*
 * lora_data.h
 *
 *  Created on: Oct 26, 2026
 *      Author: Admin
 */

#ifndef SRC_LORA_DATA_H_
#define SRC_LORA_DATA_H_
#include "stdint.h"
#include "types.h"
#define PKT_MAGIC 0xA5

typedef struct __attribute__((packed))
{
	u8 magic;
	u8 node_id;
	u16 seq;
	u16 volt;
	u32 mA;
	u32 pwr;
	u32 Wh;
	i16 temp;
	u16	hum;
	u8 	status;
	u16 crc16;

}lora_data_pkt_t;

typedef struct __attribute__((packed))
{
	u8 magic;
	u8 node_id;
	u16	seq;
}ack_t;

u16 crc16_modbus(const u8 *d, u8 len);

#endif /* SRC_LORA_DATA_H_ */
