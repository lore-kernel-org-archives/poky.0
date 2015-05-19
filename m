Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65D47E009DA; Tue, 19 May 2015 03:27:48 -0700 (PDT)
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
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 271EDE009B6
	for <poky@yoctoproject.org>; Tue, 19 May 2015 03:27:44 -0700 (PDT)
Received: by qkgv12 with SMTP id v12so6131968qkg.0
	for <poky@yoctoproject.org>; Tue, 19 May 2015 03:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=b4Yg/JCr9RLtYrAO9PZMaNeIRK+PiK9Xvz1c4cYblTQ=;
	b=gkpUqzJXjisNCerXYiFLqd6qcfQLhL2I5vZCXhd/vtw4+/j6vTcsdPih8RrS9PqFRN
	V1DsxM4Os8S01qV64xNqGjUUjHrWVeP7o0DfBj35AGHq7CzsNjay0LUqbGR00zWGpgGZ
	HTmhIY+xihuw6C4IkE/WRtezF+fjO3p51ZUGMhereBrY6kmKI5tE2zrgzd1zVvaJ96AY
	u6mhAR3mZ3agCcy8rnmWxc2/pwN+MW4lgI/9wcZXzztW0BKmCr6XAVwBQUOFkH+nqrrE
	6tDwsK3f0TkOnB0BpN7I9OSJeDDZiGxur0KgWl2rtyYkpfzazc38M/fW63Vlzhx34gdi
	+3QQ==
X-Gm-Message-State: ALoCoQmEzvIuJdeecwwpZKGWzDfjLhAcjRRrAhs9AL5DFqtAQKOtGOoDsZKDSSdcAPLlquGzyge2
X-Received: by 10.55.20.10 with SMTP id e10mr57922583qkh.36.1432031264305;
	Tue, 19 May 2015 03:27:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 19 May 2015 03:27:23 -0700 (PDT)
In-Reply-To: <1431991923-20314-1-git-send-email-sgw@linux.intel.com>
References: <1431991923-20314-1-git-send-email-sgw@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 19 May 2015 11:27:23 +0100
Message-ID: <CAJTo0LZ=1V4EUxKUpomnqWb1jdeE+nvdO+dmrfFkYzY_CkQMOA@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto-bsp: Add genericx86* BSP to use 3.19
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
X-List-Received-Date: Tue, 19 May 2015 10:27:48 -0000
Content-Type: multipart/alternative; boundary=001a1137de32d121eb05166cc286

--001a1137de32d121eb05166cc286
Content-Type: text/plain; charset=UTF-8

On 19 May 2015 at 00:32, Saul Wold <sgw@linux.intel.com> wrote:

> Add the linux-yocto_3.19.bbappend to support the genericx86 BSP
>

Is there a corresponding patch to use 3.19 instead of 3.14?

Ross

--001a1137de32d121eb05166cc286
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 May 2015 at 00:32, Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mailto:=
sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":9fs" class=3D"a3s" styl=
e=3D"overflow:hidden">Add the linux-yocto_3.19.bbappend to support the gene=
ricx86 BSP<br></div></blockquote></div><br>Is there a corresponding patch t=
o use 3.19 instead of 3.14?</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--001a1137de32d121eb05166cc286--
