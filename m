Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75DB1E0030B
	for <poky@yoctoproject.org>; Thu, 10 May 2012 09:17:34 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E73F9F81224; Thu, 10 May 2012 10:17:33 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7F55EF81221;
	Thu, 10 May 2012 10:17:31 -0600 (MDT)
Message-ID: <4FABEA1B.4050901@mlbassoc.com>
Date: Thu, 10 May 2012 10:17:31 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4FABD070.9090100@mlbassoc.com>
	<CAMKF1soadVR07jQ_QGBjkc0=UAvCrTHFPu2V3hxf_dNXg4vmEw@mail.gmail.com>
In-Reply-To: <CAMKF1soadVR07jQ_QGBjkc0=UAvCrTHFPu2V3hxf_dNXg4vmEw@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Bad ARM code with GCC 4.7.1
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
X-List-Received-Date: Thu, 10 May 2012 16:17:34 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-10 09:46, Khem Raj wrote:
> On Thu, May 10, 2012 at 7:28 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> After updating to the latest master, I'm running into trouble
>> using GCC 4.7.1 with my ARM kernel(s).
>>
>
> whats your target arm architecture ? and kernel version ?

My board is DM3730, much like a BeagleBoard
   ARM architecture: armv7a
   Linux kernel 3.0

>
> gcc generate unaligned accesses by default
>
> Does adding -mno-unaligned-access to cflags help ?

I'll check.

>
>> The problem code is in mm/percpu.c - this function [header]
>>
>> static void pcpu_dump_alloc_info(const char *lvl,
>>                                  const struct pcpu_alloc_info *ai)
>> {
>>         int group_width = 1, cpu_width = 1, width;
>>         char empty_str[] = "--------";
>>         int alloc = 0, alloc_end = 0;
>>         int group, v;
>>         int upa, apl;   /* units per alloc, allocs per line */
>>
>> generates this code:
>>
>>    0xc03669d0<pcpu_dump_alloc_info>:   ldr     r3, [pc, #532]  ; 0xc0366bec
>> <pcpu_dump_alloc_info+540>
>>    0xc03669d4<pcpu_dump_alloc_info+4>: push    {r4, r5, r6, r7, r8, r9, r10,
>> r11, lr}
>>    0xc03669d8<pcpu_dump_alloc_info+8>: sub     sp, sp, #52     ; 0x34
>>    0xc03669dc<pcpu_dump_alloc_info+12>:        ldr     r2, [r3]
>>    0xc03669e0<pcpu_dump_alloc_info+16>:        mov     r4, r1
>>    0xc03669e4<pcpu_dump_alloc_info+20>:        mov     r10, r0
>>
>> which in turn generates an alignment exception at pcpu_dump_alloc_info+12

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

