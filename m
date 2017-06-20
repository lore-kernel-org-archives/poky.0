Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76D77E00B31; Tue, 20 Jun 2017 06:53:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4CE5E00B2E
	for <poky@yoctoproject.org>; Tue, 20 Jun 2017 06:53:57 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id r62so58017092qkf.0
	for <poky@yoctoproject.org>; Tue, 20 Jun 2017 06:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OXdJXxrnszpWgaFfLAoeoa6JgnkwmB98vG44EGVQKPc=;
	b=BTnebqYHkJFBlg5yY6mPoMyYmAYzLjds4Ua7y/3Piuema8zBRuxGO5JyfY61lnfrHH
	qvo+cksZN+qZlFq92bB5agxxfkz6JEoMfo4fAPEivYEnz0xFaCeJX9D4rmVt5PC4ELk2
	LmZ0HAl034liUyRxKOJ894RDek4ii905QmAsKthW8CjW7SUlT7vARtPANlNWtnxax/P8
	RwC89YAY9VGNnS8AuDFGrHmivd7qpJYfeMQMXsStay/Lkke6eoCnUCjuhSdWtnobo576
	X+K1PomfYCmTGNfXjCDvLl0JAuBW+Ml2OnO9zhxxzYuNAkYk9ae0vog4Q+tZpgDq9rhi
	8a9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OXdJXxrnszpWgaFfLAoeoa6JgnkwmB98vG44EGVQKPc=;
	b=Dr8YaZPRu8C1ScYBHcxn4XJCxxoSHt+xXuMP4XtYwjgbond1kgCWzzRG3M4n5SC2gM
	G/5tApJeQQJp+1SozBiY9JXFJzXnDCJ+FXvy2ee/AsLpX+gdLWMuU1tD5gwTG8Japibw
	AAQbYqNKf5NKvxPiplr1NJ4yLUs9DsQKGhtbJBkGQz5Tne0IDs59HgsXorvG6MvJjM2n
	01fWIstNZsDMjMuizi9id8sd7U8+C8/SerXt4K1TiKxdA1NkHZFZrtA7eJrGhC+leYAI
	i2BM2mHumWsZEBt9xQefk/xpPt9C9B9iMr5fOJ9F1notWJ1iaEph5F6HPJLMjU0nO2AF
	66yg==
X-Gm-Message-State: AKS2vOwSlw6vVyWOkpn5wwgrT3oN4o4tQjIeAWx6lE2R9ujiwEH+iSnP
	AfdmzqsWLWRXDgc/J/lu5tesTclhRZRW
X-Received: by 10.55.214.221 with SMTP id p90mr32935131qkl.228.1497966837069; 
	Tue, 20 Jun 2017 06:53:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Tue, 20 Jun 2017 06:53:36 -0700 (PDT)
In-Reply-To: <adb6de21-4f2c-71db-d31d-1688f82960d7@linux.intel.com>
References: <20170620132415.10818-1-ross.burton@intel.com>
	<adb6de21-4f2c-71db-d31d-1688f82960d7@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 20 Jun 2017 14:53:36 +0100
Message-ID: <CAJTo0LYRJT8_6yJS73RtJR1a2=K923jrfah8i1ftrER939X2=w@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] conf/maintainers: update for revised maintainership
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
X-List-Received-Date: Tue, 20 Jun 2017 13:53:59 -0000
Content-Type: multipart/alternative; boundary="001a1147a418359b130552649544"

--001a1147a418359b130552649544
Content-Type: text/plain; charset="UTF-8"

On 20 June 2017 at 14:35, Alexander Kanavin <alexander.kanavin@linux.
intel.com> wrote:

> Why drop these? They are valid recipes, and it's useful to have a name
> attached to them on packages.yoctoproject.org, if nothing else.
>

Partly because I'm not convinced there's a great reason to have a named
person on a packagegroup or image, and partly because it makes it look like
I own vast chunks of the recipes...

Ross

--001a1147a418359b130552649544
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 June 2017 at 14:35, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander.k=
anavin@linux.<wbr>intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div id=3D"m_259256015024928161:a4k" class=3D"m_259256015024928161=
a3s m_259256015024928161aXjCH m_259256015024928161m15cc5ba1a4794929">Why dr=
op these? They are valid recipes, and it&#39;s useful to have a name attach=
ed to them on <a href=3D"http://packages.yoctoproject.org" rel=3D"noreferre=
r" target=3D"_blank">packages.yoctoproject.org</a>, if nothing else.<br></d=
iv></blockquote></div><br>Partly because I&#39;m not convinced there&#39;s =
a great reason to have a named person on a packagegroup or image, and partl=
y because it makes it look like I own vast chunks of the recipes...</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a1147a418359b130552649544--
