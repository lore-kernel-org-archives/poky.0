Return-Path: <akshat.saha@spectracoretech.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 926AB4C800B7
	for <poky@yoctoproject.org>; Sat,  5 Feb 2011 07:34:12 -0600 (CST)
Received: by eyz10 with SMTP id 10so1649057eyz.35
	for <poky@yoctoproject.org>; Sat, 05 Feb 2011 05:34:11 -0800 (PST)
Received: by 10.14.127.1 with SMTP id c1mr1582950eei.3.1296912850124; Sat, 05
	Feb 2011 05:34:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.14.32.203 with HTTP; Sat, 5 Feb 2011 05:33:39 -0800 (PST)
X-Originating-IP: [115.111.25.162]
In-Reply-To: <4D4C4DD2.1060204@linux.intel.com>
References: <AANLkTikBFCb2kNE2ePDhNZ6+Up3HzuiqLgi9UTiyP0sP@mail.gmail.com>
	<4D4AD7D9.60407@linux.intel.com>
	<AANLkTikDN5ZBRR0Hv93nZK-CMBO0xdrepbtppvGiVmwT@mail.gmail.com>
	<4D4C4DD2.1060204@linux.intel.com>
From: Akshat Saha <akshat.saha@spectracoretech.com>
Date: Sat, 5 Feb 2011 19:03:39 +0530
Message-ID: <AANLkTi=JmJzKfg73RE1JWPV=18ROQkWvixOawHBc2Z1G@mail.gmail.com>
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
X-List-Received-Date: Sat, 05 Feb 2011 13:34:13 -0000
Content-Type: multipart/alternative; boundary=00248c0ef0dcbc8305049b890da1

--00248c0ef0dcbc8305049b890da1
Content-Type: text/plain; charset=ISO-8859-1

Hi

Thanks Joshua n Darren it worked... :)

On Sat, Feb 5, 2011 at 12:34 AM, Darren Hart <dvhart@linux.intel.com> wrote:

> On 02/04/2011 02:25 AM, Akshat Saha wrote:
>
>> Hi Darren,
>>
>> Thanks a lot for your help.
>> Till now, I was working with poky-green(3.3.1) but I am shifting to
>> laverne(4.0) now.
>> Will let you know if it works with it also.
>>
>> Can you also help me how to add patches.
>> I have put he .patch file in files folder of the psplash package
>>
>> and in SRC_URI  Added    file://psplash-poky-img.patch:patch=1 \
>>
>
> That should work provided the directory is named either files of
> ${PN}-{PV}, the latter being preferred.
>
> --
> Darren
>
>
>>
>> On Thu, Feb 3, 2011 at 9:59 PM, Darren Hart <dvhart@linux.intel.com
>> <mailto:dvhart@linux.intel.com>> wrote:
>>
>>    On 02/03/2011 03:54 AM, Akshat Saha wrote:
>>
>>        Hi All,
>>
>>        I want to meta/packages/psplash package to my rfs. I
>>        compiled poky-image-minimal-live, with the following command
>>
>>        $ bitbake poky-image-minimal-live
>>
>>        Can any one guide me, how...?
>>
>>
>>    There are a few ways to go about this I'm sure. What I've done is
>>    either:
>>
>>    1) Create a layer with .bbappend for the image
>>    2) Create your own image recipe
>>
>>    For example, the following recipes create a new image,
>>    poky-image-dvhart (as well as a live version), and add dropbear,
>>    trace-cmd, and kernelshark to the list of packages installed.
>>
>>
>>    $ cat poky-image-dvhart.bb <http://poky-image-dvhart.bb>
>>
>>    #
>>    # Copyright (C) 2010 Intel Corporation.
>>    #
>>    require recipes-core/images/poky-image-minimal.bb
>>    <http://poky-image-minimal.bb>
>>
>>    IMAGE_INSTALL += "dropbear trace-cmd kernelshark"
>>    LICENSE = "MIT"
>>
>>
>>
>>    $ cat poky-image-dvhart-live.bb <http://poky-image-dvhart-live.bb>
>>
>>    DESCRIPTION = "Bootable Live Image"
>>    require recipes-core/images/poky-image-live.inc
>>    LABELS += "boot install"
>>    ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-dvhart-${MACHINE}.ext3"
>>    LICENSE = "MIT"
>>    do_bootimg[depends] += "poky-image-dvhart:do_rootfs"
>>
>>
>>    --
>>    Darren Hart
>>    Intel Open Source Technology Center
>>    Yocto Project - Linux Kernel
>>
>>
>>
>>
>> --
>> Thanks and Regards,
>>
>> Akshat Saha
>>
>>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>



-- 
Thanks and Regards,

Akshat Saha

--00248c0ef0dcbc8305049b890da1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi=A0<div><br></div><div>Thanks Joshua n Darren it worked... :)<br><br><div=
 class=3D"gmail_quote">On Sat, Feb 5, 2011 at 12:34 AM, Darren Hart <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@linux.intel=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On 02/04/2011 02:25 AM, A=
