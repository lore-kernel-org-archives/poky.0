Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D686E013FE
	for <poky@yoctoproject.org>; Thu, 10 May 2012 07:28:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D03E2F8121C; Thu, 10 May 2012 08:28:01 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 59387F81217;
	Thu, 10 May 2012 08:28:00 -0600 (MDT)
Message-ID: <4FABD070.9090100@mlbassoc.com>
Date: Thu, 10 May 2012 08:28:00 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Bad ARM code with GCC 4.7.1
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 May 2012 14:28:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

After updating to the latest master, I'm running into trouble
using GCC 4.7.1 with my ARM kernel(s).

The problem code is in mm/percpu.c - this function [header]

static void pcpu_dump_alloc_info(const char *lvl,
				 const struct pcpu_alloc_info *ai)
{
	int group_width = 1, cpu_width = 1, width;
	char empty_str[] = "--------";
	int alloc = 0, alloc_end = 0;
	int group, v;
	int upa, apl;	/* units per alloc, allocs per line */

generates this code:

    0xc03669d0 <pcpu_dump_alloc_info>:   ldr     r3, [pc, #532]  ; 0xc0366bec <pcpu_dump_alloc_info+540>
    0xc03669d4 <pcpu_dump_alloc_info+4>: push    {r4, r5, r6, r7, r8, r9, r10, r11, lr}
    0xc03669d8 <pcpu_dump_alloc_info+8>: sub     sp, sp, #52     ; 0x34
    0xc03669dc <pcpu_dump_alloc_info+12>:        ldr     r2, [r3]
    0xc03669e0 <pcpu_dump_alloc_info+16>:        mov     r4, r1
    0xc03669e4 <pcpu_dump_alloc_info+20>:        mov     r10, r0

which in turn generates an alignment exception at pcpu_dump_alloc_info+12

The same code generates this using GCC 4.6.3

    0xc02bf6b0 <pcpu_dump_alloc_info>:   push    {r4, r5, r6, r7, r8, r9, r10, r11, lr}
    0xc02bf6b4 <pcpu_dump_alloc_info+4>: sub     sp, sp, #52     ; 0x34
    0xc02bf6b8 <pcpu_dump_alloc_info+8>: mov     r4, r1
    0xc02bf6bc <pcpu_dump_alloc_info+12>:        mov     r2, #9
    0xc02bf6c0 <pcpu_dump_alloc_info+16>:        str     r0, [sp, #20]
    0xc02bf6c4 <pcpu_dump_alloc_info+20>:        add     r0, sp, #39     ; 0x27
    0xc02bf6c8 <pcpu_dump_alloc_info+24>:        ldr     r1, [pc, #444]  ; 0xc02bf88c <pcpu_dump_alloc_info+476>
    0xc02bf6cc <pcpu_dump_alloc_info+28>:        mov     r9, #1
    0xc02bf6d0 <pcpu_dump_alloc_info+32>:        bl      0xc017f2a0 <memcpy>

Which looks much better to me - the runtime assignment
	char empty_str[] = "--------";
should cause the 9 byte string "--------" to be copied to the
stack variable.

I even tried to rewrite the code to match GCC 4.6.3 as
         char empty_str[10];
         memcpy(empty_str, "--------", 9);
but GCC 4.7.1 managed to generate the same bad code :-(

If I disable CONFIG_OPTIMIZE_FOR_SPEED, i.e. use -O2 instead of -Os,
this function is compiled properly.  Sadly, there are other gremlins
in there as Linux-3.0 still crashes when built with GCC 4.7.1

Are these known problems?  Are there work arounds?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

