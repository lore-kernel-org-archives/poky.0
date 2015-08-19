Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD71BE0049B; Wed, 19 Aug 2015 06:01:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CDBAE003D9
	for <poky@yoctoproject.org>; Wed, 19 Aug 2015 06:01:04 -0700 (PDT)
Received: by qgj62 with SMTP id 62so3027975qgj.2
	for <poky@yoctoproject.org>; Wed, 19 Aug 2015 06:01:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xQo5xbbvWr2AZtPUuyhDNfxdyjQYUbRblSGGJm9/rts=;
	b=Sv3CePpPXJy9gFqnvY7Yl7qsVzcH3zXOQjIn1YzUE9/9jr+5Ng6eXCJzUlW/XsQFv4
	4lUI+K9qbARip070WpY1vsZvM/KKbPQhNBqLc5WgPax463yXfQOPQyl92UDr3S8bhs7Q
	RLrnMds2fta7kCj+Jp5ybC2PUC1suz3W/DW+8ky9oc3mtfwJWVnpWM60uH73KxHh8kVC
	BRwjnGn9QBkBvkm31joNhKF+h2CXrYR9PlMWcE7vcvjxWfmejHdlVWo8MV5+/xpXfPXQ
	KTCHkHZIwhuOkwSMZofnip3dkiizTaHoXH0oXLtAbjqo6TKauM/kQGWwcxLkY4KeRVwc
	0NdQ==
X-Gm-Message-State: ALoCoQmd+D5YlpvXEC7ABIK1EGV9923b8AAkKHDWeNy/3iHZFE9pxXlwCefO9BCw+cj3gViiF685
X-Received: by 10.140.43.199 with SMTP id e65mr22695620qga.80.1439989263720;
	Wed, 19 Aug 2015 06:01:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.67 with HTTP; Wed, 19 Aug 2015 06:00:44 -0700 (PDT)
In-Reply-To: <CADnUhn3V5iB4g1gb+2btHTK5pWU=j0LfOJpHj+EJHeoU1ERKew@mail.gmail.com>
References: <CADnUhn3V5iB4g1gb+2btHTK5pWU=j0LfOJpHj+EJHeoU1ERKew@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Aug 2015 14:00:44 +0100
Message-ID: <CAJTo0LaFdeqnNnSMKxuy9h8GjSN4gRfF2LcCoPEnqaomWs67yw@mail.gmail.com>
To: matti kaasinen <matti.kaasinen@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [Errno 18] Invalid cross-device link warning coming from license file copy
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
X-List-Received-Date: Wed, 19 Aug 2015 13:01:08 -0000
Content-Type: multipart/alternative; boundary=001a113a9baa8bcc85051da9a011

--001a113a9baa8bcc85051da9a011
Content-Type: text/plain; charset=UTF-8

On 19 August 2015 at 13:48, matti kaasinen <matti.kaasinen@gmail.com> wrote:

> WARNING: Could not copy license file /YOCTO/poky/LICENSE to
> /XXX/work/am335x_evm-poky-linux-gnueabi/xxxx-image/1.0-r0/license-destdir/xxx-image/LICENSE:
> [Errno 18] Invalid cross-device link
>
> Yes, sources and results are located on different logical drives, but
> should it still be possible to copy files between them. Everything else
> works fine in bitbaking.


What release?  I have my build and checkouts on different disks and I don't
get this warning.

Ross

--001a113a9baa8bcc85051da9a011
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 August 2015 at 13:48, matti kaasinen <span dir=3D"ltr">&lt;<a href=3D=
"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.kaasinen@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>WARNING: Cou=
ld not copy license file /YOCTO/poky/LICENSE to /XXX/work/am335x_evm-poky-l=
inux-gnueabi/xxxx-image/1.0-r0/license-destdir/xxx-image/LICENSE: [Errno 18=
] Invalid cross-device link<br><br></div>Yes, sources and results are locat=
ed on different logical drives, but should it still be possible to copy fil=
es between them. Everything else works fine in bitbaking.</blockquote></div=
><br>What release?=C2=A0 I have my build and checkouts on different disks a=
nd I don&#39;t get this warning.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Ross</div></div>

--001a113a9baa8bcc85051da9a011--
