Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83E7DE00AC5; Fri, 11 Jan 2019 07:55:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1318EE009EB
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 07:55:38 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id s22so12499224ioc.8
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 07:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LlserskpBLtjBrR084+q6HjggG36ovCciB/3ixMKAtU=;
	b=dJK96fKuLfUjQEsPQoVh9t4JDimUy+oQocUG4YNy06UH12IH3CM2kIKGS0KJ/E+0ru
	aolcmXAUfYSyo0GQSbRSacF1QpQunsDr/7M9RFxfET4IOa7JFFInNvQQ8pJbQvFiIeLT
	k8ElRXm856bgJ/ulRadV3IFxYiLrkUyGpEJJ6W7p8j9gLzlxCguPo90N7MToMS6bkeZ0
	gBBFqM7Qc9qVzD/HvxmT7vtuIsSSaPBYI/KUEsoqD7t4mlMHwpN604yihJcc/7dsxnyh
	zKV3Wxi/DL9FRtskZf+bxAd3Ro4sy51O9AQjp6p1RWTncW7Uqmkg8wdI/8cAI7ao86dY
	Cnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LlserskpBLtjBrR084+q6HjggG36ovCciB/3ixMKAtU=;
	b=bniOcmOcGnc5ziLHlOuqy8Rfqfx2jV7v3Gb/tFN6CoHM9+dEBgZ1cVEgrCirwwYiQq
	XVx04yya44y2RkRrx5CfE4k9B+b5yX+XpvlYU1aw3HHGH8pj20uvk8KqP5Piw3JXK+Hd
	MWhLdZ4674j+CAqirW08ZFYf+q+B3MU7yOFc4e9p9YA99ZsyFAmO+0uUNPSoa+dRAjQh
	EeXz6w+FkgToSncPHt7t/Ia2yKm0CeWyf+uh763e8qHCZgQKJ7XaRqs1X9a1jXHbGThz
	E+1/cF0EPfueZvhpacSOYX6jsbnU/yUxRHBzWx+ilEE2/dJMVIAI9A0/9yyBXu0CC2xr
	JTiw==
X-Gm-Message-State: AJcUukfVkHn6YVKvF3RD1gRCQGpQNB0RrYzxOSEyaPqHAsJ7qvWwiHTQ
	lo5DaiJfrcm+a19/G6o1aRfTVOIXhTh9dOiMIEWo2A==
X-Google-Smtp-Source: ALg8bN5GfvfOnfObOANaVWhOt3JeEcXQw1YWYxJPyrhOGCUj7bXbbasy6xVF+xi3UWBRxIu+hqYlo3VA6x+UtB+yvrs=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr8826876iog.270.1547222138327; 
	Fri, 11 Jan 2019 07:55:38 -0800 (PST)
MIME-Version: 1.0
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
	<CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
	<F776005A-D6E7-4D5D-BE50-A2E80A405732@gmail.com>
In-Reply-To: <F776005A-D6E7-4D5D-BE50-A2E80A405732@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 Jan 2019 15:55:26 +0000
Message-ID: <CAJTo0LZ+VnFcD0GOarDbYGXz8dLUgr0Qc6MOt_ov7jFUfApX4w@mail.gmail.com>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: thud systemd root home wrong
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
X-List-Received-Date: Fri, 11 Jan 2019 15:55:39 -0000
Content-Type: multipart/alternative; boundary="000000000000f1af80057f30b98b"

--000000000000f1af80057f30b98b
Content-Type: text/plain; charset="UTF-8"

I'd just grep the systemd source for "/root" and replace the relevant ones
with ROOTHOMEDIR.  There's probably not that many...

On Fri, 11 Jan 2019 at 15:53, Jean-Francois Dagenais <
jeff.dagenais@gmail.com> wrote:

>
> On Jan 11, 2019, at 10:37 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> Sounds feasibly, patches like that maintained long-term do suffer from
> bitrot.  Would you be able to dig and fix this?
>
>
> I will give it a shot yes, stay tuned. Not at all familiar with the code
> base, any hints? Or maybe all the hints I need are in previous (pre rot)
> versions of the patch?
>

--000000000000f1af80057f30b98b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;d just grep the systemd source for &quot;/root&quot;=
 and replace the relevant ones with ROOTHOMEDIR.=C2=A0 There&#39;s probably=
 not that many...</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On F=
ri, 11 Jan 2019 at 15:53, Jean-Francois Dagenais &lt;<a href=3D"mailto:jeff=
.dagenais@gmail.com">jeff.dagenais@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding=
-left:1ex"><div style=3D"word-wrap:break-word;line-break:after-white-space"=
><br><div><blockquote type=3D"cite"><div>On Jan 11, 2019, at 10:37 AM, Burt=
on, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt; wrote:</div><br class=3D"gmail-m_-26354859335907=
22713Apple-interchange-newline"><div><span style=3D"font-family:Helvetica;f=
ont-size:12px;font-style:normal;font-variant-caps:normal;font-weight:normal=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;text-decoration:none;float:none;displa=
y:inline">Sounds feasibly, patches like that maintained long-term do suffer=
 from bitrot.=C2=A0 Would you be able to dig and fix this?</span></div></bl=
ockquote></div><br><div>I will give it a shot yes, stay tuned. Not at all f=
amiliar with the code base, any hints? Or maybe all the hints I need are in=
 previous (pre rot) versions of the patch?</div></div></blockquote></div>

--000000000000f1af80057f30b98b--
