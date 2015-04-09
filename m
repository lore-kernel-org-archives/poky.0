Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 617DAE00954; Thu,  9 Apr 2015 03:40:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E1DE008EC;
	Thu,  9 Apr 2015 03:40:53 -0700 (PDT)
Received: by pabtp1 with SMTP id tp1so40266462pab.2;
	Thu, 09 Apr 2015 03:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=65FkL+KsTsYng0ZEmANvakzm9TRvg1nAsAx6imoHQcI=;
	b=loIJsUGGVNDMYpadG9BkkcRJ04sYKgsga4i0cU67JCbANTMLps/pX2JnVHDPba7F4i
	A+wINk5eYuO6IMcagaozbB7brrzcKdiO19y8LivpKa+h03kv1ZDdy4WZYLG/VDsmD+4c
	NrXBEVkCPlAIe9L0mKqIaQU3IzMiqu4X/74tdCyx879bewWnOp3EFJAAEcXNSRf22wS2
	TxLOh4GP07BMNL2880S2F/oukhjJn9X8KuUegic8rIqIWzuSljcvjUd12PkfzkKemcFY
	tdMFkpLRT3cxsQS2ekoTKBFEcQvJUYMDGLkxEEDbvryxD01tgeQU9Js8LptWcSXJzikw
	zmQA==
MIME-Version: 1.0
X-Received: by 10.68.227.41 with SMTP id rx9mr53897744pbc.76.1428576052848;
	Thu, 09 Apr 2015 03:40:52 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Thu, 9 Apr 2015 03:40:52 -0700 (PDT)
In-Reply-To: <2739009.PeNPmdtyko@peggleto-mobl.ger.corp.intel.com>
References: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
	<CA+pXca261qeRDUw4vCUxpczKYdsjhEpMQ3O63kfCp7iQCeTbMg@mail.gmail.com>
	<CA+pXca3j+yaTzZZsRSFckutbG1cfRH=c+tDcyT5rtB2Xo75r2g@mail.gmail.com>
	<2739009.PeNPmdtyko@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 9 Apr 2015 16:10:52 +0530
Message-ID: <CA+pXca1yMx9doE3079TTXqzMFRHmBzWBTzi9eV4rkEKyEHJdEQ@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: [yocto] error in xerces-c in yocto-dizzy-1.7.1
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
X-List-Received-Date: Thu, 09 Apr 2015 10:40:55 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1ce762a2cb7051348483a

--e89a8ff1ce762a2cb7051348483a
Content-Type: text/plain; charset=UTF-8

Hi Paul,
I got struck here what should i add to .bb file to solve this error...

Thanks
Praveen

