Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBD38E00754; Mon, 23 Mar 2015 09:26:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79C8AE006DA
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 09:26:14 -0700 (PDT)
Received: by lagg8 with SMTP id g8so138540686lag.1
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 09:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sbb/m3vlPp1m3cG3mT49LmB3FNsB684VgWXdSJrM5HA=;
	b=QV8a3w6AVRohIgD09jwC/vjUi1MQNfCUBpzxq5+N1uAIHiPYIVyLvLqaB5ZMPTKdWC
	iVcaDbT6TdqUQyvAiAUBokLCLJzdU6Y0ybx7O9cl0GvG8WzDElvT26Hondi9Zcxi1Bo3
	u6OpaaxO17WrwOzbXm0MAygri0RxOMZ2hzShNDbbQtjMT5azEHWtKNG/eo2WchNAj02u
	Vk5olmAaS8V+jH3hezNENbovR6WikOmRWr2X+sN3xTxdiSyHp7hGxKXDEkXWPDqMiwQr
	qa5pi09Ev4Hu1Lyb6MGPCxe57luwSSCCX56vkZPJI+O1I5vHCTuBA6fMHio0IVSKuL0H
	W+xg==
MIME-Version: 1.0
X-Received: by 10.112.130.195 with SMTP id og3mr83177540lbb.112.1427127973175; 
	Mon, 23 Mar 2015 09:26:13 -0700 (PDT)
Received: by 10.112.170.70 with HTTP; Mon, 23 Mar 2015 09:26:13 -0700 (PDT)
In-Reply-To: <CAMKF1spCkO4pb5UCu1kv7dYFh2kiEAu2gm03-Q6bO2TScaFe8A@mail.gmail.com>
References: <cover.1427082458.git.tom.zanussi@linux.intel.com>
	<CAMKF1sr8QU8CauiopAYKNF++cfjWr3Veax-PVRtBX3AFjEeCqQ@mail.gmail.com>
	<1427113748.5800.7.camel@picadillo>
	<CAMKF1spCkO4pb5UCu1kv7dYFh2kiEAu2gm03-Q6bO2TScaFe8A@mail.gmail.com>
Date: Mon, 23 Mar 2015 12:26:13 -0400
Message-ID: <CADkTA4NPCb9QoBhqALbv_AXtey=3n=GzmCyBBuchEHXp4peYCw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] yocto-bsp updates for 1.8
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
X-List-Received-Date: Mon, 23 Mar 2015 16:26:23 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 23, 2015 at 11:05 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Mar 23, 2015 5:29 AM, "Tom Zanussi" <tom.zanussi@linux.intel.com> wrote:
>>
>> Hi Khem,
>>
>> yocto-bsp updates are supposed to match the set of kernels supported for
>> a new release.  For 1.8, that includes 3.14, which is the most recent
>> LTSI kernel.  1.7 is still available for people who need the old (3.10)
>> LTSI kernel.
>
> So we do not support latest LTS it's only LTSI?

Correct. That's what it has been for the past two years. Latest LTSI plus
the latest mainline kernel released within our development window.

Darren had this documented on the various pages .. but I'm battling
with a last minute configuration tweak, so haven't gone to track it down.

Bruce

>
>>
>> Tom
>>
>>
>> On Sun, 2015-03-22 at 22:01 -0700, Khem Raj wrote:
>> > On Sun, Mar 22, 2015 at 9:24 PM, Tom Zanussi
>> > <tom.zanussi@linux.intel.com> wrote:
>> > > This is the yocto-bsp update for 1.8 (to the 3.19 kernel, and removing
>> > > 3.10 and 3.17 support).
>> >
>> > why are we removing a LTSI (3.10) kernel ?
>>
>>
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

