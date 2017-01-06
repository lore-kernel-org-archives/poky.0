Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFA3FE0052B; Fri,  6 Jan 2017 03:49:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0366BE0049A
	for <poky@yoctoproject.org>; Fri,  6 Jan 2017 03:49:27 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id v23so76510650qtb.0
	for <poky@yoctoproject.org>; Fri, 06 Jan 2017 03:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Iy9aN4eXySbseHPFtIBn9qgmZSwjeegVuDnSPltO1Hc=;
	b=eglqOJ2qIT0Cc9NNesrBLZUAsBkOKa1rfFv50tcayPsAYBy/cFwTbidhwGfd72Rnvk
	RpBewAEt7MIeWEX+CUVeDU9ffI56MGoKQZ2PWsKREaed7bVYs9yx4gC7rf/7FLm9VwoK
	Drv1HjfZcAxYkl0ey7veN+YkWAp7fHAKIqYmsixTT3hvZAcjy/k4l7ur2vsITs2i/oQj
	hr6k4zCG0ZpoOcwYch5ir0oJBzHSQcsUl9qeCG0JxD4WY1AGYWNVlciX0p27Ww1E3nNu
	FoYawK7No0A7Cggcfo5z1EzIjZhMZhHJs7BwldKP3hhyrLVvpvTSFCgkINxKKZP9CKKk
	WfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Iy9aN4eXySbseHPFtIBn9qgmZSwjeegVuDnSPltO1Hc=;
	b=HHKYaPoYaruuKK+8DwVdsSt+5aICXgt3MDDacnQy/L9dKGuDmKDwrlWx8Bo6RGou3i
	CWufdkDG84r2fYZ5PQb6hOjTn5UkkpFMp7GNP1MowcEMu/jBPcNYbfHyJ4aVkhRXQED+
	El9VIXEgJWPRgSWhHoKefUiWxv63Jc3nO1KsgJESOh9cbEqH6jK43mDI0ytAR23Po1/K
	p19beQx5dLUPJqJEMRcf6K9f0kmYaAVgeq0WLVDd0HypJGm8ryvAgEVVNfFE+PN9SmE6
	pew1H5QVIpJHROI6Ue1bCEW1cSXcb1sTXde6JCXq3UtX7nDOsZXEumYfHLdq9L0LzuYn
	DGNA==
X-Gm-Message-State: AIkVDXIkPard/4yKXXy+0wcBnrKdf9zu3CYhFqhwvp6lJsn1mtSEPY8G3a1QFIjcBoB5Caz3qRbNhxXR7CHD2Xk7
X-Received: by 10.237.62.232 with SMTP id o37mr7968181qtf.188.1483703367049;
	Fri, 06 Jan 2017 03:49:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Fri, 6 Jan 2017 03:49:06 -0800 (PST)
In-Reply-To: <1482441297-14120-1-git-send-email-ed.bartosh@linux.intel.com>
References: <1482441297-14120-1-git-send-email-ed.bartosh@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 6 Jan 2017 11:49:06 +0000
Message-ID: <CAJTo0LaR_uQkS8xP8a7KnxwiLH95F7TH9SkLq7v=tMQjR5JebQ@mail.gmail.com>
To: Ed Bartosh <ed.bartosh@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] beaglebone: add beaglebone.wks
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
X-List-Received-Date: Fri, 06 Jan 2017 11:49:29 -0000
Content-Type: multipart/alternative; boundary=001a11406f0e25305b05456b9c2b

--001a11406f0e25305b05456b9c2b
Content-Type: text/plain; charset=UTF-8

On 22 December 2016 at 21:14, Ed Bartosh <ed.bartosh@linux.intel.com> wrote:

> Currently beaglebone machine uses sdimage-bootpart.wks from
> scripts/lib/wic/canned-wks. It'd be easier to find this file
> if it's name contains machine name and it's located in the same
> layer.
>
> Added beaglebone.wks to meta-yocto-bsp/wic/ to make it independent
> on changes in oe-core and easier to maintain.
>

This broke on the autobuilder in ross/mut:

DEBUG: Executing shell function do_image_wic
ERROR: No kickstart files from WKS_FILES were found: beaglebone.wks
core-image-minimal.wks. Please set WKS_FILE or WKS_FILES appropriately.

(The image_types patch extending the search path is already merged)

Ross

--001a11406f0e25305b05456b9c2b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 December 2016 at 21:14, Ed Bartosh <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ed.bartosh@linux.intel.com" target=3D"_blank">ed.bartosh@linux.intel.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex"><div id=3D"gmail-:6e2" class=
=3D"gmail-a3s gmail-aXjCH gmail-m159287862d77bfc2">Currently <span class=3D=
"gmail-il">beaglebone</span> machine uses sdimage-bootpart.wks from<br>
scripts/lib/wic/canned-wks. It&#39;d be easier to find this file<br>
if it&#39;s name contains machine name and it&#39;s located in the same<br>
layer.<br>
<br>
Added <span class=3D"gmail-il">beaglebone</span>.wks to meta-yocto-bsp/wic/=
 to make it independent<br>
on changes in oe-core and easier to maintain.</div></blockquote></div><br>T=
his broke on the autobuilder in ross/mut:</div><div class=3D"gmail_extra"><=
br>DEBUG: Executing shell function do_image_wic<br>ERROR: No kickstart file=
s from WKS_FILES were found: beaglebone.wks core-image-minimal.wks. Please =
set WKS_FILE or WKS_FILES appropriately.<br><br></div><div class=3D"gmail_e=
xtra">(The image_types patch extending the search path is already merged)</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></div>

--001a11406f0e25305b05456b9c2b--
