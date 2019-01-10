Return-Path: <narkewoody@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6351E00C71; Wed,  9 Jan 2019 18:38:13 -0800 (PST)
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
	*      [209.85.160.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (narkewoody[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A50BE00C5F
	for <poky@yoctoproject.org>; Wed,  9 Jan 2019 18:38:12 -0800 (PST)
Received: by mail-qt1-f175.google.com with SMTP id d19so10819252qtq.9
	for <poky@yoctoproject.org>; Wed, 09 Jan 2019 18:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7HsN2Axy6iwwlgTpqIn74F34SVij3FyzDtboW01dNjw=;
	b=t4Eqeyg6A5kENQIEA1ly75ZchcOVZZdcuALXCX8rzLDYUrEqd2aukRcbw2/f133YbO
	5uerbKeUa8hDAc0b8z2wNzWHaVCsh/53GlzFEUfjzIA3izIMpoFRKQ0p5FhBtoa/6j83
	Pu+uEJ0/s3jMQA9sPlWChRgnQa4tDjJYXPrbkfBXUaAwNZFn4eRpGD/Eo7mtOSY9HvZB
	9wVuo64EedoWesDALZiDH8tV0SJc1SlY3QC+lja/irQUKyS18G16DQcKm8RPlIhx7Ovb
	+3GC7v2WEBxEzz4FP1E6+TT6+j6/K4TwacxsLAnDo/RR/1RbF3PuQZi5r7Mo3kbelDDz
	32tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7HsN2Axy6iwwlgTpqIn74F34SVij3FyzDtboW01dNjw=;
	b=X4Mhvfda9KSCshMTXLBkkWu268dpcxfAb614GiXSditbd1RQSWI2OcSbnKxFLl8DOP
	1oQf1O5nbsMut5GAIUCd2jBym3j+PtpadSqQY6uieF7lEvxQzpQMVQOfEPZ1G9LqW1Tk
	GxnBsmKOOjJXmudFrHbpSjcnmvnaQEpvx300JIWQYoCnnDqs3YCsi5/2dqN2PCeYevEe
	e53xr4J1jcRYxs4wPkjljU9Z+GdXYTUfLBAQeaGrfw2kkZ/FPP7PnwolMYntVk3VuQcM
	iRWm063x0hH1+a6U1YPD9fNg+gxLTiYoICsQmpP98JtqQs6XxAED8Y+VAEZik3n9sLA2
	BFRg==
X-Gm-Message-State: AJcUukcNHdzVmZzllRQTDCS5gAZlUqlsYxZVF4wvB7dRzN2whlSC45ma
	aDW9Vk2kVn8E1mKE5C+93BOtdlSxo3qKMsA4ypc=
X-Google-Smtp-Source: ALg8bN6Z2+P2MvSwNYg8aAtZOHlSohx7nlKS1QGs6qFe7JfE2Lg8LPhIf18CRB3W5iTasaLpEJDrBz4nTu/yOKRkMKo=
X-Received: by 2002:a0c:d0d7:: with SMTP id b23mr7973446qvh.67.1547087891438; 
	Wed, 09 Jan 2019 18:38:11 -0800 (PST)
MIME-Version: 1.0
References: <CAAsE_ucsT-Utzm+MCsHPgZ2XCtTacuTfCk8Qjv+cRxjpjPLRpg@mail.gmail.com>
	<CAAsE_ucn+t2LSPQbpHTgsXTF-HX_FEy0mBOahnLRg69WkwnZ=w@mail.gmail.com>
	<CANNYZj-4wF2z+jNG=ipytKbFWV=devfM34H_4_i-kEkDQ-SDMg@mail.gmail.com>
In-Reply-To: <CANNYZj-4wF2z+jNG=ipytKbFWV=devfM34H_4_i-kEkDQ-SDMg@mail.gmail.com>
From: Woody Wu <narkewoody@gmail.com>
Date: Thu, 10 Jan 2019 10:37:59 +0800
Message-ID: <CAAsE_ufbGpSNtCg7h3KecJ_kXd1gzrtrthTUTT_hP1q4PLZt-A@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Building core-image-minimal failed: 'FetchData' object has no attribute 'fullshallow'
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
X-List-Received-Date: Thu, 10 Jan 2019 02:38:14 -0000
Content-Type: multipart/alternative; boundary="00000000000034a1a4057f1178e1"

--00000000000034a1a4057f1178e1
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

I updated to the tip of thun and core-image-minimal still failed, but with
different error:

Build Configuration:
BB_VERSION           = "1.40.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "i586-poky-linux"
MACHINE              = "qemux86"
DISTRO               = "poky"
DISTRO_VERSION       = "2.6.1"
TUNE_FEATURES        = "m32 i586"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "my-thud:1cab405d88149fd63322a867c6adb4a80ba68db3"

Initialising tasks: 100% |#######################################| Time:
0:00:00
Sstate summary: Wanted 737 Found 0 Missed 737 Current 1 (0% match, 0%
complete)
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Unpack
failure for URL: 'git://git.yoctoproject.org/pseudo'. No up to date source
found: clone directory not available or not up to date:
/home/woody/poky/build/downloads/git2/git.yoctoproject.org.pseudo; shallow
clone not enabled
ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function
failed: base_do_unpack
ERROR: Logfile of failure stored in:
/home/woody/poky/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.7954
ERROR: Task
(virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_unpack)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 98 tasks of which 86 didn't need to be rerun
and 1 failed.

Summary: 1 task failed:

virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:
do_unpack
====

It looks like it cannot clone git://git.yoctoproject.org/pseudo, right?
But I verified clone of the repository separately with git command line, it
has no problem.

Please help.  Many Thanks!
woody


On Wed, Jan 9, 2019 at 10:57 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> Please update to the latest commit on the thud branch as instructed.
>
> Alex
>
>
> On Wed, 9 Jan 2019 at 15:09, Woody Wu <narkewoody@gmail.com> wrote:
> >
> > Please some help me.  Just cannot believe, with a fresh clone it cannot
> do a simple build.  I think must be something lost in my system but don't
> know what.  My system is ubuntu 18.10.
> >
> > Thanks in advance.
> >
> > On Wed, Jan 9, 2019 at 11:36 AM Woody Wu <narkewoody@gmail.com> wrote:
> >>
> >> Hello,
> >>
> >> I am so new to the project and was trying to do my first building just
> for learn.  Can some please have a look at my errors and point me a
> direction to check? Thanks a lot!
> >>
> >> ===
> >> WARNING: Host distribution "ubuntu-18.10" has not been validated with
> this version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> >> Parsing recipes: 100% |##########################################|
> Time: 0:00:14
> >> Parsing of 790 .bb files complete (0 cached, 790 parsed). 1263 targets,
> 42 skipped, 0 masked, 0 errors.
> >> NOTE: Resolving any missing task queue dependencies
> >>
> >> Build Configuration:
> >> BB_VERSION           = "1.40.0"
> >> BUILD_SYS            = "x86_64-linux"
> >> NATIVELSBSTRING      = "ubuntu-18.10"
> >> TARGET_SYS           = "i586-poky-linux"
> >> MACHINE              = "qemux86"
> >> DISTRO               = "poky"
> >> DISTRO_VERSION       = "2.6"
> >> TUNE_FEATURES        = "m32 i586"
> >> TARGET_FPU           = ""
> >> meta
> >> meta-poky
> >> meta-yocto-bsp       =
> "my-thud:84eecb017ef92ef36b4df730908828e54aeff85c"
> >>
> >> NOTE: Fetching uninative binary shim from
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
> >> WARNING: Checksum mismatch for local file
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2
> >> Cleaning and trying again.
> >> WARNING: Renaming
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2
> to
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2_bad-checksum_4b6fb2106c2f18b8f9c8ac67e1cf9e57
> >> WARNING: Checksum failure encountered with premirror download of
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
> - will attempt other sources.
> >> Initialising tasks: 100% |#######################################|
> Time: 0:00:00
> >> Sstate summary: Wanted 738 Found 0 Missed 738 Current 0 (0% match, 0%
> complete)
> >> NOTE: Executing SetScene Tasks
> >> NOTE: Executing RunQueue Tasks
> >> WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch: Failed
> to fetch URL git://git.yoctoproject.org/pseudo, attempting MIRRORS if
> available
> >> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Error
> executing a python function in exec_python_func() autogenerated:
> >>
> >> The stack trace of python calls that resulted in this exception/failure
> was:
> >> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
> >>      0001:
> >>  *** 0002:base_do_unpack(d)
> >>      0003:
> >> File: '/home/woody/poky/meta/classes/base.bbclass', lineno: 164,
> function: base_do_unpack
> >>      0160:        return
> >>      0161:
> >>      0162:    try:
> >>      0163:        fetcher = bb.fetch2.Fetch(src_uri, d)
> >>  *** 0164:        fetcher.unpack(d.getVar('WORKDIR'))
> >>      0165:    except bb.fetch2.BBFetchException as e:
> >>      0166:        bb.fatal(str(e))
> >>      0167:}
> >>      0168:
> >> File: '/home/woody/poky/bitbake/lib/bb/fetch2/__init__.py', lineno:
> 1773, function: unpack
> >>      1769:
> >>      1770:            if ud.lockfile:
> >>      1771:                lf = bb.utils.lockfile(ud.lockfile)
> >>      1772:
> >>  *** 1773:            ud.method.unpack(ud, root, self.d)
> >>      1774:
> >>      1775:            if ud.lockfile:
> >>      1776:                bb.utils.unlockfile(lf)
> >>      1777:
> >> File: '/home/woody/poky/bitbake/lib/bb/fetch2/git.py', lineno: 496,
> function: unpack
> >>      0492:                bb.utils.mkdirhier(destdir)
> >>      0493:                runfetchcmd("tar -xzf %s" % ud.fullshallow,
> d, workdir=destdir)
> >>      0494:                source_found = True
> >>      0495:            else:
> >>  *** 0496:                source_error.append("shallow clone not
> enabled or not available: " + ud.fullshallow)
> >>      0497:
> >>      0498:        if not source_found:
> >>      0499:            raise bb.fetch2.UnpackError("No up to date source
> found: " + "; ".join(source_error), ud.url)
> >>      0500:
> >> Exception: AttributeError: 'FetchData' object has no attribute
> 'fullshallow'
> >>
> >> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function
> failed: base_do_unpack
> >> ERROR: Logfile of failure stored in:
> /home/woody/poky/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.31900
> >> ERROR: Task
> (virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_unpack)
> failed with exit code '1'
> >> NOTE: Tasks Summary: Attempted 308 tasks of which 0 didn't need to be
> rerun and 1 failed.
> >> ===
> >>
> >>
> >> --
> >> Life is the only flaw in an otherwise perfect nonexistence
> >>     -- Schopenhauer
> >>
> >> woody
> >> public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
> >>
> >
> >
> > --
> > Life is the only flaw in an otherwise perfect nonexistence
> >     -- Schopenhauer
> >
> > woody
> > public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>


-- 
Life is the only flaw in an otherwise perfect nonexistence
    -- Schopenhauer

woody
public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)

--00000000000034a1a4057f1178e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:large">Hi Alexander,</div><div class=3D"gmail_default" style=3D"font=
-size:large"><br></div><div class=3D"gmail_default" style=3D"font-size:larg=
e">I updated to the tip of thun and core-image-minimal still failed, but wi=
th different error:</div><div class=3D"gmail_default" style=3D"font-size:la=
rge"><br></div><div class=3D"gmail_default"><div class=3D"gmail_default"><f=
ont size=3D"4">Build Configuration:</font></div><div class=3D"gmail_default=
"><font size=3D"4">BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &=
quot;1.40.0&quot;</font></div><div class=3D"gmail_default"><font size=3D"4"=
>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&=
quot;</font></div><div class=3D"gmail_default"><font size=3D"4">NATIVELSBST=
RING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;</font></div><div class=
=3D"gmail_default"><font size=3D"4">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;i586-poky-linux&quot;</font></div><div class=3D"gmai=
l_default"><font size=3D"4">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;qemux86&quot;</font></div><div class=3D"gmail_default"=
><font size=3D"4">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;poky&quot;</font></div><div class=3D"gmail_default"><font s=
ize=3D"4">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.6.1&quot;</f=
ont></div><div class=3D"gmail_default"><font size=3D"4">TUNE_FEATURES=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;</font></div><div class=3D"gm=
ail_default"><font size=3D"4">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;&quot;</font></div><div class=3D"gmail_default"><font size=
=3D"4">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
font></div><div class=3D"gmail_default"><font size=3D"4">meta-poky=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div class=3D"gmail_de=
fault"><font size=3D"4">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
my-thud:1cab405d88149fd63322a867c6adb4a80ba68db3&quot;</font></div><div cla=
ss=3D"gmail_default"><font size=3D"4"><br></font></div><div class=3D"gmail_=
default"><font size=3D"4">Initialising tasks: 100% |#######################=
################| Time: 0:00:00</font></div><div class=3D"gmail_default"><f=
ont size=3D"4">Sstate summary: Wanted 737 Found 0 Missed 737 Current 1 (0% =
match, 0% complete)</font></div><div class=3D"gmail_default"><font size=3D"=
4">NOTE: Executing SetScene Tasks</font></div><div class=3D"gmail_default">=
<font size=3D"4">NOTE: Executing RunQueue Tasks</font></div><div class=3D"g=
mail_default"><font size=3D"4">ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b3=
44e5-r0 do_unpack: Unpack failure for URL: &#39;git://<a href=3D"http://git=
.yoctoproject.org/pseudo">git.yoctoproject.org/pseudo</a>&#39;. No up to da=
te source found: clone directory not available or not up to date: /home/woo=
dy/poky/build/downloads/git2/git.yoctoproject.org.pseudo; shallow clone not=
 enabled</font></div><div class=3D"gmail_default"><font size=3D"4">ERROR: p=
seudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function failed: bas=
e_do_unpack</font></div><div class=3D"gmail_default"><font size=3D"4">ERROR=
: Logfile of failure stored in: /home/woody/poky/build/tmp/work/x86_64-linu=
x/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.7954</fon=
t></div><div class=3D"gmail_default"><font size=3D"4">ERROR: Task (virtual:=
native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_unpac=
k) failed with exit code &#39;1&#39;</font></div><div class=3D"gmail_defaul=
t"><font size=3D"4">NOTE: Tasks Summary: Attempted 98 tasks of which 86 did=
n&#39;t need to be rerun and 1 failed.</font></div><div class=3D"gmail_defa=
ult"><font size=3D"4"><br></font></div><div class=3D"gmail_default"><font s=
ize=3D"4">Summary: 1 task failed:</font></div><div class=3D"gmail_default">=
<font size=3D"4">=C2=A0 virtual:native:/home/woody/poky/meta/recipes-devtoo=
ls/pseudo/pseudo_git.bb:do_unpack</font></div><div style=3D"font-size:large=
">=3D=3D=3D=3D</div><div style=3D"font-size:large"><br></div><div style=3D"=
font-size:large">It looks like it cannot clone git://<a href=3D"http://git.=
yoctoproject.org/pseudo">git.yoctoproject.org/pseudo</a>, right?=C2=A0 But =
I verified clone of the repository separately with git command line, it has=
 no problem.</div><div style=3D"font-size:large"><br></div><div style=3D"fo=
nt-size:large">Please help.=C2=A0 Many Thanks!</div><div style=3D"font-size=
:large">woody</div><div style=3D"font-size:large"><br></div></div></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Jan 9, 2019 at 1=
0:57 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">ale=
x.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Please update to the latest commit on the thud branch as=
 instructed.<br>
<br>
Alex<br>
<br>
<br>
On Wed, 9 Jan 2019 at 15:09, Woody Wu &lt;<a href=3D"mailto:narkewoody@gmai=
l.com" target=3D"_blank">narkewoody@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Please some help me.=C2=A0 Just cannot believe, with a fresh clone it =
cannot do a simple build.=C2=A0 I think must be something lost in my system=
 but don&#39;t know what.=C2=A0 My system is ubuntu 18.10.<br>
&gt;<br>
&gt; Thanks in advance.<br>
&gt;<br>
&gt; On Wed, Jan 9, 2019 at 11:36 AM Woody Wu &lt;<a href=3D"mailto:narkewo=
ody@gmail.com" target=3D"_blank">narkewoody@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; I am so new to the project and was trying to do my first building =
just for learn.=C2=A0 Can some please have a look at my errors and point me=
 a direction to check? Thanks a lot!<br>
&gt;&gt;<br>
&gt;&gt; =3D=3D=3D<br>
&gt;&gt; WARNING: Host distribution &quot;ubuntu-18.10&quot; has not been v=
alidated with this version of the build system; you may possibly experience=
 unexpected failures. It is recommended that you use a tested distribution.=
<br>
&gt;&gt; Parsing recipes: 100% |##########################################|=
 Time: 0:00:14<br>
&gt;&gt; Parsing of 790 .bb files complete (0 cached, 790 parsed). 1263 tar=
gets, 42 skipped, 0 masked, 0 errors.<br>
&gt;&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt;<br>
&gt;&gt; Build Configuration:<br>
&gt;&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.40.=
0&quot;<br>
&gt;&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_6=
4-linux&quot;<br>
&gt;&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;ubuntu-18.10&quot;<b=
r>
&gt;&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-=
poky-linux&quot;<br>
&gt;&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
qemux86&quot;<br>
&gt;&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &=
quot;poky&quot;<br>
&gt;&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.6&quot;<br>
&gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;<=
br>
&gt;&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot=
;<br>
&gt;&gt; meta<br>
&gt;&gt; meta-poky<br>
&gt;&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;my-thud:84eecb0=
17ef92ef36b4df730908828e54aeff85c&quot;<br>
&gt;&gt;<br>
&gt;&gt; NOTE: Fetching uninative binary shim from <a href=3D"http://downlo=
ads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;s=
ha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684=
" rel=3D"noreferrer" target=3D"_blank">http://downloads.yoctoproject.org/re=
leases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3=
c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684</a><br>
&gt;&gt; WARNING: Checksum mismatch for local file /home/woody/poky/build/d=
ownloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622=
fc0a8684/x86_64-nativesdk-libc.tar.bz2<br>
&gt;&gt; Cleaning and trying again.<br>
&gt;&gt; WARNING: Renaming /home/woody/poky/build/downloads/uninative/c6954=
563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesd=
k-libc.tar.bz2 to /home/woody/poky/build/downloads/uninative/c6954563dad3c9=
5608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.ta=
r.bz2_bad-checksum_4b6fb2106c2f18b8f9c8ac67e1cf9e57<br>
&gt;&gt; WARNING: Checksum failure encountered with premirror download of <=
a href=3D"http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-n=
ativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd=
924ebf5fdccb622fc0a8684" rel=3D"noreferrer" target=3D"_blank">http://downlo=
ads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;s=
ha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684=
</a> - will attempt other sources.<br>
&gt;&gt; Initialising tasks: 100% |#######################################|=
 Time: 0:00:00<br>
&gt;&gt; Sstate summary: Wanted 738 Found 0 Missed 738 Current 0 (0% match,=
 0% complete)<br>
&gt;&gt; NOTE: Executing SetScene Tasks<br>
&gt;&gt; NOTE: Executing RunQueue Tasks<br>
&gt;&gt; WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch: Fa=
iled to fetch URL git://<a href=3D"http://git.yoctoproject.org/pseudo" rel=
=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/pseudo</a>, attempti=
ng MIRRORS if available<br>
&gt;&gt; ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Err=
or executing a python function in exec_python_func() autogenerated:<br>
&gt;&gt;<br>
&gt;&gt; The stack trace of python calls that resulted in this exception/fa=
ilure was:<br>
&gt;&gt; File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, funct=
ion: &lt;module&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0001:<br>
&gt;&gt;=C2=A0 *** 0002:base_do_unpack(d)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0003:<br>
&gt;&gt; File: &#39;/home/woody/poky/meta/classes/base.bbclass&#39;, lineno=
: 164, function: base_do_unpack<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0160:=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0161:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0162:=C2=A0 =C2=A0 try:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0163:=C2=A0 =C2=A0 =C2=A0 =C2=A0 fetcher =3D b=
b.fetch2.Fetch(src_uri, d)<br>
&gt;&gt;=C2=A0 *** 0164:=C2=A0 =C2=A0 =C2=A0 =C2=A0 fetcher.unpack(d.getVar=
(&#39;WORKDIR&#39;))<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0165:=C2=A0 =C2=A0 except bb.fetch2.BBFetchExc=
eption as e:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0166:=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.fatal(str(=
e))<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0167:}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0168:<br>
&gt;&gt; File: &#39;/home/woody/poky/bitbake/lib/bb/fetch2/__init__.py&#39;=
, lineno: 1773, function: unpack<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 1769:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 1770:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if ud.lockfile:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 1771:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 lf =3D bb.utils.lockfile(ud.lockfile)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 1772:<br>
&gt;&gt;=C2=A0 *** 1773:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ud.method=
.unpack(ud, root, self.d)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 1774:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 1775:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if ud.lockfile:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 1776:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 bb.utils.unlockfile(lf)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 1777:<br>
&gt;&gt; File: &#39;/home/woody/poky/bitbake/lib/bb/fetch2/git.py&#39;, lin=
eno: 496, function: unpack<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0492:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 bb.utils.mkdirhier(destdir)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0493:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 runfetchcmd(&quot;tar -xzf %s&quot; % ud.fullshallow, d, wor=
kdir=3Ddestdir)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0494:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 source_found =3D True<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0495:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 else:<br>
&gt;&gt;=C2=A0 *** 0496:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 source_error.append(&quot;shallow clone not enabled or not available=
: &quot; + ud.fullshallow)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0497:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0498:=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not source=
_found:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0499:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 raise bb.fetch2.UnpackError(&quot;No up to date source found: &quot; + &qu=
ot;; &quot;.join(source_error), ud.url)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 0500:<br>
&gt;&gt; Exception: AttributeError: &#39;FetchData&#39; object has no attri=
bute &#39;fullshallow&#39;<br>
&gt;&gt;<br>
&gt;&gt; ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Fun=
ction failed: base_do_unpack<br>
&gt;&gt; ERROR: Logfile of failure stored in: /home/woody/poky/build/tmp/wo=
rk/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_un=
pack.31900<br>
&gt;&gt; ERROR: Task (virtual:native:/home/woody/poky/meta/recipes-devtools=
/pseudo/pseudo_git.bb:do_unpack) failed with exit code &#39;1&#39;<br>
&gt;&gt; NOTE: Tasks Summary: Attempted 308 tasks of which 0 didn&#39;t nee=
d to be rerun and 1 failed.<br>
&gt;&gt; =3D=3D=3D<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Life is the only flaw in an otherwise perfect nonexistence<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0-- Schopenhauer<br>
&gt;&gt;<br>
&gt;&gt; woody<br>
&gt;&gt; public key at <a href=3D"http://subkeys.pgp.net:11371" rel=3D"nore=
ferrer" target=3D"_blank">http://subkeys.pgp.net:11371</a> (<a href=3D"mail=
to:narkewoody@gmail.com" target=3D"_blank">narkewoody@gmail.com</a>)<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Life is the only flaw in an otherwise perfect nonexistence<br>
&gt;=C2=A0 =C2=A0 =C2=A0-- Schopenhauer<br>
&gt;<br>
&gt; woody<br>
&gt; public key at <a href=3D"http://subkeys.pgp.net:11371" rel=3D"noreferr=
er" target=3D"_blank">http://subkeys.pgp.net:11371</a> (<a href=3D"mailto:n=
arkewoody@gmail.com" target=3D"_blank">narkewoody@gmail.com</a>)<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br=
>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Life is the only flaw in an otherwise perfect no=
nexistence<br>=C2=A0 =C2=A0 -- Schopenhauer<br><br>woody<br>public key at <=
a href=3D"http://subkeys.pgp.net:11371" target=3D"_blank">http://subkeys.pg=
p.net:11371</a> (<a href=3D"mailto:narkewoody@gmail.com" target=3D"_blank">=
narkewoody@gmail.com</a>)<br><br></div>

--00000000000034a1a4057f1178e1--
