Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86D1CE0086B; Mon,  7 Mar 2016 12:07:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D365FE00803
	for <poky@yoctoproject.org>; Mon,  7 Mar 2016 12:07:18 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id z76so398682iof.3
	for <poky@yoctoproject.org>; Mon, 07 Mar 2016 12:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XKuJOFEdN+yIvb+DjFfpaYa4ZF3fieTZkQxbCSAq+d8=;
	b=evp/3O76gj4ttdmWtcPq0TlugC20KhWTEE2+5apVKwEXnWVx4DJJsR6bsA8zdnjqLz
	RvLpmsja8nhNlskqLg03hhCf4lpN/V8FV/7g8jluAN/zEvai0PcWbAjYkeWbrQPVjkqg
	/etAhYDmw4IA28UVzzA98+ZkNUtPA3x6wHuXlTgT21d9xOKajHIRTAj0CWWSKOu0gW/e
	ON5hVNMfF/Xf7k2SV1uL3Qd14O5xG3AGk9ttdTvdcEdUyUvQX7ybYLVgjhpcxvwnXekI
	eKEw3sDaY8oxIfvzZBdRxcrBRCEzXr60BzEfsHZPhcRVN2N/GEZnOM3hxCMecvZ7rTIl
	XDNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XKuJOFEdN+yIvb+DjFfpaYa4ZF3fieTZkQxbCSAq+d8=;
	b=GcbsN9w5vX97YmNqU1IzX6MmSbNknUU7ivAq6bsico0SqqPdeUjYsZ7sHCEjYmyBH2
	EPBgRDYLLJrVPmmBhIKDRb4aVndnt6+vuFdAQQoqS+kfh3HEVu+iq5ifV5AuHAlW3G0J
	158ZYzHw1mBhbJeT3Q3JMoQdnK39Uz55qhldE4WoVmYNNnbsXY8DCW1jujtQko3+SXR+
	/zf4d/KwPVT7+oIoP90Ft4alvIemuvqN2o8DPLezlJggOrPsWwzG0B6NWbhZ9VyM8PiJ
	i7NK3EC3VYmf1aVXlO1cjRAnX72u8Gor882PSWteCDUq8bbZ3+aUxPVIW6TwOTRxp4gW
	AF6A==
X-Gm-Message-State: AD7BkJJ/7lLjy4pHF1NftSe48vy/LaIZN5MQLUnlq4GIfUOUxzCpeum7oZhqYhcHoJwCuzD8lKjXgz9FVn4xnvYR
X-Received: by 10.107.137.92 with SMTP id l89mr25635683iod.133.1457381237570; 
	Mon, 07 Mar 2016 12:07:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 7 Mar 2016 12:06:58 -0800 (PST)
In-Reply-To: <BLUPR20MB00209235147FEF3DE7D88756B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
References: <BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
	<CAJTo0LaiG5RD14Cvv=sS=8sPnoF2HzqduTk1avY-t1hO32RBEA@mail.gmail.com>
	<BLUPR20MB00209235147FEF3DE7D88756B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 20:06:58 +0000
Message-ID: <CAJTo0La89VVOk6vvky880rh5Q45KO2DnRnXy0QsZ290Ag=z+5w@mail.gmail.com>
To: Thomas Arcuri <tarcuri@androcs.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: fresh poky clone build fails when recipe chown's files during do_install (tzdata_2016a.bb)
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
X-List-Received-Date: Mon, 07 Mar 2016 20:07:19 -0000
Content-Type: multipart/alternative; boundary=001a113ebdb4f8001e052d7b0298

--001a113ebdb4f8001e052d7b0298
Content-Type: text/plain; charset=UTF-8

On 7 March 2016 at 18:31, Thomas Arcuri <tarcuri@androcs.com> wrote:

> Attached is the complete log from a different run, but it is the exact
> same result.
>
>
> I see that pseudo appears to be disabled according to some variables in
> bitbake.conf, but someone else suggested that pseudo is being used anyway.
>

Why do you think that and what variables?

That log didn't really help.  Same log if you do bitbake -DDD tzdata please!

Ross

--001a113ebdb4f8001e052d7b0298
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 March 2016 at 18:31, Thomas Arcuri <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:tarcuri@androcs.com" target=3D"_blank">tarcuri@androcs.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><p>Attached is the complete lo=
g from a different run, but it is the exact same result.</p>
<p><br>
</p>
<p>I see that pseudo appears to be disabled according to some variables in =
bitbake.conf, but someone else suggested that pseudo is being used anyway.<=
/p></blockquote></div><br>Why do you think that and what variables?</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">That log didn=
&#39;t really help.=C2=A0 Same log if you do bitbake -DDD tzdata please!</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a113ebdb4f8001e052d7b0298--
