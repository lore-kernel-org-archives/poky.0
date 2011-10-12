Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECA0AE005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 03:18:53 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwf5 with SMTP id 5so658280wwf.11
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 03:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=/kw+o+u3ze26tijSPTiMQ/mUR43ow58qxys4Q7yRgkc=;
	b=npYd3XifDSAnriXSAr+Wq89nFmn40lgDt+d3/PNV+uEIAew25hNuvkWFpjsmOTdJMk
	g8S+9v2U+7QyKVJV0Ba3eT7rFa9uTwdCQNeSbHGgpZhmpxTrAOrk3l95IHhNbuH5wFcA
	2bOigdgv42wnhCwTSYugdI9c08Hgu1LDhTe9c=
MIME-Version: 1.0
Received: by 10.227.200.146 with SMTP id ew18mr9426799wbb.16.1318414732281;
	Wed, 12 Oct 2011 03:18:52 -0700 (PDT)
Received: by 10.180.86.167 with HTTP; Wed, 12 Oct 2011 03:18:52 -0700 (PDT)
In-Reply-To: <6423790F-59AC-4742-9951-6AE5E1570736@dominion.thruhere.net>
References: <CABRtByO8SsdAQm+0dH9N946MN8nMXnfGQAbMjAYV1hu4U9rBnQ@mail.gmail.com>
	<6423790F-59AC-4742-9951-6AE5E1570736@dominion.thruhere.net>
Date: Wed, 12 Oct 2011 15:48:52 +0530
Message-ID: <CABRtByMv-ZyuuO_+BA96w-ZM51ARynDjRom-N6Fmng7eQWEpJA@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>, poky@yoctoproject.org
Subject: Re: : package libsdl-mixer-1.2.11-r5: task do_compile: Failed
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Oct 2011 10:18:54 -0000
Content-Type: multipart/alternative; boundary=00151758a544c8c92204af17593d

--00151758a544c8c92204af17593d
Content-Type: text/plain; charset=ISO-8859-1

But i'm using the recipe libsdl-mixer_1.2.11.bb taken from open-embedded
only . I Couldn't get meta-oe , where could i find it????

Thanks & Regards,
Sonu.

On Wed, Oct 12, 2011 at 3:16 PM, Koen Kooi <koen@dominion.thruhere.net>wrote:

>
> Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volgende geschreven:
>
> > Hi,
> >
> > I'm trying the build for XBMC 10.05 which depends on libsdl-mixer. I
> pulled the recipe from open embedded which i'm
> > sharing here along with the log file.
> > I'm getting the error as below :
> >
> > | ./libtool: line 6399: cd: =/usr/lib: No such file or directory
> > | libtool: link: warning: cannot determine absolute directory name of
> `=/usr/lib'
> > | /bin/grep: =/usr/lib/libdirectfb.la: No such file or directory
> > | /bin/sed: can't read =/usr/lib/libdirectfb.la: No such file or
> directory
> > | libtool: link: `=/usr/lib/libdirectfb.la' is not a valid libtool
> archive
> > | make: *** [build/libSDL_mixer.la] Error 1
> > | make: *** Waiting for unfinished jobs....
> > | FATAL: oe_runmake failed
> > | ERROR: Function 'do_compile' failed (see
> /home/sct/logi/test-gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.23677
> for further information)
> > NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed
> >
> > I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10
> ,64 bit .
> > Can someone help me out of this problem ?
>
>
> The libsdl-mixer recipe in meta-oe works just fine, why not use that?
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--00151758a544c8c92204af17593d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br>But i&#39;m using the recipe <a href=3D"http://libsdl-mixer_1.2.11.bb">=
libsdl-mixer_1.2.11.bb</a> taken from open-embedded only . I Couldn&#39;t g=
et meta-oe , where could i find it????<div><br></div><div>Thanks &amp; Rega=
rds,</div>
<div>Sonu.</div><div><br><div class=3D"gmail_quote">On Wed, Oct 12, 2011 at=
 3:16 PM, Koen Kooi <span dir=3D"ltr">&lt;<a href=3D"mailto:koen@dominion.t=
hruhere.net">koen@dominion.thruhere.net</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex;">
<br>
Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volgende geschreven:<b=
r>
<div><div></div><div class=3D"h5"><br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m trying the build for XBMC 10.05 which depends on libsdl-mixer.=
 I pulled the recipe from open embedded which i&#39;m<br>
&gt; sharing here along with the log file.<br>
&gt; I&#39;m getting the error as below :<br>
&gt;<br>
&gt; | ./libtool: line 6399: cd: =3D/usr/lib: No such file or directory<br>
&gt; | libtool: link: warning: cannot determine absolute directory name of =
`=3D/usr/lib&#39;<br>
&gt; | /bin/grep: =3D/usr/lib/<a href=3D"http://libdirectfb.la" target=3D"_=
blank">libdirectfb.la</a>: No such file or directory<br>
&gt; | /bin/sed: can&#39;t read =3D/usr/lib/<a href=3D"http://libdirectfb.l=
a" target=3D"_blank">libdirectfb.la</a>: No such file or directory<br>
&gt; | libtool: link: `=3D/usr/lib/<a href=3D"http://libdirectfb.la" target=
=3D"_blank">libdirectfb.la</a>&#39; is not a valid libtool archive<br>
&gt; | make: *** [build/libSDL_mixer.la] Error 1<br>
&gt; | make: *** Waiting for unfinished jobs....<br>
&gt; | FATAL: oe_runmake failed<br>
&gt; | ERROR: Function &#39;do_compile&#39; failed (see /home/sct/logi/test=
-gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/libsdl-mix=
er-1.2.11-r5/temp/log.do_compile.23677 for further information)<br>
&gt; NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed<br>
&gt;<br>
&gt; I&#39;m pulling for the Fishriver machine . My host machine is Ubuntu =
10.10 ,64 bit .<br>
&gt; Can someone help me out of this problem ?<br>
<br>
<br>
</div></div>The libsdl-mixer recipe in meta-oe works just fine, why not use=
 that?<br>
<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br></div>

--00151758a544c8c92204af17593d--
