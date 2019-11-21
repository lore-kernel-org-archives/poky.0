Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF4F1E00B65; Thu, 21 Nov 2019 03:07:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
	[209.85.217.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8957DE009D4
	for <poky@yoctoproject.org>; Thu, 21 Nov 2019 03:07:26 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id u6so1968587vsp.4
	for <poky@yoctoproject.org>; Thu, 21 Nov 2019 03:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UQ0/PKw5GSpFR5qfz//vagvbHVN9jktobRTM3wDkBtc=;
	b=EvuJyUDDDXrBuCOPsPq0LmdtpMBuLji1Doe0DT1hy+hnSZcU2/plpOplCBIOdq28xs
	rX2A2WuVL6YabR76/RpMHdhouztDiYQAtvNqHuVIe6hgG7aFRYSXdSEqQDp40kWO0xk0
	JI/FIoDY9yrasxgArSH8CmymJCK1YRQlBwtwQzz2k/c7yiujhA6honXnictPQcCdGHR3
	7ZVbS8MPhbAWQLZxzq6c/yNrv9CC7Rmhw4bzAiEu/q0msaS7LlIGds0YtTjPlLcPBdnd
	prV7a42gcAnBx18iAbKoCbxlboG0KjT8tDVmfPFos3JA7/TPSBS+UuDa1fXnCm1j2OG5
	lEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UQ0/PKw5GSpFR5qfz//vagvbHVN9jktobRTM3wDkBtc=;
	b=XTXud5Ogd2cYkFF4Zp0JJAJJhai03DsdVmS51t2+FdKPI5cBAJG1mbSCVdo7OgJT5v
	Uy95N8T8V9LwD8yVjMlNMx1VKR+LvcT+a8bOEFz1Jv+SZDrSnogMnD4dhGQl89iYo9Ti
	LykT95xXK+x4BPpXv32ojoyt86miXLNvJrg6MwXYVhdPojP1OccEhoQBf9niAUZNp+la
	xH7/XkCwe/Pz6nrlDhOnIPrWf1gitfnxe0kD1AG7o2Mt0O2QmwbSYNs1ilrvrj9Eo5Qz
	Qu9xwSObfDIGV6pfJg4Cld5VVj59hq8b2zW55Gf8zpuWhJNC/NefCFNL2I75EzOWtP5N
	9ppA==
X-Gm-Message-State: APjAAAXnvQPwcx8th0tOJ3kc9kUkSUw6kIUuwE9Xjm+8nLYDQ7IknybV
	OGdvui6veyajl5drdF+nCLFSrTQ1+MCC73jQR28=
X-Google-Smtp-Source: APXvYqwzkFTRNO8onFL2BUqCj97IJOUWeVL277bfIwN0qaaAFQ+160d2yDCpCBGEmrNX5bmKYywdx6M6wKpNBmkKTsg=
X-Received: by 2002:a67:efd2:: with SMTP id s18mr5208097vsp.94.1574334445774; 
	Thu, 21 Nov 2019 03:07:25 -0800 (PST)
MIME-Version: 1.0
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
	<d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
In-Reply-To: <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 21 Nov 2019 12:07:14 +0100
Message-ID: <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Wang Nan <wangnan0@huawei.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: Python2 maintenance will expired
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
X-List-Received-Date: Thu, 21 Nov 2019 11:07:28 -0000
Content-Type: multipart/alternative; boundary="00000000000065ecb20597d94d9b"

--00000000000065ecb20597d94d9b
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> The project has been working hard to remove python2 dependencies where
> we can and in OE-Core, on target usage has been removed and at build
> time, u-boot is one of the main remaining pieces that still needs it.
> Their next release should address that issue.
>
> There is still a need for python2 in HOSTTOOLS but that is also being
> looked at.
>

I can confirm (from local testing) that as far as oe-core is concerned,
u-boot is actually the last piece, and after it's been moved to use py3,
py2 can be removed entirely, including a link in HOSTTOOLS, and native and
target recipes.

The situation in other layers, particularly meta-oe is less than optimal
though. Any help is appreciated.

Alex

--00000000000065ecb20597d94d9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, 21 Nov 2019 at 09:39, Richard Pur=
die &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdi=
e@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">The project has been workin=
g hard to remove python2 dependencies where<br>
we can and in OE-Core, on target usage has been removed and at build<br>
time, u-boot is one of the main remaining pieces that still needs it.<br>
Their next release should address that issue.<br>
<br>
There is still a need for python2 in HOSTTOOLS but that is also being<br>
looked at.<br></blockquote><div><br></div><div>I can confirm (from local te=
sting) that as far as oe-core is concerned, u-boot is actually the last pie=
ce, and after it&#39;s been moved to use py3, py2 can be removed entirely, =
including a link in HOSTTOOLS, and native and target recipes.</div><div><br=
></div><div>The situation in other layers, particularly meta-oe is less tha=
n optimal though. Any help is appreciated.<br></div><div><br></div><div>Ale=
x<br></div></div></div>

--00000000000065ecb20597d94d9b--
