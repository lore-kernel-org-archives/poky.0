Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iy0-f172.google.com (unknown [209.85.210.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E6C04C8006D
	for <poky@lists.pokylinux.org>; Sun, 13 Feb 2011 12:14:25 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so4326303iym.3
	for <poky@lists.pokylinux.org>; Sun, 13 Feb 2011 10:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=knV28aIMruzJ1344aRNqiRFkt5u1ypT7YiPyqdVkqYM=;
	b=aOR5dSOmoyiE90Ne4l80sPf0r9KSorM1al61iiUzF8TBSAf7KWs828bAVmPGeRB+Ng
	HsOiWRT7QnN24in39OntmnlzngRH/FxgXde0Ni0ZQ3r2hUJPTNpmT8bi+fG0xHkkdnX1
	gs+oDH79VbSrbLlc/7IdYqYyD8M49Sah0KlR8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=KxNFXX/hrhuggRZP82OWPeDvZaux5rfjXPR5QOWFYPnIFIyqtN4I4RApVFJDlAhF9Y
	D/VRL/efKXx1gkZ74Rq4SYcYsjPGJRZOlhfupnElRienKaqeJCaL8Fex5nFWgaHYmqsO
	KGQA8wxnyCBo6In91TAIuySUvwUEQUwcXbRM0=
MIME-Version: 1.0
Received: by 10.231.157.211 with SMTP id c19mr2187206ibx.172.1297620844486;
	Sun, 13 Feb 2011 10:14:04 -0800 (PST)
Received: by 10.231.30.73 with HTTP; Sun, 13 Feb 2011 10:14:04 -0800 (PST)
In-Reply-To: <4D57F979.4040002@mlbassoc.com>
References: <4D569EC5.6040609@mlbassoc.com>
	<44134B64-2531-4D6A-9C7C-C2FE68D18434@dominion.thruhere.net>
	<4D57F169.8040705@mlbassoc.com>
	<59686AEF-1509-4F1B-B722-66D2465E274F@dominion.thruhere.net>
	<4D57F378.90406@mlbassoc.com>
	<58A0EE94-D37C-4643-AF5D-13078B549E08@dominion.thruhere.net>
	<4D57F979.4040002@mlbassoc.com>
Date: Sun, 13 Feb 2011 19:14:04 +0100
Message-ID: <AANLkTikp04oEA4EL8tKC2VbDthfBHUgXPhkUMOqX=Zgn@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Booting BeagleBoard
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
X-List-Received-Date: Sun, 13 Feb 2011 18:14:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2011/2/13 Gary Thomas <gary@mlbassoc.com>:
> On 02/13/2011 08:21 AM, Koen Kooi wrote:
>>
>> Op 13 feb 2011, om 16:06 heeft Gary Thomas het volgende geschreven:
>>
>>> On 02/13/2011 08:00 AM, Koen Kooi wrote:
>>>>
>>>> Op 13 feb 2011, om 15:57 heeft Gary Thomas het volgende geschreven:
>>>>
>>>>> On 02/12/2011 08:01 AM, Koen Kooi wrote:
>>>>>>
>>>>>> Op 12 feb 2011, om 15:52 heeft Gary Thomas het volgende geschreven:
>>>>>>
>>>>>>> I have a BeagleBoard C3 (not the new xM). =A0Trying to run the
>>>>>>> latest Poky ran into some problems:
>>>>>>>
>>>>>>> * The boot commands in README.hardware are no longer accurate
>>>>>>> =A0for the 2.6.37 (linux-yocto) kernel. =A0At least you need to
>>>>>>> =A0use ttyO2 for the serial console.
>>>>>>> * There is no video? =A0/dev/fb0 is not being created.
>>>>>>>
>>>>>>> I know that the previous (Angstrom based) 2.6.32 kernel had
>>>>>>> lots of additions which support video (DSS subsystem) and
>>>>>>> also camera (ISP). =A0Has this support been ported forward
>>>>>>> into the Yocto kernel?
>>>>>>
>>>>>> Even better, there is a proper BSP with beagleboard support:
>>>>>> http://gitorious.org/angstrom/angstrom-layers/commits/master
>>>>>
>>>>> How is this used? =A0I tried just adding a pointer to that tree
>>>>> in my conf/bblayers.conf. =A0I also tried moving that tree into
>>>>> my poky sources at the same level as meta-emenlow, etc. =A0Both
>>>>> attempts immediately yielded this error:
>>>>> =A0ERROR: Unable to parse conf/bitbake.conf: Could not include requir=
ed
>>>>> file conf/machine/include/omap3.inc
>>>>>
>>>>> Perhaps you can give some guidance for how to use this?
>>>>
>>>>
>>>> http://thread.gmane.org/gmane.linux.distributions.angstrom.devel/4698/=
focus=3D4700
>>>
>>> Obviously this is not what I'm looking for.
>>>
>>> What I had wanted to test was your layering on top of my extant
>>> Poky/Yocto environment. =A0I don't want to start over as I have my
>>> own layers that work just fine with Poky.
>>
>> I obviously misunderstood your request on the angstrom mailinglist on ho=
w
>> to setup angstrom on top of yocto as a request on how to setup angstrom =
on
>> top of yocto. I'm sorry that I fail to understand such obvious things. I
>> will from now on stop trying to understand your requests to avoid any
>> confusion and perceived wrongdoing on my part.
>
> That would be reasonable except that this entire thread was on
> the Poky mailing list :-) =A0If you look closely, I asked about
> running the BeagleBoard on the latest Poky/Yocto and you replied
> with this info about your angstrom layers.

Gary, you're better off ignoring Koen.
Apparently he hasn't taken his medicine this morning.
And, frankly speaking, the reply above is among hismore friendly ones.
His mission in life seems to be to drive everyone away from OE (unless
of course you're one of his fan-boys). Guess he tries to pull the same
trick with poky/yocto.
Sometimes I really pity Richard, having to deal with someone like Koen..

And remember, have fun!
Frans

