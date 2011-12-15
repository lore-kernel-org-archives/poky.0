Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDB83E0054C
	for <poky@yoctoproject.org>; Wed, 14 Dec 2011 23:07:43 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so1140228laa.35
	for <poky@yoctoproject.org>; Wed, 14 Dec 2011 23:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=0uzS3ehkI6m5KCyMH3L6/aXNfAXzOrhN6cvoG4nD98g=;
	b=I17z3IB5YG/NAWRcN2Yt0jtp7539V1u7L+NLa7rFHAx+umKZENH54Orrxfnhf1aD07
	1gsnSBli9brdBjrhsv3edfiIIrx/et4HGQme1SAwJlBtqUiIiKigSR68f8C7WFo5engh
	8nYYBAPC4+rPr6q/BvjckmWhm69qTda9n8+Gg=
Received: by 10.152.104.206 with SMTP id gg14mr1426985lab.41.1323932862299;
	Wed, 14 Dec 2011 23:07:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Wed, 14 Dec 2011 23:07:11 -0800 (PST)
In-Reply-To: <2CAE6214820FEA4A9FEB26C2710C44F43EA05076@exchange.ewl.local>
References: <2CAE6214820FEA4A9FEB26C2710C44F43EA05076@exchange.ewl.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 Dec 2011 23:07:11 -0800
Message-ID: <CAMKF1sp8Ri5E8e9BOqwRN5-Z2xyHg06XB_NGR07W-0-1z4pfwA@mail.gmail.com>
To: Rajkumar Arjunan <rajkumar@embeddedwireless.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: build issue with pthread
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
X-List-Received-Date: Thu, 15 Dec 2011 07:07:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 14, 2011 at 5:46 PM, Rajkumar Arjunan
<rajkumar@embeddedwireless.com> wrote:
> powerpc-poky-linux-gcc=C2=A0 -m32 -mhard-float=C2=A0 -mcpu=3D603e
> --sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb -O2 =
-pipe
> -g -feliminate-u
>
> nused-debug-types
> -I/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G=
-1.1/include
> -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib
> -DWITHOUT_XATTR -D UMTS -I..
> -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib
> -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib
> swi_osapi.c swi_ossdk.c swi_ossdkcheck.c

there is no -pthread used on cmdline here. So either fix your makefile
so its added
or try TARGET_CC_ARCH +=3D "-pthread" in .bb
>
> /home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib/crt1.o:(=
.rodata+0x4):
> undefined reference to `main'
>
> /tmp/ccVadGQx.o: I
>
> n function `swi_ossdkthreadcreate':
>
> /home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1=
.1/os/swi_ossdk.c:520:
> undefined reference to `pthread_create'

