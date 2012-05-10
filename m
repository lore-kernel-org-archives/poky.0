Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD067E0030B
	for <poky@yoctoproject.org>; Thu, 10 May 2012 08:47:14 -0700 (PDT)
Received: by eaab16 with SMTP id b16so767051eaa.35
	for <poky@yoctoproject.org>; Thu, 10 May 2012 08:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=6NE3P3kGZEj08uThYEhnuvg4CjCLkIxBs4CLE31XUdA=;
	b=tfy0csdNhs8Hbk9rkW6fPnP/BnjDzwUjOcDBYQVnCQ42IrIlCiuvzkxosaw4jT7Ld9
	3ujD67QGtG//F4LwDPdarElEohGvj61jW+5ssgJHK6S7ReL7r2B0NgWdusbk2aFmUBCq
	656/x+3kdxw/8/9uEXIBcaGscljcC8rHbiZK0GQOXJqGZVBdCy+atsbxtEru461qk12P
	DbHZ6nfEg5u+41FLV9nKpecZLAK0xmGzXLvjbPXKA7jzHttfYdgtPiVo9+JWTMFO/Fug
	ZBoQjzEcb4V41V8KMPo1OLrOCf4okUvph+cAtSIKZG9a7F+D4lh0fsiJp0qSds65GIa1
	S7MA==
Received: by 10.213.121.130 with SMTP id h2mr1537976ebr.122.1336664833558;
	Thu, 10 May 2012 08:47:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.132 with HTTP; Thu, 10 May 2012 08:46:43 -0700 (PDT)
In-Reply-To: <4FABD070.9090100@mlbassoc.com>
References: <4FABD070.9090100@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 May 2012 08:46:43 -0700
Message-ID: <CAMKF1soadVR07jQ_QGBjkc0=UAvCrTHFPu2V3hxf_dNXg4vmEw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Thu, 10 May 2012 15:47:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2012 at 7:28 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> After updating to the latest master, I'm running into trouble
> using GCC 4.7.1 with my ARM kernel(s).
>

whats your target arm architecture ? and kernel version ?

gcc generate unaligned accesses by default

Does adding -mno-unaligned-access to cflags help ?

> The problem code is in mm/percpu.c - this function [header]
>
> static void pcpu_dump_alloc_info(const char *lvl,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const struct pcpu_alloc_info *ai)
> {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0int group_width =3D 1, cpu_width =3D 1, width;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0char empty_str[] =3D "--------";
> =C2=A0 =C2=A0 =C2=A0 =C2=A0int alloc =3D 0, alloc_end =3D 0;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0int group, v;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0int upa, apl; =C2=A0 /* units per alloc, alloc=
s per line */
>
> generates this code:
>
> =C2=A0 0xc03669d0 <pcpu_dump_alloc_info>: =C2=A0 ldr =C2=A0 =C2=A0 r3, [p=
c, #532] =C2=A0; 0xc0366bec
> <pcpu_dump_alloc_info+540>
> =C2=A0 0xc03669d4 <pcpu_dump_alloc_info+4>: push =C2=A0 =C2=A0{r4, r5, r6=
, r7, r8, r9, r10,
> r11, lr}
> =C2=A0 0xc03669d8 <pcpu_dump_alloc_info+8>: sub =C2=A0 =C2=A0 sp, sp, #52=
 =C2=A0 =C2=A0 ; 0x34
> =C2=A0 0xc03669dc <pcpu_dump_alloc_info+12>: =C2=A0 =C2=A0 =C2=A0 =C2=A0l=
dr =C2=A0 =C2=A0 r2, [r3]
> =C2=A0 0xc03669e0 <pcpu_dump_alloc_info+16>: =C2=A0 =C2=A0 =C2=A0 =C2=A0m=
ov =C2=A0 =C2=A0 r4, r1
> =C2=A0 0xc03669e4 <pcpu_dump_alloc_info+20>: =C2=A0 =C2=A0 =C2=A0 =C2=A0m=
ov =C2=A0 =C2=A0 r10, r0
>
> which in turn generates an alignment exception at pcpu_dump_alloc_info+12

