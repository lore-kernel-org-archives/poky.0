Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B9DC27C53
	for <webhook@archiver.kernel.org>; Wed, 19 Jun 2024 09:27:52 +0000 (UTC)
Subject: Changing the Prefix of a Yocto-Generated Toolchain
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Jun 2024 02:27:51 -0700
Message-ID: <DicH.1718789271790031308.xN6O@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ipFFqHgyOb7KhyR1ngsW"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 19 Jun 2024 09:27:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13381

--ipFFqHgyOb7KhyR1ngsW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I would like to change my toolchain prefix. Currently, it is defined as "aa=
rch64-poky-linux-"gcc/g++/ar...
Is it possible to change it to "nicolas-"gcc/g++/ar...?

By reading the documentation, I was under the impression that changing the =
TARGET_PREFIX variable would achieve this. However, I end up with a cryptic=
 error message that ends like this:

| libtool: link: g++ =C2=A0 -fPIC -DPIC -shared -nostdlib /usr/lib/gcc/x86_=
64-linux-gnu/11/../../../x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-=
gnu/11/crtbeginS.o =C2=A0.libs/libcp1plugin.o .libs/callbacks.o .libs/conne=
ction.o .libs/marshall.o =C2=A0 -L/workdir/yocto/builds/myimage/work/x86_64=
-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-native/usr/lib -L/workdir=
/yocto/builds/myimage/work/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-=
sysroot-native/lib -L/usr/lib/gcc/x86_64-linux-gnu/11 -L/usr/lib/gcc/x86_64=
-linux-gnu/11/../../../x86_64-linux-gnu -L/usr/lib/gcc/x86_64-linux-gnu/11/=
../../../../lib -L/lib/x86_64-linux-gnu -L/lib/../lib -L/usr/lib/x86_64-lin=
ux-gnu -L/usr/lib/../lib -L/usr/lib/gcc/x86_64-linux-gnu/11/../../.. -lstdc=
++ -lm -lc -lgcc_s /usr/lib/gcc/x86_64-linux-gnu/11/crtendS.o /usr/lib/gcc/=
x86_64-linux-gnu/11/../../../x86_64-linux-gnu/crtn.o =C2=A0-static-libstdc+=
+ -static-libgcc -Wl,--enable-new-dtags -Wl,-rpath-link -Wl,/workdir/yocto/=
builds/myimage/work/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot=
-native/usr/lib -Wl,-rpath-link -Wl,/workdir/yocto/builds/myimage/work/x86_=
64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-native/lib -Wl,-rpath -=
Wl,/workdir/yocto/builds/myimage/work/x86_64-linux/gcc-cross-aarch64/11.2.0=
-r0/recipe-sysroot-native/usr/lib -Wl,-rpath -Wl,/workdir/yocto/builds/myim=
age/work/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-native/lib=
 -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/workdir/yocto/=
