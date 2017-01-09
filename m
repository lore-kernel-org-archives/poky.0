Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92F69E00782; Mon,  9 Jan 2017 02:31:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDF13E0050B
	for <poky@yoctoproject.org>; Mon,  9 Jan 2017 02:31:13 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id x49so65602139qtc.2
	for <poky@yoctoproject.org>; Mon, 09 Jan 2017 02:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=blgdFWjPDyGetP53NOIrgFu3yuLQthWEy/wRgnynPTA=;
	b=Wk9cow5+wCa8g5Sz7nEtLiykE0Jwu99P2nhOGIXtJC2ApVVpWFwKZyTSwYobTWRNE4
	In+eDB+i3lFxVanLvCx10dRpodQWrotSE0Bp5VbGWM8QjEmViLLubROcSLzCDKLnsGzC
	m0fGNwDggD1sYRcvg2JhPUrog48kjIsfL3R77DPZ17f6BofCZt+rZaLfka3g5mS4aLsx
	arbkc1+ZyIesViUtVDdoOALD32wA1eZ1ymkTXBvUWghJJJ5y/M0BCc0JoubaNxbvGm29
	SI9lwP6eVytJ4f900fHWgx6cKEXTDa+0aMBYOIvRsbNlSdfpUv3blDfKVy1Ksf5Hu3zm
	xPXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=blgdFWjPDyGetP53NOIrgFu3yuLQthWEy/wRgnynPTA=;
	b=FJ5zqWFRb9V/1bPL2SGA2Yodcfcqy7gSWZU4jjS7xMy8LDHPQxp+dB5CwlX2wabQX/
	VeLyA+hbkXLo5jfaEuCI9EqvhFJfJpuGBqEI+SzBqJA0zSZNR/37mb7vSaZFu47ZpP6I
	vzfxarAzox5SgrzcSYnKgOaZ3cqZ4xN1zvFPIubCiSwnDaQ7DI2E0R85kmVnbLaiRWcF
	IYaPuiYfa4mjIPMo5xFCtvyya3qG/z9ZPS2EZ3DFwlAf27qCXv+yVcrC1kG2JozcZVUR
	eUp70LM1v9FHN0fwlbzh0zn4xooCTUfSxngM8jdArlCgi7ytjz66i7aJnh93EZ/oGzsL
	Dg9w==
X-Gm-Message-State: AIkVDXLADdYHjdJ+/S3iCRIigaUlFea/WibgdfdSwi3o4XjXThlc1VdWgyVcV+mB7IdvZej0NwDGezVb9BcivYRB
X-Received: by 10.200.39.212 with SMTP id x20mr1010188qtx.109.1483957872691;
	Mon, 09 Jan 2017 02:31:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Mon, 9 Jan 2017 02:30:52 -0800 (PST)
In-Reply-To: <20170108200513.GA11382@linux.intel.com>
References: <1482441297-14120-1-git-send-email-ed.bartosh@linux.intel.com>
	<CAJTo0LaR_uQkS8xP8a7KnxwiLH95F7TH9SkLq7v=tMQjR5JebQ@mail.gmail.com>
	<20170108200513.GA11382@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Jan 2017 10:30:52 +0000
Message-ID: <CAJTo0LZhHEPUpW-oow8cQjppJhFRhoDeMicOxOc3WxCnqnBe9Q@mail.gmail.com>
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
X-List-Received-Date: Mon, 09 Jan 2017 10:31:14 -0000
Content-Type: multipart/alternative; boundary=001a1135b542dd24e20545a6ddf8

--001a1135b542dd24e20545a6ddf8
Content-Type: text/plain; charset=UTF-8

On 8 January 2017 at 20:05, Ed Bartosh <ed.bartosh@linux.intel.com> wrote:

> This patch depends on oe-core
> patch:http://lists.openembedded.org/pipermail/openembedded-core/2016-
> December/130585.html
>
> please merge it after oe-core patch is merged.
>

I knew that, and checked that it was merged, but not it appears that it
wasn't.  Christmas brain?

Thanks,
Ross

--001a1135b542dd24e20545a6ddf8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 January 2017 at 20:05, Ed Bartosh <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ed.bartosh@linux.intel.com" target=3D"_blank">ed.bartosh@linux.intel.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
This patch depends on oe-core<br>
patch:<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/=
2016-December/130585.html" rel=3D"noreferrer" target=3D"_blank">http://list=
s.<wbr>openembedded.org/pipermail/<wbr>openembedded-core/2016-<wbr>December=
/130585.html</a><br>
<br>
please merge it after oe-core patch is merged.<br></span></blockquote></div=
><br>I knew that, and checked that it was merged, but not it appears that i=
t wasn&#39;t.=C2=A0 Christmas brain?</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">Thanks,</div><div class=3D"gmail_extra">Ross=
</div></div>

--001a1135b542dd24e20545a6ddf8--
