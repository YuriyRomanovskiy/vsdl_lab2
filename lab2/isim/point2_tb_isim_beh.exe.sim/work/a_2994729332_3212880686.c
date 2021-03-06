/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/brand/Documents/folder/lab2/point2.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_2994729332_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    unsigned char t23;
    char *t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(88, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t4, t6);
    t1 = (t0 + 1352U);
    t8 = *((char **)t1);
    t9 = *((unsigned char *)t8);
    t10 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t9);
    t1 = (t0 + 1032U);
    t11 = *((char **)t1);
    t12 = *((unsigned char *)t11);
    t13 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t12);
    t1 = (t0 + 1192U);
    t14 = *((char **)t1);
    t15 = *((unsigned char *)t14);
    t16 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t13, t15);
    t1 = (t0 + 1352U);
    t17 = *((char **)t1);
    t18 = *((unsigned char *)t17);
    t19 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t18);
    t20 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t16, t19);
    t21 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t10, t20);
    t1 = (t0 + 1032U);
    t22 = *((char **)t1);
    t23 = *((unsigned char *)t22);
    t1 = (t0 + 1512U);
    t24 = *((char **)t1);
    t25 = *((unsigned char *)t24);
    t26 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t23, t25);
    t27 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t21, t26);
    t1 = (t0 + 3232);
    t28 = (t1 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = t27;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t32 = (t0 + 3152);
    *((int *)t32) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2994729332_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2994729332_3212880686_p_0};
	xsi_register_didat("work_a_2994729332_3212880686", "isim/point2_tb_isim_beh.exe.sim/work/a_2994729332_3212880686.didat");
	xsi_register_executes(pe);
}
