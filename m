Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02025E00ABE; Thu, 30 Jul 2015 05:47:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60260E00A7E
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 05:47:55 -0700 (PDT)
Received: by qgeh16 with SMTP id h16so22794194qge.3
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 05:47:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+LZJP2obrfqXyRwjinn9uDP7ZQoV7HjMKZPoKEvvDmE=;
	b=UP5OeTalidE6QDNB7sRnFP06KT+LZyNEhK+iTnecWhwil9ZGKHhJVTD6VhJwuhqcie
	QhTt0ohcZE/DKuxZWf7FNW+oru2wgB8I5K4K+Yl34fuHehSSIRMGC5M/ynXow4WwIR+h
	yhnjqfam5ex4nVynKQGIeMBt6HDTO+bWWDw8QkQoP8y1m9dinaS9giH7SOGOW7uY5i9e
	bae4C3tba1etUQrE4G7mmINMjYZo5G6bQMR8YgYMEzOwnUMAAn4VXOmbHD1mD2yL8d3I
	kFmn69EFljQRh8P7VTEiSMV7X/OpBXelNCRmG3pt7sRCfe2wRR55lzLWoe35xYHH+Mq3
	JDqw==
X-Gm-Message-State: ALoCoQlO7WfyVznQiCJYNDO9uKI5DX5T17GpuVnqj3HPQEFqdRzKHze3P0gGNQppLveAf4b2yaxX
X-Received: by 10.140.43.199 with SMTP id e65mr69331516qga.80.1438260475063;
	Thu, 30 Jul 2015 05:47:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Thu, 30 Jul 2015 05:47:35 -0700 (PDT)
In-Reply-To: <55BA184A.8010207@gmail.com>
References: <1437829398-8585-1-git-send-email-twoerner@gmail.com>
	<55BA184A.8010207@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Jul 2015 13:47:35 +0100
Message-ID: <CAJTo0La2XTdTVNHGURH-78LA7ESr6CS+oZSqRtAwBBPRSuNJPw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] SANITY_TESTED_DISTROS: fix lsb name for openSUSE 13.2
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
X-List-Received-Date: Thu, 30 Jul 2015 12:47:57 -0000
Content-Type: multipart/alternative; boundary=001a113a9baab60ddc051c171cf2

--001a113a9baab60ddc051c171cf2
Content-Type: text/plain; charset=UTF-8

On 30 July 2015 at 13:27, Trevor Woerner <twoerner@gmail.com> wrote:

> ping
>

Merged to mut (and so master soon) now, sorry for the delay but I wanted to
verify this on another machine.

Ross

--001a113a9baab60ddc051c171cf2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 July 2015 at 13:27, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div id=3D":l9" class=3D"a3s" s=
tyle=3D"overflow:hidden">ping<br></div></blockquote></div><br>Merged to mut=
 (and so master soon) now, sorry for the delay but I wanted to verify this =
on another machine.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--001a113a9baab60ddc051c171cf2--
