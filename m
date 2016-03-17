Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBAB5E00C28; Thu, 17 Mar 2016 09:39:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF89E00929
	for <poky@yoctoproject.org>; Thu, 17 Mar 2016 09:39:39 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id m184so106065728iof.1
	for <poky@yoctoproject.org>; Thu, 17 Mar 2016 09:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CirSWzNJ+hFx8iLg4ktARt5UkZdiaDMhuXV8GwhXiCA=;
	b=fX8HSCJ9MnTYGviPIj+186lmB6IEbN0KOX6Jhvp8GNt8agSgmBHOiJ2IBv7HHv4q7O
	M+c+2sQ1z++5QmRSQX1cx3GR4DyXMOWH37Me/XcOo6iBQua2a0PpHMluWRMAAUIulq9o
	BeBTztTrRylUQz1HpXOEV96MInSEbZ/mI2BdLCCAvH/6pHiVy5yQQePnKPMxxh9oCU2O
	8ve0AQpuvWWQ/Ai6NwsYQfQlN1TqLjyDAtmCktovb8yAH2mG0oNgRM/sKLGTIXFAYaRT
	OaKbDRnokB0i7gwI+9iJ+HNFG/hSY+P6rHZy2IYZT1bRMAqQgaKeYvIk/i1ofj0lzBx4
	6/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CirSWzNJ+hFx8iLg4ktARt5UkZdiaDMhuXV8GwhXiCA=;
	b=mQcLbLluLAn0AdROTqQe3CCXA6RH21OvbHepNX5hfc0CXTtBs9iOEVANiu2cbRv8XZ
	prYTYCT5EtbDLX7MkaN7EIVGO49ZBsxDr4mc6lkf/SQp6S5pgvgtWkq1K/g0fZfc28hD
	iY6SBupHJ14rCGihHBsaAfUlitza+TWT0p4FzOm6yJ7LjYMY8tUyoFiLphpVVQNH6RTg
	7MKqqaTOKrU1o+nwilQFGykQQjeZAzKkFJAWMUXRJPDgzajv0bmGfbijXz6KHk5AL0/c
	l9MkmYKrJGBioecPH4JA4/q41a0jaxmMn+SnJjNInTJ9sXg1EJF1GGS43QV8aBqAdtFL
	R5pw==
X-Gm-Message-State: AD7BkJK+DRGIYpgSFZS8cvi+/E15qnfot3ha5aEqzGQEGIDL05VwrrWGpQL+KauoYpymREC2caNYVdawHQZ9n/YV
X-Received: by 10.107.137.38 with SMTP id l38mr11781661iod.133.1458232778865; 
	Thu, 17 Mar 2016 09:39:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 17 Mar 2016 09:39:19 -0700 (PDT)
In-Reply-To: <A288F972-E86D-4135-910D-D4743DC6D603@gmail.com>
References: <1458227722-28660-1-git-send-email-nick@leverton.org>
	<A288F972-E86D-4135-910D-D4743DC6D603@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Mar 2016 16:39:19 +0000
Message-ID: <CAJTo0LZWPxU4q84Vt-YBNhbf2ga6eTrdA4OgnL4hoYJH3Su5KQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Nick Leverton <nick@leverton.org>, Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] lighttpd: fix /usr/lib/mod_cgi.so: undefined symbol: chunkqueue_written
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
X-List-Received-Date: Thu, 17 Mar 2016 16:39:42 -0000
Content-Type: multipart/alternative; boundary=001a113ec522c8df59052e414619

--001a113ec522c8df59052e414619
Content-Type: text/plain; charset=UTF-8

On 17 March 2016 at 16:33, Khem Raj <raj.khem@gmail.com> wrote:

> I think a fix should be accompanying the removal, otherwise we regress on
> memory issue.
>

The bug report that accompanies this patch (#9289) states that the memory
problem isn't fixed upstream, and this patch is broken.

Ross

--001a113ec522c8df59052e414619
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 March 2016 at 16:33, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":wz" class=3D"a3s" style=
=3D"overflow:hidden">I think a fix should be accompanying the removal, othe=
rwise we regress on memory issue.<br>
<div class=3D"HOEnZb"></div></div></blockquote></div><br>The bug report tha=
t accompanies this patch (#9289) states that the memory problem isn&#39;t f=
ixed upstream, and this patch is broken.</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec522c8df59052e414619--
