Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web12.4893.1610808499072045600
 for <poky@lists.yoctoproject.org>;
 Sat, 16 Jan 2021 06:48:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IjkX7CDQ;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: daniela.marinela.bistrean@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id n186so4944230oia.5;
        Sat, 16 Jan 2021 06:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pD6SCaPceFY4JAAps1TlvIBq8GWr28YEXXebuU0l4W4=;
        b=IjkX7CDQ/dDk2KwfUp5DNIeWSrYYcKNA+wT2RaJ84+jVBRfthdo+Z/nQDxMtIBMBFj
         N5EuRqBy6kappyOL4vlQD25q/IsnmoR4AvU8yVfeiT24zVGLhlcX9b4FToSkzpGCkBaW
         HWVEhrCClEjYZK4rCRA2VC3HzPdmhSiQB+B9CfUkrHd9Wbqu0QgDc9v3IDLkBf/X/FlH
         vakqHuen72vo5fumFs0PgHiAxxxjHWW9rEz63YWmnGWXfIU1dGCk3/52Bz2N6EduUJ1C
         MaUbSalO0TV2eBca0BQsTwobIvC9Sf0GQBiU/+HmGjI6uy1lFAGiNcb8je3ZQw+PRupW
         B64g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pD6SCaPceFY4JAAps1TlvIBq8GWr28YEXXebuU0l4W4=;
        b=ntd6lqIoj6yHvI5ajx8fxyq+Vdo5zYuoDLRfBb5i51FNR0MbQ3+f88P9jnNgO/dMRk
         7AIgcUh82HDugOb8pZ+8ihpyGg5ZKvI+vfn3+vP+0V2CCnc7/9L4SjuIGgoQouDT2Fy0
         iOJg1aycj7GHA0GQb3ERn+VdujiwBEAEaJOZEt4gjf1802NrD+z5gBlLXNFocAsDTEDm
         pFac0hx44WeM6l4GBwPKmdNjpt3J4ydVgErbfzZ7Wk4Sl8MlU0s/pty5bdOV8SC8l0/X
         DLL6PiPBFRsR0YgwrtdnYyCQh0hihXsXF0u4C30n+e91BLx3qo8gTlMo2FC5+u5XkHxQ
         KFOg==
X-Gm-Message-State: AOAM5307NTwOKCHFg8ffZR8+krisg0W41gmZ+lOAtlOnBTrWj0NlEYA7
	qujMvOX5J/Xziba0G8GG6JLy7LQZNmXMDFO92D4=
X-Google-Smtp-Source: ABdhPJy9cFk0BycO0SbIdOWI731z2Q7joEJuTa2nNcYMvIqcl5tST3TFB1QxDuezaweX3Zk64jp946zlDxvAZK2+3rY=
X-Received: by 2002:aca:b656:: with SMTP id g83mr8927047oif.6.1610808498365;
 Sat, 16 Jan 2021 06:48:18 -0800 (PST)
MIME-Version: 1.0
References: <CAA7auRTsQqBhdOfD_aYNg2Xb6ZfMxHRiWTNxR7SwEQiZ-oVbxA@mail.gmail.com>
 <CAAnfSTv87TAn538sATnFDajmLi=SmUoxZvczCTMfZetBB1JFOw@mail.gmail.com> <1659300A74F5C5D5.4243@lists.yoctoproject.org>
In-Reply-To: <1659300A74F5C5D5.4243@lists.yoctoproject.org>
From: "Daniela-Marinela Bistrean" <daniela.marinela.bistrean@gmail.com>
Date: Sat, 16 Jan 2021 16:48:07 +0200
Message-ID: <CAA7auRRUxpgZ2XdGfDbJh4oqrDqMq42Ume6F-qShr27uQA44Eg@mail.gmail.com>
Subject: Re: [yocto] Python3-native illegal instruction on poky dunfell
To: Daniela-Marinela Bistrean <daniela.marinela.bistrean@gmail.com>
Cc: Ross Burton <ross@burtonini.com>, yocto@lists.yoctoproject.org, 
	poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000058a76f05b90594ba"

--00000000000058a76f05b90594ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello again,

I solved the mystery and I am describing it here in case anyone has the
same problem.

Basically, what I omitted last time and seems to be critical to the proble=
m
is that I was running a virtual machine. The one bit causing the issue was
that avx2 was disabled in my VM and python requires it. Enabling avx2 fixe=
d
the issue.

