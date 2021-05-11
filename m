Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web08.6397.1620694471862909917
 for <poky@lists.yoctoproject.org>;
 Mon, 10 May 2021 17:54:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sk9NSuq9;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: proclivis@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id n32-20020a9d1ea30000b02902a53d6ad4bdso16112194otn.3
        for <poky@lists.yoctoproject.org>; Mon, 10 May 2021 17:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=ZVkUvpjSFuK+nUSldPxZ0nog+CpigP9JUHGLDM9ywhU=;
        b=sk9NSuq9AaZRc3p4YTcT4OYx5RYgD/xOpxAf5Ze614ppB37iueVjJylBgCoSL23nGT
         nO04pz5eH/9qYHT9aRdKz7XMwoSfSCbAZsFwkXm6wuY3kUJSNqEDsujybY6EEKywhLAi
         dFmgkHKbS//tR+HWy1NXBFd3xQFtrfBJ5knBxmaySLxCtSfVfYrvoYg7B1pYsYzdOnpu
         4NTRQS5R7vYUTt4Sf12EaYpgfG2Ri5ISkXcXu9RHoF3GaJiDC9Suei/bHz7rFplRSgBD
         YBJaVTAPzL9qktrsG2IFmU7FPBRxaByvvlwNmy3XoUeLbGkeWkaXArDoCkMgCuPI4/l3
         YV8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=ZVkUvpjSFuK+nUSldPxZ0nog+CpigP9JUHGLDM9ywhU=;
        b=N0OI0kqjgqzEQVgrK0Wlh0asKrPtBVHbx4WPT48YplxkifL1rbFzcyRuSh9Kv3xs0h
         9SgXkafYXqLgtXywPQV3BWAIxJLjriv2cDuwR4uMfNCUKsc17wyq0igTOAHOnZAuj2lD
         MFoWPeNewo5D/N3Ww6fB8jNVbqOIpUP7K+Y9Dy2Xqye3xzj8E7g8STHD8tApwZ6OQNUZ
         1//vSLiUvVy8Jcl8e1K04102bIZOHMiIJZwFEQeOCL58Zl3E57Jsutg8eVM6AysYBpsm
         MNAjc4VlF8K4TAK7YlK6stifAUOm5S1BDfJqmyJV97pBHvsw5ss45HEMj3sdkras9Azh
         FEFQ==
X-Gm-Message-State: AOAM53225iosGOd7QD1lXOEPOQXmrxJkVVfrzfLMtKwvlAVpCy748e3G
	3+5zobRidfS6EvsPIZlWxzQ=
X-Google-Smtp-Source: ABdhPJzUOjsz9HYU2hkrKWf9VpnSgjPrjQGhhmGaybpuRBZ+dfROtyU3JtxKmdcaUf6GIJMil/HHPA==
X-Received: by 2002:a05:6830:22cc:: with SMTP id q12mr3581540otc.145.1620694471202;
        Mon, 10 May 2021 17:54:31 -0700 (PDT)
Return-Path: <proclivis@gmail.com>
Received: from smtpclient.apple ([2601:281:c001:2359:19b3:c41b:dc66:2ca7])
        by smtp.gmail.com with ESMTPSA id h2sm2973790oop.47.2021.05.10.17.54.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 17:54:30 -0700 (PDT)
From: proclivis@gmail.com
Message-Id: <B91BF6BE-6B17-4435-A258-8737508AC69F@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.80.0.2.43\))
Subject: Re: [poky] win create failing at mcopy #poky #raspberrypi
Date: Mon, 10 May 2021 18:54:29 -0600
In-Reply-To: <Swdb.1620063420405659881.gFTl@lists.yoctoproject.org>
Cc: poky@lists.yoctoproject.org
To: Michael Jones <proclivis@gmail.com>
References: <Swdb.1620063420405659881.gFTl@lists.yoctoproject.org>
X-Mailer: Apple Mail (2.3654.80.0.2.43)
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_05B3FCF4-AB47-477B-955F-73A43B0D9300"

--Apple-Mail=_05B3FCF4-AB47-477B-955F-73A43B0D9300
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I have a little more info on this and a more specific question.

I copied the mtools code and hooked it into the layer so I could put in de=
bug statements.

The problem occurs in charsetConv.c in the function cp_open, when it tries=
 to do an iconv_open using =E2=80=9CCP850=E2=80=9D, which fails.

