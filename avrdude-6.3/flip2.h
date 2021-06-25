/*
 * avrdude - A Downloader/Uploader for AVR device programmers
 * Copyright (C) 2012 Kirill Levchenko
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* $Id: flip2.h 1311 2014-05-19 10:01:59Z joerg_wunsch $ */

#ifndef flip2_h
#define flip2_h

#ifdef __cplusplus
extern "C" {
#endif

extern const char flip2_desc[];
extern void flip2_initpgm(PROGRAMMER * pgm);

#ifdef __cplusplus
}
#endif

#endif /* flip2_h */