builds/myimage/sysroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2 ../=
libiberty/pic/libiberty.a =C2=A0 -Wl,-soname -Wl,libcp1plugin.so.0 -Wl,-ret=
ain-symbols-file -Wl,../../../../../../../work-shared/gcc-11.2.0-r0/gcc-11.=
2.0/libcc1/libcp1plugin.sym -o .libs/libcp1plugin.so.0.0.0
| libtool: link: ( cd ".libs " && rm -f " libcp1plugin.so.0 " && ln -s " li=
bcp1plugin.so.0.0.0 " " libcp1plugin.so.0 " )
| libtool: link: ( cd ".libs " && rm -f " libcp1plugin.so " && ln -s " libc=
p1plugin.so.0.0.0 " " libcp1plugin.so " )
| libtool: link: ( cd ".libs " && rm -f " libcp1plugin.la " && ln -s "../li=
bcp1plugin.la " " libcp1plugin.la " )
| make[2]: Leaving directory '/workdir/yocto/builds/myimage/work/x86_64-lin=
ux/gcc-cross-aarch64/11.2.0-r0/gcc-11.2.0/build.x86_64-linux.aarch64-poky-l=
inux/libcc1'
| make[1]: Leaving directory '/workdir/yocto/builds/myimage/work/x86_64-lin=
ux/gcc-cross-aarch64/11.2.0-r0/gcc-11.2.0/build.x86_64-linux.aarch64-poky-l=
inux/libcc1'
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
ERROR: Task ( /workdir/yocto/src/poky/meta/recipes-devtools/gcc/gcc-cross_1=
1.2.bb:do_compile ) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3649 tasks of which 2744 didn't need to be r=
erun and 1 failed.
NOTE: Writing buildhistory

NOTE: Writing buildhistory took: 2 seconds

--ipFFqHgyOb7KhyR1ngsW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,<br /><br />I would like to change my toolchain prefix. Curr=
ently, it is defined as "aarch64-poky-linux-"gcc/g++/ar... <br />Is it poss=
ible to change it to "nicolas-"gcc/g++/ar...?<br /><br />By reading the doc=
umentation, I was under the impression that changing the TARGET_PREFIX vari=
able would achieve this. However, I end up with a cryptic error message tha=
t ends like this:</p>
<div style=3D"color: #333333; background-color: #f5f5f5; font-family: 'JetB=
rains Mono', Consolas, 'Courier New', monospace; font-weight: normal; font-=
size: 14px; line-height: 19px; white-space: pre;">
<div>
<div><span style=3D"color: #777777;">|</span><span style=3D"color: #333333;=
"> libtool: link: g++ &nbsp; -fPIC -DPIC -shared -nostdlib /usr/lib/gcc/x86=
_64-linux-gnu/11/../../../x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux=
-gnu/11/crtbeginS.o &nbsp;.libs/libcp1plugin.o .libs/callbacks.o .libs/conn=
ection.o .libs/marshall.o &nbsp; -L/workdir/yocto/builds/myimage/work/x86_6=
4-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-native/usr/lib -L/workdi=
r/yocto/builds/myimage/work/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe=
-sysroot-native/lib -L/usr/lib/gcc/x86_64-linux-gnu/11 -L/usr/lib/gcc/x86_6=
4-linux-gnu/11/../../../x86_64-linux-gnu -L/usr/lib/gcc/x86_64-linux-gnu/11=
/../../../../lib -L/lib/x86_64-linux-gnu -L/lib/../lib -L/usr/lib/x86_64-li=
nux-gnu -L/usr/lib/../lib -L/usr/lib/gcc/x86_64-linux-gnu/11/../../.. -lstd=
c++ -lm -lc -lgcc_s /usr/lib/gcc/x86_64-linux-gnu/11/crtendS.o /usr/lib/gcc=
/x86_64-linux-gnu/11/../../../x86_64-linux-gnu/crtn.o &nbsp;-static-libstdc=
++ -static-libgcc -Wl,--enable-new-dtags -Wl,-rpath-link -Wl,/workdir/yocto=
/builds/myimage/work/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroo=
t-native/usr/lib -Wl,-rpath-link -Wl,/workdir/yocto/builds/myimage/work/x86=
_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-native/lib -Wl,-rpath =
-Wl,/workdir/yocto/builds/myimage/work/x86_64-linux/gcc-cross-aarch64/11.2.=
0-r0/recipe-sysroot-native/usr/lib -Wl,-rpath -Wl,/workdir/yocto/builds/myi=
mage/work/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-native/li=
b -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/workdir/yocto=
/builds/myimage/sysroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2 ..=
/libiberty/pic/libiberty.a &nbsp; -Wl,-soname -Wl,libcp1plugin.so.0 -Wl,-re=
tain-symbols-file -Wl,../../../../../../../work-shared/gcc-11.2.0-r0/gcc-11=
.2.0/libcc1/libcp1plugin.sym -o .libs/libcp1plugin.so.0.0.0</span></div>
<div><span style=3D"color: #777777;">|</span><span style=3D"color: #333333;=
"> libtool: link: </span><span style=3D"color: #777777;">(</span><span styl=
e=3D"color: #333333;">cd </span><span style=3D"color: #777777;">"</span><sp=
an style=3D"color: #448c27;">.libs</span><span style=3D"color: #777777;">"<=
/span><span style=3D"color: #333333;"> </span><span style=3D"color: #777777=
;">&amp;&amp;</span><span style=3D"color: #333333;"> rm -f </span><span sty=
le=3D"color: #777777;">"</span><span style=3D"color: #448c27;">libcp1plugin=
.so.0</span><span style=3D"color: #777777;">"</span><span style=3D"color: #=
333333;"> </span><span style=3D"color: #777777;">&amp;&amp;</span><span sty=
le=3D"color: #333333;"> ln -s </span><span style=3D"color: #777777;">"</spa=
n><span style=3D"color: #448c27;">libcp1plugin.so.0.0.0</span><span style=
=3D"color: #777777;">"</span><span style=3D"color: #333333;"> </span><span =
style=3D"color: #777777;">"</span><span style=3D"color: #448c27;">libcp1plu=
gin.so.0</span><span style=3D"color: #777777;">"</span><span style=3D"color=
: #777777;">)</span></div>
<div><span style=3D"color: #777777;">|</span><span style=3D"color: #333333;=
"> libtool: link: </span><span style=3D"color: #777777;">(</span><span styl=
e=3D"color: #333333;">cd </span><span style=3D"color: #777777;">"</span><sp=
an style=3D"color: #448c27;">.libs</span><span style=3D"color: #777777;">"<=
/span><span style=3D"color: #333333;"> </span><span style=3D"color: #777777=
;">&amp;&amp;</span><span style=3D"color: #333333;"> rm -f </span><span sty=
le=3D"color: #777777;">"</span><span style=3D"color: #448c27;">libcp1plugin=
.so</span><span style=3D"color: #777777;">"</span><span style=3D"color: #33=
3333;"> </span><span style=3D"color: #777777;">&amp;&amp;</span><span style=
=3D"color: #333333;"> ln -s </span><span style=3D"color: #777777;">"</span>=
<span style=3D"color: #448c27;">libcp1plugin.so.0.0.0</span><span style=3D"=
color: #777777;">"</span><span style=3D"color: #333333;"> </span><span styl=
e=3D"color: #777777;">"</span><span style=3D"color: #448c27;">libcp1plugin.=
so</span><span style=3D"color: #777777;">"</span><span style=3D"color: #777=
777;">)</span></div>
<div><span style=3D"color: #777777;">|</span><span style=3D"color: #333333;=
"> libtool: link: </span><span style=3D"color: #777777;">(</span><span styl=
e=3D"color: #333333;"> </span><span style=3D"color: #4b69c6;">cd</span><spa=
n style=3D"color: #333333;"> </span><span style=3D"color: #777777;">"</span=
><span style=3D"color: #448c27;">.libs</span><span style=3D"color: #777777;=
">"</span><span style=3D"color: #333333;"> </span><span style=3D"color: #77=
7777;">&amp;&amp;</span><span style=3D"color: #333333;"> rm -f </span><span=
 style=3D"color: #777777;">"</span><span style=3D"color: #448c27;">libcp1pl=
ugin.la</span><span style=3D"color: #777777;">"</span><span style=3D"color:=
 #333333;"> </span><span style=3D"color: #777777;">&amp;&amp;</span><span s=
tyle=3D"color: #333333;"> ln -s </span><span style=3D"color: #777777;">"</s=
pan><span style=3D"color: #448c27;">../libcp1plugin.la</span><span style=3D=
"color: #777777;">"</span><span style=3D"color: #333333;"> </span><span sty=
le=3D"color: #777777;">"</span><span style=3D"color: #448c27;">libcp1plugin=
.la</span><span style=3D"color: #777777;">"</span><span style=3D"color: #33=
3333;"> </span><span style=3D"color: #777777;">)</span></div>
<div><span style=3D"color: #777777;">|</span><span style=3D"color: #333333;=
"> make[2]: Leaving directory '/workdir/yocto/builds/myimage/work/x86_64-li=
nux/gcc-cross-aarch64/11.2.0-r0/gcc-11.2.0/build.x86_64-linux.aarch64-poky-=
linux/libcc1'</span></div>
<div><span style=3D"color: #777777;">|</span><span style=3D"color: #333333;=
"> make[1]: Leaving directory '/workdir/yocto/builds/myimage/work/x86_64-li=
nux/gcc-cross-aarch64/11.2.0-r0/gcc-11.2.0/build.x86_64-linux.aarch64-poky-=
linux/libcc1'</span></div>
<div><span style=3D"color: #777777;">|</span><span style=3D"color: #333333;=
"> ERROR: oe_runmake failed</span></div>
<div><span style=3D"color: #777777;">|</span><span style=3D"color: #333333;=
"> WARNING: </span><span style=3D"color: #4b69c6;">exit</span><span style=
=3D"color: #333333;"> code </span><span style=3D"color: #9c5d27;">1</span><=
span style=3D"color: #333333;"> from a shell command.</span></div>
<div><span style=3D"color: #333333;">ERROR: Task </span><span style=3D"colo=
r: #777777;">(</span><span style=3D"color: #333333;">/workdir/yocto/src/pok=
y/meta/recipes-devtools/gcc/gcc-cross_11.2.bb:do_compile</span><span style=
=3D"color: #777777;">)</span><span style=3D"color: #333333;"> failed with <=
/span><span style=3D"color: #4b69c6;">exit</span><span style=3D"color: #333=
333;"> code '1'</span></div>
<div><span style=3D"color: #333333;">NOTE: Tasks Summary: Attempted </span>=
<span style=3D"color: #9c5d27;">3649</span><span style=3D"color: #333333;">=
 tasks of which </span><span style=3D"color: #9c5d27;">2744</span><span sty=
le=3D"color: #333333;"> didn't need to be rerun and </span><span style=3D"c=
olor: #9c5d27;">1</span><span style=3D"color: #333333;"> failed.</span></di=
v>
<div><span style=3D"color: #333333;">NOTE: Writing buildhistory</span></div=
>
<p><span style=3D"color: #333333;">NOTE: Writing buildhistory took: </span>=
<span style=3D"color: #9c5d27;">2</span><span style=3D"color: #333333;"> se=
conds<br /><br /></span></p>
</div>
</div>

--ipFFqHgyOb7KhyR1ngsW--

