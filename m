Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DCCDE0044A
	for <poky@yoctoproject.org>; Thu, 10 May 2012 13:06:25 -0700 (PDT)
Received: by wibhn14 with SMTP id hn14so894889wib.11
	for <poky@yoctoproject.org>; Thu, 10 May 2012 13:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=CYyubdtNm1C/xFMfKmneOlBVvbgrjfIq1mW9IGqfFUw=;
	b=rBUQvWvN0e5lWDolzNl9TeYSaMeSmBXuE2/3OqYWI+5Wj/hMRTcG7zyKJJyNeak/JN
	/hrhsRESkFLM4dxfJcSVNhpOHXsT+sxJxxqSl49nmaLiJI8MV/5bSbQrM10L79IBdSYs
	dfV7TYbwDAWofdngY0fPxNstByby+EL/xKinIJB1JzJEAKdQZVh6+TbgrH3JqnujxvjZ
	EpSlMVUy0vQ7yzhp6VqrEaPJ+/lNrQDtsaYkKADVHrd5yLZYs2EC4bOeeu5A7lWdXYXz
	Ot8f4wH3YzX30iIHjPczFJRHfVIYnPdcF1MDZUJGSuemHakLl9fm+Hs+sDuxj93//Ug8
	BEEw==
Received: by 10.180.97.3 with SMTP id dw3mr666907wib.19.1336680383919;
	Thu, 10 May 2012 13:06:23 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id j4sm8606551wix.5.2012.05.10.13.06.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 10 May 2012 13:06:22 -0700 (PDT)
Date: Thu, 10 May 2012 22:06:23 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120510200623.GA3141@jama.jama.net>
References: <4FABD070.9090100@mlbassoc.com>
	<CAMKF1soadVR07jQ_QGBjkc0=UAvCrTHFPu2V3hxf_dNXg4vmEw@mail.gmail.com>
	<4FABEA1B.4050901@mlbassoc.com>
	<CAMKF1sqUt4QrNh9ff0ZERDCttdUSams-wUcOR4e4hDs+7z-Txw@mail.gmail.com>
	<4FABF5F8.3070207@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4FABF5F8.3070207@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
X-List-Received-Date: Thu, 10 May 2012 20:06:25 -0000
X-Groupsio-MsgNum: 7766
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline

--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2012 at 11:08:08AM -0600, Gary Thomas wrote:
> On 2012-05-10 10:30, Khem Raj wrote:
> > On Thu, May 10, 2012 at 9:17 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
> >>
> >> My board is DM3730, much like a BeagleBoard
> >>   ARM architecture: armv7a
> >>   Linux kernel 3.0
> >
> > hmmm that should be able to handle alignment faults in hardware
> >
> >>
> >>
> >>>
> >>> gcc generate unaligned accesses by default
> >>>
> >>> Does adding -mno-unaligned-access to cflags help ?
> >>
> >>
> >> I'll check.
>=20
> Using -mno-unaligned-access fixes this problem, but the kernel just dies =
a bit
> later on (kernel 3.0 + gcc 4.7.1 =3D=3D bad owies...)

We had to use -mno-unaligned-access in kernel Makefile even with gcc-4.6
since gcc-4.6/linaro/gcc-4.6-linaro-r106827.patch was added in meta-oe.

And it was affecting
nokia900 (2.6.37 based kernel)
crespo - Samsung Nexus S (3.0.8 based kernel)

but with -mno-unaligned-access and gcc-4.7 we don't see any new issues.

Cheers,

>=20
> >
> > Its not entirely clear whats going on so post the complete function dis=
assembly
> > so further context can be seen as well.
>=20
> Code dump attached - first with /m, then with /r
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

