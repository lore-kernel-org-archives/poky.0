Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1124E007BA; Wed, 10 May 2017 07:57:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 233A1E003C1
	for <poky@yoctoproject.org>; Wed, 10 May 2017 07:57:48 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id n4so31720665qte.2
	for <poky@yoctoproject.org>; Wed, 10 May 2017 07:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Z51i1r8DisY2n4wItjHLkOUtelUPjW+1h2icW9/C3Q4=;
	b=EkUVCWsEnI2YIOc/9027Oar/1IG3LLrPFTzNnDzgiZFxG+2hmLidDpVwIpvjH5r9uy
	u3XZpCGVb/QIzOA9Z/wBkKeIIx2K/H/FGu+0vCxa9fMZG6Xj9ukqCK1fLEGGGFiY/S7i
	sNZlRNZlQh6rHQ/wXD3uYK2zpMQ45d/N4f9k06vndGhXfE0Vz2Qf9qdMv1R703mPMK9p
	Qh/uyilUbjltKhs4ISenIBAdVDLFKRdK/Hq2ywRLdNLycgFcKb3/fxvmX1odEYHDDgzS
	EdfryMdgTe7q3DeZ/jDaDGszshA/t9N/Gv6TGRf02oIrsttSDuyZxgGp374KR4pp+Sy2
	xeVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Z51i1r8DisY2n4wItjHLkOUtelUPjW+1h2icW9/C3Q4=;
	b=JCdIrMAtahDabIxIOrB2QNeJ7jP6tu8n3d9hoE1aszr2a5ipzLsCLlxzVIcqtIm4/a
	I3HSYMxG/RvK2tkGQJ7AO0/8c3/wHoYj8Uw2sJBZ984gItLz4534lt5XQa/YrNLMSjlj
	qhFeMGvD6MFgaIWikksxKM2KYUHErvV7KTd0VaubC/DWuENNiwGQijw2vqgBPSSX37+/
	rxDrFKNDMCc04LwAAnVwlmFy3byS0ZXc7TTBuWZRjOWbNRT7xGP/eUUuzYmlSWgbOw6V
	lDJrhPOwWMD+kCSaKAUwoOhfJ75JjoJoSurU51FoIPEiJRQcjDZhhcmNo4cMtbd+G/r/
	uU2Q==
X-Gm-Message-State: AODbwcB5E2EoL5QtdQV4BwL8I0qnmQEEBbAw5TSIpRu/G2CZzXPhHGft
	z4dQybBwPw9OK0QKkwCLTYOhkxtaV6q0
X-Received: by 10.200.50.49 with SMTP id x46mr6447598qta.105.1494428267842;
	Wed, 10 May 2017 07:57:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.136 with HTTP; Wed, 10 May 2017 07:57:27 -0700 (PDT)
In-Reply-To: <CAMKF1so8HtBWZG1vkDjn6Do-bHsz2PUXRnC+=pPKrpuBfvDKJQ@mail.gmail.com>
References: <20170510135902.7409-1-alexander.kanavin@linux.intel.com>
	<1494426689.12394.6.camel@linux.intel.com>
	<CAMKF1so8HtBWZG1vkDjn6Do-bHsz2PUXRnC+=pPKrpuBfvDKJQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 May 2017 15:57:27 +0100
Message-ID: <CAJTo0LZd8_cSo6ARTgiFuiCT9a-U5SQbhOcywe9Rsb+Xa5v==Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "Maxin B. John" <maxin.john@intel.com>,
	Fathi Boudra <fathi.boudra@linaro.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	Ricardo Neri <ricardo.neri-calderon@linux.intel.com>
Subject: Re: [PATCH] maitainers.inc: assign newly added recipes
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
X-List-Received-Date: Wed, 10 May 2017 14:57:49 -0000
Content-Type: multipart/alternative; boundary=001a113577a20c3a0e054f2cb224

--001a113577a20c3a0e054f2cb224
Content-Type: text/plain; charset=UTF-8

On 10 May 2017 at 15:51, Khem Raj <raj.khem@gmail.com> wrote:

> > Can we add her for the assignement of those instead of Maxim and Khem?
> >
>
> it will be good for it to belong to gst maintainer
>

In my local changes gst-vaapi is owned by Wei Tee as it's closely tied to
libva and thus needs careful testing on real hardware.

Ross

--001a113577a20c3a0e054f2cb224
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 May 2017 at 15:51, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:r=
aj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><span class=3D"">&gt; Can we add her f=
or the assignement of those instead of Maxim and Khem?<br>
&gt;<br>
<br>
</span>it will be good for it to belong to gst maintainer<br></blockquote><=
div><br></div><div>In my local changes gst-vaapi is owned by Wei Tee as it&=
#39;s closely tied to libva and thus needs careful testing on real hardware=
.</div><div><br></div><div>Ross</div></div></div></div>

--001a113577a20c3a0e054f2cb224--