I ran =E2=80=9Ciconv =E2=80=94list=E2=80=9D to see what it can convert, an=
d CP850 is not listed.

To prove this is the problem, I hardcoded the iconv_open with =E2=80=9CASC=
II=E2=80=9D and bit bake can go all the way through and =E2=80=9Cwic create=
=
=E2=80=9D works properly.

So I ran iconv =E2=80=94version and saw it was =E2=80=9CGNU libc 2.31=E2=
=80=9D so I poked around those layers.

Best I can guess is this line from the mtools layer should tell the libc t=
o provide CP850 via this line:

RDEPENDS_${PN}_libc-glibc =3D "glibc-gconv-ibm850=E2=80=9D

Except that that is for runtime, and this is build time.

So I am not sure how glibc decides what converters are used. Is it just a =
set of defaults? Is there a layer somewhere defining them I could not find?

It seems that somewhere along the way, mtools changed its default to use 8=
50, and it is not compatible anymore.

The solution is probably to tell glibc to provide CP850.

Does anyone know how to do that?

Mike

> On May 3, 2021, at 11:37 AM, proclivis via lists.yoctoproject.org <procl=
ivis=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> I am getting a Codepage 850 error from mcopy when using meta-raspberrypi=
 with the openbmc layers.
>=20
> What is strange is I had no problems for months, set aside my project, c=
ame back and had the failure. The only thing that can be different is my co=
mmand line actions, or the code pulled from repositories has changed, which=
 in my understanding can't happen.
>=20
> Before I give details, note that if I use /usr/bin/mtools on the vfat, i=
t succeeds. It is only the mtools from the build that are a problem. Theref=
ore, I concluded that the vfat itself is ok, and the problem is with the to=
ols. Also note I tried older/newer versions of mtools, going back to .18, w=
hich is what the base linux OS has and works. But the results are the same.=
 From this I conclude it is not a bug in mtools per se.
>=20
> There is another thread on this with the context of two docker images, a=
nd the result was some missing mtools files. However, I don't have the know=
ledge of poky and mtools and could not use that hint to actually solve the =
problem. So if there is something missing in a layer, conf, etc, I need som=
ewhat complete pointers, examples, or learning resources to succeed. Just s=
aying a file is missing is not going to get me far, because I am not a yoct=
o expert yet.
>=20
> I will break down the info into some categories, and hopefully someone c=
an point me in the right direction:
>=20
> SOURCE
> ENVIRONMENT
> CONF
> ERROR
> MANUAL WIC CREATE RESULTS
>=20
> -- DETAILS --
>=20
> SOURCE
>=20
> openbmc tag 2.8 or 2.9
> Adding some layers for device tree and driver patches, but nothing that =
effects the image
>=20
> ENVIORNMENT
>=20
> Ubuntu 14, 16, 18, 20, all have the same results
> I use these commands to set the environment and build:
>=20
> scripts/install-buildtools
> . poky/buildtools/environment-setup-x86_64-pokysdk-linux
> . oe-init-build-env
> bitbake obmc-phosphor-image
>=20
> Note that if I build core-image-base I don't have problems. It is in the=
 context of openbmc layers that I have problems. The question may have to b=
