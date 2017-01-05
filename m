Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF8F0E0080A; Thu,  5 Jan 2017 05:10:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76545E00571
	for <poky@yoctoproject.org>; Thu,  5 Jan 2017 05:10:41 -0800 (PST)
Received: by mail-qt0-f176.google.com with SMTP id v23so49915001qtb.0
	for <poky@yoctoproject.org>; Thu, 05 Jan 2017 05:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ptBVxjnJnGyj/i9SPzcLz/1Dy6v/eWAcveej9sxsTzc=;
	b=L0q8WqmVW2bIPmZWCBdw2y8mPPvqgXxKhuSwwcu9e9O/fxKLt3garjgVXiOPhBKHzY
	l2oMWIyJjXgTikZlyBo96LUhEcSeIHn0AOV/oWdj3D81xDZko9uHPrDCF/JgEusVIDsN
	rbhdWNyiRnGr+RFEs/mFlzOkvo9nOSHH08CFZChnsj8gqr5elrVYmoYC43ujulREx0qn
	3LYiT3figtyq3tkbzFxrGxwcwifhzmrAsq99AdWQR4F9719eBHngDdmgBmLAoH5R0uFb
	JP280mGhXbhIJca9qtl+U+Ez3zpuK57M6Ehf9YkyBMzqpxma4JhD3EF+I9LCzsvAl+7W
	usag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ptBVxjnJnGyj/i9SPzcLz/1Dy6v/eWAcveej9sxsTzc=;
	b=P+nxWyjVG1ndwmJ4RFAVwv9u7sUdZZzpxhFAwLqxSO2g9HxyIdOgCuKAVXErpS8UrS
	tIsF+lkBnYPrTA1t/VBI2uCIklDGatU1cWczOg4v1zAJ5E2dUGbHAQ9szr97cUBQ7MQ/
	Tqkmo6d+JuKly1QFDuYs8xQkRuVEYzRa57/SoVrKs65XAzgAP6DQUMaOqWD4AKErlhAw
	giUh4EXYPNG3TL0Vi/CNIZrm1iKrZZHImKPw5hVQbU47cGnpGMS2EDIsyjkur1wVCU29
	q+id58fMtdvmWqKA206VqxBAWmNPrquq1GnFYc6CY55yAz3n4ENxA/fLCNK0yzOT21l9
	OQJA==
X-Gm-Message-State: AIkVDXKCuUNBGePsRQN6EI/3zjnMXoOSsli+uOZkJ4TwOM+qTD6dUMIqFXILWTPAIQJALFl45h+jtVMEiDmLAtZj
X-Received: by 10.200.58.4 with SMTP id w4mr58171508qte.68.1483621840866; Thu,
	05 Jan 2017 05:10:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Thu, 5 Jan 2017 05:10:20 -0800 (PST)
In-Reply-To: <586E367A.8070004@visionweeding.com>
References: <586E367A.8070004@visionweeding.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Jan 2017 13:10:20 +0000
Message-ID: <CAJTo0LYReJGrd1z+22kTkKwrLFS=jw4k4vDVfB0rHScbXEsVug@mail.gmail.com>
To: Lars Larsen <lars@visionweeding.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: How to proceed ? I Found an error in pseudo_native that has been corrected in a latter commit
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
X-List-Received-Date: Thu, 05 Jan 2017 13:10:46 -0000
Content-Type: multipart/alternative; boundary=94eb2c1252aace6cec054558a0a1

--94eb2c1252aace6cec054558a0a1
Content-Type: text/plain; charset=UTF-8

On 5 January 2017 at 12:05, Lars Larsen <lars@visionweeding.com> wrote:

> I can fix the errors locally and make a .bbappend with a patch that
> correct these specific errors, or change the SRCREV.
> I'm unsure about  the correct procedure to follow ?
>

I'd make a bbappend that changes SRCREV to a newer commit.  If that solves
the problem then depending on how many commits are involved and how
invasive they are you could submit the patch to oe-core.

Ross

--94eb2c1252aace6cec054558a0a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 January 2017 at 12:05, Lars Larsen <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:lars@visionweeding.com" target=3D"_blank">lars@visionweeding.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1tw" class=
=3D"a3s aXjCH m1596eab734ae9328">I can fix the errors locally and make a .b=
bappend with a patch that correct these specific errors, or change the SRCR=
EV.<br>
I&#39;m unsure about=C2=A0 the correct procedure to follow ?<br></div></blo=
ckquote></div><br>I&#39;d make a bbappend that changes SRCREV to a newer co=
mmit.=C2=A0 If that solves the problem then depending on how many commits a=
re involved and how invasive they are you could submit the patch to oe-core=
.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross=
</div></div>

--94eb2c1252aace6cec054558a0a1--
