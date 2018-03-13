/**
 ****************************************************************************************
 *
 * @file		types.h
 *
 * @brief	type define Sample Source for rBLE Sample Program
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2144 $
 *
 ****************************************************************************************
 */

#ifndef INCLUDED_RBL_CPU_DEPEND_H
#define INCLUDED_RBL_CPU_DEPEND_H

/* CPU common setting */
/* type Declaration */
typedef	signed char		int8_t;
typedef	signed short	int16_t;
typedef	signed long		int32_t;
typedef	unsigned char	uint8_t;
typedef	unsigned short	uint16_t;
typedef	unsigned long	uint32_t;

typedef	signed int		int_t;
typedef	unsigned int	uint_t;
typedef	char			char_t;

#define WMUS_EVENT_CALL			( WM_USER + 0x0100 )
#define WMUS_SEND				( WM_USER + 0x0101 )
#define WMUS_RECEIVE			( WM_USER + 0x0102 )
#define WMUS_THREAD_MESSAGE		( WM_USER + 0x0103 )
#define WMUS_THREAD_TERMINATE	( WM_USER + 0x0104 )

#ifndef	bool
#ifndef	BOOL
#define	BOOL		unsigned int
#endif
#define	bool		BOOL
#endif

#ifndef	TRUE
#define	TRUE		1
#endif

#ifndef	FALSE
#define	FALSE		0
#endif

#endif
