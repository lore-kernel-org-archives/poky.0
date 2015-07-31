Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96A2FE00B43; Thu, 30 Jul 2015 20:35:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92990E00B1A
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 20:35:05 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so9028926igb.0
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 20:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=1dn7n+UEH+2slYMF0TwlG3NzQdKISFye+bu+9Jbc+Pg=;
	b=Ekncbg1wVrkJUP8SwJ+nVMEPIbG+r6cGcRWdSt4RqA0V/dhViNLYQkb1GdEDsT3I7o
	cW0RBUbppjh1q0hFtlTAhYUuKuL/PDMoOT4X0AnKSn87Bip/Qho8KOj5/Gh+3HwyaLE7
	A7JJEejFMXOcAQ962TBhAS2zOUstudxsluiuGUpv6sOX9t19cK/KV3hHzv1yBpDbCAR1
	JdBkuF6vJhTVI4cwLO62B4yO8U6SUQVL+zJSS79D/H02oFbW/am9coZui5S6Gts1XD1i
	HXIyd8S1YrtyzrKvfqmW6STdbHznBiiMNeS+08qMfXCx7WaVx3u0lVZclQhIfwXyzsmj
	8zuA==
X-Received: by 10.50.138.76 with SMTP id qo12mr1560787igb.38.1438313703197;
	Thu, 30 Jul 2015 20:35:03 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	w4sm1229995igl.22.2015.07.30.20.35.00
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 20:35:02 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <1437829398-8585-1-git-send-email-twoerner@gmail.com>
	<55BA184A.8010207@gmail.com>
	<CAJTo0La2XTdTVNHGURH-78LA7ESr6CS+oZSqRtAwBBPRSuNJPw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55BAECDE.6010602@gmail.com>
Date: Thu, 30 Jul 2015 23:34:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0La2XTdTVNHGURH-78LA7ESr6CS+oZSqRtAwBBPRSuNJPw@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] SANITY_TESTED_DISTROS: fix lsb name for openSUSE 13.2
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
X-List-Received-Date: Fri, 31 Jul 2015 03:35:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Ross,

On 07/30/15 08:47, Burton, Ross wrote:
>
> On 30 July 2015 at 13:27, Trevor Woerner <twoerner@gmail.com
> <mailto:twoerner@gmail.com>> wrote:
>
>     ping
>
>
> Merged to mut (and so master soon) now, sorry for the delay but I
> wanted to verify this on another machine.
>

No problem, and thanks for the explanation. I noticed other patches
submitted after mine had already hit the repository and thought mine
might have been missed.

It's like being at a restaurant and seeing people who arrive and order
after you get served and leave before your food arrives ;-D

