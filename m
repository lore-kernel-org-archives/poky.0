Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26670E00C96; Thu, 10 Jan 2019 03:12:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0CF6E00C8B
	for <poky@yoctoproject.org>; Thu, 10 Jan 2019 03:12:18 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id u16so9574189otk.8
	for <poky@yoctoproject.org>; Thu, 10 Jan 2019 03:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=voI+lVTLQPC48qpVMuLxTkh2HBs96VNKHfpOo3IbMrY=;
	b=XXoxM29mdx1Sik4+zNRCo9PLI+F6M4udDFxHgjneSCSH2s3mciSoy3uDn7SjwUygdZ
	5JMnJSufPltvALwos3oMeZZxJVh+NmlAXstK6U0bFeCk58jzviYyc9MMYlyGAgizBefZ
	rnV2h/6lmlT8lBL7im2LBfSHmnvt9aSLdBwgUGqJQgoGmIHfQthR4Fm81yS2Uosh56g1
	rSklfmY1qvg351aG/+7RC5RziA7Ki9lVL/Pn+IZer1zkQxRBbeXl5GUVH8BhqJFPGvKu
	YBphlF9PXppL0wr5gglRZr1923+a9rMEk/FgheJdaXc5ADP5Di1usG0Pn9CB6WLoeREO
	iwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=voI+lVTLQPC48qpVMuLxTkh2HBs96VNKHfpOo3IbMrY=;
	b=cVvMEl7yNcyn+om/JerFElbsGmyVFNpkWPqaqSJ/bhMtCvrB1Xrlf5AWBNrid988w3
	u4du3GIyqy4uE2wJuZv70G1jOZxZHBD9G0tYrjpErk0m31y4GQQ8/IYT3gcvfZ9CV9HG
	WYZpqHkYuO+8h/tSmWoZwW1WpYqgBX2NXWL5YeXWgsIzat4YeDuiZuPIE7jNe5wL/v1n
	aAahXHbe/scdJABOG6pojgohkSDuVY9fS3U2zZCG3uGFlrBqqm8BBNHswfdF2ht4wYHX
	sLP2i/hQboMO/9GgWJmvcKnLq+5EABeB2SGr0h07AbUsWzhjOeoc5yS8hviTaDxm3Rx+
	GeIw==
X-Gm-Message-State: AJcUukfJKszzavR0zLuslsj2vBnkbq+M9S1D8TGWHk4/Fpw7a05TEZ0Y
	3C+di1SVUHSvvmZyI9v7IkpRYFie+hde7VVjVIA=
X-Google-Smtp-Source: ALg8bN7YB7+9JruM5WLAPRB45+zj/L6dvAKSB38vi7olAanSf0/ARI4KbcOwZRqvo4N+OFHk+Hj20aeA9vX5y1PEZpw=
X-Received: by 2002:a9d:69d7:: with SMTP id v23mr6839435oto.96.1547118738056; 
	Thu, 10 Jan 2019 03:12:18 -0800 (PST)
MIME-Version: 1.0
References: <CAAsE_ucsT-Utzm+MCsHPgZ2XCtTacuTfCk8Qjv+cRxjpjPLRpg@mail.gmail.com>
	<CAAsE_ucn+t2LSPQbpHTgsXTF-HX_FEy0mBOahnLRg69WkwnZ=w@mail.gmail.com>
	<CANNYZj-4wF2z+jNG=ipytKbFWV=devfM34H_4_i-kEkDQ-SDMg@mail.gmail.com>
	<CAAsE_ufbGpSNtCg7h3KecJ_kXd1gzrtrthTUTT_hP1q4PLZt-A@mail.gmail.com>
In-Reply-To: <CAAsE_ufbGpSNtCg7h3KecJ_kXd1gzrtrthTUTT_hP1q4PLZt-A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 10 Jan 2019 12:12:06 +0100
Message-ID: <CANNYZj9QRe_JDvepTMBLKj9iwHZi8-bj65ChN=9Vx1Y3uSA3og@mail.gmail.com>
To: Woody Wu <narkewoody@gmail.com>
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
X-List-Received-Date: Thu, 10 Jan 2019 11:12:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't know to be honest. Can you remove your build directory and start ov=
er?

Alex

