Return-Path: <narkewoody@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47947E00C93; Tue,  8 Jan 2019 19:37:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (narkewoody[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0D54E00C4D
	for <poky@yoctoproject.org>; Tue,  8 Jan 2019 19:37:12 -0800 (PST)
Received: by mail-qt1-f173.google.com with SMTP id l11so6962629qtp.0
	for <poky@yoctoproject.org>; Tue, 08 Jan 2019 19:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=D2WpzwBvBf1hkj8WTa+N4xrM1fZUlPMcXTvWJpVR5fQ=;
	b=eeEN6XVBElWbexOzouMBXvrpyO54o+3ogc877uWG5juZJqIc+C79G2Hf5GSQzR6E3V
	27bFyV4jxlJHWjMFwZpxF81dISti9xpd0fifH1I1oUoLQdTLd1F3t7vB5PaLQFqP5ygE
	23eDUiJpeIXJg2TBkt1o/8ql2xrfymqIg2s14NkwbL/wdeDilVeEYmlz21Q/Q4fUxrY8
	ywoz436+RazPj2P3QtMSEPIeHZ5hY7WZBjmjlC9urrsUUeo8vUG6DzNwWpViImR5Cv4V
	gwSxCfblDwAwd4crE7dtmGhZxa+tQMMAuusvZn3bwHQTJaucageTBZFlpTecWkC0tMGg
	hI3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=D2WpzwBvBf1hkj8WTa+N4xrM1fZUlPMcXTvWJpVR5fQ=;
	b=aumdzdoKoTK6g4oRLa3oIqWa+O5cv9ny0s3QOIu+u7xP6knKE/3lBA3yQ+luGjJMMF
	ms/TXhA0XqUSxjqHXa1srT25upe32S9Hf7OMCRX8LUjpqi8Y2VtYOVIXvWoIkxmwVpvq
	S1IL/kQ4IIWXb/qAbGNHRHv0j1KtRV5YQRAlH9YRuORHW3MGOZ4jYP85Q60EOuS2JT3M
	0z25wwTAXo2aEQE9KBZbnC+y5/nqfKLdhU6K9L46Ojfu/rza1rtToIQT165l1hA6c51M
	mghKp8tYZqp1LzGDAHXycCCqUhX2eNefEjhVT3KbyAbBUSgu2KvN/B/SzuJlJM3S326C
	lXUA==
X-Gm-Message-State: AJcUukcA8YDTY5HLLWAcKqGnzgfgvo5iHRujKb4UTm09pLXXyDJUgzNU
	eT3Vk8sOWr8yzaF08NEE42FEdNTsaCSDub90BAQxGBRWN7g=
X-Google-Smtp-Source: ALg8bN7oXywmsrjWP9F4vGiqSFd5DiZfuiJiqm4CnJG6w+hHDn9NdDptLjDFVYHbVEZmfotMVH/CuIgU8F5VUGxQu1Q=
X-Received: by 2002:ac8:198f:: with SMTP id u15mr4236581qtj.62.1547005031996; 
	Tue, 08 Jan 2019 19:37:11 -0800 (PST)
MIME-Version: 1.0
From: Woody Wu <narkewoody@gmail.com>
Date: Wed, 9 Jan 2019 11:36:59 +0800
Message-ID: <CAAsE_ucsT-Utzm+MCsHPgZ2XCtTacuTfCk8Qjv+cRxjpjPLRpg@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Building core-image-minimal failed: 'FetchData' object has no attribute 'fullshallow'
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Jan 2019 03:37:14 -0000
Content-Type: multipart/alternative; boundary="00000000000065e34d057efe2ddf"

--00000000000065e34d057efe2ddf
Content-Type: text/plain; charset="UTF-8"

Hello,

I am so new to the project and was trying to do my first building just for
learn.  Can some please have a look at my errors and point me a direction
to check? Thanks a lot!

===
WARNING: Host distribution "ubuntu-18.10" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Parsing recipes: 100% |##########################################| Time:
0:00:14
Parsing of 790 .bb files complete (0 cached, 790 parsed). 1263 targets, 42
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.40.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "ubuntu-18.10"
TARGET_SYS           = "i586-poky-linux"
MACHINE              = "qemux86"
DISTRO               = "poky"
DISTRO_VERSION       = "2.6"
TUNE_FEATURES        = "m32 i586"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "my-thud:84eecb017ef92ef36b4df730908828e54aeff85c"

NOTE: Fetching uninative binary shim from
http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
WARNING: Checksum mismatch for local file
/home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2
Cleaning and trying again.
WARNING: Renaming
/home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2
to
/home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2_bad-checksum_4b6fb2106c2f18b8f9c8ac67e1cf9e57
WARNING: Checksum failure encountered with premirror download of
http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
- will attempt other sources.
Initialising tasks: 100% |#######################################| Time:
0:00:00
Sstate summary: Wanted 738 Found 0 Missed 738 Current 0 (0% match, 0%
complete)
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch: Failed to
fetch URL git://git.yoctoproject.org/pseudo, attempting MIRRORS if available
ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Error
executing a python function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:base_do_unpack(d)
     0003:
File: '/home/woody/poky/meta/classes/base.bbclass', lineno: 164, function:
base_do_unpack
     0160:        return
     0161:
     0162:    try:
     0163:        fetcher = bb.fetch2.Fetch(src_uri, d)
 *** 0164:        fetcher.unpack(d.getVar('WORKDIR'))
     0165:    except bb.fetch2.BBFetchException as e:
     0166:        bb.fatal(str(e))
     0167:}
     0168:
File: '/home/woody/poky/bitbake/lib/bb/fetch2/__init__.py', lineno: 1773,
function: unpack
     1769:
     1770:            if ud.lockfile:
     1771:                lf = bb.utils.lockfile(ud.lockfile)
     1772:
 *** 1773:            ud.method.unpack(ud, root, self.d)
     1774:
     1775:            if ud.lockfile:
     1776:                bb.utils.unlockfile(lf)
     1777:
File: '/home/woody/poky/bitbake/lib/bb/fetch2/git.py', lineno: 496,
function: unpack
     0492:                bb.utils.mkdirhier(destdir)
     0493:                runfetchcmd("tar -xzf %s" % ud.fullshallow, d,
workdir=destdir)
     0494:                source_found = True
     0495:            else:
 *** 0496:                source_error.append("shallow clone not enabled or
not available: " + ud.fullshallow)
     0497:
     0498:        if not source_found:
     0499:            raise bb.fetch2.UnpackError("No up to date source
found: " + "; ".join(source_error), ud.url)
     0500:
Exception: AttributeError: 'FetchData' object has no attribute 'fullshallow'

ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function
failed: base_do_unpack
ERROR: Logfile of failure stored in:
/home/woody/poky/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.31900
ERROR: Task
(virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_unpack)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 308 tasks of which 0 didn't need to be rerun
and 1 failed.
===


-- 
Life is the only flaw in an otherwise perfect nonexistence
    -- Schopenhauer

woody
public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)

--00000000000065e34d057efe2ddf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default"><div class=
=3D"gmail_default"><font size=3D"4">Hello,</font></div><div class=3D"gmail_=
default"><font size=3D"4"><br></font></div><div class=3D"gmail_default"><fo=
nt size=3D"4">I am so new to the project and was trying to do my first buil=
ding just for learn.=C2=A0 Can some please have a look at my errors and poi=
nt me a direction to check? Thanks a lot!</font></div><div class=3D"gmail_d=
efault"><br></div><div class=3D"gmail_default">=3D=3D=3D</div><div class=3D=
"gmail_default"><font size=3D"4">WARNING: Host distribution &quot;ubuntu-18=
.10&quot; has not been validated with this version of the build system; you=
 may possibly experience unexpected failures. It is recommended that you us=
e a tested distribution.</font></div><div class=3D"gmail_default"><font siz=
e=3D"4">Parsing recipes: 100% |##########################################| =
Time: 0:00:14</font></div><div class=3D"gmail_default"><font size=3D"4">Par=
sing of 790 .bb files complete (0 cached, 790 parsed). 1263 targets, 42 ski=
pped, 0 masked, 0 errors.</font></div><div class=3D"gmail_default"><font si=
ze=3D"4">NOTE: Resolving any missing task queue dependencies</font></div><d=
iv class=3D"gmail_default"><font size=3D"4"><br></font></div><div class=3D"=
gmail_default"><font size=3D"4">Build Configuration:</font></div><div class=
=3D"gmail_default"><font size=3D"4">BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;1.40.0&quot;</font></div><div class=3D"gmail_default=
"><font size=3D"4">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;x86_64-linux&quot;</font></div><div class=3D"gmail_default"><font size=
=3D"4">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;ubuntu-18.10&quot;</fo=
nt></div><div class=3D"gmail_default"><font size=3D"4">TARGET_SYS=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-poky-linux&quot;</font></div>=
<div class=3D"gmail_default"><font size=3D"4">MACHINE=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemux86&quot;</font></div><div class=
=3D"gmail_default"><font size=3D"4">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</font></div><div class=3D"gmai=
l_default"><font size=3D"4">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;2.6&quot;</font></div><div class=3D"gmail_default"><font size=3D"4">TUN=
E_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;</font></div>=
<div class=3D"gmail_default"><font size=3D"4">TARGET_FPU=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</font></div><div class=3D"gmail_de=
fault"><font size=3D"4">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</font></div><div class=3D"gmail_default"><font size=3D"4"=
>meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div =
class=3D"gmail_default"><font size=3D"4">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;my-thud:84eecb017ef92ef36b4df730908828e54aeff85c&quot;</fo=
nt></div><div class=3D"gmail_default"><font size=3D"4"><br></font></div><di=
v class=3D"gmail_default"><font size=3D"4">NOTE: Fetching uninative binary =
shim from <a href=3D"http://downloads.yoctoproject.org/releases/uninative/2=
.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc32809=
9036c832bbd924ebf5fdccb622fc0a8684">http://downloads.yoctoproject.org/relea=
ses/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95=
608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684</a></font></div><div clas=
s=3D"gmail_default"><font size=3D"4">WARNING: Checksum mismatch for local f=
ile /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328=
099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2</font></=
div><div class=3D"gmail_default"><font size=3D"4">Cleaning and trying again=
.</font></div><div class=3D"gmail_default"><font size=3D"4">WARNING: Renami=
ng /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc3280=
99036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2 to /home/=
woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832=
bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2_bad-checksum_4b6fb=
2106c2f18b8f9c8ac67e1cf9e57</font></div><div class=3D"gmail_default"><font =
size=3D"4">WARNING: Checksum failure encountered with premirror download of=
 <a href=3D"http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64=
-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832b=
bd924ebf5fdccb622fc0a8684">http://downloads.yoctoproject.org/releases/unina=
tive/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6f=
c328099036c832bbd924ebf5fdccb622fc0a8684</a> - will attempt other sources.<=
/font></div><div class=3D"gmail_default"><font size=3D"4">Initialising task=
s: 100% |#######################################| Time: 0:00:00</font></div=
><div class=3D"gmail_default"><font size=3D"4">Sstate summary: Wanted 738 F=
ound 0 Missed 738 Current 0 (0% match, 0% complete)</font></div><div class=
=3D"gmail_default"><font size=3D"4">NOTE: Executing SetScene Tasks</font></=
div><div class=3D"gmail_default"><font size=3D"4">NOTE: Executing RunQueue =
Tasks</font></div><div class=3D"gmail_default"><font size=3D"4">WARNING: ps=
eudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch: Failed to fetch URL gi=
t://<a href=3D"http://git.yoctoproject.org/pseudo">git.yoctoproject.org/pse=
udo</a>, attempting MIRRORS if available</font></div><div class=3D"gmail_de=
fault"><font size=3D"4">ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0=
 do_unpack: Error executing a python function in exec_python_func() autogen=
erated:</font></div><div class=3D"gmail_default"><font size=3D"4"><br></fon=
t></div><div class=3D"gmail_default"><font size=3D"4">The stack trace of py=
thon calls that resulted in this exception/failure was:</font></div><div cl=
ass=3D"gmail_default"><font size=3D"4">File: &#39;exec_python_func() autoge=
nerated&#39;, lineno: 2, function: &lt;module&gt;</font></div><div class=3D=
"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00001:</font></div><div=
 class=3D"gmail_default"><font size=3D"4">=C2=A0*** 0002:base_do_unpack(d)<=
/font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=
=A00003:</font></div><div class=3D"gmail_default"><font size=3D"4">File: &#=
39;/home/woody/poky/meta/classes/base.bbclass&#39;, lineno: 164, function: =
base_do_unpack</font></div><div class=3D"gmail_default"><font size=3D"4">=
=C2=A0 =C2=A0 =C2=A00160:=C2=A0 =C2=A0 =C2=A0 =C2=A0 return</font></div><di=
v class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00161:</font>=
</div><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A0016=
2:=C2=A0 =C2=A0 try:</font></div><div class=3D"gmail_default"><font size=3D=
"4">=C2=A0 =C2=A0 =C2=A00163:=C2=A0 =C2=A0 =C2=A0 =C2=A0 fetcher =3D bb.fet=
ch2.Fetch(src_uri, d)</font></div><div class=3D"gmail_default"><font size=
=3D"4">=C2=A0*** 0164:=C2=A0 =C2=A0 =C2=A0 =C2=A0 fetcher.unpack(d.getVar(&=
#39;WORKDIR&#39;))</font></div><div class=3D"gmail_default"><font size=3D"4=
">=C2=A0 =C2=A0 =C2=A00165:=C2=A0 =C2=A0 except bb.fetch2.BBFetchException =
as e:</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=
=A0 =C2=A00166:=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.fatal(str(e))</font></div><di=
v class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00167:}</font=
></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A001=
68:</font></div><div class=3D"gmail_default"><font size=3D"4">File: &#39;/h=
ome/woody/poky/bitbake/lib/bb/fetch2/__init__.py&#39;, lineno: 1773, functi=
on: unpack</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0=
 =C2=A0 =C2=A01769:</font></div><div class=3D"gmail_default"><font size=3D"=
4">=C2=A0 =C2=A0 =C2=A01770:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ud=
.lockfile:</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0=
 =C2=A0 =C2=A01771:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
lf =3D bb.utils.lockfile(ud.lockfile)</font></div><div class=3D"gmail_defau=
lt"><font size=3D"4">=C2=A0 =C2=A0 =C2=A01772:</font></div><div class=3D"gm=
ail_default"><font size=3D"4">=C2=A0*** 1773:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ud.method.unpack(ud, root, self.d)</font></div><div class=3D"=
gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A01774:</font></div><div =
class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A01775:=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ud.lockfile:</font></div><div class=
=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A01776:=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.utils.unlockfile(lf)</font></d=
iv><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A01777:<=
/font></div><div class=3D"gmail_default"><font size=3D"4">File: &#39;/home/=
woody/poky/bitbake/lib/bb/fetch2/git.py&#39;, lineno: 496, function: unpack=
</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =
=C2=A00492:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.utils=
.mkdirhier(destdir)</font></div><div class=3D"gmail_default"><font size=3D"=
4">=C2=A0 =C2=A0 =C2=A00493:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 runfetchcmd(&quot;tar -xzf %s&quot; % ud.fullshallow, d, workdir=
=3Ddestdir)</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=
=A0 =C2=A0 =C2=A00494:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 source_found =3D True</font></div><div class=3D"gmail_default"><font si=
ze=3D"4">=C2=A0 =C2=A0 =C2=A00495:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 else:</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0*** =
0496:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 source_error.a=
ppend(&quot;shallow clone not enabled or not available: &quot; + ud.fullsha=
llow)</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=
=A0 =C2=A00497:</font></div><div class=3D"gmail_default"><font size=3D"4">=
=C2=A0 =C2=A0 =C2=A00498:=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not source_found:</=
font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=
=A00499:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise bb.fetch2.UnpackErr=
or(&quot;No up to date source found: &quot; + &quot;; &quot;.join(source_er=
ror), ud.url)</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=
=A0 =C2=A0 =C2=A00500:</font></div><div class=3D"gmail_default"><font size=
=3D"4">Exception: AttributeError: &#39;FetchData&#39; object has no attribu=
te &#39;fullshallow&#39;</font></div><div class=3D"gmail_default"><font siz=
e=3D"4"><br></font></div><div class=3D"gmail_default"><font size=3D"4">ERRO=
R: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function failed:=
 base_do_unpack</font></div><div class=3D"gmail_default"><font size=3D"4">E=
RROR: Logfile of failure stored in: /home/woody/poky/build/tmp/work/x86_64-=
linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.31900=
</font></div><div class=3D"gmail_default"><font size=3D"4">ERROR: Task (vir=
tual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_=
unpack) failed with exit code &#39;1&#39;</font></div><div class=3D"gmail_d=
efault"><font size=3D"4">NOTE: Tasks Summary: Attempted 308 tasks of which =
0 didn&#39;t need to be rerun and 1 failed.</font></div><div class=3D"gmail=
_default" style=3D"font-size:large">=3D=3D=3D</div><div class=3D"gmail_defa=
ult" style=3D"font-size:large"><br></div></div><div><br></div>-- <br><div d=
ir=3D"ltr" class=3D"gmail_signature">Life is the only flaw in an otherwise =
perfect nonexistence<br>=C2=A0 =C2=A0 -- Schopenhauer<br><br>woody<br>publi=
c key at <a href=3D"http://subkeys.pgp.net:11371" target=3D"_blank">http://=
subkeys.pgp.net:11371</a> (<a href=3D"mailto:narkewoody@gmail.com" target=
=3D"_blank">narkewoody@gmail.com</a>)<br><br></div></div></div>

--00000000000065e34d057efe2ddf--
