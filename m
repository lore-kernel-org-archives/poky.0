Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F07A0E00949; Wed, 29 Apr 2015 02:30:49 -0700 (PDT)
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
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D0E2E007B9
	for <poky@yoctoproject.org>; Wed, 29 Apr 2015 02:30:47 -0700 (PDT)
Received: by qku63 with SMTP id 63so11392687qku.3
	for <poky@yoctoproject.org>; Wed, 29 Apr 2015 02:30:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Tt00P8eiH/K0zH+8q5qSP4CzlJ1HLuALmZNGQLuHbQ0=;
	b=NyujYf6MMKtta5LHbvRddrP+KarOT2oyHAAWi2tX909PEBMfLxlISJxzChtZ/xVexs
	nbNX9oFqZjQA11KiBGJr863kI3cmBX6L3xnhT2t2yMQz4xiHQsauzSR8lqUuQwlfouCl
	oZvoXjlPWwhX6O6nfXEAs5pFHPKnLgKn841vpR+0BhBtCv9CKTbNI4HBUQI9Xx6ELNwU
	ODP55xlCL+0b4wB1ELD2gD2BCln5uMAZv8jc1AGY6VrRebazV/NelvJRZVbR85d5zz+R
	tk6xVLyIFpA8hlf/l4aDsytielr6MdARCKgSFk8r+ES//PDFnTzJBRmHud4BgFNVhzyv
	ls2w==
X-Gm-Message-State: ALoCoQk0jXru1jp2gXl0G7s01D2bOcLUf3Yr+Eu8gS5HkSHagMzEr4zAZT5L/lS7zbpH25KbO7Z2
X-Received: by 10.55.20.10 with SMTP id e10mr26873159qkh.36.1430299847252;
	Wed, 29 Apr 2015 02:30:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Wed, 29 Apr 2015 02:30:26 -0700 (PDT)
In-Reply-To: <5540A120.3040206@windriver.com>
References: <cover.1427771410.git.liezhi.yang@windriver.com>
	<a1983ae884075e94cecc258a33304a0da5b2cbe5.1427771410.git.liezhi.yang@windriver.com>
	<55406F69.6000800@windriver.com>
	<CAJTo0LYBuj_tyx_vHE6haAPGt0=RZ1UWzuDu--8fijqwRBE1Eg@mail.gmail.com>
	<5540A120.3040206@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Apr 2015 10:30:26 +0100
Message-ID: <CAJTo0LauHsc-ju+CZenO-B0D6TOmqQCXMzuVU=0h-My5f=e32g@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] maintainers.inc: update MAINTAINERS
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
X-List-Received-Date: Wed, 29 Apr 2015 09:30:50 -0000
Content-Type: multipart/alternative; boundary=001a1137de325169970514d9a261

--001a1137de325169970514d9a261
Content-Type: text/plain; charset=UTF-8

On 29 April 2015 at 10:15, Robert Yang <liezhi.yang@windriver.com> wrote:

> Sorry, but it works well on my side:
>

Sorry, didn't notice that the branch and the patch on the list were
different :)

Ross

--001a1137de325169970514d9a261
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 April 2015 at 10:15, Robert Yang <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1c9" cl=
ass=3D"a3s" style=3D"overflow:hidden">Sorry, but it works well on my side:<=
br></div></blockquote></div><br>Sorry, didn&#39;t notice that the branch an=
d the patch on the list were different :)</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1137de325169970514d9a261--