kshat Saha wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Darren,<br>
<br>
Thanks a lot for your help.<br>
Till now, I was working with poky-green(3.3.1) but I am shifting to<br>
laverne(4.0) now.<br>
Will let you know if it works with it also.<br>
<br>
Can you also help me how to add patches.<br>
I have put he .patch file in files folder of the psplash package<br>
<br>
and in SRC_URI =A0Added =A0 =A0file://psplash-poky-img.patch:patch=3D1 \<br=
>
</blockquote>
<br></div>
That should work provided the directory is named either files of ${PN}-{PV}=
, the latter being preferred.<br>
<br>
--<br>
Darren<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
<br>
On Thu, Feb 3, 2011 at 9:59 PM, Darren Hart &lt;<a href=3D"mailto:dvhart@li=
nux.intel.com" target=3D"_blank">dvhart@linux.intel.com</a><br></div><div c=
lass=3D"im">
&lt;mailto:<a href=3D"mailto:dvhart@linux.intel.com" target=3D"_blank">dvha=
rt@linux.intel.com</a>&gt;&gt; wrote:<br>
<br>
 =A0 =A0On 02/03/2011 03:54 AM, Akshat Saha wrote:<br>
<br>
 =A0 =A0 =A0 =A0Hi All,<br>
<br>
 =A0 =A0 =A0 =A0I want to meta/packages/psplash package to my rfs. I<br>
 =A0 =A0 =A0 =A0compiled poky-image-minimal-live, with the following comman=
d<br>
<br>
 =A0 =A0 =A0 =A0$ bitbake poky-image-minimal-live<br>
<br>
 =A0 =A0 =A0 =A0Can any one guide me, how...?<br>
<br>
<br>
 =A0 =A0There are a few ways to go about this I&#39;m sure. What I&#39;ve d=
one is<br>
 =A0 =A0either:<br>
<br>
 =A0 =A01) Create a layer with .bbappend for the image<br>
 =A0 =A02) Create your own image recipe<br>
<br>
 =A0 =A0For example, the following recipes create a new image,<br>
 =A0 =A0poky-image-dvhart (as well as a live version), and add dropbear,<br=
>
 =A0 =A0trace-cmd, and kernelshark to the list of packages installed.<br>
<br>
<br></div>
 =A0 =A0$ cat <a href=3D"http://poky-image-dvhart.bb" target=3D"_blank">pok=
y-image-dvhart.bb</a> &lt;<a href=3D"http://poky-image-dvhart.bb" target=3D=
"_blank">http://poky-image-dvhart.bb</a>&gt;<div class=3D"im"><br>
 =A0 =A0#<br>
 =A0 =A0# Copyright (C) 2010 Intel Corporation.<br>
 =A0 =A0#<br>
 =A0 =A0require recipes-core/images/<a href=3D"http://poky-image-minimal.bb=
" target=3D"_blank">poky-image-minimal.bb</a><br></div>
 =A0 =A0&lt;<a href=3D"http://poky-image-minimal.bb" target=3D"_blank">http=
://poky-image-minimal.bb</a>&gt;<div class=3D"im"><br>
 =A0 =A0IMAGE_INSTALL +=3D &quot;dropbear trace-cmd kernelshark&quot;<br>
 =A0 =A0LICENSE =3D &quot;MIT&quot;<br>
<br>
<br>
<br></div>
 =A0 =A0$ cat <a href=3D"http://poky-image-dvhart-live.bb" target=3D"_blank=
">poky-image-dvhart-live.bb</a> &lt;<a href=3D"http://poky-image-dvhart-liv=
e.bb" target=3D"_blank">http://poky-image-dvhart-live.bb</a>&gt;<div class=
=3D"im"><br>


 =A0 =A0DESCRIPTION =3D &quot;Bootable Live Image&quot;<br>
 =A0 =A0require recipes-core/images/poky-image-live.inc<br>
 =A0 =A0LABELS +=3D &quot;boot install&quot;<br>
 =A0 =A0ROOTFS =3D &quot;${DEPLOY_DIR_IMAGE}/poky-image-dvhart-${MACHINE}.e=
xt3&quot;<br>
 =A0 =A0LICENSE =3D &quot;MIT&quot;<br>
 =A0 =A0do_bootimg[depends] +=3D &quot;poky-image-dvhart:do_rootfs&quot;<br=
>
<br>
<br>
 =A0 =A0--<br>
 =A0 =A0Darren Hart<br>
 =A0 =A0Intel Open Source Technology Center<br>
 =A0 =A0Yocto Project - Linux Kernel<br>
<br>
<br>
<br>
<br>
--<br>
Thanks and Regards,<br>
<br>
Akshat Saha<br>
<br>
</div></blockquote><div><div></div><div class=3D"h5">
<br>
<br>
-- <br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><font color=
=3D"#333333">Thanks and Regards,=A0</font><div><font color=3D"#333333"><br>=
</font></div><div><font color=3D"#333333">Akshat Saha</font></div><br>
</div>

--00248c0ef0dcbc8305049b890da1--