> Dump of assembler code for function pcpu_dump_alloc_info:
> 1083    {
>    0xc03fb7dc <+4>:     push    {r4, r5, r6, r7, r8, r9, r10, r11, lr}
>    0xc03fb7e0 <+8>:     sub     sp, sp, #60     ; 0x3c
>    0xc03fb7e8 <+16>:    str     r0, [sp, #28]
>    0xc03fb7f8 <+32>:    mov     r4, r1
>=20
> 1084            int group_width =3D 1, cpu_width =3D 1, width;
>    0xc03fb808 <+48>:    mov     r7, #1
>    0xc03fb828 <+80>:    mov     r6, #1
>=20
> 1085            char empty_str[] =3D "--------";
>    0xc03fb7d8 <+0>:     ldr     r3, [pc, #552]  ; 0xc03fba08 <pcpu_dump_a=
lloc_info+560>
>    0xc03fb7e4 <+12>:    ldr     r2, [r3]
>    0xc03fb7ec <+20>:    str     r2, [sp, #47]   ; 0x2f
>    0xc03fb7f0 <+24>:    ldr     r2, [r3, #4]
>    0xc03fb7f4 <+28>:    ldrb    r3, [r3, #8]
>    0xc03fb7fc <+36>:    str     r2, [sp, #51]   ; 0x33
>    0xc03fb800 <+40>:    strb    r3, [sp, #55]   ; 0x37
>=20
> 1086            int alloc =3D 0, alloc_end =3D 0;
>    0xc03fb8e0 <+264>:   mov     r8, r5
>    0xc03fb8f0 <+280>:   str     r5, [sp, #24]
>=20
> 1087            int group, v;
> 1088            int upa, apl;   /* units per alloc, allocs per line */
> 1089
> 1090            v =3D ai->nr_groups;
>    0xc03fb804 <+44>:    ldr     r0, [r1, #28]
>=20
> 1091            while (v /=3D 10)
>    0xc03fb80c <+52>:    b       0xc03fb814 <pcpu_dump_alloc_info+60>
>    0xc03fb814 <+60>:    mov     r1, #10
>    0xc03fb818 <+64>:    bl      0xc02386b8 <__divsi3>
>    0xc03fb81c <+68>:    cmp     r0, #0
>    0xc03fb820 <+72>:    bne     0xc03fb810 <pcpu_dump_alloc_info+56>
>=20
> 1092                    group_width++;
>    0xc03fb810 <+56>:    add     r7, r7, #1
>=20
> 1093
> 1094            v =3D num_possible_cpus();
> 1095            while (v /=3D 10)
>    0xc03fb840 <+104>:   b       0xc03fb848 <pcpu_dump_alloc_info+112>
>    0xc03fb848 <+112>:   mov     r0, r5
>    0xc03fb84c <+116>:   mov     r1, #10
>    0xc03fb850 <+120>:   bl      0xc02386b8 <__divsi3>
>    0xc03fb854 <+124>:   subs    r5, r0, #0
>    0xc03fb858 <+128>:   bne     0xc03fb844 <pcpu_dump_alloc_info+108>
>=20
> 1096                    cpu_width++;
>    0xc03fb844 <+108>:   add     r6, r6, #1
>=20
> 1097            empty_str[min_t(int, cpu_width, sizeof(empty_str) - 1)] =
=3D '\0';
>    0xc03fb85c <+132>:   add     r1, sp, #56     ; 0x38
>    0xc03fb860 <+136>:   cmp     r6, #8
>    0xc03fb864 <+140>:   movlt   r3, r6
>    0xc03fb868 <+144>:   movge   r3, #8
>    0xc03fb86c <+148>:   add     r3, r1, r3
>    0xc03fb878 <+160>:   strb    r5, [r3, #-9]
>=20
> 1098
> 1099            upa =3D ai->alloc_size / ai->unit_size;
>    0xc03fb870 <+152>:   ldr     r9, [r4, #20]
>    0xc03fb874 <+156>:   ldr     r11, [r4, #12]
>    0xc03fb87c <+164>:   mov     r1, r11
>    0xc03fb880 <+168>:   mov     r0, r9
>    0xc03fb884 <+172>:   bl      0xc023857c <__udivsi3>
>    0xc03fb890 <+184>:   mov     r10, r0
>=20
> 1100            width =3D upa * (cpu_width + 1) + group_width + 3;
>    0xc03fb888 <+176>:   add     r1, r6, #1
>    0xc03fb88c <+180>:   mla     r1, r1, r0, r7
>=20
> 1101            apl =3D rounddown_pow_of_two(max(60 / width, 1));
>    0xc03fb894 <+188>:   add     r1, r1, #3
>    0xc03fb898 <+192>:   mov     r0, #60 ; 0x3c
>    0xc03fb89c <+196>:   bl      0xc02386b8 <__divsi3>
>    0xc03fb8ac <+212>:   cmp     r0, #1
>    0xc03fb8b0 <+216>:   movlt   r0, #1
>=20
> 1102
> 1103            printk("%spcpu-alloc: s%zu r%zu d%zu u%zu alloc=3D%zu*%zu=
",
>    0xc03fb8a8 <+208>:   mov     r1, r8
>    0xc03fb8bc <+228>:   mov     r0, r9
>    0xc03fb8c4 <+236>:   ldr     r3, [r4, #8]
>    0xc03fb8cc <+244>:   stm     sp, {r3, r11}
>    0xc03fb8d0 <+248>:   bl      0xc023857c <__udivsi3>
>    0xc03fb8d4 <+252>:   str     r8, [sp, #12]
>    0xc03fb8d8 <+256>:   ldr     r1, [sp, #28]
>    0xc03fb8dc <+260>:   ldm     r4, {r2, r3}
>    0xc03fb8e4 <+268>:   str     r0, [sp, #8]
>    0xc03fb8e8 <+272>:   ldr     r0, [pc, #288]  ; 0xc03fba10 <pcpu_dump_a=
lloc_info+568>
>    0xc03fb8ec <+276>:   bl      0xc03f9f48 <printk>
>=20
> 1104                   lvl, ai->static_size, ai->reserved_size, ai->dyn_s=
ize,
> 1105                   ai->unit_size, ai->alloc_size / ai->atom_size, ai-=
>atom_size);
>    0xc03fb8a4 <+204>:   ldr     r8, [r4, #16]
>=20
> 1106
> 1107            for (group =3D 0; group < ai->nr_groups; group++) {
>    0xc03fb8f4 <+284>:   b       0xc03fb9ec <pcpu_dump_alloc_info+532>
>    0xc03fb9e8 <+528>:   add     r5, r5, #1
>    0xc03fb9ec <+532>:   ldr     r3, [r4, #28]
>    0xc03fb9f0 <+536>:   cmp     r5, r3
>    0xc03fb9f4 <+540>:   blt     0xc03fb8f8 <pcpu_dump_alloc_info+288>
>=20
> 1108                    const struct pcpu_group_info *gi =3D &ai->groups[=
group];
>    0xc03fb8f8 <+288>:   mov     r3, #12
>    0xc03fb900 <+296>:   mul     r3, r3, r5
>    0xc03fb904 <+300>:   add     r3, r3, #32
>    0xc03fb908 <+304>:   add     r2, r4, r3
>    0xc03fb910 <+312>:   str     r2, [sp, #36]   ; 0x24
>=20
> 1109                    int unit =3D 0, unit_end =3D 0;
>    0xc03fb938 <+352>:   mov     r9, r11
>=20
> 1110
> 1111                    BUG_ON(gi->nr_units % upa);
>    0xc03fb8fc <+292>:   mov     r1, r10
>    0xc03fb90c <+308>:   ldr     r9, [r4, r3]
>    0xc03fb914 <+316>:   mov     r0, r9
>    0xc03fb918 <+320>:   bl      0xc0238854 <__aeabi_idivmod>
>    0xc03fb91c <+324>:   subs    r11, r1, #0
>    0xc03fb920 <+328>:   beq     0xc03fb928 <pcpu_dump_alloc_info+336>
>    0xc03fb924 <+332>:   b       0xc03fb924 <pcpu_dump_alloc_info+332>
>=20
> 1112                    for (alloc_end +=3D gi->nr_units / upa;
>    0xc03fb928 <+336>:   mov     r0, r9
>    0xc03fb92c <+340>:   mov     r1, r10
>    0xc03fb930 <+344>:   bl      0xc02386b8 <__divsi3>
>    0xc03fb934 <+348>:   ldr     r3, [sp, #24]
>    0xc03fb93c <+356>:   add     r3, r3, r0
>    0xc03fb940 <+360>:   str     r3, [sp, #24]
>    0xc03fb944 <+364>:   b       0xc03fb9dc <pcpu_dump_alloc_info+516>
>    0xc03fb9dc <+516>:   ldr     r3, [sp, #24]
>    0xc03fb9e0 <+520>:   cmp     r8, r3
>    0xc03fb9e4 <+524>:   blt     0xc03fb948 <pcpu_dump_alloc_info+368>
>=20
> 1113                         alloc < alloc_end; alloc++) {
>    0xc03fb9d8 <+512>:   add     r8, r8, #1
>=20
> 1114                            if (!(alloc % apl)) {
>    0xc03fb948 <+368>:   mov     r0, r8
>    0xc03fb94c <+372>:   ldr     r1, [sp, #32]
>    0xc03fb950 <+376>:   bl      0xc0238854 <__aeabi_idivmod>
>    0xc03fb954 <+380>:   cmp     r1, #0
>    0xc03fb958 <+384>:   bne     0xc03fb970 <pcpu_dump_alloc_info+408>
>=20
> 1115                                    printk("\n");
>    0xc03fb95c <+388>:   ldr     r0, [pc, #176]  ; 0xc03fba14 <pcpu_dump_a=
lloc_info+572>
>    0xc03fb960 <+392>:   bl      0xc03f9f48 <printk>
>=20
> 1116                                    printk("%spcpu-alloc: ", lvl);
>    0xc03fb964 <+396>:   ldr     r0, [pc, #172]  ; 0xc03fba18 <pcpu_dump_a=
lloc_info+576>
>    0xc03fb968 <+400>:   ldr     r1, [sp, #28]
>    0xc03fb96c <+404>:   bl      0xc03f9f48 <printk>
>=20
> 1117                            }
> 1118                            printk("[%0*d] ", group_width, group);
>    0xc03fb970 <+408>:   ldr     r0, [pc, #164]  ; 0xc03fba1c <pcpu_dump_a=
lloc_info+580>
>    0xc03fb974 <+412>:   mov     r1, r7
>    0xc03fb978 <+416>:   mov     r2, r5
>    0xc03fb97c <+420>:   bl      0xc03f9f48 <printk>
>=20
> 1119
> 1120                            for (unit_end +=3D upa; unit < unit_end; =
unit++)
>    0xc03fb980 <+424>:   add     r11, r11, r10
>    0xc03fb984 <+428>:   lsl     r3, r9, #2
>    0xc03fb988 <+432>:   b       0xc03fb9d0 <pcpu_dump_alloc_info+504>
>    0xc03fb9c8 <+496>:   add     r9, r9, #1
>    0xc03fb9cc <+500>:   add     r3, r3, #4
>    0xc03fb9d0 <+504>:   cmp     r9, r11
>    0xc03fb9d4 <+508>:   blt     0xc03fb98c <pcpu_dump_alloc_info+436>
>=20
> 1121                                    if (gi->cpu_map[unit] !=3D NR_CPU=
S)
>    0xc03fb98c <+436>:   ldr     r1, [sp, #36]   ; 0x24
>    0xc03fb990 <+440>:   ldr     r2, [r1, #8]
>    0xc03fb994 <+444>:   ldr     r2, [r2, r3]
>    0xc03fb998 <+448>:   cmp     r2, #2
>    0xc03fb99c <+452>:   beq     0xc03fb9b4 <pcpu_dump_alloc_info+476>
>=20
> 1122                                            printk("%0*d ", cpu_width,
>    0xc03fb9a0 <+456>:   mov     r1, r6
>    0xc03fb9a4 <+460>:   ldr     r0, [pc, #116]  ; 0xc03fba20 <pcpu_dump_a=
lloc_info+584>
>    0xc03fb9a8 <+464>:   str     r3, [sp, #20]
>    0xc03fb9ac <+468>:   bl      0xc03f9f48 <printk>
>    0xc03fb9b0 <+472>:   b       0xc03fb9c4 <pcpu_dump_alloc_info+492>
>=20
> 1123                                                   gi->cpu_map[unit]);
> 1124                                    else
> 1125                                            printk("%s ", empty_str);
>    0xc03fb9b4 <+476>:   ldr     r0, [pc, #104]  ; 0xc03fba24 <pcpu_dump_a=
lloc_info+588>
>    0xc03fb9b8 <+480>:   add     r1, sp, #47     ; 0x2f
>    0xc03fb9bc <+484>:   str     r3, [sp, #20]
>    0xc03fb9c0 <+488>:   bl      0xc03f9f48 <printk>
>    0xc03fb9c4 <+492>:   ldr     r3, [sp, #20]
>=20
> 1126                    }
> 1127            }
> 1128            printk("\n");
>    0xc03fb9f8 <+544>:   ldr     r0, [pc, #20]   ; 0xc03fba14 <pcpu_dump_a=
lloc_info+572>
>    0xc03fb9fc <+548>:   bl      0xc03f9f48 <printk>
> 1129    }
>    0xc03fba00 <+552>:   add     sp, sp, #60     ; 0x3c
>    0xc03fba04 <+556>:   pop     {r4, r5, r6, r7, r8, r9, r10, r11, pc}
>    0xc03fba08 <+560>:   subsgt  r11, r0, r6, ror r1
>    0xc03fba0c <+564>:   strdgt  r12, [r0], #-144        ; 0xffffff70
>    0xc03fba10 <+568>:   subsgt  r11, r0, r9, lsr #2
>    0xc03fba14 <+572>:   subsgt  r4, r0, r1, ror r0
>    0xc03fba18 <+576>:   subsgt  r11, r0, r9, asr r1
>    0xc03fba1c <+580>:   subsgt  r11, r0, r8, ror #2
>    0xc03fba20 <+584>:   subsgt  r11, r0, r0, ror r1
>    0xc03fba24 <+588>:   subsgt  r9, r2, r4, asr #19
>=20
>=20
> -------------------------------------------------------------------------=
--------------------
> Dump of assembler code for function pcpu_dump_alloc_info:
>    0xc03fb7d8 <+0>:     28 32 9f e5     ldr     r3, [pc, #552]  ; 0xc03fb=
a08 <pcpu_dump_alloc_info+560>
>    0xc03fb7dc <+4>:     f0 4f 2d e9     push    {r4, r5, r6, r7, r8, r9, =
r10, r11, lr}
>    0xc03fb7e0 <+8>:     3c d0 4d e2     sub     sp, sp, #60     ; 0x3c
>    0xc03fb7e4 <+12>:    00 20 93 e5     ldr     r2, [r3]
>    0xc03fb7e8 <+16>:    1c 00 8d e5     str     r0, [sp, #28]
>    0xc03fb7ec <+20>:    2f 20 8d e5     str     r2, [sp, #47]   ; 0x2f
>    0xc03fb7f0 <+24>:    04 20 93 e5     ldr     r2, [r3, #4]
>    0xc03fb7f4 <+28>:    08 30 d3 e5     ldrb    r3, [r3, #8]
>    0xc03fb7f8 <+32>:    01 40 a0 e1     mov     r4, r1
>    0xc03fb7fc <+36>:    33 20 8d e5     str     r2, [sp, #51]   ; 0x33
>    0xc03fb800 <+40>:    37 30 cd e5     strb    r3, [sp, #55]   ; 0x37
>    0xc03fb804 <+44>:    1c 00 91 e5     ldr     r0, [r1, #28]
>    0xc03fb808 <+48>:    01 70 a0 e3     mov     r7, #1
>    0xc03fb80c <+52>:    00 00 00 ea     b       0xc03fb814 <pcpu_dump_all=
oc_info+60>
>    0xc03fb810 <+56>:    01 70 87 e2     add     r7, r7, #1
>    0xc03fb814 <+60>:    0a 10 a0 e3     mov     r1, #10
>    0xc03fb818 <+64>:    a6 f3 f8 eb     bl      0xc02386b8 <__divsi3>
>    0xc03fb81c <+68>:    00 00 50 e3     cmp     r0, #0
>    0xc03fb820 <+72>:    fa ff ff 1a     bne     0xc03fb810 <pcpu_dump_all=
oc_info+56>
>    0xc03fb824 <+76>:    e0 31 9f e5     ldr     r3, [pc, #480]  ; 0xc03fb=
a0c <pcpu_dump_alloc_info+564>
>    0xc03fb828 <+80>:    01 60 a0 e3     mov     r6, #1
>    0xc03fb82c <+84>:    00 30 93 e5     ldr     r3, [r3]
>    0xc03fb830 <+88>:    00 00 93 e5     ldr     r0, [r3]
>    0xc03fb834 <+92>:    03 00 00 e2     and     r0, r0, #3
>    0xc03fb838 <+96>:    c6 2b f9 eb     bl      0xc0246758 <__sw_hweight3=
2>
>    0xc03fb83c <+100>:   00 50 a0 e1     mov     r5, r0
>    0xc03fb840 <+104>:   00 00 00 ea     b       0xc03fb848 <pcpu_dump_all=
oc_info+112>
>    0xc03fb844 <+108>:   01 60 86 e2     add     r6, r6, #1
>    0xc03fb848 <+112>:   05 00 a0 e1     mov     r0, r5
>    0xc03fb84c <+116>:   0a 10 a0 e3     mov     r1, #10
>    0xc03fb850 <+120>:   98 f3 f8 eb     bl      0xc02386b8 <__divsi3>
>    0xc03fb854 <+124>:   00 50 50 e2     subs    r5, r0, #0
>    0xc03fb858 <+128>:   f9 ff ff 1a     bne     0xc03fb844 <pcpu_dump_all=
oc_info+108>
>    0xc03fb85c <+132>:   38 10 8d e2     add     r1, sp, #56     ; 0x38
>    0xc03fb860 <+136>:   08 00 56 e3     cmp     r6, #8
>    0xc03fb864 <+140>:   06 30 a0 b1     movlt   r3, r6
>    0xc03fb868 <+144>:   08 30 a0 a3     movge   r3, #8
>    0xc03fb86c <+148>:   03 30 81 e0     add     r3, r1, r3
>    0xc03fb870 <+152>:   14 90 94 e5     ldr     r9, [r4, #20]
>    0xc03fb874 <+156>:   0c b0 94 e5     ldr     r11, [r4, #12]
>    0xc03fb878 <+160>:   09 50 43 e5     strb    r5, [r3, #-9]
>    0xc03fb87c <+164>:   0b 10 a0 e1     mov     r1, r11
>    0xc03fb880 <+168>:   09 00 a0 e1     mov     r0, r9
>    0xc03fb884 <+172>:   3c f3 f8 eb     bl      0xc023857c <__udivsi3>
>    0xc03fb888 <+176>:   01 10 86 e2     add     r1, r6, #1
>    0xc03fb88c <+180>:   91 70 21 e0     mla     r1, r1, r0, r7
>    0xc03fb890 <+184>:   00 a0 a0 e1     mov     r10, r0
>    0xc03fb894 <+188>:   03 10 81 e2     add     r1, r1, #3
>    0xc03fb898 <+192>:   3c 00 a0 e3     mov     r0, #60 ; 0x3c
>    0xc03fb89c <+196>:   85 f3 f8 eb     bl      0xc02386b8 <__divsi3>
>    0xc03fb8a0 <+200>:   01 20 a0 e3     mov     r2, #1
>    0xc03fb8a4 <+204>:   10 80 94 e5     ldr     r8, [r4, #16]
>    0xc03fb8a8 <+208>:   08 10 a0 e1     mov     r1, r8
>    0xc03fb8ac <+212>:   01 00 50 e3     cmp     r0, #1
>    0xc03fb8b0 <+216>:   01 00 a0 b3     movlt   r0, #1
>    0xc03fb8b4 <+220>:   10 3f 6f e1     clz     r3, r0
>    0xc03fb8b8 <+224>:   1f 30 63 e2     rsb     r3, r3, #31
>    0xc03fb8bc <+228>:   09 00 a0 e1     mov     r0, r9
>    0xc03fb8c0 <+232>:   12 23 a0 e1     lsl     r2, r2, r3
>    0xc03fb8c4 <+236>:   08 30 94 e5     ldr     r3, [r4, #8]
>    0xc03fb8c8 <+240>:   20 20 8d e5     str     r2, [sp, #32]
>    0xc03fb8cc <+244>:   08 08 8d e8     stm     sp, {r3, r11}
>    0xc03fb8d0 <+248>:   29 f3 f8 eb     bl      0xc023857c <__udivsi3>
>    0xc03fb8d4 <+252>:   0c 80 8d e5     str     r8, [sp, #12]
>    0xc03fb8d8 <+256>:   1c 10 9d e5     ldr     r1, [sp, #28]
>    0xc03fb8dc <+260>:   0c 00 94 e8     ldm     r4, {r2, r3}
>    0xc03fb8e0 <+264>:   05 80 a0 e1     mov     r8, r5
>    0xc03fb8e4 <+268>:   08 00 8d e5     str     r0, [sp, #8]
>    0xc03fb8e8 <+272>:   20 01 9f e5     ldr     r0, [pc, #288]  ; 0xc03fb=
a10 <pcpu_dump_alloc_info+568>
>    0xc03fb8ec <+276>:   95 f9 ff eb     bl      0xc03f9f48 <printk>
>    0xc03fb8f0 <+280>:   18 50 8d e5     str     r5, [sp, #24]
>    0xc03fb8f4 <+284>:   3c 00 00 ea     b       0xc03fb9ec <pcpu_dump_all=
oc_info+532>
>    0xc03fb8f8 <+288>:   0c 30 a0 e3     mov     r3, #12
>    0xc03fb8fc <+292>:   0a 10 a0 e1     mov     r1, r10
>    0xc03fb900 <+296>:   93 05 03 e0     mul     r3, r3, r5
>    0xc03fb904 <+300>:   20 30 83 e2     add     r3, r3, #32
>    0xc03fb908 <+304>:   03 20 84 e0     add     r2, r4, r3
>    0xc03fb90c <+308>:   03 90 94 e7     ldr     r9, [r4, r3]
>    0xc03fb910 <+312>:   24 20 8d e5     str     r2, [sp, #36]   ; 0x24
>    0xc03fb914 <+316>:   09 00 a0 e1     mov     r0, r9
>    0xc03fb918 <+320>:   cd f3 f8 eb     bl      0xc0238854 <__aeabi_idivm=
od>
>    0xc03fb91c <+324>:   00 b0 51 e2     subs    r11, r1, #0
>    0xc03fb920 <+328>:   00 00 00 0a     beq     0xc03fb928 <pcpu_dump_all=
oc_info+336>
>    0xc03fb924 <+332>:   fe ff ff ea     b       0xc03fb924 <pcpu_dump_all=
oc_info+332>
>    0xc03fb928 <+336>:   09 00 a0 e1     mov     r0, r9
>    0xc03fb92c <+340>:   0a 10 a0 e1     mov     r1, r10
>    0xc03fb930 <+344>:   60 f3 f8 eb     bl      0xc02386b8 <__divsi3>
>    0xc03fb934 <+348>:   18 30 9d e5     ldr     r3, [sp, #24]
>    0xc03fb938 <+352>:   0b 90 a0 e1     mov     r9, r11
>    0xc03fb93c <+356>:   00 30 83 e0     add     r3, r3, r0
>    0xc03fb940 <+360>:   18 30 8d e5     str     r3, [sp, #24]
>    0xc03fb944 <+364>:   24 00 00 ea     b       0xc03fb9dc <pcpu_dump_all=
oc_info+516>
>    0xc03fb948 <+368>:   08 00 a0 e1     mov     r0, r8
>    0xc03fb94c <+372>:   20 10 9d e5     ldr     r1, [sp, #32]
>    0xc03fb950 <+376>:   bf f3 f8 eb     bl      0xc0238854 <__aeabi_idivm=
od>
>    0xc03fb954 <+380>:   00 00 51 e3     cmp     r1, #0
>    0xc03fb958 <+384>:   04 00 00 1a     bne     0xc03fb970 <pcpu_dump_all=
oc_info+408>
>    0xc03fb95c <+388>:   b0 00 9f e5     ldr     r0, [pc, #176]  ; 0xc03fb=
a14 <pcpu_dump_alloc_info+572>
>    0xc03fb960 <+392>:   78 f9 ff eb     bl      0xc03f9f48 <printk>
>    0xc03fb964 <+396>:   ac 00 9f e5     ldr     r0, [pc, #172]  ; 0xc03fb=
a18 <pcpu_dump_alloc_info+576>
>    0xc03fb968 <+400>:   1c 10 9d e5     ldr     r1, [sp, #28]
>    0xc03fb96c <+404>:   75 f9 ff eb     bl      0xc03f9f48 <printk>
>    0xc03fb970 <+408>:   a4 00 9f e5     ldr     r0, [pc, #164]  ; 0xc03fb=
a1c <pcpu_dump_alloc_info+580>
>    0xc03fb974 <+412>:   07 10 a0 e1     mov     r1, r7
>    0xc03fb978 <+416>:   05 20 a0 e1     mov     r2, r5
>    0xc03fb97c <+420>:   71 f9 ff eb     bl      0xc03f9f48 <printk>
>    0xc03fb980 <+424>:   0a b0 8b e0     add     r11, r11, r10
>    0xc03fb984 <+428>:   09 31 a0 e1     lsl     r3, r9, #2
>    0xc03fb988 <+432>:   10 00 00 ea     b       0xc03fb9d0 <pcpu_dump_all=
oc_info+504>
>    0xc03fb98c <+436>:   24 10 9d e5     ldr     r1, [sp, #36]   ; 0x24
>    0xc03fb990 <+440>:   08 20 91 e5     ldr     r2, [r1, #8]
>    0xc03fb994 <+444>:   03 20 92 e7     ldr     r2, [r2, r3]
>    0xc03fb998 <+448>:   02 00 52 e3     cmp     r2, #2
>    0xc03fb99c <+452>:   04 00 00 0a     beq     0xc03fb9b4 <pcpu_dump_all=
oc_info+476>
>    0xc03fb9a0 <+456>:   06 10 a0 e1     mov     r1, r6
>    0xc03fb9a4 <+460>:   74 00 9f e5     ldr     r0, [pc, #116]  ; 0xc03fb=
a20 <pcpu_dump_alloc_info+584>
>    0xc03fb9a8 <+464>:   14 30 8d e5     str     r3, [sp, #20]
>    0xc03fb9ac <+468>:   65 f9 ff eb     bl      0xc03f9f48 <printk>
>    0xc03fb9b0 <+472>:   03 00 00 ea     b       0xc03fb9c4 <pcpu_dump_all=
oc_info+492>
>    0xc03fb9b4 <+476>:   68 00 9f e5     ldr     r0, [pc, #104]  ; 0xc03fb=
a24 <pcpu_dump_alloc_info+588>
>    0xc03fb9b8 <+480>:   2f 10 8d e2     add     r1, sp, #47     ; 0x2f
>    0xc03fb9bc <+484>:   14 30 8d e5     str     r3, [sp, #20]
>    0xc03fb9c0 <+488>:   60 f9 ff eb     bl      0xc03f9f48 <printk>
>    0xc03fb9c4 <+492>:   14 30 9d e5     ldr     r3, [sp, #20]
>    0xc03fb9c8 <+496>:   01 90 89 e2     add     r9, r9, #1
>    0xc03fb9cc <+500>:   04 30 83 e2     add     r3, r3, #4
>    0xc03fb9d0 <+504>:   0b 00 59 e1     cmp     r9, r11
>    0xc03fb9d4 <+508>:   ec ff ff ba     blt     0xc03fb98c <pcpu_dump_all=
oc_info+436>
>    0xc03fb9d8 <+512>:   01 80 88 e2     add     r8, r8, #1
>    0xc03fb9dc <+516>:   18 30 9d e5     ldr     r3, [sp, #24]
>    0xc03fb9e0 <+520>:   03 00 58 e1     cmp     r8, r3
>    0xc03fb9e4 <+524>:   d7 ff ff ba     blt     0xc03fb948 <pcpu_dump_all=
oc_info+368>
>    0xc03fb9e8 <+528>:   01 50 85 e2     add     r5, r5, #1
>    0xc03fb9ec <+532>:   1c 30 94 e5     ldr     r3, [r4, #28]
>    0xc03fb9f0 <+536>:   03 00 55 e1     cmp     r5, r3
>    0xc03fb9f4 <+540>:   bf ff ff ba     blt     0xc03fb8f8 <pcpu_dump_all=
oc_info+288>
>    0xc03fb9f8 <+544>:   14 00 9f e5     ldr     r0, [pc, #20]   ; 0xc03fb=
a14 <pcpu_dump_alloc_info+572>
>    0xc03fb9fc <+548>:   51 f9 ff eb     bl      0xc03f9f48 <printk>
>    0xc03fba00 <+552>:   3c d0 8d e2     add     sp, sp, #60     ; 0x3c
>    0xc03fba04 <+556>:   f0 8f bd e8     pop     {r4, r5, r6, r7, r8, r9, =
r10, r11, pc}
>    0xc03fba08 <+560>:   76 b1 50 c0     subsgt  r11, r0, r6, ror r1
>    0xc03fba0c <+564>:   f0 c9 40 c0     strdgt  r12, [r0], #-144        ;=
 0xffffff70
>    0xc03fba10 <+568>:   29 b1 50 c0     subsgt  r11, r0, r9, lsr #2
>    0xc03fba14 <+572>:   71 40 50 c0     subsgt  r4, r0, r1, ror r0
>    0xc03fba18 <+576>:   59 b1 50 c0     subsgt  r11, r0, r9, asr r1
>    0xc03fba1c <+580>:   68 b1 50 c0     subsgt  r11, r0, r8, ror #2
>    0xc03fba20 <+584>:   70 b1 50 c0     subsgt  r11, r0, r0, ror r1
>    0xc03fba24 <+588>:   c4 99 52 c0     subsgt  r9, r2, r4, asr #19

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--C7zPtVaVf+AK4Oqc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+sH78ACgkQN1Ujt2V2gBylAgCgr4vI3Tp8jUI/imyppw/TE0Dy
81gAn1g+32HLvfhYSq4YoZKgrhKL4LDK
=TaFF
-----END PGP SIGNATURE-----

--C7zPtVaVf+AK4Oqc--
