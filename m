Return-Path: <jkv@unixcluster.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E834E007A0; Fri, 31 Oct 2014 16:06:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1409AE00749
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 16:06:05 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id ex7so2470504wid.4
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 16:06:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Ccs82klJbZAORXaOHLN4DRTk1laILcSNlL2fO9mfBh8=;
	b=P7gfTSTW4BD+LolnXV6xix5sNwwF96KibbACV3upBayXZ05ZkX+fjt+GOXfMyV2nv/
	zlqC6yqGDfBG/8Olkurg5kE0leDADnIz30vrwByUNZ5k3ozihZ0t6/hBWXLzDS+jqvOp
	ud1SgCAxfUoNubYnSgTctaUY2nWByBu3eIIsDs5OVFpTglHCsOjpcbKUENIClP+U4D/O
	Tn1Q9fj0p9uWb18LUToJ8/fUlzJBwgctppXkYy3HF7MWJTfznNcPO/DxmveyTzn/pg13
	mlR0YaNbxZC8So0x5zGrdpeHbqIcBC0tVkqmslT5JlDwJmHdPgWLUABjvGA9Dpp6e7df
	hX5Q==
X-Gm-Message-State: ALoCoQlhyCkn0iQ2lvav1anBbiawWAe8QYRBeRYpP6pr7VdGr8xzoukkoyInXv1WQ3UiaTagttWH
MIME-Version: 1.0
X-Received: by 10.180.104.198 with SMTP id gg6mr248471wib.76.1414796764702;
	Fri, 31 Oct 2014 16:06:04 -0700 (PDT)
Received: by 10.217.93.197 with HTTP; Fri, 31 Oct 2014 16:06:04 -0700 (PDT)
X-Originating-IP: [87.104.18.136]
In-Reply-To: <20141031185019.GG15148@jama>
References: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
	<1493154.0U7i0oWxCZ@peggleto-mobl5.ger.corp.intel.com>
	<CAO+iiFxU=A7e0eNGUH5kZ6BvJ6LhiTrUcv7fGJKiC1pUQPwMsg@mail.gmail.com>
	<7149224.6hmKD4ZtYX@peggleto-mobl5.ger.corp.intel.com>
	<CAO+iiFwKrRkwHj2HVjam31XSp-TXac=SGZgAh53A_FfOjYGGmg@mail.gmail.com>
	<20141031185019.GG15148@jama>
Date: Sat, 1 Nov 2014 00:06:04 +0100
Message-ID: <CAO+iiFyLLX-ZQf=T0QYW6MpB9A==5=Sw5vKabKaWw7csGeMLAg@mail.gmail.com>
From: Johnny Vestergaard <jkv@unixcluster.dk>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
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
X-List-Received-Date: Fri, 31 Oct 2014 23:06:12 -0000
Content-Type: multipart/alternative; boundary=f46d04426e1096fe0d0506c00aa5

--f46d04426e1096fe0d0506c00aa5
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 31, 2014 at 7:50 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> On Fri, Oct 31, 2014 at 04:51:26PM +0100, Johnny Vestergaard wrote:
> > Still no luck, but thanks! Now i at least have a pointer to a potential
> > root cause.
>
> Is this with oe-core master or dizzy?
>


I just tried with dizzy, no luck either. Added the following to local.conf:

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=  "kernel-module-nls-iso8859-1
kernel-module-nls-cp437 kernel-module-nls-utf8"
KERNEL_MODULE_AUTOLOAD += "nls-utf8 nls-iso8859-1 nls-cp437"


