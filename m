Return-Path: <teddyxiong53@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31FB8C47072
	for <webhook@archiver.kernel.org>; Wed, 27 Dec 2023 12:41:31 +0000 (UTC)
Subject: qemuarm64 use lib64 as multilib 
To: poky@lists.yoctoproject.org
From: teddyxiong53@gmail.com
X-Originating-Location: Shenzhen, Guangdong, CN (183.238.223.226)
X-Originating-Platform: Windows Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Dec 2023 04:41:29 -0800
Message-ID: <UCr5.1703680889704812095.gDfO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="P95Kobef2lyzP4ihjjj0"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 27 Dec 2023 12:41:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13235

--P95Kobef2lyzP4ihjjj0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey guys,

I use poky as the test environment. work on kirkstone branch. test on qemua=
rm64.
I add this to local.conf
```
require conf/multilib.conf
MULTILIBS =3D "multilib:lib64"
DEFAULTTUNE =3D "armv7athf-neon"
DEFAULTTUNE:virtclass-multilib-lib64 =3D "armv8a"
DEFAULTTUNE:pn-linux-yocto =3D "armv8a"
```
I wish to use as this :
bitbake attr=C2=A0 =C2=A0: this would output 32bit file by default
bitbake lib64-attr: this output 64bit file

I know most people use lib64 as default, but I have to use lib32 as default=
.
I have to use a 64bit kernel (including all kernel module), and all the use=
rspace as 32bit.

Now I bitbake yocto, I see this error.
```
ERROR: Nothing PROVIDES 'virtual/aarch64-poky-linux-binutils' (but /mnt/fil=
eroot/hanliang.xiong/work/yocto-study/code/poky/meta/recipes-kernel/linux/l=
inux-yocto_5.15.bb DEPENDS on or otherwise requires it). Close matches:
virtual/arm-poky-linux-gnueabi-binutils
virtual/arm-poky-linux-gnueabi-rust
virtual/lib64-aarch64-pokymllib64-linux-binutils
ERROR: Required build target 'linux-yocto' has no buildable providers.
Missing or unbuildable dependency chain was: ['linux-yocto', 'virtual/aarch=
64-poky-linux-binutils']
```
The DEPENDS is from kernel.bbclass, it expands to virtual/aarch64-poky-linu=
x-binutils
But it seems no such provider.

Then how can I make it work?

--P95Kobef2lyzP4ihjjj0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey guys,<br /><br />I use poky as the test environment. work on kirkstone =
branch. test on qemuarm64.<br />I add this to local.conf<br />```<br />
<div style=3D"color: #383a42; background-color: #fafafa; font-family: Conso=
las, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #a626a4;">require</span> conf/multilib.conf</div=
>
<div><span style=3D"color: #e45649;">MULTILIBS</span> =3D <span style=3D"co=
lor: #50a14f;">"multilib:lib64"</span></div>
<div><span style=3D"color: #e45649;">DEFAULTTUNE</span> =3D <span style=3D"=
color: #50a14f;">"armv7athf-neon"</span></div>
<div><span style=3D"color: #e45649;">DEFAULTTUNE:virtclass-multilib-lib64</=
span> =3D <span style=3D"color: #50a14f;">"armv8a"</span></div>
<div><span style=3D"color: #e45649;">DEFAULTTUNE:pn-linux-yocto</span> =3D =
<span style=3D"color: #50a14f;">"armv8a"</span></div>
</div>
```<br />I wish to use as this :<br />bitbake attr&nbsp; &nbsp;: this would=
 output 32bit file by default<br />bitbake lib64-attr: this output 64bit fi=
le<br /><br />I know most people use lib64 as default, but I have to use li=
b32 as default.<br />I have to use a 64bit kernel (including all kernel mod=
ule), and all the userspace as 32bit.<br /><br />Now I bitbake yocto, I see=
 this error.<br />```<br />
<div>ERROR: Nothing PROVIDES 'virtual/aarch64-poky-linux-binutils' (but /mn=
t/fileroot/hanliang.xiong/work/yocto-study/code/poky/meta/recipes-kernel/li=
nux/linux-yocto_5.15.bb DEPENDS on or otherwise requires it). Close matches=
:</div>
<div>&nbsp; virtual/arm-poky-linux-gnueabi-binutils</div>
<div>&nbsp; virtual/arm-poky-linux-gnueabi-rust</div>
<div>&nbsp; virtual/lib64-aarch64-pokymllib64-linux-binutils</div>
<div>ERROR: Required build target 'linux-yocto' has no buildable providers.=
</div>
<div>Missing or unbuildable dependency chain was: ['linux-yocto', 'virtual/=
aarch64-poky-linux-binutils']</div>
```<br />The DEPENDS is from kernel.bbclass, it expands to virtual/aarch64-=
poky-linux-binutils<br />But it seems no such provider.<br /><br />Then how=
 can I make it work?<br /><br />

--P95Kobef2lyzP4ihjjj0--