On Thu, Apr 9, 2015 at 3:39 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Thursday 09 April 2015 15:30:40 praveen vattipalli wrote:
> > i changed the bb file
> > now xerces-c_3.1.1.bb <http://xerces-c_3.1.1.bb> recipe looks like this
> >
> > DESCRIPTION = "Xerces-c is a validating xml parser written in C++"
> > HOMEPAGE = "http://xerces.apache.org/xerces-c/"
> > SECTION =  "libs"
> > PRIORITY = "optional"
> > LICENSE = "Apache-2.0"
> >
> > LIC_FILES_CHKSUM = "file://LICENSE;md5=
> > 3b83ef96387f14655fc854ddc3c6bd57"
> >
> > SRC_URI = "http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.gz"
> >
> > inherit autotools pkgconfig
> >
> > PACKAGES = "libxerces-c \
> >     libxerces-c-dbg \
> >     libxerces-c-dev \
> >     xerces-c-samples \
> >     xerces-c-samples-dbg \
> > "
> >
> > FILES_libxerces-c = "${libdir}/libxerces-c-3.1.so"
> > FILES_libxerces-c-dbg = "${libdir}/.debug/"
> > FILES_libxerces-c-dev = "${libdir}/lib*.la  \
> >     ${libdir}/libxerces-c.so \
> >     ${libdir}/pkgconfig/xerces-c.pc \
> >     ${includedir}/xercesc \
> > "
> > FILES_libxerces-c-staticdev = "${libdir}/libxerces-c.a"
> > FILES_xerces-c-samples = "${bindir}/*  ${prefix}/src/debug"
> > FILES_xerces-c-samples-dbg = "${bindir}/.debug/"
> >
> > SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
> > SRC_URI[sha256sum] =
> > "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"
> >
> > almost all errors have been resolved except below....
> >
> > now I am getting below error
> >
> >
> >
> > *ERROR: QA Issue: xerces-c: Files/directories were installed but not
> > shipped  /usr/lib/libxerces-c.a [installed-vs-shipped]NOTE: Tasks
> Summary:
> > Attempted 382 tasks of which 376 didn't need to be rerun and all
> succeeded.*
> >
> > Summary: There was 1 WARNING message shown.
> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> You are setting FILES_libxerces-c-staticdev, but there is no
> libxerces-c-staticdev in PACKAGES, so the file is not actually packaged,
> hence
> the error.
>
> BTW as a general best practice for most recipes I would advise adding to
> PACKAGES rather than setting it outright - this will of course mean your
> library packages will be called xerces-c* rather than libxerces-c* within
> recipe, but they are going to be renamed to libxerces-c* at runtime anyway
> by
> debian.bbclass.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--e89a8ff1ce762a2cb7051348483a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Paul,<br></div>I got struck here what sh=
ould i add to .bb file to solve this error...<br><br></div>Thanks <br></div=
>Praveen<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Thu, Apr 9, 2015 at 3:39 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><sp=
an class=3D"">On Thursday 09 April 2015 15:30:40 praveen vattipalli wrote:<=
br>
&gt; i changed the bb file<br>
</span>&gt; now <a href=3D"http://xerces-c_3.1.1.bb" target=3D"_blank">xerc=
es-c_3.1.1.bb</a> &lt;<a href=3D"http://xerces-c_3.1.1.bb" target=3D"_blank=
">http://xerces-c_3.1.1.bb</a>&gt; recipe looks like this<br>
<div><div class=3D"h5">&gt;<br>
&gt; DESCRIPTION =3D &quot;Xerces-c is a validating xml parser written in C=
++&quot;<br>
&gt; HOMEPAGE =3D &quot;<a href=3D"http://xerces.apache.org/xerces-c/" targ=
et=3D"_blank">http://xerces.apache.org/xerces-c/</a>&quot;<br>
&gt; SECTION =3D=C2=A0 &quot;libs&quot;<br>
&gt; PRIORITY =3D &quot;optional&quot;<br>
&gt; LICENSE =3D &quot;Apache-2.0&quot;<br>
&gt;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D<br>
&gt; 3b83ef96387f14655fc854ddc3c6bd57&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot;<a href=3D"http://apache.lauf-forum.at/xerces/c/3/so=
urces/${BP}.tar.gz" target=3D"_blank">http://apache.lauf-forum.at/xerces/c/=
3/sources/${BP}.tar.gz</a>&quot;<br>
&gt;<br>
&gt; inherit autotools pkgconfig<br>
&gt;<br>
&gt; PACKAGES =3D &quot;libxerces-c \<br>
&gt;=C2=A0 =C2=A0 =C2=A0libxerces-c-dbg \<br>
&gt;=C2=A0 =C2=A0 =C2=A0libxerces-c-dev \<br>
&gt;=C2=A0 =C2=A0 =C2=A0xerces-c-samples \<br>
&gt;=C2=A0 =C2=A0 =C2=A0xerces-c-samples-dbg \<br>
&gt; &quot;<br>
&gt;<br>
&gt; FILES_libxerces-c =3D &quot;${libdir}/<a href=3D"http://libxerces-c-3.=
1.so" target=3D"_blank">libxerces-c-3.1.so</a>&quot;<br>
&gt; FILES_libxerces-c-dbg =3D &quot;${libdir}/.debug/&quot;<br>
&gt; FILES_libxerces-c-dev =3D &quot;${libdir}/lib*.la=C2=A0 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0${libdir}/libxerces-c.so \<br>
&gt;=C2=A0 =C2=A0 =C2=A0${libdir}/pkgconfig/xerces-c.pc \<br>
&gt;=C2=A0 =C2=A0 =C2=A0${includedir}/xercesc \<br>
&gt; &quot;<br>
&gt; FILES_libxerces-c-staticdev =3D &quot;${libdir}/libxerces-c.a&quot;<br=
>
&gt; FILES_xerces-c-samples =3D &quot;${bindir}/*=C2=A0 ${prefix}/src/debug=
&quot;<br>
&gt; FILES_xerces-c-samples-dbg =3D &quot;${bindir}/.debug/&quot;<br>
&gt;<br>
&gt; SRC_URI[md5sum] =3D &quot;6a8ec45d83c8cfb1584c5a5345cb51ae&quot;<br>
&gt; SRC_URI[sha256sum] =3D<br>
&gt; &quot;a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736=
&quot;<br>
&gt;<br>
&gt; almost all errors have been resolved except below....<br>
&gt;<br>
&gt; now I am getting below error<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div>&gt; *ERROR: QA Issue: xerces-c: Files/directories were install=
ed but not<br>
<span class=3D"">&gt; shipped=C2=A0 /usr/lib/libxerces-c.a [installed-vs-sh=
ipped]NOTE: Tasks Summary:<br>
</span>&gt; Attempted 382 tasks of which 376 didn&#39;t need to be rerun an=
d all succeeded.*<br>
<span class=3D"">&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
<br>
</span>You are setting FILES_libxerces-c-staticdev, but there is no<br>
libxerces-c-staticdev in PACKAGES, so the file is not actually packaged, he=
nce<br>
the error.<br>
<br>
BTW as a general best practice for most recipes I would advise adding to<br=
>
PACKAGES rather than setting it outright - this will of course mean your<br=
>
library packages will be called xerces-c* rather than libxerces-c* within<b=
r>
recipe, but they are going to be renamed to libxerces-c* at runtime anyway =
by<br>
debian.bbclass.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--e89a8ff1ce762a2cb7051348483a--
