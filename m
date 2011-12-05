Return-Path: <tom.rini@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1405FE0030F
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 11:47:08 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so2082231qcs.35
	for <poky@yoctoproject.org>; Mon, 05 Dec 2011 11:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=p9Hgyd3VGVs+rFiwMGgyQnfuFuevlgRCpGq/V8+s5rs=;
	b=FoXI2aCGVWo/QU8IuBbsl9YdBz4If4Fr8ALhwuMcjD+srtkWAKiHEgcv90OTcamv7k
	Tg3fJ5q/GVQBJfJ74LcIR/vwoj4PmEh1rP4H/kmVvugQx1qxFFgrMtk7NkaUtJpi66Fc
	BK+c+QFzwsI85RV2uvmElvhiHr3b+7adHTPJM=
MIME-Version: 1.0
Received: by 10.229.238.135 with SMTP id ks7mr2305593qcb.264.1323114428403;
	Mon, 05 Dec 2011 11:47:08 -0800 (PST)
Received: by 10.229.94.72 with HTTP; Mon, 5 Dec 2011 11:47:08 -0800 (PST)
In-Reply-To: <4EDCFB28.9010402@mlbassoc.com>
References: <4EDCFB28.9010402@mlbassoc.com>
Date: Mon, 5 Dec 2011 12:47:08 -0700
Message-ID: <CA+M6bX=gB2sUq9N-GXOxpgTHeR_Rp1mFvcvE85ZpAvnhf5dwfg@mail.gmail.com>
From: Tom Rini <tom.rini@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't build glib-2.0
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
X-List-Received-Date: Mon, 05 Dec 2011 19:47:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 5, 2011 at 10:11 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> OE Build Configuration:
> BB_VERSION =A0 =A0 =A0 =A0=3D "1.15.0"
> TARGET_ARCH =A0 =A0 =A0 =3D "arm"
> TARGET_OS =A0 =A0 =A0 =A0 =3D "linux-gnueabi"
> MACHINE =A0 =A0 =A0 =A0 =A0 =3D "cobra3530p60"
> DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "amltd"
> DISTRO_VERSION =A0 =A0=3D "1.1+snapshot-20111205"
> TUNE_FEATURES =A0 =A0 =3D "armv7a vfp neon cortexa8"
> TARGET_FPU =A0 =A0 =A0 =A0=3D "vfp-neon"
> meta
> meta-yocto =A0 =A0 =A0 =A0=3D "master:e5b9ac3b71b6c16fb9a629f12e4d83103db=
2d5b0"
> =A0...
> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Started
> ERROR: Function 'do_install' failed (see
> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.=
0-1_2.30.1-r0/temp/log.do_install.8610
> for further information)
> ERROR: Logfile of failure stored in:
> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.=
0-1_2.30.1-r0/temp/log.do_install.8610
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']
> | ERROR: Function 'do_install' failed (see
> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.=
0-1_2.30.1-r0/temp/log.do_install.8610
> for further information)
> |
> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.=
0-1_2.30.1-r0/temp/run.do_install.8610:
> line 96: oe_runmake: command not found
> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Failed
>

Have you made any changes recently?  Often this is a mismatch ', `, "
or similar somewhere.

--=20
Tom

