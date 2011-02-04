Return-Path: <akshat.saha@spectracoretech.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id E758D4C800A8
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 04:26:00 -0600 (CST)
Received: by ewy20 with SMTP id 20so1130682ewy.35
	for <poky@yoctoproject.org>; Fri, 04 Feb 2011 02:26:00 -0800 (PST)
Received: by 10.14.10.141 with SMTP id 13mr146576eev.45.1296815159830; Fri, 04
	Feb 2011 02:25:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.14.32.203 with HTTP; Fri, 4 Feb 2011 02:25:29 -0800 (PST)
X-Originating-IP: [115.111.25.162]
In-Reply-To: <4D4AD7D9.60407@linux.intel.com>
References: <AANLkTikBFCb2kNE2ePDhNZ6+Up3HzuiqLgi9UTiyP0sP@mail.gmail.com>
	<4D4AD7D9.60407@linux.intel.com>
From: Akshat Saha <akshat.saha@spectracoretech.com>
Date: Fri, 4 Feb 2011 15:55:29 +0530
Message-ID: <AANLkTikDN5ZBRR0Hv93nZK-CMBO0xdrepbtppvGiVmwT@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Adding Packages
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
X-List-Received-Date: Fri, 04 Feb 2011 10:26:01 -0000
Content-Type: multipart/alternative; boundary=001636416469f0e881049b724e71

--001636416469f0e881049b724e71
Content-Type: text/plain; charset=ISO-8859-1

Hi Darren,

Thanks a lot for your help.
Till now, I was working with poky-green(3.3.1) but I am shifting to
laverne(4.0) now.
Will let you know if it works with it also.

Can you also help me how to add patches.
I have put he .patch file in files folder of the psplash package

and in SRC_URI  Added    file://psplash-poky-img.patch:patch=1 \


On Thu, Feb 3, 2011 at 9:59 PM, Darren Hart <dvhart@linux.intel.com> wrote:

> On 02/03/2011 03:54 AM, Akshat Saha wrote:
>
>> Hi All,
>>
>> I want to meta/packages/psplash package to my rfs. I
>> compiled poky-image-minimal-live, with the following command
>>
>> $ bitbake poky-image-minimal-live
>>
>> Can any one guide me, how...?
>>
>
> There are a few ways to go about this I'm sure. What I've done is either:
>
> 1) Create a layer with .bbappend for the image
> 2) Create your own image recipe
>
> For example, the following recipes create a new image,
> poky-image-dvhart (as well as a live version), and add dropbear, trace-cmd,
> and kernelshark to the list of packages installed.
>
>
> $ cat poky-image-dvhart.bb
> #
> # Copyright (C) 2010 Intel Corporation.
> #
> require recipes-core/images/poky-image-minimal.bb
> IMAGE_INSTALL += "dropbear trace-cmd kernelshark"
> LICENSE = "MIT"
>
>
>
> $ cat poky-image-dvhart-live.bb
> DESCRIPTION = "Bootable Live Image"
> require recipes-core/images/poky-image-live.inc
> LABELS += "boot install"
> ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-dvhart-${MACHINE}.ext3"
> LICENSE = "MIT"
> do_bootimg[depends] += "poky-image-dvhart:do_rootfs"
>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>



-- 
Thanks and Regards,

Akshat Saha

--001636416469f0e881049b724e71
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Darren,<div><br></div><div>Thanks a lot for your help.=A0</div><div>Till=
 now, I was working with poky-green(3.3.1) but I am shifting to laverne(4.0=
) now.=A0</div><div>Will let you know if it works with it also.</div><div><=
br>

</div><div>Can you also help me how to add patches.=A0</div><div>I have put=
 he .patch file in files folder of the psplash package</div><div><br></div>=
<div>and in SRC_URI =A0Added=A0=A0=A0 file://psplash-poky-img.patch:patch=
=3D1 \</div>

<div><br></div><div><br><div class=3D"gmail_quote">On Thu, Feb 3, 2011 at 9=
:59 PM, Darren Hart <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.in=
tel.com">dvhart@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex;">

<div class=3D"im">On 02/03/2011 03:54 AM, Akshat Saha wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi All,<br>
<br>
I want to meta/packages/psplash package to my rfs. I<br>
compiled poky-image-minimal-live, with the following command<br>
<br>
$ bitbake poky-image-minimal-live<br>
<br>
Can any one guide me, how...?<br>
</blockquote>
<br></div>
There are a few ways to go about this I&#39;m sure. What I&#39;ve done is e=
ither:<br>
<br>
1) Create a layer with .bbappend for the image<br>
2) Create your own image recipe<br>
<br>
For example, the following recipes create a new image,<br>
poky-image-dvhart (as well as a live version), and add dropbear, trace-cmd,=
 and kernelshark to the list of packages installed.<br>
<br>
<br>
$ cat <a href=3D"http://poky-image-dvhart.bb" target=3D"_blank">poky-image-=
dvhart.bb</a><br>
#<br>
# Copyright (C) 2010 Intel Corporation.<br>
#<br>
require recipes-core/images/<a href=3D"http://poky-image-minimal.bb" target=
=3D"_blank">poky-image-minimal.bb</a><br>
IMAGE_INSTALL +=3D &quot;dropbear trace-cmd kernelshark&quot;<br>
LICENSE =3D &quot;MIT&quot;<br>
<br>
<br>
<br>
$ cat <a href=3D"http://poky-image-dvhart-live.bb" target=3D"_blank">poky-i=
mage-dvhart-live.bb</a><br>
DESCRIPTION =3D &quot;Bootable Live Image&quot;<br>
require recipes-core/images/poky-image-live.inc<br>
LABELS +=3D &quot;boot install&quot;<br>
ROOTFS =3D &quot;${DEPLOY_DIR_IMAGE}/poky-image-dvhart-${MACHINE}.ext3&quot=
;<br>
LICENSE =3D &quot;MIT&quot;<br>
do_bootimg[depends] +=3D &quot;poky-image-dvhart:do_rootfs&quot;<br><font c=
olor=3D"#888888">
<br>
<br>
-- <br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</font></blockquote></div><br><br clear=3D"all"><br>-- <br><font color=3D"#=
333333">Thanks and Regards,=A0</font><div><font color=3D"#333333"><br></fon=
t></div><div><font color=3D"#333333">Akshat Saha</font></div><br>
</div>

--001636416469f0e881049b724e71--
