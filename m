Return-Path: <narkewoody@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28E43E00CEA; Wed,  9 Jan 2019 06:08:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (narkewoody[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8A90E00CE7
	for <poky@yoctoproject.org>; Wed,  9 Jan 2019 06:08:39 -0800 (PST)
Received: by mail-qt1-f171.google.com with SMTP id y20so8359969qtm.13
	for <poky@yoctoproject.org>; Wed, 09 Jan 2019 06:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=wwYNtTXe2awUVLIOLAOVgHeUa2D6mpiLUiJDWOK+YXw=;
	b=TWDXzizxDbOdV/mlDuzGHx/bN6vqfbQoRgnZ3hp1wmOWlMay1bzx0F39P9q/Doz/ri
	nhb/yK/qPORkOTI+MoczNr86e9/oDn6hayxlxR7LsxfGQPCL5+Q7pVceCdpq5PN0ZMPw
	Ds/+EcY2FaucjWspoZOICzbxi69l75Haik1QMGSBHdmQ1HbN7ataII25svn7N0AuNJtI
	hQQ+LPIvY7E4bVgFpDs/seOuR6/bIy66ix/kHckFvzPlKjBKwjZuUB0o5ui/MMvAr76I
	AIAut2REQzfsZ65UZ99py+C0eRT5uJjJQJZKZv08edBC+vYwixI02SZsGbQhoyeswgMw
	0NYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=wwYNtTXe2awUVLIOLAOVgHeUa2D6mpiLUiJDWOK+YXw=;
	b=me4qMWmCYmbL+gmDnxcJtKfYlCGSsEFup4Cef6bnSj7UJLYvGSHBpBndCfgLU1DIjr
	uDGj+KsY7wuuZ4q/ela7ML4bBSoHmVdhAh7+aQAC+1zgX7TXeMDY1lqKf/stYmz2n73n
	+nDICPc33U4OdNsOL8VbihIoyEgP8UlLAUyge2bKQLbz95i88JHzriFrNI22go6vST0t
	MGETiMQH/euQ4Mrf49z1/1f/FzDLocGCz30Es5PD5WVskpkgsbkdL3JrHfLedbmGbI1c
	NuExoyiSYSH8vFWyfeuBOivdDmYPIo8NGcLjsaaIoRDB4gWSeCMFE/kKsBnqyRf9MnSy
	RPnQ==
X-Gm-Message-State: AJcUukdDw5qWpoiYYqJWesQGJy9ruLLrizmYxh/foOd9nzej29AMGuh+
	AMylHGXSJ2g23bOrAbsnqeQM6NXM5hMI2ouzNO96MstL
X-Google-Smtp-Source: ALg8bN6PiPy/UGQ2GWNVyrX/d9gTfbg5aT8RXTWd6xNkqth61tapXdac7LbUFiw8O5qQysmbTZB+eZYDXV9ddM3r5/k=
X-Received: by 2002:ac8:3810:: with SMTP id q16mr5401161qtb.91.1547042919008; 
	Wed, 09 Jan 2019 06:08:39 -0800 (PST)
MIME-Version: 1.0
References: <CAAsE_ucsT-Utzm+MCsHPgZ2XCtTacuTfCk8Qjv+cRxjpjPLRpg@mail.gmail.com>
In-Reply-To: <CAAsE_ucsT-Utzm+MCsHPgZ2XCtTacuTfCk8Qjv+cRxjpjPLRpg@mail.gmail.com>
From: Woody Wu <narkewoody@gmail.com>
Date: Wed, 9 Jan 2019 22:07:49 +0800
Message-ID: <CAAsE_ucn+t2LSPQbpHTgsXTF-HX_FEy0mBOahnLRg69WkwnZ=w@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 09 Jan 2019 14:08:42 -0000
Content-Type: multipart/alternative; boundary="000000000000a3cf12057f06ffe1"

--000000000000a3cf12057f06ffe1
Content-Type: text/plain; charset="UTF-8"

Please some help me.  Just cannot believe, with a fresh clone it cannot do
a simple build.  I think must be something lost in my system but don't know
what.  My system is ubuntu 18.10.

Thanks in advance.

On Wed, Jan 9, 2019 at 11:36 AM Woody Wu <narkewoody@gmail.com> wrote:

> Hello,
>
> I am so new to the project and was trying to do my first building just for
> learn.  Can some please have a look at my errors and point me a direction
> to check? Thanks a lot!
>
> ===
> WARNING: Host distribution "ubuntu-18.10" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> Parsing recipes: 100% |##########################################| Time:
> 0:00:14
> Parsing of 790 .bb files complete (0 cached, 790 parsed). 1263 targets, 42
> skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.40.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "ubuntu-18.10"
> TARGET_SYS           = "i586-poky-linux"
> MACHINE              = "qemux86"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.6"
> TUNE_FEATURES        = "m32 i586"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "my-thud:84eecb017ef92ef36b4df730908828e54aeff85c"
>
> NOTE: Fetching uninative binary shim from
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
> WARNING: Checksum mismatch for local file
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2
> Cleaning and trying again.
> WARNING: Renaming
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2
> to
> /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2_bad-checksum_4b6fb2106c2f18b8f9c8ac67e1cf9e57
> WARNING: Checksum failure encountered with premirror download of
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=c6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684
> - will attempt other sources.
> Initialising tasks: 100% |#######################################| Time:
> 0:00:00
> Sstate summary: Wanted 738 Found 0 Missed 738 Current 0 (0% match, 0%
> complete)
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch: Failed to
> fetch URL git://git.yoctoproject.org/pseudo, attempting MIRRORS if
> available
> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Error
> executing a python function in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure
> was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:base_do_unpack(d)
>      0003:
> File: '/home/woody/poky/meta/classes/base.bbclass', lineno: 164, function:
> base_do_unpack
>      0160:        return
>      0161:
>      0162:    try:
>      0163:        fetcher = bb.fetch2.Fetch(src_uri, d)
>  *** 0164:        fetcher.unpack(d.getVar('WORKDIR'))
>      0165:    except bb.fetch2.BBFetchException as e:
>      0166:        bb.fatal(str(e))
>      0167:}
>      0168:
> File: '/home/woody/poky/bitbake/lib/bb/fetch2/__init__.py', lineno: 1773,
> function: unpack
>      1769:
>      1770:            if ud.lockfile:
>      1771:                lf = bb.utils.lockfile(ud.lockfile)
>      1772:
>  *** 1773:            ud.method.unpack(ud, root, self.d)
>      1774:
>      1775:            if ud.lockfile:
>      1776:                bb.utils.unlockfile(lf)
>      1777:
> File: '/home/woody/poky/bitbake/lib/bb/fetch2/git.py', lineno: 496,
> function: unpack
>      0492:                bb.utils.mkdirhier(destdir)
>      0493:                runfetchcmd("tar -xzf %s" % ud.fullshallow, d,
> workdir=destdir)
>      0494:                source_found = True
>      0495:            else:
>  *** 0496:                source_error.append("shallow clone not enabled
> or not available: " + ud.fullshallow)
>      0497:
>      0498:        if not source_found:
>      0499:            raise bb.fetch2.UnpackError("No up to date source
> found: " + "; ".join(source_error), ud.url)
>      0500:
> Exception: AttributeError: 'FetchData' object has no attribute
> 'fullshallow'
>
> ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Function
> failed: base_do_unpack
> ERROR: Logfile of failure stored in:
> /home/woody/poky/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b344e5-r0/temp/log.do_unpack.31900
> ERROR: Task
> (virtual:native:/home/woody/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_unpack)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 308 tasks of which 0 didn't need to be
> rerun and 1 failed.
> ===
>
>
> --
> Life is the only flaw in an otherwise perfect nonexistence
>     -- Schopenhauer
>
> woody
> public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)
>
>

-- 
Life is the only flaw in an otherwise perfect nonexistence
    -- Schopenhauer

woody
public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)

--000000000000a3cf12057f06ffe1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:large">Ple=
ase some help me.=C2=A0 Just cannot believe, with a fresh clone it cannot d=
o a simple build.=C2=A0 I think must be something lost in my system but don=
&#39;t know what.=C2=A0 My system is ubuntu 18.10.</div><div class=3D"gmail=
_default" style=3D"font-size:large"><br></div><div class=3D"gmail_default" =
style=3D"font-size:large">Thanks in advance.</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr">On Wed, Jan 9, 2019 at 11:36 AM Woody Wu &lt;<=
a href=3D"mailto:narkewoody@gmail.com">narkewoody@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div dir=3D"ltr"><div class=3D"gmail_default"><div class=3D"gmail_default"=
><font size=3D"4">Hello,</font></div><div class=3D"gmail_default"><font siz=
e=3D"4"><br></font></div><div class=3D"gmail_default"><font size=3D"4">I am=
 so new to the project and was trying to do my first building just for lear=
n.=C2=A0 Can some please have a look at my errors and point me a direction =
to check? Thanks a lot!</font></div><div class=3D"gmail_default"><br></div>=
<div class=3D"gmail_default">=3D=3D=3D</div><div class=3D"gmail_default"><f=
ont size=3D"4">WARNING: Host distribution &quot;ubuntu-18.10&quot; has not =
been validated with this version of the build system; you may possibly expe=
rience unexpected failures. It is recommended that you use a tested distrib=
ution.</font></div><div class=3D"gmail_default"><font size=3D"4">Parsing re=
cipes: 100% |##########################################| Time: 0:00:14</fon=
t></div><div class=3D"gmail_default"><font size=3D"4">Parsing of 790 .bb fi=
les complete (0 cached, 790 parsed). 1263 targets, 42 skipped, 0 masked, 0 =
errors.</font></div><div class=3D"gmail_default"><font size=3D"4">NOTE: Res=
olving any missing task queue dependencies</font></div><div class=3D"gmail_=
default"><font size=3D"4"><br></font></div><div class=3D"gmail_default"><fo=
nt size=3D"4">Build Configuration:</font></div><div class=3D"gmail_default"=
><font size=3D"4">BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;1.40.0&quot;</font></div><div class=3D"gmail_default"><font size=3D"4">=
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&q=
uot;</font></div><div class=3D"gmail_default"><font size=3D"4">NATIVELSBSTR=
ING=C2=A0 =C2=A0 =C2=A0 =3D &quot;ubuntu-18.10&quot;</font></div><div class=
=3D"gmail_default"><font size=3D"4">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;i586-poky-linux&quot;</font></div><div class=3D"gmai=
l_default"><font size=3D"4">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;qemux86&quot;</font></div><div class=3D"gmail_default"=
><font size=3D"4">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;poky&quot;</font></div><div class=3D"gmail_default"><font s=
ize=3D"4">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.6&quot;</fon=
t></div><div class=3D"gmail_default"><font size=3D"4">TUNE_FEATURES=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;</font></div><div class=3D"gma=
il_default"><font size=3D"4">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;&quot;</font></div><div class=3D"gmail_default"><font size=
=3D"4">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
font></div><div class=3D"gmail_default"><font size=3D"4">meta-poky=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div class=3D"gmail_de=
fault"><font size=3D"4">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
my-thud:84eecb017ef92ef36b4df730908828e54aeff85c&quot;</font></div><div cla=
ss=3D"gmail_default"><font size=3D"4"><br></font></div><div class=3D"gmail_=
default"><font size=3D"4">NOTE: Fetching uninative binary shim from <a href=
=3D"http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-natives=
dk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf=
5fdccb622fc0a8684" target=3D"_blank">http://downloads.yoctoproject.org/rele=
ases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c9=
5608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684</a></font></div><div cla=
ss=3D"gmail_default"><font size=3D"4">WARNING: Checksum mismatch for local =
file /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc32=
8099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2</font><=
/div><div class=3D"gmail_default"><font size=3D"4">Cleaning and trying agai=
n.</font></div><div class=3D"gmail_default"><font size=3D"4">WARNING: Renam=
ing /home/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328=
099036c832bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2 to /home=
/woody/poky/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c83=
2bbd924ebf5fdccb622fc0a8684/x86_64-nativesdk-libc.tar.bz2_bad-checksum_4b6f=
b2106c2f18b8f9c8ac67e1cf9e57</font></div><div class=3D"gmail_default"><font=
 size=3D"4">WARNING: Checksum failure encountered with premirror download o=
f <a href=3D"http://downloads.yoctoproject.org/releases/uninative/2.3/x86_6=
4-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832=
bbd924ebf5fdccb622fc0a8684" target=3D"_blank">http://downloads.yoctoproject=
.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954=
563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684</a> - will atte=
mpt other sources.</font></div><div class=3D"gmail_default"><font size=3D"4=
">Initialising tasks: 100% |#######################################| Time: =
0:00:00</font></div><div class=3D"gmail_default"><font size=3D"4">Sstate su=
mmary: Wanted 738 Found 0 Missed 738 Current 0 (0% match, 0% complete)</fon=
t></div><div class=3D"gmail_default"><font size=3D"4">NOTE: Executing SetSc=
ene Tasks</font></div><div class=3D"gmail_default"><font size=3D"4">NOTE: E=
xecuting RunQueue Tasks</font></div><div class=3D"gmail_default"><font size=
=3D"4">WARNING: pseudo-native-1.9.0+gitAUTOINC+6294b344e5-r0 do_fetch: Fail=
ed to fetch URL git://<a href=3D"http://git.yoctoproject.org/pseudo" target=
=3D"_blank">git.yoctoproject.org/pseudo</a>, attempting MIRRORS if availabl=
e</font></div><div class=3D"gmail_default"><font size=3D"4">ERROR: pseudo-n=
ative-1.9.0+gitAUTOINC+6294b344e5-r0 do_unpack: Error executing a python fu=
nction in exec_python_func() autogenerated:</font></div><div class=3D"gmail=
_default"><font size=3D"4"><br></font></div><div class=3D"gmail_default"><f=
ont size=3D"4">The stack trace of python calls that resulted in this except=
ion/failure was:</font></div><div class=3D"gmail_default"><font size=3D"4">=
File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, function: &lt;=
module&gt;</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0=
 =C2=A0 =C2=A00001:</font></div><div class=3D"gmail_default"><font size=3D"=
4">=C2=A0*** 0002:base_do_unpack(d)</font></div><div class=3D"gmail_default=
"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00003:</font></div><div class=3D"gmai=
l_default"><font size=3D"4">File: &#39;/home/woody/poky/meta/classes/base.b=
bclass&#39;, lineno: 164, function: base_do_unpack</font></div><div class=
=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00160:=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 return</font></div><div class=3D"gmail_default"><font size=3D=
"4">=C2=A0 =C2=A0 =C2=A00161:</font></div><div class=3D"gmail_default"><fon=
t size=3D"4">=C2=A0 =C2=A0 =C2=A00162:=C2=A0 =C2=A0 try:</font></div><div c=
lass=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00163:=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 fetcher =3D bb.fetch2.Fetch(src_uri, d)</font></div><div =
class=3D"gmail_default"><font size=3D"4">=C2=A0*** 0164:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 fetcher.unpack(d.getVar(&#39;WORKDIR&#39;))</font></div><div cla=
ss=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00165:=C2=A0 =C2=
=A0 except bb.fetch2.BBFetchException as e:</font></div><div class=3D"gmail=
_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00166:=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 bb.fatal(str(e))</font></div><div class=3D"gmail_default"><font size=
=3D"4">=C2=A0 =C2=A0 =C2=A00167:}</font></div><div class=3D"gmail_default">=
<font size=3D"4">=C2=A0 =C2=A0 =C2=A00168:</font></div><div class=3D"gmail_=
default"><font size=3D"4">File: &#39;/home/woody/poky/bitbake/lib/bb/fetch2=
/__init__.py&#39;, lineno: 1773, function: unpack</font></div><div class=3D=
"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A01769:</font></div><div=
 class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A01770:=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ud.lockfile:</font></div><div class=
=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A01771:=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lf =3D bb.utils.lockfile(ud.lockf=
ile)</font></div><div class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=
=A0 =C2=A01772:</font></div><div class=3D"gmail_default"><font size=3D"4">=
=C2=A0*** 1773:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ud.method.unpack(u=
d, root, self.d)</font></div><div class=3D"gmail_default"><font size=3D"4">=
=C2=A0 =C2=A0 =C2=A01774:</font></div><div class=3D"gmail_default"><font si=
ze=3D"4">=C2=A0 =C2=A0 =C2=A01775:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if ud.lockfile:</font></div><div class=3D"gmail_default"><font size=3D"4">=
=C2=A0 =C2=A0 =C2=A01776:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 bb.utils.unlockfile(lf)</font></div><div class=3D"gmail_default"><fo=
nt size=3D"4">=C2=A0 =C2=A0 =C2=A01777:</font></div><div class=3D"gmail_def=
ault"><font size=3D"4">File: &#39;/home/woody/poky/bitbake/lib/bb/fetch2/gi=
t.py&#39;, lineno: 496, function: unpack</font></div><div class=3D"gmail_de=
fault"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00492:=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.utils.mkdirhier(destdir)</font></div><di=
v class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00493:=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 runfetchcmd(&quot;tar -xzf=
 %s&quot; % ud.fullshallow, d, workdir=3Ddestdir)</font></div><div class=3D=
"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00494:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 source_found =3D True</font></div><d=
iv class=3D"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00495:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:</font></div><div class=3D"gmail_d=
efault"><font size=3D"4">=C2=A0*** 0496:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 source_error.append(&quot;shallow clone not enabled or=
 not available: &quot; + ud.fullshallow)</font></div><div class=3D"gmail_de=
fault"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00497:</font></div><div class=3D=
"gmail_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00498:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if not source_found:</font></div><div class=3D"gmail_default"><f=
ont size=3D"4">=C2=A0 =C2=A0 =C2=A00499:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 raise bb.fetch2.UnpackError(&quot;No up to date source found: &quot;=
 + &quot;; &quot;.join(source_error), ud.url)</font></div><div class=3D"gma=
il_default"><font size=3D"4">=C2=A0 =C2=A0 =C2=A00500:</font></div><div cla=
ss=3D"gmail_default"><font size=3D"4">Exception: AttributeError: &#39;Fetch=
Data&#39; object has no attribute &#39;fullshallow&#39;</font></div><div cl=
ass=3D"gmail_default"><font size=3D"4"><br></font></div><div class=3D"gmail=
_default"><font size=3D"4">ERROR: pseudo-native-1.9.0+gitAUTOINC+6294b344e5=
-r0 do_unpack: Function failed: base_do_unpack</font></div><div class=3D"gm=
ail_default"><font size=3D"4">ERROR: Logfile of failure stored in: /home/wo=
ody/poky/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+6294b34=
4e5-r0/temp/log.do_unpack.31900</font></div><div class=3D"gmail_default"><f=
ont size=3D"4">ERROR: Task (virtual:native:/home/woody/poky/meta/recipes-de=
vtools/pseudo/pseudo_git.bb:do_unpack) failed with exit code &#39;1&#39;</f=
ont></div><div class=3D"gmail_default"><font size=3D"4">NOTE: Tasks Summary=
: Attempted 308 tasks of which 0 didn&#39;t need to be rerun and 1 failed.<=
/font></div><div class=3D"gmail_default" style=3D"font-size:large">=3D=3D=
=3D</div><div class=3D"gmail_default" style=3D"font-size:large"><br></div><=
/div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail-m_-8614987984167=
154475gmail_signature">Life is the only flaw in an otherwise perfect nonexi=
stence<br>=C2=A0 =C2=A0 -- Schopenhauer<br><br>woody<br>public key at <a hr=
ef=3D"http://subkeys.pgp.net:11371" target=3D"_blank">http://subkeys.pgp.ne=
t:11371</a> (<a href=3D"mailto:narkewoody@gmail.com" target=3D"_blank">nark=
ewoody@gmail.com</a>)<br><br></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Life is the only flaw in an otherwise perfect no=
nexistence<br>=C2=A0 =C2=A0 -- Schopenhauer<br><br>woody<br>public key at <=
a href=3D"http://subkeys.pgp.net:11371" target=3D"_blank">http://subkeys.pg=
p.net:11371</a> (<a href=3D"mailto:narkewoody@gmail.com" target=3D"_blank">=
narkewoody@gmail.com</a>)<br><br></div>

--000000000000a3cf12057f06ffe1--