On Thu, 10 Jan 2019 at 03:38, Woody Wu <narkewoody@gmail.com> wrote:
>
> Hi Alexander,
>
> I updated to the tip of thun and core-image-minimal still failed, but wit=
h different error:
>
> Build Configuration:
> BB_VERSION           =3D "1.40.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "i586-poky-linux"
> MACHINE              =3D "qemux86"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "2.6.1"
> TUNE_FEATURES        =3D "m32 i586"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "my-thud:1cab405d88149fd63322a867c6adb4a80ba68db=
3"
>
> Initialising tasks: 100% |#######################################| Time: =
0:00:00
> Sstate summary: Wanted 737 Found 0 Missed 737 Current 1 (0% match, 0% com=
plete)
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Unpack fai=
lure for URL: 'git://git.yoctoproject.org/pseudo'. No up to date source fou=
nd: clone directory not available or not up to date: /home/woody/poky/build=
/downloads/git2/git.yoctoproject.org.pseudo; shallow clone not enabled
> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function f=
ailed: base_do_unpack
> ERROR: Logfile of failure stored in: /home/woody/poky/build/tmp/work/x86_=
64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.79=
54
> ERROR: Task (virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo=
/pseudo_git.bb:do_unpack) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 98 tasks of which 86 didn't need to be rer=
un and 1 failed.
>
> Summary: 1 task failed:
>   virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git=
.bb:do_unpack
> =3D=3D=3D=3D
>
> It looks like it cannot clone git://git.yoctoproject.org/pseudo, right?  =
But I verified clone of the repository separately with git command line, it=
 has no problem.
>
> Please help.  Many Thanks!
> woody
>
>
> On Wed, Jan 9, 2019 at 10:57 PM Alexander Kanavin <alex.kanavin@gmail.com=
> wrote:
>>
>> Please update to the latest commit on the thud branch as instructed.
>>
>> Alex
>>
>>
>> On Wed, 9 Jan 2019 at 15:09, Woody Wu <narkewoody@gmail.com> wrote:
>> >
>> > Please some help me.  Just cannot believe, with a fresh clone it canno=
t do a simple build.  I think must be something lost in my system but don't=
 know what.  My system is ubuntu 18.10.
>> >
>> > Thanks in advance.
>> >
>> > On Wed, Jan 9, 2019 at 11:36 AM Woody Wu <narkewoody@gmail.com> wrote:
>> >>
>> >> Hello,
>> >>
>> >> I am so new to the project and was trying to do my first building jus=
t for learn.  Can some please have a look at my errors and point me a direc=
tion to check? Thanks a lot!
>> >>
>> >> =3D=3D=3D
>> >> WARNING: Host distribution "ubuntu-18.10" has not been validated with=
 this version of the build system; you may possibly experience unexpected f=
ailures. It is recommended that you use a tested distribution.
>> >> Parsing recipes: 100% |##########################################| Ti=
me: 0:00:14
>> >> Parsing of 790 .bb files complete (0 cached, 790 parsed). 1263 target=
s, 42 skipped, 0 masked, 0 errors.
>> >> NOTE: Resolving any missing task queue dependencies
>> >>
>> >> Build Configuration:
>> >> BB_VERSION           =3D "1.40.0"
>> >> BUILD_SYS            =3D "x86_64-linux"
>> >> NATIVELSBSTRING      =3D "ubuntu-18.10"
>> >> TARGET_SYS           =3D "i586-poky-linux"
>> >> MACHINE              =3D "qemux86"
>> >> DISTRO               =3D "poky"
>> >> DISTRO_VERSION       =3D "2.6"
>> >> TUNE_FEATURES        =3D "m32 i586"
>> >> TARGET_FPU           =3D ""
>> >> meta
>> >> meta-poky
>> >> meta-yocto-bsp       =3D "my-thud:84eecb017ef92ef36b4df730908828e54ae=
ff85c"
>> >>
>> >> NOTE: Fetching uninative binary shim from http://downloads.yoctoproje=
ct.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc69=
54563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
>> >> WARNING: Checksum mismatch for local file /home/woody/poky/build/down=
loads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0=
a8684/x86_64-nativesdk-libc.tar.bz2
>> >> Cleaning and trying again.
>> >> WARNING: Renaming /home/woody/poky/build/downloads/uninative/c6954563=
dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-l=
ibc.tar.bz2 to /home/woody/poky/build/downloads/uninative/c6954563dad3c9560=
8117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.b=
z2_bad-checksum_4b6fb2106c2f18b8f9c8ac67e1cf9e57
>> >> WARNING: Checksum failure encountered with premirror download of http=
://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.=
tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb62=
2fc0a8684 - will attempt other sources.
>> >> Initialising tasks: 100% |#######################################| Ti=
me: 0:00:00
>> >> Sstate summary: Wanted 738 Found 0 Missed 738 Current 0 (0% match, 0%=
 complete)
