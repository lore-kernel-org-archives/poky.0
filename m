Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25E7EE00757; Mon, 16 Feb 2015 07:32:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HK_RANDOM_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (priyaiitmandi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55D30E00754;
	Mon, 16 Feb 2015 07:31:58 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id h15so24183462igd.3;
	Mon, 16 Feb 2015 07:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fyaSHJuIZBGTYzzkf5oSrBOBXgVYFuYPZ3KJtJn/REA=;
	b=t9f/ggIp/UBFRmqTQginNzXzS+WfsVQdcvMN3IVRPISw8uujOHxSk9aOwz95aPZbCt
	5qbdXkdBwtBkB87D9/VdpowZy9hX0gNO3wTKotT0h3n9GVUgrrXMEGeOFvLWEzubjxnw
	82rRAGIVfBusps/i1KmHfEKScIDUSGFoscSJdpvLpEaQLfp/uubGYHnu5mNZ5UATEl8W
	C3zYqHilA0KFRteIISdHRhebWWSj0h4FHN+AH2Elt43L1Cv75tqETAPw1VifyN/mUxvh
	XpBQiyc+ZdV+uFgTZ0HTyzrGoJGN6GjeEeyc2qGjr/hdJIs8vzOKqZLJdJlLGZ3kzeR3
	GpCw==
MIME-Version: 1.0
X-Received: by 10.42.130.74 with SMTP id u10mr24733818ics.61.1424100718051;
	Mon, 16 Feb 2015 07:31:58 -0800 (PST)
Received: by 10.107.134.207 with HTTP; Mon, 16 Feb 2015 07:31:57 -0800 (PST)
In-Reply-To: <CAP9ODKpsd-dpQa-q6GZANbJc9cw12ZQivCR1VQvBfqqd2aW89A@mail.gmail.com>
References: <CALTPfpHDYT3_O6TDCtmZCH432h9-xaX6fhm4W0mEgErshNqCuA@mail.gmail.com>
	<CAP9ODKpsd-dpQa-q6GZANbJc9cw12ZQivCR1VQvBfqqd2aW89A@mail.gmail.com>
Date: Mon, 16 Feb 2015 21:01:57 +0530
Message-ID: <CALTPfpESr6dqq4GHZ7+RzPn28cwgE7RXT43RgcmxcM0QO49t5Q@mail.gmail.com>
From: Priya Agarwal <priyaiitmandi@gmail.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta-freescale] How to remove: WARNING: No bb files matched BBFILE_PATTERN_mylayer '^/media/NewVolume/yocto/meta-mylayer/'
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
X-List-Received-Date: Mon, 16 Feb 2015 15:32:00 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e83626c87d6050f364933

--90e6ba6e83626c87d6050f364933
Content-Type: text/plain; charset=UTF-8

Thanks. I could solve it.
I wanted to ask one thing. What do I write in LICENSE AND LIC_FILES_CHKSUM
for my c++ file. Its not some source code I took online which has a license
or corresponding COPYING/README etc. files.

Regards

On Mon, Feb 16, 2015 at 6:21 PM, Otavio Salvador <otavio@ossystems.com.br>
wrote:

> Hello Priya,
>
> On Mon, Feb 16, 2015 at 6:14 AM, Priya Agarwal <priyaiitmandi@gmail.com>
> wrote:
> > I want to compile a c++ file(tcpserver.cpp) and build it along with my
> > kernel image. I am using QorIQ SDK1.4.
> >
> > I created a new layer meta-mylayer in yocto/, wrote a simple recipe file,
> > and edited bblayers.conf and local.conf. But I am getting the following
> > error:
> >
> > WARNING: No bb files matched BBFILE_PATTERN_mylayer
> > '^/media/NewVolume/yocto/meta-mylayer/'
> >
> > What does this mean and how should I remove it?
>
> It means 'bitbake' didn't find recipes (bb files) on you layer.
>
> > The .bb file is in:
> > yocto/meta-mylayer/tcpserver/tcpserver.bb
>
> This is what is wrong.
>
> Take a look in the meta-mylayer/conf/layer.conf, specially the BBFILES
> variable.
>
> This imply every recipe to be included inside a
> recipes-<something>/<something>/file.bb
>
> In your code it could go to:
>
> meta-mylayer/recipes-networking/tcpserver/tcpserver.bb
>
> --
> Otavio Salvador                             O.S. Systems
> http://www.ossystems.com.br        http://code.ossystems.com.br
> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750
>

--90e6ba6e83626c87d6050f364933
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thanks. I could solve it.<br></div>I wanted to a=
sk one thing. What do I write in LICENSE AND LIC_FILES_CHKSUM for my c++ fi=
le. Its not some source code I took online which has a license or correspon=
ding COPYING/README etc. files.<br><br></div>Regards<br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Feb 16, 2015 at 6:21 P=
M, Otavio Salvador <span dir=3D"ltr">&lt;<a href=3D"mailto:otavio@ossystems=
.com.br" target=3D"_blank">otavio@ossystems.com.br</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Hello Priya,<br>
<span class=3D""><br>
On Mon, Feb 16, 2015 at 6:14 AM, Priya Agarwal &lt;<a href=3D"mailto:priyai=
itmandi@gmail.com">priyaiitmandi@gmail.com</a>&gt; wrote:<br>
&gt; I want to compile a c++ file(tcpserver.cpp) and build it along with my=
<br>
&gt; kernel image. I am using QorIQ SDK1.4.<br>
&gt;<br>
&gt; I created a new layer meta-mylayer in yocto/, wrote a simple recipe fi=
le,<br>
&gt; and edited bblayers.conf and local.conf. But I am getting the followin=
g<br>
&gt; error:<br>
&gt;<br>
&gt; WARNING: No bb files matched BBFILE_PATTERN_mylayer<br>
&gt; &#39;^/media/NewVolume/yocto/meta-mylayer/&#39;<br>
&gt;<br>
&gt; What does this mean and how should I remove it?<br>
<br>
</span>It means &#39;bitbake&#39; didn&#39;t find recipes (bb files) on you=
 layer.<br>
<span class=3D""><br>
&gt; The .bb file is in:<br>
&gt; yocto/meta-mylayer/tcpserver/<a href=3D"http://tcpserver.bb" target=3D=
"_blank">tcpserver.bb</a><br>
<br>
</span>This is what is wrong.<br>
<br>
Take a look in the meta-mylayer/conf/layer.conf, specially the BBFILES vari=
able.<br>
<br>
This imply every recipe to be included inside a<br>
recipes-&lt;something&gt;/&lt;something&gt;/<a href=3D"http://file.bb" targ=
et=3D"_blank">file.bb</a><br>
<br>
In your code it could go to:<br>
<br>
meta-mylayer/recipes-networking/tcpserver/<a href=3D"http://tcpserver.bb" t=
arget=3D"_blank">tcpserver.bb</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Otavio Salvador=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0O.S. Systems<br>
<a href=3D"http://www.ossystems.com.br" target=3D"_blank">http://www.ossyst=
ems.com.br</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://code.ossystems.=
com.br" target=3D"_blank">http://code.ossystems.com.br</a><br>
Mobile: +55 (53) 9981-7854=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mobile:=
 +1 (347) 903-9750<br>
</font></span></blockquote></div><br></div>

--90e6ba6e83626c87d6050f364933--
