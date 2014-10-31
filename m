Return-Path: <jkv@unixcluster.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5043E007B9; Fri, 31 Oct 2014 08:51:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ED7CE00848
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 08:51:27 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id b13so6220583wgh.25
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 08:51:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=9xOudgEY4pn9RTvEt+ufDMVkyXMuPH0nGPLbE/36Gjw=;
	b=GN4qJ3R9Hd19fPVMCaZVs00f06QcjLNdBR4zbmVJ5l0O101VpcevRh4bAYfzTCZgw9
	tIm/4+SgN+9NhFehpfQSzMrjcGG9NEd4m80bfQJN0Gu0SzRJKVmWUoaZ1s0ReYK6+X7r
	jofRnrezpSXNe6F8TMrW31BV7yzeoakrQ2Gk37WN0ekIdhXvXbY4MbyEER03xyf7UzAZ
	DjXY5cZn5hUWpegIUffZq8xWtY9iuUo50a1nIzwUMjxR0kMMtbandNMcqkX2hc9/27vx
	3lGbZN1DxmbyqAbFQt2g1qc6XvCg/Svc1pBRbyW0Xyp8TymtE62faztW08VAeR1VUR3R
	39/Q==
X-Gm-Message-State: ALoCoQkbgzpLwuBdbq7/NeT3l8hGdLfthuRFxAxoV1cKa3nG4qc8Xi4YamdszWSDsxoz0Dq2mhZs
MIME-Version: 1.0
X-Received: by 10.194.80.100 with SMTP id q4mr28985812wjx.15.1414770686514;
	Fri, 31 Oct 2014 08:51:26 -0700 (PDT)
Received: by 10.217.93.197 with HTTP; Fri, 31 Oct 2014 08:51:26 -0700 (PDT)
X-Originating-IP: [87.104.18.136]
In-Reply-To: <7149224.6hmKD4ZtYX@peggleto-mobl5.ger.corp.intel.com>
References: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
	<1493154.0U7i0oWxCZ@peggleto-mobl5.ger.corp.intel.com>
	<CAO+iiFxU=A7e0eNGUH5kZ6BvJ6LhiTrUcv7fGJKiC1pUQPwMsg@mail.gmail.com>
	<7149224.6hmKD4ZtYX@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 31 Oct 2014 16:51:26 +0100
Message-ID: <CAO+iiFwKrRkwHj2HVjam31XSp-TXac=SGZgAh53A_FfOjYGGmg@mail.gmail.com>
From: Johnny Vestergaard <jkv@unixcluster.dk>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Auto loading nls-iso8859-1kernel module
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
X-List-Received-Date: Fri, 31 Oct 2014 15:51:55 -0000
Content-Type: multipart/alternative; boundary=047d7bb04dca3573440506b9f8dd

--047d7bb04dca3573440506b9f8dd
Content-Type: text/plain; charset=UTF-8

Still no luck, but thanks! Now i at least have a pointer to a potential
root cause.


On Fri, Oct 31, 2014 at 3:53 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Friday 31 October 2014 15:49:29 Johnny Vestergaard wrote:
> > On Fri, Oct 31, 2014 at 1:11 PM, Paul Eggleton <
> >
> > paul.eggleton@linux.intel.com> wrote:
> > > On Friday 31 October 2014 13:01:22 Johnny Vestergaard wrote:
> > > > Thanks for the quick response. Actually i tried adding it to
> local.conf,
> > > > but it seems like bitbake did not pick it up - at least it did not
> > >
> > > rewrite
> > >
> > > > the rootfs.
> > >
> > > Right, that is a known issue - you'll have to clean the kernel & image
> as
> > > it
> > > won't pick up changes to the module_autoload variable after the kernel
> has
> > > been built:
> > >
> > > bitbake -c clean virtual/kernel
> > > bitbake -c clean your-imagename
> > >
> > > Then you should be able to build the image with the change to
> > > module_autoload
> > > incorporated.
> >
> > Thanks for the tips. certainly get's me in the right direction.
> > But, putting the following at the end of my local.conf:
> >
> > MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=  " kernel-module-nls-cp437"
> > module_autoload_nls-cp437 = "nls-cp437"
> >
> > and cleaning virtual/kernel afterwards still does not autoload the
> module -
> > but the module is included correctly.
>
> Oh, sorry, I think you'd need to do:
>
> bitbake -c cleansstate virtual/kernel
> bitbake -c cleansstate your-imagename
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7bb04dca3573440506b9f8dd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Still no luck, but thanks! Now i at least have a pointer t=
o a potential root cause.<div><br></div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Fri, Oct 31, 2014 at 3:53 PM, Paul Eggleton=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" tar=
get=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Friday=
 31 October 2014 15:49:29 Johnny Vestergaard wrote:<br>
&gt; On Fri, Oct 31, 2014 at 1:11 PM, Paul Eggleton &lt;<br>
&gt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.i=
ntel.com</a>&gt; wrote:<br>
&gt; &gt; On Friday 31 October 2014 13:01:22 Johnny Vestergaard wrote:<br>
&gt; &gt; &gt; Thanks for the quick response. Actually i tried adding it to=
 local.conf,<br>
&gt; &gt; &gt; but it seems like bitbake did not pick it up - at least it d=
id not<br>
&gt; &gt;<br>
&gt; &gt; rewrite<br>
&gt; &gt;<br>
&gt; &gt; &gt; the rootfs.<br>
&gt; &gt;<br>
&gt; &gt; Right, that is a known issue - you&#39;ll have to clean the kerne=
l &amp; image as<br>
&gt; &gt; it<br>
&gt; &gt; won&#39;t pick up changes to the module_autoload variable after t=
he kernel has<br>
&gt; &gt; been built:<br>
&gt; &gt;<br>
&gt; &gt; bitbake -c clean virtual/kernel<br>
&gt; &gt; bitbake -c clean your-imagename<br>
&gt; &gt;<br>
&gt; &gt; Then you should be able to build the image with the change to<br>
&gt; &gt; module_autoload<br>
&gt; &gt; incorporated.<br>
&gt;<br>
&gt; Thanks for the tips. certainly get&#39;s me in the right direction.<br=
>
&gt; But, putting the following at the end of my local.conf:<br>
&gt;<br>
&gt; MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D=C2=A0 &quot; kernel-module-nl=
s-cp437&quot;<br>
&gt; module_autoload_nls-cp437 =3D &quot;nls-cp437&quot;<br>
&gt;<br>
&gt; and cleaning virtual/kernel afterwards still does not autoload the mod=
ule -<br>
&gt; but the module is included correctly.<br>
<br>
</div></div>Oh, sorry, I think you&#39;d need to do:<br>
<br>
bitbake -c cleansstate virtual/kernel<br>
bitbake -c cleansstate your-imagename<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7bb04dca3573440506b9f8dd--
