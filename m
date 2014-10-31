Return-Path: <jkv@unixcluster.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1D93E008FF; Fri, 31 Oct 2014 05:01:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A14E007BA
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 05:01:23 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id n3so1105785wiv.2
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 05:01:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=OjOYu7+FEvUaIhSX9Xua/T4ZrKM4psm3EhVhpyQCqFA=;
	b=Aufc+6m8rXBJhDw9ffDyKOcAl3iYK8cpuHBxn6YXRhr/B3Pv8acWu+8y5VU14o3Ht+
	mFKNxEP3v1oAOyysP5lgkG30bCiHK/Z/CkAiHvrO21yCpPeeXTBOsrHxzQR4uR8vlC25
	rha6P1BrEe7EP3ofe5r60cCpUjC31toLsbgreBGKgPUmIRBAR2BbS7egvxtY9vQ1e+MI
	WI84BKCv/DnlhY19C4l0aW7+bcO5Hrx8Y/AzoOnluu+QQ95M7Bpb4PLoFyjdTuqbs7zn
	zUXe13l0Fnh1yHi+L//HjIc9Z+UCvnw7pC4TUbdkLoIxCYvb7ggyWx4WlVnzJVLsVX6n
	06lQ==
X-Gm-Message-State: ALoCoQkrIPgxpz7a4MW7WKKoQhVSgIH0HHEgCnEovCPkiqPOIBVUIUJ/fy3egwiYSkTUM79df+Xz
MIME-Version: 1.0
X-Received: by 10.180.11.227 with SMTP id t3mr3416321wib.45.1414756882169;
	Fri, 31 Oct 2014 05:01:22 -0700 (PDT)
Received: by 10.217.93.197 with HTTP; Fri, 31 Oct 2014 05:01:22 -0700 (PDT)
X-Originating-IP: [87.104.18.136]
In-Reply-To: <3848381.aJ2N9BMdoM@peggleto-mobl5.ger.corp.intel.com>
References: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
	<3848381.aJ2N9BMdoM@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 31 Oct 2014 13:01:22 +0100
Message-ID: <CAO+iiFxvAOmtJars0vMR=d8T3BRyvsoyT4sr3tXna=gOv_j_og@mail.gmail.com>
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
X-List-Received-Date: Fri, 31 Oct 2014 12:01:38 -0000
Content-Type: multipart/alternative; boundary=001a11c2400c68872b0506b6c15b

--001a11c2400c68872b0506b6c15b
Content-Type: text/plain; charset=UTF-8

Hi Paul,

Thanks for the quick response. Actually i tried adding it to local.conf,
but it seems like bitbake did not pick it up - at least it did not rewrite
the rootfs.

regards,
Johnny

On Fri, Oct 31, 2014 at 12:46 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Johnny,
>
> On Friday 31 October 2014 12:43:08 Johnny Vestergaard wrote:
> > I have a basic image where i inherit from core-image and add a few custom
> > packages - nothing fancy, but I am having problems auto loading a module.
> >
> > The module in question is the nls-cp437 module which i can load manually
> > from the root prompt.
> > To be able to auto load it i tried adding
> >
> > module_autoload_nls-cp437 = "nls-cp437"
> >
> > to my one of my package recipes, but not luck.
> >
> > In which recipe exactly are you suppose to add module_autoload?
>
> It needs to be either in the kernel recipe or set globally (i.e. in your
> machine config / distro config / local.conf).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c2400c68872b0506b6c15b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>Thanks for the quick response.=
 Actually i tried adding it to local.conf, but it seems like bitbake did no=
t pick it up - at least it did not rewrite the rootfs.</div><div><br></div>=
<div>regards,</div><div>Johnny</div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Fri, Oct 31, 2014 at 12:46 PM, Paul Eggleton <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">Hi Johnny,<br>
<div><div class=3D"h5"><br>
On Friday 31 October 2014 12:43:08 Johnny Vestergaard wrote:<br>
&gt; I have a basic image where i inherit from core-image and add a few cus=
tom<br>
&gt; packages - nothing fancy, but I am having problems auto loading a modu=
le.<br>
&gt;<br>
&gt; The module in question is the nls-cp437 module which i can load manual=
ly<br>
&gt; from the root prompt.<br>
&gt; To be able to auto load it i tried adding<br>
&gt;<br>
&gt; module_autoload_nls-cp437 =3D &quot;nls-cp437&quot;<br>
&gt;<br>
&gt; to my one of my package recipes, but not luck.<br>
&gt;<br>
&gt; In which recipe exactly are you suppose to add module_autoload?<br>
<br>
</div></div>It needs to be either in the kernel recipe or set globally (i.e=
. in your<br>
machine config / distro config / local.conf).<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11c2400c68872b0506b6c15b--
