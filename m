Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC8A4E00B28; Wed, 25 Apr 2018 07:30:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34BBCE005A9
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 07:30:33 -0700 (PDT)
Received: by mail-lf0-f50.google.com with SMTP id j193-v6so2782654lfg.6
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 07:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BWkHus4d0ldViRiXV1XPx5J3X3K18B5alJT+AnHYZXU=;
	b=BzfAxsxozA5BV7k58PCip4wXWi06t85LgkNAVZcVXdg3A5zXcGxjxJ8p0o9vVpMt0C
	qcPzbaYJ0Pp4zFlgZIiNJpVZ9HotNfO6uJoZt+EeTfMurBr43O3TKSpzy7eOW525HxFr
	KbbQgOtRwcmGuGs87WM3p7+sQi6SCa0Z4oNOg0HvI1vOefmPu2g0U1+S8ogc3/n3gZb8
	USHW9jhxldydJq61IIKfKmFvCiG7ukod2vOZ4icorVXB9d8SrOAa4TVQL8Jv065qNWm3
	Rq4JFZgrqY39XRCPc1C09XF5NCscrKPnhA42G93Adja3BKeKUqKQ4Mjyz9ftzUX6GO/M
	D6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BWkHus4d0ldViRiXV1XPx5J3X3K18B5alJT+AnHYZXU=;
	b=jqXeOm5AVSmM5GTB8TMxjIWivSMRYpVzio082OmJmfGLBAAMRrg7igngRt8i4m+dQp
	YaH06TGYKKC0FI+/U4M4oxqCY4Hp3F4EKMiH/TcNTcf+71ryPKzP7XAK/czSLBZMAzoe
	s4PBtz0OxUKquU100vmY1IpoQhMeYH+WuFNfcSZ3jj3VlJUVy+iU2E91ZY0AR3Z71Yla
	rFQ2WK8D9NdJNtSAQ3986cQJzLNHV05tefqY9kM4QSTERM6uq4MZcof8rIq84W4wlnr4
	+faOBSn6VTuh0A3e5IdrIgDKW26ot6ouR259uysEBrPR9ZS+r1duTATP8Fl+XaxgJIfr
	8X0g==
X-Gm-Message-State: ALQs6tDX/UlAQ2iJS6xIRI8rp+9JBabf2N5K2tg6Un0ROWSOiCd8Pe9p
	Gouj7HB8QltphPHouY9Isotm5fIUCaw8ZaZq3wOPTg==
X-Google-Smtp-Source: AIpwx4/Cqhhv6IEE2p+caOxsjg3nWWLHJZfobP62BMySnnFom6vHe1fPka3+PerSU3p4SFgJlzPODSEtfxGWQwnrqrw=
X-Received: by 10.46.148.75 with SMTP id o11mr19019178ljh.39.1524666633199;
	Wed, 25 Apr 2018 07:30:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:c9:0:0:0:0:0 with HTTP;
	Wed, 25 Apr 2018 07:30:32 -0700 (PDT)
In-Reply-To: <CAJKOXPe0SWcHYxKjKUsiAT+YMJFsjWzroguaO8aQO69T=cTkgg@mail.gmail.com>
References: <1524664054-21717-1-git-send-email-krzk@kernel.org>
	<CAJKOXPe0SWcHYxKjKUsiAT+YMJFsjWzroguaO8aQO69T=cTkgg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 25 Apr 2018 10:30:32 -0400
Message-ID: <CAHUNapTZrzO+25mSCsqPYU35nJp0ZKtW+doPk_sJW3UQeUtq4w@mail.gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Poky Project <poky@yoctoproject.org>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [meta-networking][rocko][PATCH 1/2] kernel_wireless_regdb: Add class for embedding regulatory data into the kernel
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
X-List-Received-Date: Wed, 25 Apr 2018 14:30:34 -0000
Content-Type: multipart/alternative; boundary="f4f5e80c590012a3c4056aad1d1f"

--f4f5e80c590012a3c4056aad1d1f
Content-Type: text/plain; charset="UTF-8"

Please don't cross-post this to multiple repository lists. meta-networking
only exists in meta-openembedded, therefore this patch only needs to be
sent to openembedded-devel.

--f4f5e80c590012a3c4056aad1d1f
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Please don&#39;t cross-post this to multiple repository lists. meta-networking only exists in meta-openembedded, therefore this patch only needs to be sent to openembedded-devel.<br></div></div>

--f4f5e80c590012a3c4056aad1d1f--
