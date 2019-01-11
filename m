Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 474BDE00D07; Fri, 11 Jan 2019 07:38:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 105C2E00BE8
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 07:38:07 -0800 (PST)
Received: by mail-it1-f174.google.com with SMTP id g76so3098642itg.2
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 07:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ruBn4MFLr4vhW+l7neUpy7eP6d1GYhradyqB6WI/YTI=;
	b=TNU7c/8U+jBm0Fdq8IKK6/IdK3Jm0ZTYFXACCvRNU7eAVPmkhmRCfbfQ86i/UqtztG
	PmHC14FCrC8OojuiVeJocM8Xlhp+xhcYc7JLFx5tbElBdufQLAdvtWTzcVZKx6yMOLNC
	3+DXJkvaYCF+M2yIBFBW3E/Z5KVT9xUvCV0zjj+zw2xq5nt2SwGuoBMvAs/u7p3MCMIE
	zWsXypSwgDZkapa8gttOgse7+vDaZo4xp2pGKbcs8ej4RHzanDEcLZMBr8mmXxmD+eKM
	iPkOdrxWDnxQBHQkU6ERN89gUmfXAJi8EKt0Acnuo1k4NFRRxAcNg4clgZSbewkD/uYC
	xzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ruBn4MFLr4vhW+l7neUpy7eP6d1GYhradyqB6WI/YTI=;
	b=eZLta5WygBriZpsnnYh5aMORCCWxYqyoDEuyNZrmXhB/ymlWzI3XMrzEJQ51aoNB38
	C4Pip22A4qSvvfnoiHkx1y2NCrTfYD9rrVOBPvBBWNlc0AJQ8W74nWEu/aIqF08Gt8NU
	aHId75z41CjOP1LujKyhcpwUYD7uUDbAhhCYB5xzFxxVkA6IH88tevR0Ky4D29ezhwF1
	3nkZYeYKHSO5izewjysujo7Y2kAo7TwT07cy8nDCbImHRXUvuYVoCYzBek00ONUBGPYA
	xMpfgsx2pDpAfwrtIuZVgNeQtE8VdmpLKof9YUxAX/pFS0LV8aWfwYkRGsLvt+SA7dw9
	G8AA==
X-Gm-Message-State: AJcUukcm+JuR+L5jdmzNJFNw3TE7/+SeESR88yzX/aL7ngbuY3bIP17h
	e1UGMYDlAGp0JyNtPZ+S0QCXtYTfDlKSXSjFGPjeXJUg
X-Google-Smtp-Source: ALg8bN45t8HlHmrpYm0DrJDpt/pw3AdA452YpVRexoB2f1UPYao7n22zWHhy8F7VX99dc8/22ttJyY8nQ4W49KmhvhE=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr10918201jal.31.1547221087407; 
	Fri, 11 Jan 2019 07:38:07 -0800 (PST)
MIME-Version: 1.0
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
In-Reply-To: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 Jan 2019 15:37:55 +0000
Message-ID: <CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
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
X-List-Received-Date: Fri, 11 Jan 2019 15:38:09 -0000
Content-Type: multipart/alternative; boundary="0000000000004e2169057f307ba3"

--0000000000004e2169057f307ba3
Content-Type: text/plain; charset="UTF-8"

On Fri, 11 Jan 2019 at 14:44, Jean-Francois Dagenais <
jeff.dagenais@gmail.com> wrote:

> Looking at the history of
> xxxx-Make-root-s-home-directory-configurable.patch, it seems to have
> suffered quite a lot through the systemd upgrades to the point it has
> become useless?
>
> Before I dig deeper, I wanted to check with the community.


Sounds feasibly, patches like that maintained long-term do suffer from
bitrot.  Would you be able to dig and fix this?

Ross

--0000000000004e2169057f307ba3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, 11 Jan 2019 at 14:44, Jean-Franco=
is Dagenais &lt;<a href=3D"mailto:jeff.dagenais@gmail.com">jeff.dagenais@gm=
ail.com</a>&gt; wrote:</div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
Looking at the history of xxxx-Make-root-s-home-directory-configurable.patc=
h, it seems to have suffered quite a lot through the systemd upgrades to th=
e point it has become useless?<br>
<br>
Before I dig deeper, I wanted to check with the community.</blockquote><div=
><br></div><div>Sounds feasibly, patches like that maintained long-term do =
suffer from bitrot.=C2=A0 Would you be able to dig and fix this?</div><div>=
<br></div><div>Ross</div></div></div>

--0000000000004e2169057f307ba3--
