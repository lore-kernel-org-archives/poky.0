Return-Path: <jkv@unixcluster.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 735A3E008C4; Fri, 31 Oct 2014 07:49:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF189E007B9
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 07:49:29 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id bs8so1528811wib.5
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 07:49:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=v32USDyvGTp3+EIFZKV/0pnNaX78l3FHU+g0uzhmxPY=;
	b=aO2yWcP9Fmh/qq8X8noseSv9bPXR9mtORJa3QyTG7WZXypQopkVnSPyww4mZwLnozt
	tnAwFP/P6tUqvJ0Gc8ODTrUYrNv3Hl/Kzav4w0D4Uou/8bBq6u9vJEQhwArkEaHqDNLQ
	XNbxXmV1JPU6A00k+W6bavtIjmXqpTLhgw4dTO2mhckkBY650njfLX8RWi+Rji80xu+i
	bCfJGOL+cuBLVWivwJe13/UKz0Y4/ap/DdRzCdOBrwufR0x7BZcru9qK42QLrZkc7+5n
	XsroVX4CIU0VZjb8f2a/8bdo2hYJSZ5rlW+54yIwJyWRHqYI6Lh9IpzRKwXbbEXzsikd
	CvFg==
X-Gm-Message-State: ALoCoQld/RDpEJ3wsYHPPUnyDxRejTzSY7hwJt/xG4/DO3/7Jr5RfsI2OZeudIdDb0z++UoM36SI
MIME-Version: 1.0
X-Received: by 10.194.80.100 with SMTP id q4mr28578371wjx.15.1414766969325;
	Fri, 31 Oct 2014 07:49:29 -0700 (PDT)
Received: by 10.217.93.197 with HTTP; Fri, 31 Oct 2014 07:49:29 -0700 (PDT)
X-Originating-IP: [87.104.18.136]
In-Reply-To: <1493154.0U7i0oWxCZ@peggleto-mobl5.ger.corp.intel.com>
References: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
	<3848381.aJ2N9BMdoM@peggleto-mobl5.ger.corp.intel.com>
	<CAO+iiFxvAOmtJars0vMR=d8T3BRyvsoyT4sr3tXna=gOv_j_og@mail.gmail.com>
	<1493154.0U7i0oWxCZ@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 31 Oct 2014 15:49:29 +0100
Message-ID: <CAO+iiFxU=A7e0eNGUH5kZ6BvJ6LhiTrUcv7fGJKiC1pUQPwMsg@mail.gmail.com>
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
X-List-Received-Date: Fri, 31 Oct 2014 14:49:53 -0000
Content-Type: multipart/alternative; boundary=047d7bb04dcaa59fb70506b91af2

--047d7bb04dcaa59fb70506b91af2
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 31, 2014 at 1:11 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Friday 31 October 2014 13:01:22 Johnny Vestergaard wrote:
> > Thanks for the quick response. Actually i tried adding it to local.conf,
> > but it seems like bitbake did not pick it up - at least it did not
> rewrite
> > the rootfs.
>
> Right, that is a known issue - you'll have to clean the kernel & image as
> it
> won't pick up changes to the module_autoload variable after the kernel has
> been built:
>
> bitbake -c clean virtual/kernel
> bitbake -c clean your-imagename
>
> Then you should be able to build the image with the change to
> module_autoload
> incorporated.
>
>
Thanks for the tips. certainly get's me in the right direction.
But, putting the following at the end of my local.conf:

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=  " kernel-module-nls-cp437"
module_autoload_nls-cp437 = "nls-cp437"

and cleaning virtual/kernel afterwards still does not autoload the module -
but the module is included correctly.

--047d7bb04dcaa59fb70506b91af2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Oct 31, 2014 at 1:11 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(2=
04,204,204);border-left-style:solid;padding-left:1ex"><span class=3D"">On F=
riday 31 October 2014 13:01:22 Johnny Vestergaard wrote:<br>
&gt; Thanks for the quick response. Actually i tried adding it to local.con=
f,<br>
&gt; but it seems like bitbake did not pick it up - at least it did not rew=
rite<br>
&gt; the rootfs.<br>
<br>
</span>Right, that is a known issue - you&#39;ll have to clean the kernel &=
amp; image as it<br>
won&#39;t pick up changes to the module_autoload variable after the kernel =
has<br>
been built:<br>
<br>
bitbake -c clean virtual/kernel<br>
bitbake -c clean your-imagename<br>
<br>
Then you should be able to build the image with the change to module_autolo=
ad<br>
incorporated.<br>
<br></blockquote><div><br></div><div>Thanks for the tips. certainly get&#39=
;s me in the right direction.</div><div>But, putting the following at the e=
nd of my local.conf:</div><div><span class=3D""><br></span></div><div><span=
 class=3D"">MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D=C2=A0 </span>&quot; ke=
rnel-module-nls-cp437&quot;</div><div>module_autoload_nls-cp437 =3D <span c=
lass=3D"">&quot;nls-cp437&quot;</span></div><div><br></div><div>and cleanin=
g virtual/kernel afterwards still does not autoload the module - but the mo=
dule is included correctly.<br></div><div><br></div></div></div></div>

--047d7bb04dcaa59fb70506b91af2--