e asked on the obmc list, but if so, perhaps someone can help me frame the =
post to best advantage.
>=20
> CONF
>=20
> local.conf has these pertinent settings:
>=20
> require conf/machine/include/obmc-bsp-common.inc
> IMAGE_FSTYPES =3D "tar.bz2 ext3 wic.bz2 wic.bmap"
>=20
> The second line prevented obmc image layers from making images incorrect=
ly, as images are normally for ASPEED, not Raspberry Pi. And this worked fo=
r months and has not been changed.
>=20
> ERROR
>=20
>  output: Error converting to codepage 850 Invalid argument
> | Cannot initialize '::'
> | Bad target ::/
>=20
> MANUAL WIC CREATE RESULTS
>=20
> I ran wic create manually and get the same result:
>=20
> wic create sdimage-raspberrypi -e obmc-phosphor-image
> INFO: Building wic-tools...
>  
> Loading cache: 100% |###################################################=
################################################################| Time: 0:0=
0:01
> Loaded 3376 entries from dependency cache.
> Parsing recipes: 100% |#################################################=
################################################################| Time: 0:0=
0:04
> Parsing of 2286 .bb files complete (2285 cached, 1 parsed). 3377 targets=
, 352 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>  
> Build Configuration:
> BB_VERSION           =3D "1.46.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "ubuntu-18.04"
> TARGET_SYS           =3D "arm-openbmc-linux-gnueabi"
> MACHINE              =3D "raspberrypi4"
> DISTRO               =3D "openbmc-phosphor"
> DISTRO_VERSION       =3D "0.1.0"
> TUNE_FEATURES        =3D "arm vfp cortexa7 neon vfpv4 thumb callconventi=
on-hard"
> TARGET_FPU           =3D "hard"
> meta                =20
> meta-poky            
> meta-oe              
> meta-networking      
> meta-python          
> meta-webserver      =20
> meta-raspberrypi     =3D "HEAD:35a774200999ac2fca48693c1c169bf99d2f63ea"
> meta-pmbus-raspberrypi =3D "master:ab92ff0828a0278494e5deeb5ea1af2d4dcec=
2d4"
> meta-phosphor        =3D "HEAD:35a774200999ac2fca48693c1c169bf99d2f63ea"
> meta-pmbus-phosphor  =3D "master:6f2f8a4f8dcdad057f8ff9d81583f277a3aea0f=
2"
>  
> Initialising tasks: 100% |##############################################=
################################################################| Time: 0:0=
0:02
> Sstate summary: Wanted 4 Found 0 Missed 4 Current 52 (0% match, 92% comp=
lete)
> NOTE: Executing Tasks
> NOTE: Tasks Summary: Attempted 437 tasks of which 416 didn't need to be =
rerun and all succeeded.
> INFO: Creating image(s)...
>  
> WARNING: bootloader config not specified, using defaults
>  
>  
> ERROR: _exec_cmd: export PATH=3D/home/openbmc/share/design/code/openbmc/=
build/tmp/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-=
r0/recipe-sysroot-native/sbin:/home/openbmc/share/design/code/openbmc/build=
/tmp/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-r0/re=
cipe-sysroot-native/usr/sbin:/home/openbmc/share/design/code/openbmc/build/=
tmp/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-r0/rec=
ipe-sysroot-native/usr/bin:$PATH;mcopy -i ./tmp.wic.yrj_5bbq/rootfs_boot.1.=
vfat -s ./tmp.wic.yrj_5bbq/boot.1/* ::/ returned '1' instead of 0
> output: Error converting to codepage 850 Invalid argument
> Cannot initialize '::'
> Bad target ::/
>=20
>=20
>=20
>=20


--Apple-Mail=_05B3FCF4-AB47-477B-955F-73A43B0D9300
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">I have a little more info=
 on this and a more specific question.<div class=3D""><br class=3D""></div>=
<div class=3D"">I copied the mtools code and hooked it into the layer so I =
could put in debug statements.</div><div class=3D""><br class=3D""></div><d=
iv class=3D"">The problem occurs in charsetConv.c in the function cp_open, =
when it tries to do an iconv_open using =E2=80=9CCP850=E2=80=9D, which fail=
s.</div><div class=3D""><br class=3D""></div><div class=3D"">I ran =E2=80=
=9Ciconv =E2=80=94list=E2=80=9D to see what it can convert, and CP850 is n=
ot listed.</div><div class=3D""><br class=3D""></div><div class=3D"">To pro=
ve this is the problem, I hardcoded the iconv_open with =E2=80=9CASCII=E2=
=80=9D and bit bake can go all the way through and =E2=80=9Cwic create=E2=
=80=9D works properly.</div><div class=3D""><br class=3D""></div><div clas=
s=3D"">So I ran iconv =E2=80=94version and saw it was =E2=80=9CGNU libc 2.3=
1=E2=80=9D so I poked around those layers.</div><div class=3D""><br class=
=3D""></div><div class=3D"">Best I can guess is this line from the mtools =
layer should tell the libc to provide CP850 via this line:</div><div class=
=3D""><br class=3D""></div><div class=3D""><span style=3D"font-family: Cal=
ibri, sans-serif; font-size: 14.666666984558105px;" class=3D"">RDEPENDS_${P=
N}_libc-glibc =3D "glibc-gconv-ibm850</span><font face=3D"Calibri, sans-ser=
if" class=3D""><span style=3D"font-size: 14.666666984558105px;" class=3D"">=
=
=E2=80=9D</span></font></div><div class=3D""><br class=3D""></div><div cla=
ss=3D""><div>Except that that is for runtime, and this is build time.</div>=
<div><br class=3D""></div><div>So I am not sure how glibc decides what conv=
erters are used. Is it just a set of defaults? Is there a layer somewhere d=
efining them I could not find?</div><div><br class=3D""></div><div>It seems=
 that somewhere along the way, mtools changed its default to use 850, and i=
t is not compatible anymore.</div><div><br class=3D""></div><div>The soluti=
on is probably to tell glibc to provide CP850.</div><div><br class=3D""></d=
iv><div>Does anyone know how to do that?</div><div><br class=3D""></div><di=
v>Mike</div><div><br class=3D""><blockquote type=3D"cite" class=3D""><div c=
lass=3D"">On May 3, 2021, at 11:37 AM, proclivis via <a href=3D"http://list=
s.yoctoproject.org" class=3D"">lists.yoctoproject.org</a> &lt;<a href=3D"ma=
ilto:proclivis=3Dgmail.com@lists.yoctoproject.org" class=3D"">proclivis=3Dg=
mail.com@lists.yoctoproject.org</a>&gt; wrote:</div><br class=3D"Apple-inte=
rchange-newline"><div class=3D"">I am getting a Codepage 850 error from mco=
py when using meta-raspberrypi with the openbmc layers.<br class=3D""><br c=
lass=3D"">What is strange is I had no problems for months, set aside my pro=
ject, came back and had the failure. The only thing that can be different i=
s my command line actions, or the code pulled from repositories has changed=
, which in my understanding can't happen.<br class=3D""><br class=3D"">Befo=
re I give details, note that if I use /usr/bin/mtools on the vfat, it succe=
eds. It is only the mtools from the build that are a problem. Therefore, I =
concluded that the vfat itself is ok, and the problem is with the tools. Al=
so note I tried older/newer versions of mtools, going back to .18, which is=
 what the base linux OS has and works. But the results are the same. From t=
his I conclude it is not a bug in mtools per se.<br class=3D""><br class=3D=
"">There is another thread on this with the context of two docker images, a=
nd the result was some missing mtools files. However, I don't have the know=
ledge of poky and mtools and could not use that hint to actually solve the =
problem. So if there is something missing in a layer, conf, etc, I need som=
ewhat complete pointers, examples, or learning resources to succeed. Just s=
aying a file is missing is not going to get me far, because I am not a yoct=
o expert yet.<br class=3D""><br class=3D"">I will break down the info into =
some categories, and hopefully someone can point me in the right direction:=
<br class=3D""><br class=3D"">
<ul class=3D"">
<li class=3D"">SOURCE</li>
<li class=3D"">ENVIRONMENT</li>
<li class=3D"">CONF</li>
<li class=3D"">ERROR</li>
<li class=3D"">MANUAL WIC CREATE RESULTS</li>
</ul>
<br class=3D"">-- DETAILS --<br class=3D""><br class=3D"">SOURCE<br class=
=3D""><br class=3D"">openbmc tag 2.8 or 2.9<br class=3D"">Adding some laye=
rs for device tree and driver patches, but nothing that effects the image<b=
r class=3D""><br class=3D"">ENVIORNMENT<br class=3D""><br class=3D"">Ubuntu=
 14, 16, 18, 20, all have the same results<br class=3D"">I use these comman=
ds to set the environment and build:<br class=3D""><br class=3D"">
<ul class=3D"">
<li class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Cali=
bri, sans-serif; font-size: 14.666666984558105px;" class=3D"">scripts/insta=
ll-buildtools</span></li>
<li class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Cali=
bri, sans-serif; font-size: 14.666666984558105px;" class=3D"">. poky/buildt=
ools/environment-setup-x86_64-pokysdk-linux</span></li>
<li class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Cali=
bri, sans-serif; font-size: 14.666666984558105px;" class=3D"">. oe-init-bui=
ld-env</span></li>
<li class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Cali=
bri, sans-serif; font-size: 14.666666984558105px;" class=3D"">bitbake obmc-=
phosphor-image</span></li>
</ul>
<br class=3D"">Note that if I build&nbsp;<span style=3D"font-family: Calib=
ri, sans-serif;" class=3D""><span style=3D"caret-color: #000000; font-size:=
 14.666666984558105px;" class=3D"">core-image-base I don't have problems. I=
t is in the context of openbmc layers that I&nbsp;have problems. The questi=
on may have to be asked on the obmc list, but if so, perhaps someone can he=
lp me frame the post to best advantage.<br class=3D""><br class=3D""></span=
></span>CONF<br class=3D""><br class=3D"">local.conf has these pertinent se=
ttings:<br class=3D""><br class=3D""><div style=3D"margin: 0in; font-size: =
11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=
=3D"">require conf/machine/include/obmc-bsp-common.inc</div><div style=3D"=
margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-color=
: rgb(0, 0, 0);" class=3D"">IMAGE_FSTYPES =3D "tar.bz2 ext3 wic.bz2 wic.bma=
p"<br class=3D""><br class=3D"">The second line prevented obmc image layers=
 from making images incorrectly, as images are normally for ASPEED, not Ras=
pberry Pi. And this worked for months and has not been changed.<br class=3D=
""><br class=3D"">ERROR<br class=3D""><br class=3D""></div><div style=3D"ma=
rgin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: =
rgb(0, 0, 0);" class=3D"">&nbsp;output: Error converting to codepage 850 In=
valid argument</div><div style=3D"margin: 0in; font-size: 11pt; font-family=
: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">| Cannot init=
ialize '::'</div><div style=3D"margin: 0in; font-size: 11pt; font-family: C=
alibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">| Bad target ::/=
<br class=3D""><br class=3D""><span style=3D"caret-color: #333333; color: #=
333333; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-s=
ize: 14px;" class=3D"">MANUAL WIC CREATE RESULTS<br class=3D""><br class=3D=
""></span>I ran wic create manually and get the same result:<br class=3D"">=
<br class=3D""></div><div style=3D"margin: 0in; font-size: 11pt; font-famil=
y: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">wic create s=
dimage-raspberrypi -e obmc-phosphor-image</div><div style=3D"margin: 0in; f=
ont-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0)=
;" class=3D"">INFO: Building wic-tools...</div><p class=3D"DefangedMsoNorma=
l" style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif;=
 caret-color: rgb(0, 0, 0);">&nbsp;</p><div style=3D"margin: 0in; font-size=
: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=
=
=3D"">Loading cache: 100% |###############################################=
####################################################################| Time:=
 0:00:01</div><div style=3D"margin: 0in; font-size: 11pt; font-family: Cali=
bri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">Loaded 3376 entries=
 from dependency cache.</div><div style=3D"margin: 0in; font-size: 11pt; fo=
nt-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">Pars=
ing recipes: 100% |########################################################=
#########################################################| Time: 0:00:04</d=
iv><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-s=
erif; caret-color: rgb(0, 0, 0);" class=3D"">Parsing of 2286 .bb files comp=
lete (2285 cached, 1 parsed). 3377 targets, 352 skipped, 0 masked, 0 errors=
.</div><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sa=
ns-serif; caret-color: rgb(0, 0, 0);" class=3D"">NOTE: Resolving any missin=
g task queue dependencies</div><p class=3D"DefangedMsoNormal" style=3D"marg=
in: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rg=
b(0, 0, 0);">&nbsp;</p><div style=3D"margin: 0in; font-size: 11pt; font-fam=
ily: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">Build Conf=
iguration:</div><div style=3D"margin: 0in; font-size: 11pt; font-family: Ca=
libri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">BB_VERSION&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.46.0"</div><di=
v style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; =
caret-color: rgb(0, 0, 0);" class=3D"">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"</div><div style=
=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-=
color: rgb(0, 0, 0);" class=3D"">NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D "ubuntu-18.04"</div><div style=3D"margin: 0in; font-size: 11pt; fon=
t-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">TARGE=
T_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-=
openbmc-linux-gnueabi"</div><div style=3D"margin: 0in; font-size: 11pt; fon=
t-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">MACHI=
NE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D "raspberrypi4"</div><div style=3D"margin: 0in; font-size: 11pt; f=
ont-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">DIS=
TRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; =3D "openbmc-phosphor"</div><div style=3D"margin: 0in; font-si=
ze: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" cla=
ss=3D"">DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "0.1.0"</div=
><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-ser=
if; caret-color: rgb(0, 0, 0);" class=3D"">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D "arm vfp cortexa7 neon vfpv4 thumb callconventi=
on-hard"</div><div style=3D"margin: 0in; font-size: 11pt; font-family: Cali=
bri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">TARGET_FPU&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;=3D "hard"</div><div st=
yle=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; care=
t-color: rgb(0, 0, 0);" class=3D"">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><di=
v style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; =
caret-color: rgb(0, 0, 0);" class=3D"">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div style=3D"margin: 0i=
n; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0=
, 0);" class=3D"">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div style=3D"margin: 0in; font-siz=
e: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" clas=
s=3D"">meta-networking&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div style=
=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-=
color: rgb(0, 0, 0);" class=3D"">meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div style=3D"margin: 0in; font-size: 11=
pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"=
">meta-webserver&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div style=
=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-=
color: rgb(0, 0, 0);" class=3D"">meta-raspberrypi&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "HEAD:35a774200999ac2fca48693c1c169bf99d2f63ea"</div><div style=3D"mar=
gin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: r=
gb(0, 0, 0);" class=3D"">meta-pmbus-raspberrypi =3D "master:ab92ff0828a0278=
494e5deeb5ea1af2d4dcec2d4"</div><div style=3D"margin: 0in; font-size: 11pt;=
 font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">m=
eta-phosphor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "HEAD:35a7742009=
99ac2fca48693c1c169bf99d2f63ea"</div><div style=3D"margin: 0in; font-size: =
11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=
=3D"">meta-pmbus-phosphor&nbsp; =3D "master:6f2f8a4f8dcdad057f8ff9d81583f2=
77a3aea0f2"</div><p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-=
size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);">&=
nbsp;</p><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, =
sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">Initialising tasks: 100%=
 |#########################################################################=
#####################################| Time: 0:00:02</div><div style=3D"mar=
gin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: r=
gb(0, 0, 0);" class=3D"">Sstate summary: Wanted 4 Found 0 Missed 4 Current =
52 (0% match, 92% complete)</div><div style=3D"margin: 0in; font-size: 11pt=
; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">=
NOTE: Executing Tasks</div><div style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">NOTE: =
Tasks Summary: Attempted 437 tasks of which 416 didn't need to be rerun and=
 all succeeded.</div><div style=3D"margin: 0in; font-size: 11pt; font-famil=
y: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">INFO: Creati=
ng image(s)...</div><p class=3D"DefangedMsoNormal" style=3D"margin: 0in; fo=
nt-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0);=
">&nbsp;</p><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibr=
i, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">WARNING: bootloader c=
onfig not specified, using defaults</div><p class=3D"DefangedMsoNormal" sty=
le=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret=
-color: rgb(0, 0, 0);">&nbsp;</p><p class=3D"DefangedMsoNormal" style=3D"ma=
rgin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: =
rgb(0, 0, 0);">&nbsp;</p><div style=3D"margin: 0in; font-size: 11pt; font-f=
amily: Calibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">ERROR: _=
exec_cmd: export PATH=3D/home/openbmc/share/design/code/openbmc/build/tmp/w=
ork/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-r0/recipe-s=
ysroot-native/sbin:/home/openbmc/share/design/code/openbmc/build/tmp/work/c=
ortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-r0/recipe-sysroo=
t-native/usr/sbin:/home/openbmc/share/design/code/openbmc/build/tmp/work/co=
rtexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-r0/recipe-sysroot=
-native/usr/bin:$PATH;mcopy -i ./tmp.wic.yrj_5bbq/rootfs_boot.1.vfat -s ./t=
mp.wic.yrj_5bbq/boot.1/* ::/ returned '1' instead of 0</div><div style=3D"m=
argin: 0in; font-size: 11pt; font-family: Calibri, sans-serif; caret-color:=
 rgb(0, 0, 0);" class=3D"">output: Error converting to codepage 850 Invalid=
 argument</div><div style=3D"margin: 0in; font-size: 11pt; font-family: Cal=
ibri, sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">Cannot initialize =
'::'</div><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri,=
 sans-serif; caret-color: rgb(0, 0, 0);" class=3D"">Bad target ::/</div>
<br class=3D"">
<br class=3D""><br class=3D""><br class=3D""></div></blockquote></div><br =
class=3D""></div></body></html>

--Apple-Mail=_05B3FCF4-AB47-477B-955F-73A43B0D9300--