I managed to reproduce the issue with qemu using the following command lin=
e:
$ qemu-system-x86_64 -enable-kvm  -boot d -m 8G -cpu host,-avx2 -smp 4 -hd=
a
disk.bin

Hope it helps,
Daniela-Marinela Bistrean

On Mon, 11 Jan 2021 at 15:19, Daniela-Marinela Bistrean via
lists.yoctoproject.org <daniela.marinela.bistrean=3D
gmail.com@lists.yoctoproject.org> wrote:

> Thank you very much for your response!
>
> I have only one builder and the sstate is not shared. Additionally I als=
o
> tried building on the zeus branch and the build fails with the same erro=
r
> (illegal instruction) but this time at do_configure task. And do_configu=
re
> calls the same python3-native with setup.py but with a different paramet=
er.
>
> Any help or hint is appreciated.
>
> On Mon, 11 Jan 2021 at 14:43, Ross Burton <ross@burtonini.com> wrote:
>
>> Are you sharing sstate between multiple builders?
>>
>> Ross
>>
>> On Mon, 11 Jan 2021 at 08:58, Daniela-Marinela Bistrean
>> <daniela.marinela.bistrean@gmail.com> wrote:
>> >
>> > Hello community,
>> >
>> > I am trying to build core-image-minimal using poky only, on the dunfe=
ll
>> branch. On certain machines the build fails unexpectedly with the follo=
wing
>> error:
>> > Build Configuration:
>> > BB_VERSION           =3D "1.46.0"
>> > BUILD_SYS            =3D "x86_64-linux"
>> > NATIVELSBSTRING      =3D "universal"
>> > TARGET_SYS           =3D "x86_64-poky-linux"
>> > MACHINE              =3D "qemux86-64"
>> > DISTRO               =3D "poky"
>> > DISTRO_VERSION       =3D "3.1.4"
>> > TUNE_FEATURES        =3D "m64 core2"
>> > TARGET_FPU           =3D ""
>> > meta
>> > meta-poky
>> > meta-yocto-bsp       =3D
>> "dunfell:cd3abf42dae2310ecaa8a97b2c08378a9f6e1282"
>> >
>> > Initialising tasks: 100%
>> |######################################################################=
###########################################################################=
###################|
>> Time: 0:00:11
>> > Sstate summary: Wanted 1025 Found 0 Missed 1025 Current 126 (0% match=
,
>> 10% complete)
>> > NOTE: Executing Tasks
>> > ERROR: python3-setuptools-native-45.2.0-r0 do_compile: 'python3
>> setup.py build ' execution failed.
>> > ERROR: python3-setuptools-native-45.2.0-r0 do_compile: Execution of
>> '/home/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setup=
tools-native/45.2.0-r0/temp/run.do_compile.141'
>> failed with exit code 1:
>> > Illegal instruction (core dumped)
>> > WARNING: exit code 1 from a shell command.
>> >
>> > ERROR: Logfile of failure stored in:
>> /home/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setupt=
ools-native/45.2.0-r0/temp/log.do_compile.141
>> > Log data follows:
>> > | DEBUG: Executing shell function do_compile
>> > | Illegal instruction (core dumped)
>> > | ERROR: 'python3 setup.py build ' execution failed.
>> > | WARNING: exit code 1 from a shell command.
>> > | ERROR: Execution of
>> '/home/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setup=
tools-native/45.2.0-r0/temp/run.do_compile.141'
>> failed with exit code 1:
>> > | Illegal instruction (core dumped)
>> > | WARNING: exit code 1 from a shell command.
>> > |
>> > ERROR: Task
>> (virtual:native:/home/builder/src/poky/meta/recipes-devtools/python/pyt=
hon3-setuptools_45.2.0.bb:do_compile)
>> failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 576 tasks of which 572 didn't need to =
be
>> rerun and 1 failed.
>> >
>> > The do_compile task executes the following:
>> > do_compile() {
>> >     distutils3_do_compile
>> > }
>> >
>> > distutils3_do_compile() {
>> >         cd
>> /home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setu=
ptools-native/45.2.0-r0/setuptools-45.2.0
>> >         NO_FETCH_BUILD=3D1 \
>> >
>>  STAGING_INCDIR=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-=
linux/python3-setuptools-native/45.2.0-r0/recipe-sysroot-native/usr/include
>> \
>> >
>>  STAGING_LIBDIR=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-=
linux/python3-setuptools-native/45.2.0-r0/recipe-sysroot-native/usr/lib
>> \
>> >
>>  /home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-set=
uptools-native/45.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/pytho=
n3
>> /home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setu=
ptools-native/45.2.0-r0/setuptools-45.2.0/setup.py
>> \
>> >         build
>> --build-base=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-lin=
ux/python3-setuptools-native/45.2.0-r0/build
>> || \
>> >         bbfatal_log "'python3 setup.py build ' execution failed."
>> > }
>> >
>> > On this particular machine the build fails even when it is tried out
>> from within a container. The configuration of this machine is:
>> > Distributor ID: Ubuntu
>> > Description: Ubuntu 18.04.5 LTS
>> > Release: 18.04
>> > Codename: bionic
>> >
>> > Linux vm 5.4.0-54-generic #60~18.04.1-Ubuntu SMP Fri Nov 6 17:25:16 U=
TC
>> 2020 x86_64 x86_64 x86_64 GNU/Linux
>> >
>> > 4 x Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz
>> >
>> > The python3-native binary generated by Yocto works and I can run it o=
n
>> the host. I have identified that setup.py file of python3-setuptools-na=
tive
>> recipe, part of do_compile fails with illegal instruction when trying t=
o
>> import setuptools. On other machines the build has no issues. The machi=
ne
>> with issues is under a VPN and a proxy (company's machine).
>> >
>> > Do you have any hint as why this might happen?
>> >
>> > Thank you and looking forward to your feedback,
>> > Daniela-M=C4=83rinela Bistrean
>> >
>> >
>> >
>>
>
>
> --
> Cu deosebit=C4=83 considera=C5=A3ie,
> Daniela-M=C4=83rinela Bistrean
>
>=20
>
>

--00000000000058a76f05b90594ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello again,<div><br></div><div>I solved =
the mystery and I am describing it here in case anyone has the same problem=
.</div><div><br></div><div>Basically, what I omitted last time and seems to=
 be critical to the problem is that I was running a virtual machine. The on=
e bit causing the issue was that avx2 was disabled in my VM and python requ=
ires it. Enabling avx2 fixed the issue.</div><div><br></div><div>I managed =
to reproduce the issue with qemu using the following command line:</div><di=
v>$ qemu-system-x86_64 -enable-kvm =C2=A0-boot d -m 8G -cpu host,-avx2 -smp=
 4 -hda disk.bin<br></div></div><div><br></div>Hope it helps,<div>Daniela-M=
arinela Bistrean</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, 11 Jan 2021 at 15:19, Daniela-Marinela Bistrea=
n via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> =
&lt;daniela.marinela.bistrean=3D<a href=3D"mailto:gmail.com@lists.yoctoproj=
ect.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank you ve=
ry much for your response!<div><br><div><div>I have only one builder and th=
e sstate is not shared. Additionally I also tried building on the zeus bran=
ch and the build fails with the same error (illegal instruction) but this t=
ime at do_configure task. And do_configure calls the same python3-native wi=
th setup.py but with a different parameter.</div><div><br></div><div>Any he=
lp or hint is appreciated.</div></div></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 11 Jan 2021 at 14:43, R=
oss Burton &lt;<a href=3D"mailto:ross@burtonini.com" target=3D"_blank">ross=
@burtonini.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Are you sharing sstate between multiple builders?<br>
<br>
Ross<br>
<br>
On Mon, 11 Jan 2021 at 08:58, Daniela-Marinela Bistrean<br>
&lt;<a href=3D"mailto:daniela.marinela.bistrean@gmail.com" target=3D"_blan=
k">daniela.marinela.bistrean@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello community,<br>
&gt;<br>
&gt; I am trying to build core-image-minimal using poky only, on the dunfe=
ll branch. On certain machines the build fails unexpectedly with the follow=
ing error:<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.46.0&q=
uot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-l=
inux&quot;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-p=
oky-linux&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qem=
ux86-64&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quo=
t;poky&quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;3.1.4&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m64 core2&quot;<br=
>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;<b=
r>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:cd3abf42da=
e2310ecaa8a97b2c08378a9f6e1282&quot;<br>
&gt;<br>
&gt; Initialising tasks: 100% |###########################################=
###########################################################################=
##############################################| Time: 0:00:11<br>
&gt; Sstate summary: Wanted 1025 Found 0 Missed 1025 Current 126 (0% match=
, 10% complete)<br>
&gt; NOTE: Executing Tasks<br>
&gt; ERROR: python3-setuptools-native-45.2.0-r0 do_compile: &#39;python3 s=
etup.py build &#39; execution failed.<br>
&gt; ERROR: python3-setuptools-native-45.2.0-r0 do_compile: Execution of &=
#39;/home/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setupt=
ools-native/45.2.0-r0/temp/run.do_compile.141&#39; failed with exit code 1:=
<br>
&gt; Illegal instruction (core dumped)<br>
&gt; WARNING: exit code 1 from a shell command.<br>
&gt;<br>
&gt; ERROR: Logfile of failure stored in: /home/builder/src/build_yocto-te=
st/tmp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0/temp/log.do_co=
mpile.141<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | Illegal instruction (core dumped)<br>
&gt; | ERROR: &#39;python3 setup.py build &#39; execution failed.<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Execution of &#39;/home/builder/src/build_yocto-test/tmp/wor=
k/x86_64-linux/python3-setuptools-native/45.2.0-r0/temp/run.do_compile.141&=
#39; failed with exit code 1:<br>
&gt; | Illegal instruction (core dumped)<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; |<br>
&gt; ERROR: Task (virtual:native:/home/builder/src/poky/meta/recipes-devto=
ols/python/python3-setuptools_45.2.0.bb:do_compile) failed with exit code &=
#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 576 tasks of which 572 didn&#39;t need=
 to be rerun and 1 failed.<br>
&gt;<br>
&gt; The do_compile task executes the following:<br>
&gt; do_compile() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0distutils3_do_compile<br>
&gt; }<br>
&gt;<br>
&gt; distutils3_do_compile() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cd /home/builder/src/build_sw.sys.ic=
p21/tmp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0/setuptools-45=
.2.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NO_FETCH_BUILD=3D1 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0STAGING_INCDIR=3D/home/builder/src/b=
uild_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0=
/recipe-sysroot-native/usr/include \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0STAGING_LIBDIR=3D/home/builder/src/b=
uild_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0=
/recipe-sysroot-native/usr/lib \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/builder/src/build_sw.sys.icp21=
/tmp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0/recipe-sysroot-n=
ative/usr/bin/python3-native/python3 /home/builder/src/build_sw.sys.icp21/t=
mp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0/setuptools-45.2.0/=
setup.py \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0build --build-base=3D/home/builder/s=
rc/build_sw.sys.icp21/tmp/work/x86_64-linux/python3-setuptools-native/45.2.=
0-r0/build=C2=A0 || \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bbfatal_log &quot;&#39;python3 setup=
.py build &#39; execution failed.&quot;<br>
&gt; }<br>
&gt;<br>
&gt; On this particular machine the build fails even when it is tried out =
from within a container. The configuration of this machine is:<br>
&gt; Distributor ID: Ubuntu<br>
&gt; Description: Ubuntu 18.04.5 LTS<br>
&gt; Release: 18.04<br>
&gt; Codename: bionic<br>
&gt;<br>
&gt; Linux vm 5.4.0-54-generic #60~18.04.1-Ubuntu SMP Fri Nov 6 17:25:16 U=
TC 2020 x86_64 x86_64 x86_64 GNU/Linux<br>
&gt;<br>
&gt; 4 x Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz<br>
&gt;<br>
&gt; The python3-native binary generated by Yocto works and I can run it o=
n the host. I have identified that setup.py file of python3-setuptools-nati=
ve recipe, part of do_compile fails with illegal instruction when trying to=
 import setuptools. On other machines the build has no issues. The machine =
with issues is under a VPN and a proxy (company&#39;s machine).<br>
&gt;<br>
&gt; Do you have any hint as why this might happen?<br>
&gt;<br>
&gt; Thank you and looking forward to your feedback,<br>
&gt; Daniela-M=C4=83rinela Bistrean<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Cu deosebit=C4=83 c=
onsidera=C5=A3ie,</span></div><div style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">Daniela-M=C4=83rinela Bistrean</span><br></div></div=
></div></div></div></div></div></div>
<br>
<br>
<br>
</blockquote></div><div><br></div></div></div>

--00000000000058a76f05b90594ba--
