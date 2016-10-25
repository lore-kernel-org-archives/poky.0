Return-Path: <osborn.steven@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 769F6E00953; Mon, 24 Oct 2016 23:52:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (osborn.steven[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.182 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5623BE00912
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 23:52:12 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id w69so14348461qka.4
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 23:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c8GdMn2oiTFYvNWL+BdTO5m0Ihuyh4+8Rr4U8h3xIo4=;
	b=itUC/rdJv+jyAnm9XiD59Q06ulEkpHKAytLwCEjzFE/QabgITqvwrui1k4WOLKn6bO
	SwZAOtDQpWOPDisYTUqIgwgQ/TZvjk+kQ4LQJlvYwlZKTskCGkz7z6AIPohDAASMeICT
	s+FRwIw96XGMtLYkPKjUfwkJjsEdrwBmcQO9xSt/VYWAEWIW2heldD4q6zFmJN0WqZ6Z
	VWjzgiO+bSBqmI0ptu5blMFiVRnw7T1R7tcUA2XlClfLFz0D6aQnqJ/p6qlaW6SmBXog
	9dAyAfaXvTdAZkBmjRqc/W2iwRBKqf3Co/gfUjs/cUn91aBE1v1P4x+rxJyQSf2x6469
	BCCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c8GdMn2oiTFYvNWL+BdTO5m0Ihuyh4+8Rr4U8h3xIo4=;
	b=D2VYbwutPzrXTg+ZHgHQ1PR15f17v5qjZ94vt1JXyYRdoVA7RQx3FumphQ9SSp6Ivh
	jap8jGujXIGirFdWUEJ3WiyPMwacyBM0alXrXnZkyDR8Qd5G+fbtoXkgELskAHKE8N7U
	LB1VgQL5ktcMWA3oyzMNY6WtY+YA4scbr8kcvGakaa1wZUTvuZcrqt+Ois05J6JW0dRH
	pVnMk1vD+t/9GJl44BZQqoLXTwP5jtE+7EjQhGnaR4uzRG8CRhYNdwDdeUHCjQ5JU5CC
	vMxE+nnbueviXwmEvSt/FSFIoIK4l1wy4vSEVKHyvUyjx3Op5zwzp5uV2PlWa7ZBOQfZ
	yk3w==
X-Gm-Message-State: ABUngveZ6wSvAY47GiwoAXegzYuN9FA4+3dE6opj0T80rAtbQtBO9ykxq7kSvKnf+yfmM6SqLCxy0cNgVMvqdA==
X-Received: by 10.55.167.78 with SMTP id q75mr1757785qke.97.1477378332022;
	Mon, 24 Oct 2016 23:52:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.46.84 with HTTP; Mon, 24 Oct 2016 23:52:11 -0700 (PDT)
In-Reply-To: <F21C6A20-EBA1-4EEF-B29B-41FD96A05BDC@gmail.com>
References: <CAA0Zw-yG86gejw2TT0Ly8AJ5MMcFV-NP7Q6S=BkbtyjeVqQ_hQ@mail.gmail.com>
	<CAMKF1soZfAUoXz0_0dh7j=H8dfQO2EpF2XUvWqJaX63QF0zY1g@mail.gmail.com>
	<CAA0Zw-xmfxKV=eu_c2Qdsdco3FeLWUdAeLGdDp7RBQu7hc=z8Q@mail.gmail.com>
	<F21C6A20-EBA1-4EEF-B29B-41FD96A05BDC@gmail.com>
From: Steven Osborn <osborn.steven@gmail.com>
Date: Mon, 24 Oct 2016 23:52:11 -0700
Message-ID: <CAA0Zw-wNd7gdGd9e15t94UV4dBQi8bou8V5h8dBirqKcgFDLOQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Poky issues
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
X-List-Received-Date: Tue, 25 Oct 2016 06:52:17 -0000
Content-Type: multipart/alternative; boundary=001a114fca50ade27a053faaf26f

--001a114fca50ade27a053faaf26f
Content-Type: text/plain; charset=UTF-8

well, I'm almost there.

ERROR: Task 22
(/home/steven/Projects/iotas/poky/meta/recipes-extended/images/
core-image-full-cmdline.bb, do_image_mender) failed with exit code '1'
ERROR: core-image-full-cmdline-1.0-r0 do_image_sdimg: No filesystem
appropriate for sdimg was found in IMAGE_FSTYPES = ' tar.bz2 jffs2 sdimg
mender'.
ERROR: core-image-full-cmdline-1.0-r0 do_image_sdimg: Function failed:
do_image_sdimg (log file is located at
/home/steven/Projects/iotas/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp/log.do_image_sdimg.21903)
ERROR: Logfile of failure stored in:
/home/steven/Projects/iotas/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp/log.do_image_sdimg.21903
ERROR: Task 19
(/home/steven/Projects/iotas/poky/meta/recipes-extended/images/
core-image-full-cmdline.bb, do_image_sdimg) failed with exit code '1'

sdimg was found in IMAGE_FSTYPES = ' tar.bz2 jffs2 sdimg mender'.

--
Steven Osborn
http://lolsborn.com

On Mon, Oct 24, 2016 at 11:06 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Oct 24, 2016, at 10:55 PM, Steven Osborn <osborn.steven@gmail.com>
> wrote:
>
> bumping up the RAM did the trick.  Now I'm getting a checksum error tough.
>
> ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: QA Issue:
> mender: The LIC_FILES_CHKSUM does not match for file://LIC_FILES_CHKSUM.
> sha256;md5=e304da41de5b57ce5b4601b53b1052b6
> mender: The new md5 checksum is 5d7dda2920f25253c9a3af5c28b10fb2
>
>
> I think mender changed something in its license text so its telling you
> that. If you dont care then open the mender recipe and change md5=
> e304da41de5b57ce5b4601b53b1052b6
> to md5=5d7dda2920f25253c9a3af5c28b10fb2
>
> mender: Check if the license information has changed in
> /home/steven/Projects/iotas/poky/build/tmp/work/
> cortexa8hf-neon-poky-linux-gnueabi/mender/0.1+gitAUTOINC+
> 72069ff5d0-r0/git/LIC_FILES_CHKSUM.sha256 to verify that the LICENSE
> value "Apache-2.0 & BSD-2-Clause & BSD-3-Clause & MIT & OLDAP-2.8" remains
> valid [license-checksum]
> ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Fatal QA errors
> found, failing task.
> ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Function failed:
> do_qa_configure
> ERROR: Logfile of failure stored in: /home/steven/Projects/iotas/
> poky/build/tmp/work/cortexa8hf-neon-poky-linux-
> gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/temp/log.do_configure.23139
> ERROR: Task 314 (/home/steven/Projects/iotas/poky/meta-mender/recipes-
> mender/mender/mender_0.1.bb, do_configure) failed with exit code '1'
>
>
> --
> Steven Osborn
> http://lolsborn.com
>
> On Mon, Oct 24, 2016 at 5:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Mon, Oct 24, 2016 at 4:39 PM, Steven Osborn <osborn.steven@gmail.com>
>> wrote:
>> > I'm trying to get a beaglebone build going and running into this issue.
>> > I've tried on Ubuntu 16.04 and 14.04LTS with no luck, any pointers
>> would be
>> > really appreciated.  I'm pretty new to Yocto & bitbake.
>> >
>> > https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7753201
>>
>> it has
>> /bin/bash: line 1: 43546 Killed build/genautomata
>> ../../../../../../../work-shared/gcc-5.3.0-r0/gcc-5.3.0/gcc/common.md
>> ../../../../../../../work-shared/gcc-5.3.0-r0/gcc-5.3.0/gcc/config/arm/
>> arm.md
>> insn-conditions.md > tmp-automata.c
>> make[1]: *** [s-automata] Error 137
>>
>> how much ram do you have on your build machine ?
>> >
>> > --
>> > Steven Osborn
>> > http://lolsborn.com
>> >
>> > --
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>> >
>>
>
>
>

--001a114fca50ade27a053faaf26f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><br></div>well, I&#39;m almost there.<br><br>ERR=
OR: Task 22 (/home/steven/Projects/iotas/poky/meta/recipes-extended/images/=
<a href=3D"http://core-image-full-cmdline.bb">core-image-full-cmdline.bb</a=
>, do_image_mender) failed with exit code &#39;1&#39;<br>ERROR: core-image-=
full-cmdline-1.0-r0 do_image_sdimg: No filesystem appropriate for sdimg was=
 found in IMAGE_FSTYPES =3D &#39; tar.bz2 jffs2 sdimg mender&#39;.<br>ERROR=
: core-image-full-cmdline-1.0-r0 do_image_sdimg: Function failed: do_image_=
sdimg (log file is located at /home/steven/Projects/iotas/poky/build/tmp/wo=
rk/beaglebone-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp/log.do=
_image_sdimg.21903)<br>ERROR: Logfile of failure stored in: /home/steven/Pr=
ojects/iotas/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/core-image-f=
ull-cmdline/1.0-r0/temp/log.do_image_sdimg.21903<br>ERROR: Task 19 (/home/s=
teven/Projects/iotas/poky/meta/recipes-extended/images/<a href=3D"http://co=
re-image-full-cmdline.bb">core-image-full-cmdline.bb</a>, do_image_sdimg) f=
ailed with exit code &#39;1&#39;<br><br></div>sdimg was found in IMAGE_FSTY=
PES =3D &#39; tar.bz2 jffs2 sdimg mender&#39;.</div><div class=3D"gmail_ext=
ra"><br clear=3D"all"><div><div class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature">--<br>Steven Osborn<br><a href=3D"http://lolsborn.com" ta=
rget=3D"_blank">http://lolsborn.com</a></div></div>
<br><div class=3D"gmail_quote">On Mon, Oct 24, 2016 at 11:06 PM, Khem Raj <=
span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div style=3D"word-wrap:break-word"><br><div><span class=3D""><blockquote=
 type=3D"cite"><div>On Oct 24, 2016, at 10:55 PM, Steven Osborn &lt;<a href=
=3D"mailto:osborn.steven@gmail.com" target=3D"_blank">osborn.steven@gmail.c=
om</a>&gt; wrote:</div><br class=3D"m_-705464777501302503Apple-interchange-=
newline"><div><div dir=3D"ltr">bumping up the RAM did the trick.=C2=A0 Now =
I&#39;m getting a checksum error tough.<br><br>ERROR: mender-0.1+gitAUTOINC=
+<wbr>72069ff5d0-r0 do_configure: QA Issue: mender: The LIC_FILES_CHKSUM do=
es not match for <a>file://LIC_FILES_CHKSUM.<wbr>sha256;md5=3D<wbr>e304da41=
de5b57ce5b4601b53b1052<wbr>b6</a><br>mender: The new md5 checksum is 5d7dda=
2920f25253c9a3af5c28b10f<wbr>b2</div></div></blockquote><div><br></div></sp=
an><div>I think mender changed something in its license text so its telling=
 you that. If you dont care then open the mender recipe and change md5=3D<w=
br>e304da41de5b57ce5b4601b53b1052<wbr>b6</div><div>to md5=3D<wbr>5d7dda2920=
f25253c9a3af5c28b10f<wbr>b2</div><div><div class=3D"h5"><br><blockquote typ=
e=3D"cite"><div><div dir=3D"ltr">mender: Check if the license information h=
as changed in /home/steven/Projects/iotas/<wbr>poky/build/tmp/work/<wbr>cor=
texa8hf-neon-poky-linux-<wbr>gnueabi/mender/0.1+gitAUTOINC+<wbr>72069ff5d0-=
r0/git/LIC_FILES_<wbr>CHKSUM.sha256 to verify that the LICENSE value &quot;=
Apache-2.0 &amp; BSD-2-Clause &amp; BSD-3-Clause &amp; MIT &amp; OLDAP-2.8&=
quot; remains valid [license-checksum]<br>ERROR: mender-0.1+gitAUTOINC+<wbr=
>72069ff5d0-r0 do_configure: Fatal QA errors found, failing task.<br>ERROR:=
 mender-0.1+gitAUTOINC+<wbr>72069ff5d0-r0 do_configure: Function failed: do=
_qa_configure<br>ERROR: Logfile of failure stored in: /home/steven/Projects=
/iotas/<wbr>poky/build/tmp/work/<wbr>cortexa8hf-neon-poky-linux-<wbr>gnueab=
i/mender/0.1+gitAUTOINC+<wbr>72069ff5d0-r0/temp/log.do_<wbr>configure.23139=
<br>ERROR: Task 314 (/home/steven/Projects/iotas/<wbr>poky/meta-mender/reci=
pes-<wbr>mender/mender/<a href=3D"http://mender_0.1.bb/" target=3D"_blank">=
mender_0.1.bb</a>, do_configure) failed with exit code &#39;1&#39;<br><br><=
/div><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"m_-705=
464777501302503gmail_signature" data-smartmail=3D"gmail_signature">--<br>St=
even Osborn<br><a href=3D"http://lolsborn.com/" target=3D"_blank">http://lo=
lsborn.com</a></div></div>
<br><div class=3D"gmail_quote">On Mon, Oct 24, 2016 at 5:29 PM, Khem Raj <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span>On Mon, Oct 24, 2016 at 4:39 PM, Steven Osborn &lt;<a href=3D"mailto=
:osborn.steven@gmail.com" target=3D"_blank">osborn.steven@gmail.com</a>&gt;=
 wrote:<br>
&gt; I&#39;m trying to get a beaglebone build going and running into this i=
ssue.<br>
&gt; I&#39;ve tried on Ubuntu 16.04 and 14.04LTS with no luck, any pointers=
 would be<br>
&gt; really appreciated.=C2=A0 I&#39;m pretty new to Yocto &amp; bitbake.<b=
r>
&gt;<br>
&gt; <a href=3D"https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7=
753201" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/lolsbo=
<wbr>rn/b431513dbf8819850f26fb78c77<wbr>53201</a><br>
<br>
</span>it has<br>
/bin/bash: line 1: 43546 Killed build/genautomata<br>
../../../../../../../work-shar<wbr>ed/gcc-5.3.0-r0/gcc-5.3.0/gcc/<a href=3D=
"http://common.md/" rel=3D"noreferrer" target=3D"_blank"><wbr>common.md</a>=
<br>
../../../../../../../work-shar<wbr>ed/gcc-5.3.0-r0/gcc-5.3.0/gcc/<wbr>confi=
g/arm/<a href=3D"http://arm.md/" rel=3D"noreferrer" target=3D"_blank">arm.m=
d</a><br>
<a href=3D"http://insn-conditions.md/" rel=3D"noreferrer" target=3D"_blank"=
>insn-conditions.md</a> &gt; tmp-automata.c<br>
make[1]: *** [s-automata] Error 137<br>
<br>
how much ram do you have on your build machine ?<br>
<div class=3D"m_-705464777501302503HOEnZb"><div class=3D"m_-705464777501302=
503h5">&gt;<br>
&gt; --<br>
&gt; Steven Osborn<br>
&gt; <a href=3D"http://lolsborn.com/" rel=3D"noreferrer" target=3D"_blank">=
http://lolsborn.com</a><br>
&gt;<br>
</div></div><span class=3D"m_-705464777501302503HOEnZb"><font color=3D"#888=
888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/poky</=
a><br>
&gt;<br>
</font></span></blockquote></div><br></div>
</div></blockquote></div></div></div><br></div></blockquote></div><br></div=
>

--001a114fca50ade27a053faaf26f--
