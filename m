Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web08.7890.1659821967166909166
 for <poky@lists.yoctoproject.org>;
 Sat, 06 Aug 2022 14:39:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ils5EFoO;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: usva.techdev@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id n185so2935430wmn.4
        for <poky@lists.yoctoproject.org>; Sat, 06 Aug 2022 14:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=IQzcfoOjBd7Z3dvFS3lY+0FWg5OgmN/YrD97Q+gjZ8E=;
        b=Ils5EFoOMArRwhUo8k/98iW270GDEKPXI3IYHrhqlGjQtANlv2SvzoQLu4PIxHi/CQ
         CJKTwhKlAaLIncc+QQNagUiuT534c/c4opZLeGr2jWjO4mah+EGHsaoS8DjyOeNkQETd
         2PwcS8bUfC2YBvrrezItxty2aUbWzcUJhTiY88sIaEMFyko8Tw4FUeICl/qB7OWN0XZ8
         awyUGjL7tr1BjpFXDqpgF9EUE+eSWTKQWkCudISSpkjIJ6lQTpfTRriypmtjPhvkjBTe
         whNCIhtoYALgdEUdFEDdY3gERNMKIG7fkvKwWBzVOhxQviGzHfTJ7gsd3fPv70wlCZaO
         dz4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=IQzcfoOjBd7Z3dvFS3lY+0FWg5OgmN/YrD97Q+gjZ8E=;
        b=Rrkl07ZYc+gU22SYIE64U2gLxC2R/UlildaQRiUWD2rd/MS8Ez1Yz1CYiUwCAzZY9Q
         mHgaLQ0yMfeRt8CnJQbzSrM045do3O+pmlxTqL2HCiC6FhAcLHOIIsVXLOF22gpZqtUR
         D9Q+UmYz+kfH2q8bYauRbBcweWa19XD731zrKv591iXYSKnS1JSBKgjSMmhCMRWMkSG6
         LXkfjDp0OL7i3rXbiEyioq+Qhqu0qTZlUal5PI3iSYR8spUUT7uge5JoKmL3hlumAQUD
         Y5C5Wt8eec6YQcgu3S9zWwHBI6pGUTVphrj5uTFXH5XxaRFhdXf4gcBD7z5ojw3RwQw+
         AbFw==
X-Gm-Message-State: ACgBeo2Ka1er9MlJnph5B8zbfU4VfVTCAvWj66vQogrnkl9KYATkJugc
	XM64eyT4Vw5MdjdhNcgyAELeBV5WHMMwsiXLfbgUMAYM7z5lnw==
X-Google-Smtp-Source: AA6agR7V4ihujq+wGr7Qo+HsiFFig4c0quLiPHMSNrTMkbF/3Zgu6vqBCVXMeoKzM3DZGl54xw6ME8IP2dSs8ZA4sg8=
X-Received: by 2002:a1c:e902:0:b0:3a4:f20f:7f4a with SMTP id
 q2-20020a1ce902000000b003a4f20f7f4amr8525720wmc.135.1659821965151; Sat, 06
 Aug 2022 14:39:25 -0700 (PDT)
MIME-Version: 1.0
From: "Ulises Vega" <usva.techdev@gmail.com>
Date: Sat, 6 Aug 2022 16:39:14 -0500
Message-ID: <CAFUa6hO2j5gLF4-1Ow-ASSGNDsMRCGPrfaMOPb67mtfLD_9CKg@mail.gmail.com>
Subject: Problem with dunfell on llvm_git.bb
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009f94a305e5996a53"

--0000000000009f94a305e5996a53
Content-Type: text/plain; charset="UTF-8"

 Hello everyone,

I don't know if this is the right channel to post this problem. Please be
patient with me and redirect me to the appropriate channel if needed. thanks

I've posted on the AGL community but no answer from them yet. So I do not
know if this is a yocto problem.

I'm facing the following problem to build the marlin release for Automotive
Grade Linux, it marks me this error and there is nothing deployed. I'm
using opensuse 15.2 on virtual box 6.1.34, and I also tried Ubuntu 20.04. I
installed all pre required packages from the yocto documentation. I run the
following commands:




*source meta-agl/scripts/aglsetup.sh -m qemux86-64 -b qemux86-64 agl-demo
agl-develtime bitbake agl-demo-platform*


I added this lines to local.conf:



