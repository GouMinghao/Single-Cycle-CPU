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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/Lab5/aluctr.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {63U, 63U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {127U, 63U};
static unsigned int ng5[] = {6U, 0U};
static unsigned int ng6[] = {160U, 0U};
static unsigned int ng7[] = {162U, 0U};
static unsigned int ng8[] = {164U, 0U};
static unsigned int ng9[] = {0U, 0U};
static unsigned int ng10[] = {165U, 0U};
static unsigned int ng11[] = {1U, 0U};
static unsigned int ng12[] = {170U, 0U};
static unsigned int ng13[] = {7U, 0U};



static void Always_8_0(char *t0)
{
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t14;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(8, ng0);
    t2 = (t0 + 1732);
    *((int *)t2) = 1;
    t3 = (t0 + 1564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(9, ng0);

LAB5:    xsi_set_current_line(10, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(13, ng0);

LAB9:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t4 = *((char **)t2);
    xsi_vlogtype_concat(t13, 8, 8, 2U, t4, 2, t3, 6);

LAB10:    t2 = ((char*)((ng2)));
    t14 = xsi_vlog_unsigned_case_xcompare(t13, 8, t2, 8);
    if (t14 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t14 = xsi_vlog_unsigned_case_xcompare(t13, 8, t2, 8);
    if (t14 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t14 = xsi_vlog_unsigned_case_xcompare(t13, 8, t2, 8);
    if (t14 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t14 = xsi_vlog_unsigned_case_xcompare(t13, 8, t2, 8);
    if (t14 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t14 = xsi_vlog_unsigned_case_xcompare(t13, 8, t2, 8);
    if (t14 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t14 = xsi_vlog_unsigned_case_xcompare(t13, 8, t2, 8);
    if (t14 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng12)));
    t14 = xsi_vlog_unsigned_case_xcompare(t13, 8, t2, 8);
    if (t14 == 1)
        goto LAB23;

LAB24:
LAB25:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(11, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1012);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    goto LAB8;

LAB11:    xsi_set_current_line(16, ng0);
    t5 = ((char*)((ng3)));
    t11 = (t0 + 1012);
    xsi_vlogvar_assign_value(t11, t5, 0, 0, 4);
    goto LAB25;

LAB13:    xsi_set_current_line(18, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB25;

LAB15:    xsi_set_current_line(20, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB25;

LAB17:    xsi_set_current_line(22, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB25;

LAB19:    xsi_set_current_line(24, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB25;

LAB21:    xsi_set_current_line(26, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB25;

LAB23:    xsi_set_current_line(28, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB25;

}


extern void work_m_00000000002529564899_2516217677_init()
{
	static char *pe[] = {(void *)Always_8_0};
	xsi_register_didat("work_m_00000000002529564899_2516217677", "isim/Top_isim_beh.exe.sim/work/m_00000000002529564899_2516217677.didat");
	xsi_register_executes(pe);
}
