Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79BFFE00B77; Wed,  9 Jan 2019 06:57:58 -0800 (PST)
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
	*      [209.85.210.52 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9595DE0091D
	for <poky@yoctoproject.org>; Wed,  9 Jan 2019 06:57:57 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id i20so6944949otl.0
	for <poky@yoctoproject.org>; Wed, 09 Jan 2019 06:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=KvzbYzdIHQ7FGvaMr/6NaRRduDGxtmhU0RaIozDMshM=;
	b=CCPJU0AfBXQ6j7xzLOxKDU/xcZhcFmWAO8NLtTLgRUJNDDP4ZYgJNOlXCuz+IJcq1p
	eW27Jwp4GRBf9e021VMrABn0NmwmKnaEiVsCWTcV1dR7jdUFq8iXi8nUqdGsYx4bPISt
	FwVJwmxtgxphwBHj3uRxHakXfHbZYzSnbXjf5MU/XZT43tFb0sWzgotlDUV+O4zQOvqE
	n8uF84pz/xtyHxWlv5886ltJSdupqQD9a4CDY6Klv8/QRGHZAjH3FI1TNX69QeL0KDf0
	eKsoB8PgKmorxBFRXydIchtu9PZofL2IHVYyOefIFMpW93lOLU2FACfbn/0xZbnvRD1A
	ZHcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=KvzbYzdIHQ7FGvaMr/6NaRRduDGxtmhU0RaIozDMshM=;
	b=AhQ0w563VC0j5NyaDw3FKd528mPex4+Gy8r/xOFcfm6pbKU5zAX2wqQvrDeL4esRXk
	hIcKzk13TP2+W8bX8Oog1CovefjAnEp5pByBQ+RJto8+cZHrzWptAkOmR89nfbz82Sf1
	6CkbiPMWzb0tDriM1R43UVxamk/E7Rxh4ZXv+TTZmeIYYtS1ByaXvhkObadJgQqjrXLt
	44Oz7axX3U65AcBxXes0GcWBV73afP6Vk7IfYTCG4hisJaHSedaICSWD8xBir0syZElM
	umJfUCXum/vXtCGXHyTwgciwwlWIzYiG7b5l1vtm/3ghNDWROrkC7GpNb+wF4lqcYYQL
	Mt+g==
X-Gm-Message-State: AJcUukcoQ8nw16XKlsxMMqMlnPRJi7sqNR/NiRVCaOt5IVcTUoqyPwDF
	5docsn22U8yNJvZF36NMkSl5y8vJakhrOIsWrI9p8w==
X-Google-Smtp-Source: ALg8bN5tJzTYx3yR7PBZJ+ozBArxmdvjBMM+vBIhN+DY/JFMpUTy/u1opxjjymWLhsqCrp8W3XDrsIzPrXbeFOKfuVE=
X-Received: by 2002:a9d:5cc2:: with SMTP id r2mr4268868oti.367.1547045876888; 
	Wed, 09 Jan 2019 06:57:56 -0800 (PST)
MIME-Version: 1.0
References: <CAAsE_ucsT-Utzm+MCsHPgZ2XCtTacuTfCk8Qjv+cRxjpjPLRpg@mail.gmail.com>
	<CAAsE_ucn+t2LSPQbpHTgsXTF-HX_FEy0mBOahnLRg69WkwnZ=w@mail.gmail.com>
In-Reply-To: <CAAsE_ucn+t2LSPQbpHTgsXTF-HX_FEy0mBOahnLRg69WkwnZ=w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 9 Jan 2019 15:57:45 +0100
Message-ID: <CANNYZj-4wF2z+jNG=ipytKbFWV=devfM34H_4_i-kEkDQ-SDMg@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 Jan 2019 14:57:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please update to the latest commit on the thud branch as instructed.

Alex


On Wed, 9 Jan 2019 at 15:09, Woody Wu <narkewoody@gmail.com> wrote:
>
> Please some help me.  Just cannot believe, with a fresh clone it cannot d=
o a simple build.  I think must be something lost in my system but don't kn=
ow what.  My system is ubuntu 18.10.
>
> Thanks in advance.
>
> On Wed, Jan 9, 2019 at 11:36 AM Woody Wu <narkewoody@gmail.com> wrote:
>>
>> Hello,
>>
>> I am so new to the project and was trying to do my first building just f=
or learn.  Can some please have a look at my errors and point me a directio=
n to check? Thanks a lot!
>>
>> =3D=3D=3D
>> WARNING: Host distribution "ubuntu-18.10" has not been validated with th=
is version of the build system; you may possibly experience unexpected fail=
ures. It is recommended that you use a tested distribution.
>> Parsing recipes: 100% |##########################################| Time:=
 0:00:14
>> Parsing of 790 .bb files complete (0 cached, 790 parsed). 1263 targets, =
42 skipped, 0 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION           =3D "1.40.0"
>> BUILD_SYS            =3D "x86_64-linux"
>> NATIVELSBSTRING      =3D "ubuntu-18.10"
>> TARGET_SYS           =3D "i586-poky-linux"
>> MACHINE              =3D "qemux86"
>> DISTRO               =3D "poky"
>> DISTRO_VERSION       =3D "2.6"
>> TUNE_FEATURES        =3D "m32 i586"
>> TARGET_FPU           =3D ""
>> meta
>> meta-poky
>> meta-yocto-bsp       =3D "my-thud:84eecb017ef92ef36b4df730908828e54aeff8=
5c"
>>
>> NOTE: Fetching uninative binary shim from http://downloads.yoctoproject.=
org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc69545=
63dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
>> WARNING: Checksum mismatch for local file /home/woody/poky/build/downloa=
ds/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a86=
84/x86_64-nativesdk-libc.tar.bz2
>> Cleaning and trying again.
>> WARNING: Renaming /home/woody/poky/build/downloads/uninative/c6954563dad=
3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc=
.tar.bz2 to /home/woody/poky/build/downloads/uninative/c6954563dad3c9560811=
7c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2_=
bad-checksum_4b6fb2106c2f18b8f9c8ac67e1cf9e57
>> WARNING: Checksum failure encountered with premirror download of http://=
downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar=
.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc=
0a8684 - will attempt other sources.
>> Initialising tasks: 100% |#######################################| Time:=
 0:00:00
>> Sstate summary: Wanted 738 Found 0 Missed 738 Current 0 (0% match, 0% co=
mplete)
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch: Failed t=
o fetch URL git://git.yoctoproject.org/pseudo, attempting MIRRORS if availa=
ble
>> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Error exe=
cuting a python function in exec_python_func() autogenerated:
>>
>> The stack trace of python calls that resulted in this exception/failure =
was:
>> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>>      0001:
>>  *** 0002:base_do_unpack(d)
>>      0003:
>> File: '/home/woody/poky/meta/classes/base.bbclass', lineno: 164, functio=
n: base_do_unpack
>>      0160:        return
>>      0161:
>>      0162:    try:
>>      0163:        fetcher =3D bb.fetch2.Fetch(src_uri, d)
>>  *** 0164:        fetcher.unpack(d.getVar('WORKDIR'))
>>      0165:    except bb.fetch2.BBFetchException as e:
>>      0166:        bb.fatal(str(e))
>>      0167:}
>>      0168:
>> File: '/home/woody/poky/bitbake/lib/bb/fetch2/__init__.py', lineno: 1773=
, function: unpack
>>      1769:
>>      1770:            if ud.lockfile:
>>      1771:                lf =3D bb.utils.lockfile(ud.lockfile)
>>      1772:
>>  *** 1773:            ud.method.unpack(ud, root, self.d)
>>      1774:
>>      1775:            if ud.lockfile:
>>      1776:                bb.utils.unlockfile(lf)
>>      1777:
>> File: '/home/woody/poky/bitbake/lib/bb/fetch2/git.py', lineno: 496, func=
tion: unpack
>>      0492:                bb.utils.mkdirhier(destdir)
>>      0493:                runfetchcmd("tar -xzf %s" % ud.fullshallow, d,=
 workdir=3Ddestdir)
>>      0494:                source_found =3D True
>>      0495:            else:
>>  *** 0496:                source_error.append("shallow clone not enabled=
 or not available: " + ud.fullshallow)
>>      0497:
>>      0498:        if not source_found:
>>      0499:            raise bb.fetch2.UnpackError("No up to date source =
found: " + "; ".join(source_error), ud.url)
>>      0500:
>> Exception: AttributeError: 'FetchData' object has no attribute 'fullshal=
low'
>>
>> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function =
failed: base_do_unpack
>> ERROR: Logfile of failure stored in: /home/woody/poky/build/tmp/work/x86=
_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.3=
1900
>> ERROR: Task (virtual:native:/home/woody/poky/meta/recipes-devtools/pseud=
o/pseudo_git.bb:do_unpack) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 308 tasks of which 0 didn't need to be re=
run and 1 failed.
>> =3D=3D=3D
>>
>>
>> --
>> Life is the only flaw in an otherwise perfect nonexistence
>>     -- Schopenhauer
>>
>> woody
>> public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
>>
>
>
> --
> Life is the only flaw in an otherwise perfect nonexistence
>     -- Schopenhauer
>
> woody
> public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

