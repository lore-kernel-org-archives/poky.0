Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id F3EDEE01482
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 13:48:57 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id t11so2974810wey.14
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 13:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=P/nk6MzILpuBK5Ii9/nMtEt13O0HwgoBsbzT4sJyNPY=;
	b=YXj1ebGa+2oCxdx8Hb5/KDaYlqnZ78OVZZ4F0tGKSQFKE83cCX7/fttZj7sy728Hly
	ziIIT9Qxm61uQ25Kb4Ccvbt9nq5r/lRfNb2TmgE0h0JWPXJ3DRxUsV7wiqpGzVoPu04x
	QuRmDZLnSpoUa+dH5p0Ci5RmhW3N44mckBIc2Y0jWK3v6G+IxoGI4iRg0Gari/OBlt8r
	kvwmudySBk3/LMmDk93CGvsJJXLhuWPPlEHRDzcXxBBYxEbtbqM+iAKOtESsUlZM+aCu
	1Hdxhx42hAsyv2glJYr+x/xLQSVvZ3FFqZuCTbIyfWr+E2B6xbukAZvy/wSEFFu6rp0K
	k6Dg==
MIME-Version: 1.0
X-Received: by 10.180.104.10 with SMTP id ga10mr348150wib.23.1362174536370;
	Fri, 01 Mar 2013 13:48:56 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Fri, 1 Mar 2013 13:48:56 -0800 (PST)
In-Reply-To: <CAHUNapQ_SW4XsdKFNb627Ay=xdm=i+8hDz5WVJj3Qr0Zp9+Paw@mail.gmail.com>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
	<CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
	<20130301173817.GP3279@jama>
	<CAHUNapTJVB_Opb1pBpMEpWTc8S9gZBz1S+iAJAyg9ybEwao=hQ@mail.gmail.com>
	<20130301191053.GR3279@jama>
	<CAHUNapTnV7mCppOBC=-JuXp-7Tc6KquyN2=KJWRh0rPOPY1WaA@mail.gmail.com>
	<20130301212012.GS3279@jama>
	<CAHUNapSQW42ShgSNHws0uZ_coJQLi_wzbiCix4cvONSfDCnKRQ@mail.gmail.com>
	<20130301213842.GT3279@jama>
	<CAHUNapQ_SW4XsdKFNb627Ay=xdm=i+8hDz5WVJj3Qr0Zp9+Paw@mail.gmail.com>
Date: Fri, 1 Mar 2013 16:48:56 -0500
Message-ID: <CAHUNapRs9v9HTgNPfcFa6P8GOm9gkMVj7tOn0OwXJxOOMzWKfg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 01 Mar 2013 21:48:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 1, 2013 at 4:42 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Fri, Mar 1, 2013 at 4:38 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>> Do you also have this one?
>> https://lists.yoctoproject.org/pipermail/poky/2013-March/008824.html
>
> No I don't, sorry. Retesting...

...and it works. Sorry for the confusion.

