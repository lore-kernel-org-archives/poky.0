Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A851BE007BA; Wed, 10 May 2017 07:15:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFFBDE003C1
	for <poky@yoctoproject.org>; Wed, 10 May 2017 07:15:04 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id m91so30487033qte.3
	for <poky@yoctoproject.org>; Wed, 10 May 2017 07:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5FoxhuKxZgQTTdC0APkBx+I6t/odLq7EZZ7jILF8IcA=;
	b=Rb1r7Vxz4TWAZ2wq5omBKVaCvFezGrQBVZUJnhGVK1B36utUKggw34acdWEGv6S1BR
	s+HbsvobXghlHMDJj3V+k2aIJ5PwhOazFlLugTJGdbKSsCUN5yUodgykNH9xEo0c9Qmp
	utsPkLU8HLUTZCY69lku4cyry76jlXi846oQ34wrobSFnxCb40/d4/vjm7Y6pxhmSQEN
	Z2Jx/aMufvrF0w/nZIQyMkoU8xG1iHkkcBse6cfBlISYWC97vLPcBj7EhSbAivvrgNoo
	WBSpvhgHUOhcAE6RkvPDsQ1L6ujwSsxDtXpl/h6kVBeylHQA6juUczWzXlRFgcvD74S4
	dz4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5FoxhuKxZgQTTdC0APkBx+I6t/odLq7EZZ7jILF8IcA=;
	b=raoNsEhqNW/HLq5R6OgRk8spB7mXjfgNoWGZRLjD2VVuese1LAQxZwr/7M/TU6T1U2
	/fWxRTHNHnJ0ESadZl0ZvZClu+fSaf3ijcj56A81S3fU0s38pfDL58krGCEYIWOzXzKe
	aKIk8AMasbwgrTa4Exoi2nBTHr4UlfkioXn4lupeOtKZYIqPdLkZ4tLjksCBCAZsbU/J
	JMred9soSDdEnR1fBMgbpYCbylB+XhBxC3qp3Aqg0N+y0w/aEBTRIk8UB1i9NVIaJo0S
	TkniN2SzBRwpMnJXg9O+cMhtA5eoGaXscIftGgUNkuoBr+f2x4WNS4D3vRKdvPxcCBwk
	jQDg==
X-Gm-Message-State: AODbwcAPk/t5gDBgqDOigNFuBzsds0wjQ3WYNLQdRAbUiI2HlKKKPCGv
	H+FRDcywn7SeQ3TNHcGvAjnd1XzIo2g/
X-Received: by 10.237.36.219 with SMTP id u27mr6201674qtc.197.1494425703717;
	Wed, 10 May 2017 07:15:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.136 with HTTP; Wed, 10 May 2017 07:14:43 -0700 (PDT)
In-Reply-To: <20170510135902.7409-1-alexander.kanavin@linux.intel.com>
References: <20170510135902.7409-1-alexander.kanavin@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 May 2017 15:14:43 +0100
Message-ID: <CAJTo0LbNVt59Aj8-HcuWrRtWeX5GcbUwGgUjKpkUJ5+Xoa320Q@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Maxin John <maxin.john@intel.com>,
	Ricardo Neri <ricardo.neri-calderon@linux.intel.com>,
	Fathi Boudra <fathi.boudra@linaro.org>,
	Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 10 May 2017 14:15:05 -0000
Content-Type: multipart/alternative; boundary=001a11406ef036b2ce054f2c1948

--001a11406ef036b2ce054f2c1948
Content-Type: text/plain; charset=UTF-8

On 10 May 2017 at 14:59, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> If you disagree with the assignments, please speak up.
>

Obviously I need to send my patches to this file as there's no way this
will apply.  I'll merge the additions into my maint branch.

Ross

--001a11406ef036b2ce054f2c1948
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 May 2017 at 14:59, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D=
"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander.kana=
vin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div id=3D":1hk" class=3D"a3s aXjCH m15bf2a8fa113934e">If you disagree wit=
h the assignments, please speak up.<br></div></blockquote></div><br>Obvious=
ly I need to send my patches to this file as there&#39;s no way this will a=
pply.=C2=A0 I&#39;ll merge the additions into my maint branch.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11406ef036b2ce054f2c1948--