> In that case you need to add the module basename in KERNEL_MODULE_AUTOLOAD
> and in
> cases where module name == basename, you don't need module_autoload
> variable at all.
>
> > On Fri, Oct 31, 2014 at 3:53 PM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> >
> > > On Friday 31 October 2014 15:49:29 Johnny Vestergaard wrote:
> > > > On Fri, Oct 31, 2014 at 1:11 PM, Paul Eggleton <
> > > >
> > > > paul.eggleton@linux.intel.com> wrote:
> > > > > On Friday 31 October 2014 13:01:22 Johnny Vestergaard wrote:
> > > > > > Thanks for the quick response. Actually i tried adding it to
> > > local.conf,
> > > > > > but it seems like bitbake did not pick it up - at least it did
> not
> > > > >
> > > > > rewrite
> > > > >
> > > > > > the rootfs.
> > > > >
> > > > > Right, that is a known issue - you'll have to clean the kernel &
> image
> > > as
> > > > > it
> > > > > won't pick up changes to the module_autoload variable after the
> kernel
> > > has
> > > > > been built:
> > > > >
> > > > > bitbake -c clean virtual/kernel
> > > > > bitbake -c clean your-imagename
> > > > >
> > > > > Then you should be able to build the image with the change to
> > > > > module_autoload
> > > > > incorporated.
> > > >
> > > > Thanks for the tips. certainly get's me in the right direction.
> > > > But, putting the following at the end of my local.conf:
> > > >
> > > > MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=  " kernel-module-nls-cp437"
> > > > module_autoload_nls-cp437 = "nls-cp437"
> > > >
> > > > and cleaning virtual/kernel afterwards still does not autoload the
> > > module -
> > > > but the module is included correctly.
> > >
> > > Oh, sorry, I think you'd need to do:
> > >
> > > bitbake -c cleansstate virtual/kernel
> > > bitbake -c cleansstate your-imagename
> > >
> > > Cheers,
> > > Paul
> > >
> > > --
> > >
> > > Paul Eggleton
> > > Intel Open Source Technology Centre
> > >
>
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--f46d04426e1096fe0d0506c00aa5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Oct 31, 2014 at 7:50 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"=
mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex"><span class=3D"">On Fri, Oct 31, 201=
4 at 04:51:26PM +0100, Johnny Vestergaard wrote:<br>
&gt; Still no luck, but thanks! Now i at least have a pointer to a potentia=
l<br>
&gt; root cause.<br>
<br>
</span>Is this with oe-core master or dizzy?<br></blockquote><div><br></div=
><div><br></div><div>I just tried with dizzy, no luck either. Added the fol=
lowing to local.conf:</div><div><span class=3D""><br></span></div><div><spa=
n class=3D"">MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D=C2=A0 </span>&quot;ke=
rnel-module-nls-iso8859-1 kernel-module-nls-cp437 kernel-module-nls-utf8&qu=
ot;</div><div><span class=3D"">KERNEL_MODULE_AUTOLOAD +=3D </span>&quot;nls=
-utf8 nls-iso8859-1 nls-cp437&quot;</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
In that case you need to add the module basename in KERNEL_MODULE_AUTOLOAD =
and in<br>
cases where module name =3D=3D basename, you don&#39;t need module_autoload=
<br>
variable at all.<br>
<div class=3D""><div class=3D"h5"><br>
&gt; On Fri, Oct 31, 2014 at 3:53 PM, Paul Eggleton &lt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.i=
ntel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On Friday 31 October 2014 15:49:29 Johnny Vestergaard wrote:<br>
&gt; &gt; &gt; On Fri, Oct 31, 2014 at 1:11 PM, Paul Eggleton &lt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.egglet=
on@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; On Friday 31 October 2014 13:01:22 Johnny Vestergaard w=
rote:<br>
&gt; &gt; &gt; &gt; &gt; Thanks for the quick response. Actually i tried ad=
ding it to<br>
&gt; &gt; local.conf,<br>
&gt; &gt; &gt; &gt; &gt; but it seems like bitbake did not pick it up - at =
least it did not<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; rewrite<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; the rootfs.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Right, that is a known issue - you&#39;ll have to clean=
 the kernel &amp; image<br>
&gt; &gt; as<br>
&gt; &gt; &gt; &gt; it<br>
&gt; &gt; &gt; &gt; won&#39;t pick up changes to the module_autoload variab=
le after the kernel<br>
&gt; &gt; has<br>
&gt; &gt; &gt; &gt; been built:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; bitbake -c clean virtual/kernel<br>
&gt; &gt; &gt; &gt; bitbake -c clean your-imagename<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Then you should be able to build the image with the cha=
nge to<br>
&gt; &gt; &gt; &gt; module_autoload<br>
&gt; &gt; &gt; &gt; incorporated.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Thanks for the tips. certainly get&#39;s me in the right dir=
ection.<br>
&gt; &gt; &gt; But, putting the following at the end of my local.conf:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D=C2=A0 &quot; kernel=
-module-nls-cp437&quot;<br>
&gt; &gt; &gt; module_autoload_nls-cp437 =3D &quot;nls-cp437&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; and cleaning virtual/kernel afterwards still does not autolo=
ad the<br>
&gt; &gt; module -<br>
&gt; &gt; &gt; but the module is included correctly.<br>
&gt; &gt;<br>
&gt; &gt; Oh, sorry, I think you&#39;d need to do:<br>
&gt; &gt;<br>
&gt; &gt; bitbake -c cleansstate virtual/kernel<br>
&gt; &gt; bitbake -c cleansstate your-imagename<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Paul<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt;<br>
&gt; &gt; Paul Eggleton<br>
&gt; &gt; Intel Open Source Technology Centre<br>
&gt; &gt;<br>
<br>
</div></div><span class=3D""><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
<br>
--<br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div></div>

--f46d04426e1096fe0d0506c00aa5--