*SSTATE_DIR = "/home/ulisesv/AGL/sstate-cache"DL_DIR =
"/home/ulisesv/AGL/downloads"SSTATE_MIRRORS_append = " file://.*
https://download.automotivelinux.org/sstate-mirror/marlin/${DEFAULTTUNE}/PATH
<https://download.automotivelinux.org/sstate-mirror/marlin/$%7BDEFAULTTUNE%7D/PATH>
\n "*

and this lines to site.conf (inside <buidl-dir>/conf/site.conf,
build-dir=qemux86_64 see below)




*# reuse download directoriesDL_DIR =
"/home/ulisesv/AGL/downloads/"SSTATE_DIR =
"/home/ulisesv/AGL/sstate-cache/"*

and got the following errors:





*bLLVMSupport.a  lib/libLLVMDemangle.a  -lz  -lrt  -ldl  -ltinfo  -lpthread
 -lm  -lxml2 && :| collect2: fatal error: ld terminated with signal 9
[Killed]| compilation terminated.| ninja: build stopped: subcommand
failed.| WARNING: /home/ulisesv/AGL/marlin/**qemux86-64/tmp/work/corei7-64-*
*agl-linux/llvm/9.0.1-r0/temp/*
*run.do_compile.3791:1 exit 1 from 'ninja -v -j 1'| ERROR: Execution of
'/home/ulisesv/AGL/marlin/**qemux86-64/tmp/work/corei7-64-*
*agl-linux/llvm/9.0.1-r0/temp/*
*run.do_compile.3791' failed with exit code 1ERROR: Task
(/home/ulisesv/AGL/marlin/**external/poky/meta/recipes-*
*devtools/llvm/llvm_git.bb:do_*



*compile) failed with exit code '1'NOTE: Tasks Summary: Attempted 1311
tasks of which 1310 didn't need to be rerun and 1 failed.Summary: 1 task
failed:  /home/ulisesv/AGL/marlin/**external/poky/meta/recipes-*
*devtools/llvm/llvm_git.bb:do_*





*compileSummary: There was 1 ERROR message shown, returning a non-zero exit
code.real    39m14.523suser    0m3.932ssys
0m0.518sulisesv@localhost:~/AGL/*



*marlin/qemux86-64> ls -la tmp/deploy/total 0drwxr-xr-x 1 ulisesv users  16
Jul 30 18:18 .drwxr-xr-x 1 ulisesv users 270 Jul 30 19:20 ..drwxr-xr-x 1
ulisesv users 482 Jul 29 21:17 licenses*

*I followed some steps in this link but it didn't work either:*
*https://lists.linuxfoundation.org/pipermail/automotive-discussions/2016-June/002112.html
<https://lists.linuxfoundation.org/pipermail/automotive-discussions/2016-June/002112.html>*


*this seems to be similar error but mostly looks different source of error:*
*https://github.com/AFLplusplus/AFLplusplus/issues/40
<https://github.com/AFLplusplus/AFLplusplus/issues/40>*

Any idea why this is happening?

Thank you for your help.


-- 
Ulises S. Vega A.

--0000000000009f94a305e5996a53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Hello everyone,</div><div><br></div><div>I don&#39;t know if this is=
=20
the right channel to post this problem. Please be patient with me and=20
redirect me to the appropriate channel if needed. thanks<br></div><div><br>=
</div><div>I&#39;ve posted on the AGL community but no answer from them yet=
. So I do not know if this is a yocto problem.<br></div><div><br></div><div=
>I&#39;m facing=20
the following problem to build the marlin release for Automotive Grade Linu=
x, it marks me this=20
error and there is nothing deployed. I&#39;m using opensuse 15.2 on virtual=
=20
box 6.1.34, and I also tried Ubuntu 20.04. I installed all pre required pac=
kages from the yocto=20
documentation. I run the following commands:</div><div><br></div><div><br><=
/div><div><i>source meta-agl/scripts/aglsetup.sh -m qemux86-64 -b qemux86-6=
4 agl-demo agl-devel<br><br>time bitbake agl-demo-platform</i></div><div><i=
><br></i></div><div><i><br></i></div><div>I added this lines to local.conf:=
</div><div><br></div><div><i>SSTATE_DIR =3D &quot;/home/ulisesv/AGL/sstate-=
cache&quot;<br>DL_DIR =3D &quot;/home/ulisesv/AGL/downloads&quot;<br>SSTATE=
_MIRRORS_append =3D &quot; file://.* <a href=3D"https://download.automotive=
linux.org/sstate-mirror/marlin/$%7BDEFAULTTUNE%7D/PATH" target=3D"_blank">h=
ttps://download.automotivelinux.org/sstate-mirror/marlin/${DEFAULTTUNE}/PAT=
H</a> \n &quot;</i></div><div><br></div><div>and this lines to site.conf (i=
nside &lt;buidl-dir&gt;/conf/site.conf, build-dir=3Dqemux86_64 see below)<b=
r></div><div><br></div><div><i># reuse download directories<br>DL_DIR =3D &=
quot;/home/ulisesv/AGL/downloads/&quot;<br>SSTATE_DIR =3D &quot;/home/ulise=
sv/AGL/sstate-cache/&quot;<br></i></div><div><i><br></i></div><div></div><d=
iv>and got the following errors:</div><div><br></div><div><i>bLLVMSupport.a=
 =C2=A0lib/libLLVMDemangle.a =C2=A0-lz =C2=A0-lrt =C2=A0-ldl =C2=A0-ltinfo =
=C2=A0-lpthread =C2=A0-lm =C2=A0-lxml2 &amp;&amp; :<br>| collect2: fatal er=
ror: ld terminated with signal 9 [Killed]<br>| compilation terminated.<br>|=
 ninja: build stopped: subcommand failed.<br>| WARNING: /home/ulisesv/AGL/m=
arlin/</i><i>qemux86-64/tmp/work/corei7-64-</i><i>agl-linux/llvm/9.0.1-r0/t=
emp/</i><i>run.do_compile.3791:1 exit 1 from &#39;ninja -v -j 1&#39;<br>| E=
RROR: Execution of &#39;/home/ulisesv/AGL/marlin/</i><i>qemux86-64/tmp/work=
/corei7-64-</i><i>agl-linux/llvm/9.0.1-r0/temp/</i><i>run.do_compile.3791&#=
39; failed with exit code 1<br>ERROR: Task (/home/ulisesv/AGL/marlin/</i><i=
>external/poky/meta/recipes-</i><i>devtools/llvm/llvm_git.bb:do_</i><i>comp=
ile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 13=
11 tasks of which 1310 didn&#39;t need to be rerun and 1 failed.<br><br>Sum=
mary: 1 task failed:<br>=C2=A0 /home/ulisesv/AGL/marlin/</i><i>external/pok=
y/meta/recipes-</i><i>devtools/llvm/llvm_git.bb:do_</i><i>compile<br>Summar=
y: There was 1 ERROR message shown, returning a non-zero exit code.<br><br>=
real =C2=A0 =C2=A039m14.523s<br>user =C2=A0 =C2=A00m3.932s<br>sys =C2=A0 =
=C2=A0 0m0.518s<br>ulisesv@localhost:~/AGL/</i><i>marlin/qemux86-64&gt; ls =
-la tmp/deploy/<br>total 0<br>drwxr-xr-x 1 ulisesv users =C2=A016 Jul 30 18=
:18 .<br>drwxr-xr-x 1 ulisesv users 270 Jul 30 19:20 ..<br>drwxr-xr-x 1 uli=
sesv users 482 Jul 29 21:17 licenses</i></div><div><i><br></i></div><div><i=
>I followed some steps in this link but it didn&#39;t work either:</i></div=
><div><i><a href=3D"https://lists.linuxfoundation.org/pipermail/automotive-=
discussions/2016-June/002112.html" target=3D"_blank">https://lists.linuxfou=
ndation.org/pipermail/automotive-discussions/2016-June/002112.html</a></i><=
/div><div><i><br></i></div><div><i>this seems to be similar error but mostl=
y looks different source of error:<br></i></div><div><i><a href=3D"https://=
github.com/AFLplusplus/AFLplusplus/issues/40" target=3D"_blank">https://git=
hub.com/AFLplusplus/AFLplusplus/issues/40</a></i></div><div><i><br></i></di=
v><div>Any idea why this is happening?<i><br></i></div><div><br></div><div>=
Thank you for your help.</div>

<br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature" dat=
a-smartmail=3D"gmail_signature"><div dir=3D"ltr">Ulises S. Vega A.</div></d=
iv></div>

--0000000000009f94a305e5996a53--
