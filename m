Return-Path: <narkewoody@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8ABAE00B77; Thu, 10 Jan 2019 03:53:08 -0800 (PST)
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
	*      [209.85.160.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (narkewoody[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C3F9E008C6
	for <poky@yoctoproject.org>; Thu, 10 Jan 2019 03:53:06 -0800 (PST)
Received: by mail-qt1-f178.google.com with SMTP id t33so12165647qtt.4
	for <poky@yoctoproject.org>; Thu, 10 Jan 2019 03:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ABBcrJbl76UMWFSAhkaRQ/D0f6VCCOP7l7XtdRdsms0=;
	b=rpb7VsoS8BVOTtaNXeZwKEqJpJkZKWIalJeUg2eNfp905y7AWEXKQFfRhzEjYmyuNh
	auzfJqgrOIFxhMpyI+QjaVsbrYVmCwHvP5MlrDsrV1HmDlBXL2A+aPO13Jh4mKGnVpNM
	Uuq3I4Rxlpz0UIQmtp6/XykRA0S53/+m0ajAJjQCo9SWdeLxwjIgzPscipa1nystXf9d
	T8m62yH/9GQnLksi6HC+ePFUP4sQzIOrZGI7vzEcmqhe1GzwdzZOyy8WQVu6q70i4GkE
	oiOrO2QiBD3MBGiWGCshF6lsbJbUsXzdcUJ9wodER2nfkKPdWV65oR1pgD6F/it0tv0X
	BYHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ABBcrJbl76UMWFSAhkaRQ/D0f6VCCOP7l7XtdRdsms0=;
	b=Z2hmgLXyl91QqNdEufNiyAyju5bI8qU+wnhnj1YbXVs/Bulr+tWyUEdK4QTpJYuT3z
	z1RCDxANfXZyj9LhN0MMRL0tagHMvaDrgcK5jHDmMbTe1vlaHkbc958bJGO+JnzZzsI8
	LIlxwRmjJb9iUXHjvBkVwdUOoUKmNgn2yKlWM8v744DklkEfewUE0TKA9kgzQWIHRyz8
	4iOiWk4OMql40OCgEF2Mx6Bpf1Oftrdz/L7z3QiqgHYiSUYuCNSR0jK4zlzHY+io9VNF
	yQQ1zlYiQ+HUOnltfP11qO7iQLPY1MHqUI3Kn8rNxr0EJXuX1cAkYcGzSh0IsehJieEj
	/Hqg==
X-Gm-Message-State: AJcUukeXLAH8ko3GqIqkFbpVM3IpkywdX7xuqP1bhv4NUcdxTkNvej21
	FcbFEgxmfMrKZXNqEiWjAB3BmGwMN4iehQKUpP51UQ==
X-Google-Smtp-Source: ALg8bN4gUYDC8wyEHV7xhcyry4WVGWTamMsAs5Pnp+00CURWqTT+RrQFTYnx24ElbDTZYC6o2vob0rzb97HSj2KK/gk=
X-Received: by 2002:a37:b306:: with SMTP id c6mr8659865qkf.265.1547121186357; 
	Thu, 10 Jan 2019 03:53:06 -0800 (PST)
MIME-Version: 1.0
References: <CAAsE_ucsT-Utzm+MCsHPgZ2XCtTacuTfCk8Qjv+cRxjpjPLRpg@mail.gmail.com>
	<CAAsE_ucn+t2LSPQbpHTgsXTF-HX_FEy0mBOahnLRg69WkwnZ=w@mail.gmail.com>
	<CANNYZj-4wF2z+jNG=ipytKbFWV=devfM34H_4_i-kEkDQ-SDMg@mail.gmail.com>
	<CAAsE_ufbGpSNtCg7h3KecJ_kXd1gzrtrthTUTT_hP1q4PLZt-A@mail.gmail.com>
	<CANNYZj9QRe_JDvepTMBLKj9iwHZi8-bj65ChN=9Vx1Y3uSA3og@mail.gmail.com>
In-Reply-To: <CANNYZj9QRe_JDvepTMBLKj9iwHZi8-bj65ChN=9Vx1Y3uSA3og@mail.gmail.com>
From: Woody Wu <narkewoody@gmail.com>
Date: Thu, 10 Jan 2019 19:52:17 +0800
Message-ID: <CAAsE_ucR7Ot8y9=LYMiOv2r5B-sJm2P7dZB-WTXqj7qw635vZQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 10 Jan 2019 11:53:08 -0000
Content-Type: multipart/alternative; boundary="000000000000bcc74b057f1938e1"

--000000000000bcc74b057f1938e1
Content-Type: text/plain; charset="UTF-8"

Done.  Still the same error :(

On Thu, Jan 10, 2019 at 7:12 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> I don't know to be honest. Can you remove your build directory and start
> over?
>
> Alex
>
> On Thu, 10 Jan 2019 at 03:38, Woody Wu <narkewoody@gmail.com> wrote:
> >
> > Hi Alexander,
> >
> > I updated to the tip of thun and core-image-minimal still failed, but
> with different error:
> >
> > Build Configuration:
> > BB_VERSION           = "1.40.0"
> > BUILD_SYS            = "x86_64-linux"
> > NATIVELSBSTRING      = "universal"
> > TARGET_SYS           = "i586-poky-linux"
> > MACHINE              = "qemux86"
> > DISTRO               = "poky"
> > DISTRO_VERSION       = "2.6.1"
> > TUNE_FEATURES        = "m32 i586"
> > TARGET_FPU           = ""
> > meta
> > meta-poky
> > meta-yocto-bsp       = "my-thud:1cab405d88149fd63322a867c6adb4a80ba68db3"
> >
> > Initialising tasks: 100% |#######################################| Time:
> 0:00:00
> > Sstate summary: Wanted 737 Found 0 Missed 737 Current 1 (0% match, 0%
> complete)
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Unpack
> failure for URL: 'git://git.yoctoproject.org/pseudo'. No up to date
> source found: clone directory not available or not up to date:
> /home/woody/poky/build/downloads/git2/git.yoctoproject.org.pseudo; shallow
> clone not enabled
> > ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function
> failed: base_do_unpack
> > ERROR: Logfile of failure stored in:
> /home/woody/poky/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.7954
> > ERROR: Task
> (virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_unpack)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 98 tasks of which 86 didn't need to be
> rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
>  virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:
> do_unpack
> > ====
> >
> > It looks like it cannot clone git://git.yoctoproject.org/pseudo,
> right?  But I verified clone of the repository separately with git command
> line, it has no problem.
> >
> > Please help.  Many Thanks!
> > woody
> >
> >
> > On Wed, Jan 9, 2019 at 10:57 PM Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >>
> >> Please update to the latest commit on the thud branch as instructed.
> >>
> >> Alex
> >>
> >>
> >> On Wed, 9 Jan 2019 at 15:09, Woody Wu <narkewoody@gmail.com> wrote:
> >> >
> >> > Please some help me.  Just cannot believe, with a fresh clone it
> cannot do a simple build.  I think must be something lost in my system but
> don't know what.  My system is ubuntu 18.10.
> >> >
> >> > Thanks in advance.
> >> >
> >> > On Wed, Jan 9, 2019 at 11:36 AM Woody Wu <narkewoody@gmail.com>
> wrote:
> >> >>
> >> >> Hello,
> >> >>
> >> >> I am so new to the project and was trying to do my first building
> just for learn.  Can some please have a look at my errors and point me a
> direction to check? Thanks a lot!
> >> >>
> >> >> ===
> >> >> WARNING: Host distribution "ubuntu-18.10" has not been validated
> with this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested distribution.
> >> >> Parsing recipes: 100% |##########################################|
> Time: 0:00:14
> >> >> Parsing of 790 .bb files complete (0 cached, 790 parsed). 1263
> targets, 42 skipped, 0 masked, 0 errors.
> >> >> NOTE: Resolving any missing task queue dependencies
> >> >>
> >> >> Build Configuration:
> >> >> BB_VERSION           = "1.40.0"
> >> >> BUILD_SYS            = "x86_64-linux"
> >> >> NATIVELSBSTRING      = "ubuntu-18.10"
> >> >> TARGET_SYS           = "i586-poky-linux"
> >> >> MACHINE              = "qemux86"
> >> >> DISTRO               = "poky"
> >> >> DISTRO_VERSION       = "2.6"
> >> >> TUNE_FEATURES        = "m32 i586"
> >> >> TARGET_FPU           = ""
> >> >> meta
> >> >> meta-poky
> >> >> meta-yocto-bsp       =
> "my-thud:84eecb017ef92ef36b4df730908828e54aeff85c"
> >> >>
> >> >> NOTE: Fetching uninative binary shim from
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
> >> >> WARNING: Checksum mismatch for local file
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2
> >> >> Cleaning and trying again.
> >> >> WARNING: Renaming
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2
> to
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2_bad-checksum_4b6fb2106c2f18b8f9c8ac67e1cf9e57
> >> >> WARNING: Checksum failure encountered with premirror download of
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
> - will attempt other sources.
> >> >> Initialising tasks: 100% |#######################################|
> Time: 0:00:00
> >> >> Sstate summary: Wanted 738 Found 0 Missed 738 Current 0 (0% match,
> 0% complete)
> >> >> NOTE: Executing SetScene Tasks
> >> >> NOTE: Executing RunQueue Tasks
> >> >> WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch:
> Failed to fetch URL git://git.yoctoproject.org/pseudo, attempting MIRRORS
> if available
> >> >> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Error
> executing a python function in exec_python_func() autogenerated:
> >> >>
> >> >> The stack trace of python calls that resulted in this
> exception/failure was:
> >> >> File: 'exec_python_func() autogenerated', lineno: 2, function:
> <module>
> >> >>      0001:
> >> >>  *** 0002:base_do_unpack(d)
> >> >>      0003:
> >> >> File: '/home/woody/poky/meta/classes/base.bbclass', lineno: 164,
> function: base_do_unpack
> >> >>      0160:        return
> >> >>      0161:
> >> >>      0162:    try:
> >> >>      0163:        fetcher = bb.fetch2.Fetch(src_uri, d)
> >> >>  *** 0164:        fetcher.unpack(d.getVar('WORKDIR'))
> >> >>      0165:    except bb.fetch2.BBFetchException as e:
> >> >>      0166:        bb.fatal(str(e))
> >> >>      0167:}
> >> >>      0168:
> >> >> File: '/home/woody/poky/bitbake/lib/bb/fetch2/__init__.py', lineno:
> 1773, function: unpack
> >> >>      1769:
> >> >>      1770:            if ud.lockfile:
> >> >>      1771:                lf = bb.utils.lockfile(ud.lockfile)
> >> >>      1772:
> >> >>  *** 1773:            ud.method.unpack(ud, root, self.d)
> >> >>      1774:
> >> >>      1775:            if ud.lockfile:
> >> >>      1776:                bb.utils.unlockfile(lf)
> >> >>      1777:
> >> >> File: '/home/woody/poky/bitbake/lib/bb/fetch2/git.py', lineno: 496,
> function: unpack
> >> >>      0492:                bb.utils.mkdirhier(destdir)
> >> >>      0493:                runfetchcmd("tar -xzf %s" %
> ud.fullshallow, d, workdir=destdir)
> >> >>      0494:                source_found = True
> >> >>      0495:            else:
> >> >>  *** 0496:                source_error.append("shallow clone not
> enabled or not available: " + ud.fullshallow)
> >> >>      0497:
> >> >>      0498:        if not source_found:
> >> >>      0499:            raise bb.fetch2.UnpackError("No up to date
> source found: " + "; ".join(source_error), ud.url)
> >> >>      0500:
> >> >> Exception: AttributeError: 'FetchData' object has no attribute
> 'fullshallow'
> >> >>
> >> >> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack:
> Function failed: base_do_unpack
> >> >> ERROR: Logfile of failure stored in:
> /home/woody/poky/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.31900
> >> >> ERROR: Task
> (virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_unpack)
> failed with exit code '1'
> >> >> NOTE: Tasks Summary: Attempted 308 tasks of which 0 didn't need to
> be rerun and 1 failed.
> >> >> ===
> >> >>
> >> >>
> >> >> --
> >> >> Life is the only flaw in an otherwise perfect nonexistence
> >> >>     -- Schopenhauer
> >> >>
> >> >> woody
> >> >> public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
> >> >>
> >> >
> >> >
> >> > --
> >> > Life is the only flaw in an otherwise perfect nonexistence
> >> >     -- Schopenhauer
> >> >
> >> > woody
> >> > public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
> >> >
> >> > --
> >> > _______________________________________________
> >> > poky mailing list
> >> > poky@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/poky
> >
> >
> >
> > --
> > Life is the only flaw in an otherwise perfect nonexistence
> >     -- Schopenhauer
> >
> > woody
> > public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
> >
>


-- 
Life is the only flaw in an otherwise perfect nonexistence
    -- Schopenhauer

woody
public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)

--000000000000bcc74b057f1938e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:large">Don=
e.=C2=A0 Still the same error :(<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr">On Thu, Jan 10, 2019 at 7:12 PM Alexander Kanavin &lt;=
<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I don&#39;t=
 know to be honest. Can you remove your build directory and start over?<br>
<br>
Alex<br>
<br>
On Thu, 10 Jan 2019 at 03:38, Woody Wu &lt;<a href=3D"mailto:narkewoody@gma=
il.com" target=3D"_blank">narkewoody@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Alexander,<br>
&gt;<br>
&gt; I updated to the tip of thun and core-image-minimal still failed, but =
with different error:<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.40.0&qu=
ot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-li=
nux&quot;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-poky=
-linux&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemu=
x86&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;poky&quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.6.1&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;<br=
>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;my-thud:1cab405d881=
49fd63322a867c6adb4a80ba68db3&quot;<br>
&gt;<br>
&gt; Initialising tasks: 100% |#######################################| Tim=
e: 0:00:00<br>
&gt; Sstate summary: Wanted 737 Found 0 Missed 737 Current 1 (0% match, 0% =
complete)<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Unpack =
failure for URL: &#39;git://<a href=3D"http://git.yoctoproject.org/pseudo" =
rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/pseudo</a>&#39;. =
No up to date source found: clone directory not available or not up to date=
: /home/woody/poky/build/downloads/git2/git.yoctoproject.org.pseudo; shallo=
w clone not enabled<br>
&gt; ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Functio=
n failed: base_do_unpack<br>
&gt; ERROR: Logfile of failure stored in: /home/woody/poky/build/tmp/work/x=
86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack=
.7954<br>
&gt; ERROR: Task (virtual:native:/home/woody/poky/meta/recipes-devtools/pse=
udo/pseudo_git.bb:do_unpack) failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 98 tasks of which 86 didn&#39;t need to=
 be rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0virtual:native:/home/woody/poky/meta/recipes-devtools/pseu=
do/pseudo_git.bb:do_unpack<br>
&gt; =3D=3D=3D=3D<br>
&gt;<br>
&gt; It looks like it cannot clone git://<a href=3D"http://git.yoctoproject=
.org/pseudo" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/pseu=
do</a>, right?=C2=A0 But I verified clone of the repository separately with=
 git command line, it has no problem.<br>
&gt;<br>
&gt; Please help.=C2=A0 Many Thanks!<br>
&gt; woody<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jan 9, 2019 at 10:57 PM Alexander Kanavin &lt;<a href=3D"mailt=
o:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; =
wrote:<br>
&gt;&gt;<br>
&gt;&gt; Please update to the latest commit on the thud branch as instructe=
d.<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Wed, 9 Jan 2019 at 15:09, Woody Wu &lt;<a href=3D"mailto:narkew=
oody@gmail.com" target=3D"_blank">narkewoody@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Please some help me.=C2=A0 Just cannot believe, with a fresh =
clone it cannot do a simple build.=C2=A0 I think must be something lost in =
my system but don&#39;t know what.=C2=A0 My system is ubuntu 18.10.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks in advance.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Jan 9, 2019 at 11:36 AM Woody Wu &lt;<a href=3D"mailt=
o:narkewoody@gmail.com" target=3D"_blank">narkewoody@gmail.com</a>&gt; wrot=
e:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hello,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I am so new to the project and was trying to do my first =
building just for learn.=C2=A0 Can some please have a look at my errors and=
 point me a direction to check? Thanks a lot!<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; =3D=3D=3D<br>
&gt;&gt; &gt;&gt; WARNING: Host distribution &quot;ubuntu-18.10&quot; has n=
ot been validated with this version of the build system; you may possibly e=
xperience unexpected failures. It is recommended that you use a tested dist=
ribution.<br>
&gt;&gt; &gt;&gt; Parsing recipes: 100% |##################################=
########| Time: 0:00:14<br>
&gt;&gt; &gt;&gt; Parsing of 790 .bb files complete (0 cached, 790 parsed).=
 1263 targets, 42 skipped, 0 masked, 0 errors.<br>
&gt;&gt; &gt;&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Build Configuration:<br>
&gt;&gt; &gt;&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;1.40.0&quot;<br>
&gt;&gt; &gt;&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;x86_64-linux&quot;<br>
&gt;&gt; &gt;&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;ubuntu-18.1=
0&quot;<br>
&gt;&gt; &gt;&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;i586-poky-linux&quot;<br>
&gt;&gt; &gt;&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;qemux86&quot;<br>
&gt;&gt; &gt;&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;poky&quot;<br>
&gt;&gt; &gt;&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.6&qu=
ot;<br>
&gt;&gt; &gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m32 i5=
86&quot;<br>
&gt;&gt; &gt;&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;&quot;<br>
&gt;&gt; &gt;&gt; meta<br>
&gt;&gt; &gt;&gt; meta-poky<br>
&gt;&gt; &gt;&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;my-thu=
d:84eecb017ef92ef36b4df730908828e54aeff85c&quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; NOTE: Fetching uninative binary shim from <a href=3D"http=
://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.=
tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb62=
2fc0a8684" rel=3D"noreferrer" target=3D"_blank">http://downloads.yoctoproje=
ct.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc69=
54563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684</a><br>
&gt;&gt; &gt;&gt; WARNING: Checksum mismatch for local file /home/woody/pok=
y/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf=
5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2<br>
&gt;&gt; &gt;&gt; Cleaning and trying again.<br>
&gt;&gt; &gt;&gt; WARNING: Renaming /home/woody/poky/build/downloads/uninat=
ive/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64=
-nativesdk-libc.tar.bz2 to /home/woody/poky/build/downloads/uninative/c6954=
563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesd=
k-libc.tar.bz2_bad-checksum_4b6fb2106c2f18b8f9c8ac67e1cf9e57<br>
&gt;&gt; &gt;&gt; WARNING: Checksum failure encountered with premirror down=
load of <a href=3D"http://downloads.yoctoproject.org/releases/uninative/2.3=
/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc3280990=
36c832bbd924ebf5fdccb622fc0a8684" rel=3D"noreferrer" target=3D"_blank">http=
://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.=
tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb62=
2fc0a8684</a> - will attempt other sources.<br>
&gt;&gt; &gt;&gt; Initialising tasks: 100% |###############################=
########| Time: 0:00:00<br>
&gt;&gt; &gt;&gt; Sstate summary: Wanted 738 Found 0 Missed 738 Current 0 (=
0% match, 0% complete)<br>
&gt;&gt; &gt;&gt; NOTE: Executing SetScene Tasks<br>
&gt;&gt; &gt;&gt; NOTE: Executing RunQueue Tasks<br>
&gt;&gt; &gt;&gt; WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_=
fetch: Failed to fetch URL git://<a href=3D"http://git.yoctoproject.org/pse=
udo" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/pseudo</a>, =
attempting MIRRORS if available<br>
&gt;&gt; &gt;&gt; ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_un=
pack: Error executing a python function in exec_python_func() autogenerated=
:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; The stack trace of python calls that resulted in this exc=
eption/failure was:<br>
&gt;&gt; &gt;&gt; File: &#39;exec_python_func() autogenerated&#39;, lineno:=
 2, function: &lt;module&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0001:<br>
&gt;&gt; &gt;&gt;=C2=A0 *** 0002:base_do_unpack(d)<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0003:<br>
&gt;&gt; &gt;&gt; File: &#39;/home/woody/poky/meta/classes/base.bbclass&#39=
;, lineno: 164, function: base_do_unpack<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0160:=C2=A0 =C2=A0 =C2=A0 =C2=A0 retu=
rn<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0161:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0162:=C2=A0 =C2=A0 try:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0163:=C2=A0 =C2=A0 =C2=A0 =C2=A0 fetc=
her =3D bb.fetch2.Fetch(src_uri, d)<br>
&gt;&gt; &gt;&gt;=C2=A0 *** 0164:=C2=A0 =C2=A0 =C2=A0 =C2=A0 fetcher.unpack=
(d.getVar(&#39;WORKDIR&#39;))<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0165:=C2=A0 =C2=A0 except bb.fetch2.B=
BFetchException as e:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0166:=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.f=
atal(str(e))<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0167:}<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0168:<br>
&gt;&gt; &gt;&gt; File: &#39;/home/woody/poky/bitbake/lib/bb/fetch2/__init_=
_.py&#39;, lineno: 1773, function: unpack<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 1769:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 1770:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if ud.lockfile:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 1771:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 lf =3D bb.utils.lockfile(ud.lockfile)<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 1772:<br>
&gt;&gt; &gt;&gt;=C2=A0 *** 1773:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
ud.method.unpack(ud, root, self.d)<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 1774:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 1775:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if ud.lockfile:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 1776:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 bb.utils.unlockfile(lf)<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 1777:<br>
&gt;&gt; &gt;&gt; File: &#39;/home/woody/poky/bitbake/lib/bb/fetch2/git.py&=
#39;, lineno: 496, function: unpack<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0492:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 bb.utils.mkdirhier(destdir)<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0493:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 runfetchcmd(&quot;tar -xzf %s&quot; % ud.fullshall=
ow, d, workdir=3Ddestdir)<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0494:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 source_found =3D True<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0495:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 else:<br>
&gt;&gt; &gt;&gt;=C2=A0 *** 0496:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 source_error.append(&quot;shallow clone not enabled or not av=
ailable: &quot; + ud.fullshallow)<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0497:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0498:=C2=A0 =C2=A0 =C2=A0 =C2=A0 if n=
ot source_found:<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0499:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 raise bb.fetch2.UnpackError(&quot;No up to date source found: &q=
uot; + &quot;; &quot;.join(source_error), ud.url)<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 0500:<br>
&gt;&gt; &gt;&gt; Exception: AttributeError: &#39;FetchData&#39; object has=
 no attribute &#39;fullshallow&#39;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_un=
pack: Function failed: base_do_unpack<br>
&gt;&gt; &gt;&gt; ERROR: Logfile of failure stored in: /home/woody/poky/bui=
ld/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/=
log.do_unpack.31900<br>
&gt;&gt; &gt;&gt; ERROR: Task (virtual:native:/home/woody/poky/meta/recipes=
-devtools/pseudo/pseudo_git.bb:do_unpack) failed with exit code &#39;1&#39;=
<br>
&gt;&gt; &gt;&gt; NOTE: Tasks Summary: Attempted 308 tasks of which 0 didn&=
#39;t need to be rerun and 1 failed.<br>
&gt;&gt; &gt;&gt; =3D=3D=3D<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; Life is the only flaw in an otherwise perfect nonexistenc=
e<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0-- Schopenhauer<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; woody<br>
&gt;&gt; &gt;&gt; public key at <a href=3D"http://subkeys.pgp.net:11371" re=
l=3D"noreferrer" target=3D"_blank">http://subkeys.pgp.net:11371</a> (<a hre=
f=3D"mailto:narkewoody@gmail.com" target=3D"_blank">narkewoody@gmail.com</a=
>)<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Life is the only flaw in an otherwise perfect nonexistence<br=
>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-- Schopenhauer<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; woody<br>
&gt;&gt; &gt; public key at <a href=3D"http://subkeys.pgp.net:11371" rel=3D=
"noreferrer" target=3D"_blank">http://subkeys.pgp.net:11371</a> (<a href=3D=
"mailto:narkewoody@gmail.com" target=3D"_blank">narkewoody@gmail.com</a>)<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; poky mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">po=
ky@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/p=
oky</a><br>
&gt;<br>
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Life is the only flaw in an otherwise perfect no=
nexistence<br>=C2=A0 =C2=A0 -- Schopenhauer<br><br>woody<br>public key at <=
a href=3D"http://subkeys.pgp.net:11371" target=3D"_blank">http://subkeys.pg=
p.net:11371</a> (<a href=3D"mailto:narkewoody@gmail.com" target=3D"_blank">=
narkewoody@gmail.com</a>)<br><br></div>

--000000000000bcc74b057f1938e1--
