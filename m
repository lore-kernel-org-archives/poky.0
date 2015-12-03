Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C590BE00803; Thu,  3 Dec 2015 15:16:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2BD5E00349
	for <poky@yoctoproject.org>; Thu,  3 Dec 2015 15:16:27 -0800 (PST)
Received: by ioc74 with SMTP id 74so98102862ioc.2
	for <poky@yoctoproject.org>; Thu, 03 Dec 2015 15:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=NqZPVX3VxU9nvOJAHoHRZfN6LEX2XfRhHUN9tD+d2Iw=;
	b=G906u6qYiQ2RgNTUJ3Bqirr1wQSPDufOraqvQ5EfinJwUZmE8wobgGY1TLj77qRTzS
	HJbvuYPSF4/41FydK6MIyIac3vI/1IKkZFLV5Xm2ukvu4UnJdyvj4Gepfb0VP9L5zZk1
	6HJMF9F+XURqjpv8340M3vEJLUqufU9a5COb5L4qX6h+8o3wgVkSk/s01HfN8Q2xFptd
	m0FsMTd4GciDKTg6tHzN6ytV9kbv7slDgY/Cpwcn3DJF5D2PKk/80Uv+wDbtI2PuFM6T
	tZNY2CC7VET5XNYge3gUQARBY/AGWPvFxjHK92frzdnU1zYCK8xIhf/iUpJxfMtDrhE2
	U63w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=NqZPVX3VxU9nvOJAHoHRZfN6LEX2XfRhHUN9tD+d2Iw=;
	b=TSNTdHRtjuvq34U7+jG1RdR7TF7DU7hUR6L7lIBB5UKc1fww4Z/4EjfdbVofPHlzC/
	qxpvze6jPd0Pmu4BG/7nTdswW3ORNI+XAdifXSTSyn379Lf6NuCpdo7P313bdUasv1GN
	jKko+k7OgfxG+Etzept7JhWWFLzc/0tIU3Wnuz9TyXq3Q8t6iUC7UAagTB0muhTHeU7A
	fhpg9R8tbDg54CmSzDJw6p8FJanZjX1WrDN51n5jBz0WFcnQrB+s7bDaJ32Ivl1ViBOD
	mWVDrEQYSX2FufJNjggKRD5MVVY5LSp5uDFjpyJsL8DT6e2P068TyzGv6i6VmDwdqHii
	HWOg==
X-Gm-Message-State: ALoCoQlrPG4ykt6rHEWibR5FeImGkvqi9Mx7ZtMEB+u65GGQYW1rkfkhXJRI/+CXn4oghwotiJBf
X-Received: by 10.107.130.155 with SMTP id m27mr12649257ioi.133.1449184586520; 
	Thu, 03 Dec 2015 15:16:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Thu, 3 Dec 2015 15:16:07 -0800 (PST)
In-Reply-To: <10353510.SMoQjafh4x@peggleto-mobl.ger.corp.intel.com>
References: <1447702637-1614-1-git-send-email-dagenaisj@sonatest.com>
	<10353510.SMoQjafh4x@peggleto-mobl.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Dec 2015 23:16:07 +0000
Message-ID: <CAJTo0LbgFHjxW7icefbm4cej8HqCc2iVy+Bs9u0jtamom5WbOA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] toolchain-shar-relocate: don't assume last state of env_setup_script is good
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
X-List-Received-Date: Thu, 03 Dec 2015 23:16:29 -0000
Content-Type: multipart/alternative; boundary=001a113ecd947e6dcf0526069417

--001a113ecd947e6dcf0526069417
Content-Type: text/plain; charset=UTF-8

On 3 December 2015 at 21:56, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> This patch was merged to master and has unfortunately broken
> buildtools-tarball which does not use the same environment setup script
> name.
>
> (Additionally this patch was missing Signed-off-by and was sent to the
> wrong
> list - it should have gone to the openembedded-core@lists.openembedded.org
> list instead.)
>

Urgh, sorry.  Shall I throw a revert into mut quickly or is this trivial to
fix properly?

Ross

--001a113ecd947e6dcf0526069417
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 December 2015 at 21:56, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":5hd" class=3D"a3s" style=3D"overflow:hidden">This patch was merged to =
master and has unfortunately broken<br>
buildtools-tarball which does not use the same environment setup script nam=
e.<br>
<br>
(Additionally this patch was missing Signed-off-by and was sent to the wron=
g<br>
list - it should have gone to the <a href=3D"mailto:openembedded-core@lists=
.openembedded.org">openembedded-core@lists.openembedded.org</a><br>
list instead.)<br></div></blockquote></div><br>Urgh, sorry.=C2=A0 Shall I t=
hrow a revert into mut quickly or is this trivial to fix properly?</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></di=
v>

--001a113ecd947e6dcf0526069417--