>> >> NOTE: Executing SetScene Tasks
>> >> NOTE: Executing RunQueue Tasks
>> >> WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch: Faile=
d to fetch URL git://git.yoctoproject.org/pseudo, attempting MIRRORS if ava=
ilable
>> >> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Error =
executing a python function in exec_python_func() autogenerated:
>> >>
>> >> The stack trace of python calls that resulted in this exception/failu=
re was:
>> >> File: 'exec_python_func() autogenerated', lineno: 2, function: <modul=
e>
>> >>      0001:
>> >>  *** 0002:base_do_unpack(d)
>> >>      0003:
>> >> File: '/home/woody/poky/meta/classes/base.bbclass', lineno: 164, func=
tion: base_do_unpack
>> >>      0160:        return
>> >>      0161:
>> >>      0162:    try:
>> >>      0163:        fetcher =3D bb.fetch2.Fetch(src_uri, d)
>> >>  *** 0164:        fetcher.unpack(d.getVar('WORKDIR'))
>> >>      0165:    except bb.fetch2.BBFetchException as e:
>> >>      0166:        bb.fatal(str(e))
>> >>      0167:}
>> >>      0168:
>> >> File: '/home/woody/poky/bitbake/lib/bb/fetch2/__init__.py', lineno: 1=
773, function: unpack
>> >>      1769:
>> >>      1770:            if ud.lockfile:
>> >>      1771:                lf =3D bb.utils.lockfile(ud.lockfile)
>> >>      1772:
>> >>  *** 1773:            ud.method.unpack(ud, root, self.d)
>> >>      1774:
>> >>      1775:            if ud.lockfile:
>> >>      1776:                bb.utils.unlockfile(lf)
>> >>      1777:
>> >> File: '/home/woody/poky/bitbake/lib/bb/fetch2/git.py', lineno: 496, f=
unction: unpack
>> >>      0492:                bb.utils.mkdirhier(destdir)
>> >>      0493:                runfetchcmd("tar -xzf %s" % ud.fullshallow,=
 d, workdir=3Ddestdir)
>> >>      0494:                source_found =3D True
>> >>      0495:            else:
>> >>  *** 0496:                source_error.append("shallow clone not enab=
led or not available: " + ud.fullshallow)
>> >>      0497:
>> >>      0498:        if not source_found:
>> >>      0499:            raise bb.fetch2.UnpackError("No up to date sour=
ce found: " + "; ".join(source_error), ud.url)
>> >>      0500:
>> >> Exception: AttributeError: 'FetchData' object has no attribute 'fulls=
hallow'
>> >>
>> >> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Functi=
on failed: base_do_unpack
>> >> ERROR: Logfile of failure stored in: /home/woody/poky/build/tmp/work/=
x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpac=
k.31900
>> >> ERROR: Task (virtual:native:/home/woody/poky/meta/recipes-devtools/ps=
eudo/pseudo_git.bb:do_unpack) failed with exit code '1'
>> >> NOTE: Tasks Summary: Attempted 308 tasks of which 0 didn't need to be=
 rerun and 1 failed.
>> >> =3D=3D=3D
>> >>
>> >>
>> >> --
>> >> Life is the only flaw in an otherwise perfect nonexistence
>> >>     -- Schopenhauer
>> >>
>> >> woody
>> >> public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
>> >>
>> >
>> >
>> > --
>> > Life is the only flaw in an otherwise perfect nonexistence
>> >     -- Schopenhauer
>> >
>> > woody
>> > public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
>> >
>> > --
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>
>
>
> --
> Life is the only flaw in an otherwise perfect nonexistence
>     -- Schopenhauer
>
> woody
> public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
>

