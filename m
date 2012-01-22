Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0063BE0030B
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 11:06:00 -0800 (PST)
Received: by lahl5 with SMTP id l5so1722491lah.35
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 11:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0J1VUkau2Pwm//o8+rdkHLZF/BWsUBJMiOjEGSzuU8o=;
	b=Sne5YLAUWiMoNZ74tWEGt+/DYoadOQTMmmXXsBrx1uLdmpR0PeA86xF3Zkx9sJJTzL
	HdgYvIn54GV5vCWcYc1kv2f4l3JsY1+AVy17dwKwIXF9PKXG7aG6BXcCXrJ5bOiMssZn
	vrTJjmRiJD3MQTx7zCkYtgmm+2Vf4JQ7QQrQw=
Received: by 10.152.103.169 with SMTP id fx9mr2922352lab.10.1327259159781;
	Sun, 22 Jan 2012 11:05:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.22.233 with HTTP; Sun, 22 Jan 2012 11:05:28 -0800 (PST)
In-Reply-To: <4F1C5D08.6020408@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
	<CAMKF1sq0K_uTNLbACaUO=-dQVj8JPkWbjbDxubTZFm6cxRRJPw@mail.gmail.com>
	<4F1C5D08.6020408@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 22 Jan 2012 11:05:28 -0800
Message-ID: <CAMKF1so_+tau94h+OaRgy2g3jU8Rjp0mf=SLMKuAXi0p5Gws3g@mail.gmail.com>
To: Derek Buitenhuis <derek.buitenhuis@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2 v2] binutils: Always enable plugins
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 22 Jan 2012 19:06:01 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jan 22, 2012 at 11:01 AM, Derek Buitenhuis
<derek.buitenhuis@gmail.com> wrote:
> On 22/01/2012 1:57 PM, Khem Raj wrote:
>>
>> while this patch is ok. It occurs to me that we might have to find an
>> easier way to specify common options once for all binutils recipes
>
>
> A singular EXTRA_OECONF = ... in binutils.inc, and use EXTRA_OECONF +=
> elsewhere after including it, perhaps? :/
>


yes we can refactor binutils.inc into binutils-common.inc and binutils.inc
where the former holds the shareable parts
> - Derek

