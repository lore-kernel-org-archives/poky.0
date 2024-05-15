Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B03AC25B75
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 14:42:03 +0000 (UTC)
Subject: Re: Running chroot-like command in Yocto #yocto
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 May 2024 07:42:00 -0700
References: <EFDF2248-3DF0-4B41-B58D-B9437E75645D@arm.com>
In-Reply-To: <EFDF2248-3DF0-4B41-B58D-B9437E75645D@arm.com>
Message-ID: <19808.1715784120309934958@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WGaRQ0ekiPV9D3QA07GW"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 May 2024 14:42:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13354

--WGaRQ0ekiPV9D3QA07GW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

That's not entirely true. The syslinux class does indeed a lot of this, I w=
as able to experiment with this using the live hddimage. However, this mech=
anism ends up creating 2 different partitions, one containing the bootloade=
r, and one containing the rootfs. I would like to have them in the same par=
tition. I was able to find how to do it by scripting, but it's outside of t=
he build environment. My script looks like this:
loop_dev =3D$( losetup --find --partscan --show " my-image-genericx86-64.wi=
c " )
if [[ -z " $loop_dev " ]]; then
echo " Failed to set up loop device! "
exit 1
fi

if [[ " $arch " =3D=3D " amd64 " ]]; then
echo " Setting up Extlinux "
mount_dir =3D$( mktemp --directory )
mount ${ loop_dev } p1 ${ mount_dir }
extlinux --install ${ mount_dir } /boot/syslinux
umount ${ loop_dev } p1
fi

--WGaRQ0ekiPV9D3QA07GW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

That's not entirely true. The syslinux class does indeed a lot of this, I w=
as able to experiment with this using the live hddimage. However, this mech=
anism ends up creating 2 different partitions, one containing the bootloade=
r, and one containing the rootfs. I would like to have them in the same par=
tition. I was able to find how to do it by scripting, but it's outside of t=
he build environment. My script looks like this:<br />
<div style=3D"color: #333333; background-color: #f5f5f5; font-family: 'JetB=
rains Mono', Consolas, 'Courier New', monospace; font-weight: normal; font-=
size: 14px; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #7a3e9d;">loop_dev</span><span style=3D"color: #=
777777;">=3D$(</span><span style=3D"color: #aa3731; font-weight: bold;">los=
etup</span><span style=3D"color: #333333;"> </span><span style=3D"color: #9=
c5d27;">--find</span><span style=3D"color: #333333;"> </span><span style=3D=
"color: #9c5d27;">--partscan</span><span style=3D"color: #333333;"> </span>=
<span style=3D"color: #9c5d27;">--show</span><span style=3D"color: #333333;=
"> </span><span style=3D"color: #777777;"><span style=3D"color: #777777;">"=
<span style=3D"color: #448c27;">my-image-genericx86-64.wic</span></span></s=
pan><span style=3D"color: #777777;">"</span><span style=3D"color: #777777;"=
>)</span></div>
<div><span style=3D"color: #4b69c6;">if</span><span style=3D"color: #333333=
;"> </span><span style=3D"color: #777777;">[[</span><span style=3D"color: #=
333333;"> </span><span style=3D"color: #777777;">-z</span><span style=3D"co=
lor: #333333;"> </span><span style=3D"color: #777777;">"</span><span style=
=3D"color: #7a3e9d;">$loop_dev</span><span style=3D"color: #777777;">"</spa=
n><span style=3D"color: #333333;"> </span><span style=3D"color: #777777;">]=
];</span><span style=3D"color: #333333;"> </span><span style=3D"color: #4b6=
9c6;">then</span></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #aa3731; font-weight: bold;">echo</span><span style=3D"color: #333333;=
"> </span><span style=3D"color: #777777;">"</span><span style=3D"color: #44=
8c27;">Failed to set up loop device!</span><span style=3D"color: #777777;">=
"</span></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #aa3731; font-weight: bold;">exit</span><span style=3D"color: #333333;=
"> </span><span style=3D"color: #9c5d27;">1</span></div>
<div><span style=3D"color: #4b69c6;">fi</span></div>
<br />
<div><span style=3D"color: #4b69c6;">if</span><span style=3D"color: #333333=
;"> </span><span style=3D"color: #777777;">[[</span><span style=3D"color: #=
333333;"> </span><span style=3D"color: #777777;">"</span><span style=3D"col=
or: #7a3e9d;">$arch</span><span style=3D"color: #777777;">"</span><span sty=
le=3D"color: #333333;"> </span><span style=3D"color: #777777;">=3D=3D</span=
><span style=3D"color: #333333;"> </span><span style=3D"color: #777777;">"<=
/span><span style=3D"color: #448c27;">amd64</span><span style=3D"color: #77=
7777;">"</span><span style=3D"color: #333333;"> </span><span style=3D"color=
: #777777;">]];</span><span style=3D"color: #333333;"> </span><span style=
=3D"color: #4b69c6;">then</span></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #aa3731; font-weight: bold;">echo</span><span style=3D"color: #333333;=
"> </span><span style=3D"color: #777777;">"</span><span style=3D"color: #44=
8c27;">Setting up Extlinux</span><span style=3D"color: #777777;">"</span></=
div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #7a3e9d;">mount_dir</span><span style=3D"color: #777777;">=3D$(</span>=
<span style=3D"color: #aa3731; font-weight: bold;">mktemp</span><span style=
=3D"color: #333333;"> </span><span style=3D"color: #9c5d27;">--directory</s=
pan><span style=3D"color: #777777;">)</span></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #aa3731; font-weight: bold;">mount</span><span style=3D"color: #333333=
;"> </span><span style=3D"color: #777777;">${</span><span style=3D"color: #=
7a3e9d;">loop_dev</span><span style=3D"color: #777777;">}</span><span style=
=3D"color: #448c27;">p1</span><span style=3D"color: #333333;"> </span><span=
 style=3D"color: #777777;">${</span><span style=3D"color: #7a3e9d;">mount_d=
ir</span><span style=3D"color: #777777;">}</span></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #aa3731; font-weight: bold;">extlinux</span><span style=3D"color: #333=
333;"> </span><span style=3D"color: #9c5d27;">--install</span><span style=
=3D"color: #333333;"> </span><span style=3D"color: #777777;">${</span><span=
 style=3D"color: #7a3e9d;">mount_dir</span><span style=3D"color: #777777;">=
}</span><span style=3D"color: #448c27;">/boot/syslinux</span></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #aa3731; font-weight: bold;">umount</span><span style=3D"color: #33333=
3;"> </span><span style=3D"color: #777777;">${</span><span style=3D"color: =
#7a3e9d;">loop_dev</span><span style=3D"color: #777777;">}</span><span styl=
e=3D"color: #448c27;">p1</span></div>
<div><span style=3D"color: #4b69c6;">fi</span></div>
</div>

--WGaRQ0ekiPV9D3QA07GW--

