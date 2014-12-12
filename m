Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87CB1E00992; Thu, 11 Dec 2014 23:55:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38721E0083A
	for <poky@yoctoproject.org>; Thu, 11 Dec 2014 23:55:44 -0800 (PST)
Received: by mail-la0-f50.google.com with SMTP id pn19so5587417lab.23
	for <poky@yoctoproject.org>; Thu, 11 Dec 2014 23:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YG80R0enEHLycttW2qaEL6er1XWDQCxTm4B+chaicIY=;
	b=my58Xv4wUNn6U3tu6XG8sUZ/g8FlwkvJ/OQZZrnnw7oFab9B273onQWmZgphpoSQKX
	dUr0G9dmYeGi7uI9nheulcl5FJXKvjbfylZ3UXeTs741t7cMWNKEPzcFGqH02OG5lOPp
	UaeLVZrtEc7M+GayrIBNuzlB5w2U4mZAxDLkaUyCLvJtjypOCpW6EXyUFpOfG4fFH38a
	FusrhnLHHU/Eb8i6kjhvRhLanSF8vdkqtH3B+GAn0zENPWGDdJViue7c1UXu5KFMhmIT
	fAjuK/1bFMnGLnYqV71TwglmO+LheW2vvGHF28JtvusKKwvlf9+f9w1l6YN3qhqSBShG
	sATw==
MIME-Version: 1.0
X-Received: by 10.112.63.133 with SMTP id g5mr14027050lbs.33.1418370943208;
	Thu, 11 Dec 2014 23:55:43 -0800 (PST)
Received: by 10.25.154.18 with HTTP; Thu, 11 Dec 2014 23:55:43 -0800 (PST)
In-Reply-To: <1418370119.22903.84.camel@linuxfoundation.org>
References: <CADnUhn1ExKeMJ7GysgxbyJK5V21dp+SCXnm24LJ=SVHaf0crKw@mail.gmail.com>
	<1418370119.22903.84.camel@linuxfoundation.org>
Date: Fri, 12 Dec 2014 09:55:43 +0200
Message-ID: <CADnUhn0aD9S69Fg9v5xyHA_qXC86F0oQEcnJtT-oKdgN=PV5Cw@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: paul.eggleton@linux.intel.com, poky@yoctoproject.org
Subject: Re: bitbake core-image-sato fails
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
X-List-Received-Date: Fri, 12 Dec 2014 07:55:51 -0000
Content-Type: multipart/alternative; boundary=001a11c3d8303ad1bd050a00385a

--001a11c3d8303ad1bd050a00385a
Content-Type: text/plain; charset=UTF-8

Thank  you Richard,
I thought: the shorter, the better...
Anyhow, I think I got the same error when I tried to with
/yocto/yocto/build/tmp. That I'm not sure, though as then I had other
problems in my mind.
I'll try your advices,
Thanks,
Matti

2014-12-12 9:41 GMT+02:00 Richard Purdie <richard.purdie@linuxfoundation.org
>:
>
> On Fri, 2014-12-12 at 08:46 +0200, matti kaasinen wrote:
> > I get following error message when trying to run :
> > bitbake core-image-sato
> > from scratch.
> >
> > ---------- snip -----------
> > ERROR: libxml-parser-perl-native: chrpath command failed with exit
> > code 7:
> >
> /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/sysroot-destdir/TMPDIR/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/auto/XML/Parser/Expat/Expat.so:
> RPATH=/TMPDIR/sysroots/x86_64-linux/usr/lib
> > new rpath '$ORIGIN/../../../../../../../../../usr/lib' too large;
> > maximum length 37
> >
> > ERROR: Function failed
> > ERROR: Logfile of failure stored
> > in:
> /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/temp/log.do_populate_sysroot.2122
> > ERROR: Task 3021
> > (virtual:native:/yocto/poky/meta/recipes-devtools/perl/
> libxml-parser-perl_2.41.bb, do_populate_sysroot) failed with exit code '1'
> > ---------- snip -----------
> >
> > This seems pretty much the same as in:
> >
> http://lists.openembedded.org/pipermail/openembedded-core/2012-August/067002.html
> > at Aug 17, 2012
> >
> Its trying to fit a 43 character string into a field 37 long. The reason
> is the very short path you're building in (/TMPDIR), if you a slightly
> deeper path (by say seven extra characters), this error should be
> resolved.
>
> I think in later versions we did improve this with the patch:
>
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=6fcb96076ca60ef30062fda0ff8308cc840ab07d
>
> so you could also try cherry-picking that and I think it may work
> better.
>
> Cheers,
>
> Richard
>
>
>

--001a11c3d8303ad1bd050a00385a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Thank=C2=A0 you Richard,<br></div=
>I thought: the shorter, the better...<br></div>Anyhow, I think I got the s=
ame error when I tried to with /yocto/yocto/build/tmp. That I&#39;m not sur=
e, though as then I had other problems in my mind.<br></div>I&#39;ll try yo=
ur advices,<br></div>Thanks,<br></div>Matti<br></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">2014-12-12 9:41 GMT+02:00 Richard Purdi=
e <span dir=3D"ltr">&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.or=
g" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;</span>:<blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><span class=3D"">On Fri, 2014-12-12 at 08:46 +02=
00, matti kaasinen wrote:<br>
&gt; I get following error message when trying to run :<br>
&gt; bitbake core-image-sato<br>
&gt; from scratch.<br>
&gt;<br>
&gt; ---------- snip -----------<br>
&gt; ERROR: libxml-parser-perl-native: chrpath command failed with exit<br>
&gt; code 7:<br>
&gt; /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/sysroot-de=
stdir/TMPDIR/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/auto/XML=
/Parser/Expat/Expat.so: RPATH=3D/TMPDIR/sysroots/x86_64-linux/usr/lib<br>
&gt; new rpath &#39;$ORIGIN/../../../../../../../../../usr/lib&#39; too lar=
ge;<br>
&gt; maximum length 37<br>
&gt;<br>
&gt; ERROR: Function failed<br>
&gt; ERROR: Logfile of failure stored<br>
&gt; in: /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/temp/l=
og.do_populate_sysroot.2122<br>
&gt; ERROR: Task 3021<br>
&gt; (virtual:native:/yocto/poky/meta/recipes-devtools/perl/<a href=3D"http=
://libxml-parser-perl_2.41.bb" target=3D"_blank">libxml-parser-perl_2.41.bb=
</a>, do_populate_sysroot) failed with exit code &#39;1&#39;<br>
&gt; ---------- snip -----------<br>
&gt;<br>
&gt; This seems pretty much the same as in:<br>
&gt; <a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2=
012-August/067002.html" target=3D"_blank">http://lists.openembedded.org/pip=
ermail/openembedded-core/2012-August/067002.html</a><br>
&gt; at Aug 17, 2012<br>
&gt;<br>
</span>Its trying to fit a 43 character string into a field 37 long. The re=
ason<br>
is the very short path you&#39;re building in (/TMPDIR), if you a slightly<=
br>
deeper path (by say seven extra characters), this error should be<br>
resolved.<br>
<br>
I think in later versions we did improve this with the patch:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D6fcb96076=
ca60ef30062fda0ff8308cc840ab07d" target=3D"_blank">http://git.yoctoproject.=
org/cgit.cgi/poky/commit/?id=3D6fcb96076ca60ef30062fda0ff8308cc840ab07d</a>=
<br>
<br>
so you could also try cherry-picking that and I think it may work<br>
better.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div></div>

--001a11c3d8303ad1bd050a00385a--
