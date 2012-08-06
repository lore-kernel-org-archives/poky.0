Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4E91E002AC
	for <poky@yoctoproject.org>; Mon,  6 Aug 2012 10:17:31 -0700 (PDT)
Received: by eabd1 with SMTP id d1so443720eab.35
	for <poky@yoctoproject.org>; Mon, 06 Aug 2012 10:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Dd42sUx1hwcrq3DJMX2petplpVE5tlvz6RIsLrntGA0=;
	b=wVkGY19iV3hkIfxK5op6b2dC5VxMTIn91Yiz9K9ku3P14nLWMZ5HMWSZBXbUOQ5nMr
	jkBiUqSK8pCNbUfTDjdh5p2Ep0EFQu2mE65lAAt/E4TLh1HGHE5muPR1J+RCq6F2Jatq
	RQedca2BbySO4oZMdIHjpIgm3luLDJ/M9Bb8pDJ1Ro8IWAI4IFNUp3oxHHB2PMCg8U77
	1qTbVmZY0sa2eckoQ7uZCxYd8oPKCwpbbDg1f4f1aKWCiPM/ymPcXA/X+Npg7ozkH+Yf
	2E//asL3EOw5G1viWRQ6Dy0U96MQTaZvRfo6bl6FbY+fi+7cDSngwpxxZMCwuve5ThYD
	82nw==
Received: by 10.14.194.198 with SMTP id m46mr13860764een.13.1344273450267;
	Mon, 06 Aug 2012 10:17:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Mon, 6 Aug 2012 10:16:59 -0700 (PDT)
In-Reply-To: <1344258692.9756.150.camel@ted>
References: <CAMKF1spxaMS60nL4erLK1JaxHOJZOBhsuabs1V3O91mCfgU83Q@mail.gmail.com>
	<CAMKF1soaei9wyzPH60HnyA8RVafYXNoyghi_j=sBWiCM9mk+uw@mail.gmail.com>
	<1344258692.9756.150.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 6 Aug 2012 10:16:59 -0700
Message-ID: <CAMKF1so-rfTrXDeOxrJuEV2WhaO5n+VJRmmVK8M2x5f9AbSdfA@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: llvm build regression caused by [71cc9de357484c469cc3a46f013b11c84c924aa0] bitbake: Fix script location after mishandled merge
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
X-List-Received-Date: Mon, 06 Aug 2012 17:17:32 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 6, 2012 at 6:11 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> Have a look through the recipes and see if there is anything doing:
>
> xxxx_append<something here>
>
> and remove the <something here>.

yes I figured it out yesterday. It was an issue like that in llvm recipes.

