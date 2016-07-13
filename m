Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AE16E007DA; Wed, 13 Jul 2016 12:12:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1222DE006D2
	for <poky@yoctoproject.org>; Wed, 13 Jul 2016 12:12:32 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id f6so28858953ith.1
	for <poky@yoctoproject.org>; Wed, 13 Jul 2016 12:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oRsfhD+I6GXEzsh2AiwB0It2Im24SwFA5s6hDjFdmVQ=;
	b=ASdaUVxBo3gm7I4frY7nZgOcapHlVTB5TXFTW2vBgyWaJ2X1yF6M8qQ9+IVIAXjCW9
	YbqNm/CoE3btTFDfr4tDeIqmQr6yL93f+lgyHIgyBOxRBVELBD6x4GeedQq5kgejlsz4
	VqjJ0FM+5SUqYGd82TckFlVDCQIKr7qEzlspHkHtqfH3OKjXhUpV+pZv+a+9LSZyR1D0
	kCvzy7XPlcdqOqiXT5BP+6KoRXhXryOuxFt8hKnDi9oODQgK6VatDRR9+Zt6bmux7gfq
	Z08U8M4aR9xCmEKuRazyVY/RIVwHngrxnIjBzJF3oD03W5nVYcv2EEcIR4Qa47REhuIp
	tp9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oRsfhD+I6GXEzsh2AiwB0It2Im24SwFA5s6hDjFdmVQ=;
	b=mwR47m2TkT3lsTB15zmIIz7A4tWZdLmTOCGSiMVvTYK6UqCU/Mc6W+lFdBkwpfnina
	Oski1OYojXvcECBJZyabYbdvecEFfHiakvekmWIBVdjZWUoQPeMzBtUG8eI/7yOXdkg7
	ZmkO8lqZgn0kX1HWSdLHoy0wRdnM/MPao5NQyo7348MMLJmZhntIweFEo5OpcH8XqDN8
	SNKJ4PzQ2T7wncCo3/CByiQU1DZFgEeH4fGNysk4moR2aDmCuN9T0y9OS3ZoyWzdWRTg
	tIv+ld4K1G8ItIIy/tq7iySRvT/fJXd+LC6IgP+ClJfDGL/orgYv/3EEv0cDTMWjfCzw
	ms9Q==
X-Gm-Message-State: ALyK8tIMR/ZRf5lXWmME9jwTN5VZ1ZAeH9gXnSDGyLgxwWE6tuFem8l7jBUYaVYJHt3lp1nQNRbjZLnlraw8YMi8
X-Received: by 10.36.121.21 with SMTP id z21mr11167178itc.38.1468437151977;
	Wed, 13 Jul 2016 12:12:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Wed, 13 Jul 2016 12:12:12 -0700 (PDT)
In-Reply-To: <CAA2DH4uUeV6jTXp+ntpssyCFMt=AsYfu2ttbyZ_kexZOqLNtqg@mail.gmail.com>
References: <CAA2DH4uUeV6jTXp+ntpssyCFMt=AsYfu2ttbyZ_kexZOqLNtqg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Jul 2016 20:12:12 +0100
Message-ID: <CAJTo0LYeQTGao7nW93MQVMfj3HLc+X4pPXa0TVU58VkPfjt4cg@mail.gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Force exclude a package
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
X-List-Received-Date: Wed, 13 Jul 2016 19:12:36 -0000
Content-Type: multipart/alternative; boundary=001a114a95a0d1a8360537892afb

--001a114a95a0d1a8360537892afb
Content-Type: text/plain; charset=UTF-8

On 11 July 2016 at 14:03, Prasant J <pj0585@gmail.com> wrote:

> My build is failing because 2 packages (that I did not include
> intentionally - speex & taglib) is failing to build. I have tried
> IMAGE_INSTALL_remove but does not help.
>
>
> How do I find out: what package or image feature forces a package to
> be included in the first place?
> Is there a way by which I can force exclude a package?
>

You can use "bitbake <myimage> -g" and read the resulting dot files
(ideally with a tool that can display dot files) to identify what is
pulling in the recipes.  Then use that knowledge to identify how to stop
the package appearing: maybe remove an image feature from your image, or
stop using or redefine a package group.  At the end of the day the images
and packagegroups in oe-core are examples and if they're not doing what you
want, you can write your own.

The only thing in oe-core that depends on taglib is GStreamer, so that is
being pulled into your image some how - likely though some package group or
image feature.

Ross

--001a114a95a0d1a8360537892afb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 July 2016 at 14:03, Prasant J <span dir=3D"ltr">&lt;<a href=3D"mailto=
:pj0585@gmail.com" target=3D"_blank">pj0585@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div id=3D":3bv" class=3D"a3s aXjCH m155=
da0eb74cc11fc">My build is failing because 2 packages (that I did not inclu=
de<br>
intentionally - speex &amp; taglib) is failing to build. I have tried<br>
IMAGE_INSTALL_remove but does not help.<br>
<br>
<br>
How do I find out: what package or image feature forces a package to<br>
be included in the first place?<br>
Is there a way by which I can force exclude a package?</div></blockquote></=
div><br>You can use &quot;bitbake &lt;myimage&gt; -g&quot; and read the res=
ulting dot files (ideally with a tool that can display dot files) to identi=
fy what is pulling in the recipes.=C2=A0 Then use that knowledge to identif=
y how to stop the package appearing: maybe remove an image feature from you=
r image, or stop using or redefine a package group.=C2=A0 At the end of the=
 day the images and packagegroups in oe-core are examples and if they&#39;r=
e not doing what you want, you can write your own.</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">The only thing in oe-core that=
 depends on taglib is GStreamer, so that is being pulled into your image so=
me how - likely though some package group or image feature.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114a95a0d1a8360537892afb--
