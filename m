Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDF7A4C810F1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 11:14:41 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so7264632iwn.35
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=1TbcrfbGgUBpvtTSoeFvq4uHh0r9CW0a7/T9/8WpkZw=;
	b=bpN7mD63Fl3ZUtVYLZCIAAczmfXRNvTIsBHerf8+jYPEiJ70iFVeEXGkqZo4EW1HFx
	OJWM9onM5bZKeEBPOHWuFdBt7zQH8btazSmMsZr1kgCL0z8bXfw1ZKKECKB0f5JECvDF
	OW1/mInds+Fu1w74Hers2wCg3S5Gt0sflRSGA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=i4cvHRFFE4j4PXOSP6nQWks0k8JY+ajAQJwpaVtkTXH7lTcCljWfSSVPLn4amyHzzA
	+2tp6o8CqhClcLmfjt0fOMbuAXDOPTAq3pSlfc/uCpDTDreKY1rvudjkXGPX8T2Z4iF3
	GcWz05WeDyQVFBDy1IFzGQOgB5kWXK2bLUTFo=
MIME-Version: 1.0
Received: by 10.231.15.133 with SMTP id k5mr8030448iba.187.1293124481371; Thu,
	23 Dec 2010 09:14:41 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 23 Dec 2010 09:14:41 -0800 (PST)
In-Reply-To: <1293123606.17519.83.camel@rex>
References: <cover.1293003470.git.sgw@linux.intel.com>
	<a6f41d4776c5b261bcf4fe2ff5c621470418c49a.1293003470.git.sgw@linux.intel.com>
	<AANLkTim+fk4y63aQWUivQOOnK2WxiijvwoMUd7K7=Eps@mail.gmail.com>
	<1293123606.17519.83.camel@rex>
Date: Thu, 23 Dec 2010 12:14:41 -0500
Message-ID: <AANLkTimmwh344dPWZf721idjR4m3ZGr-gGK3MkGhSD_L@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/4] meta-emenlow: update to the new BSP layout
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
X-List-Received-Date: Thu, 23 Dec 2010 17:14:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 23, 2010 at 12:00 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2010-12-22 at 06:06 -0800, Bruce Ashfield wrote:
>> I was just thinking about this while reading your patch series, and I'm
>> caught between two problems here.
>>
>> I like:
>>
>> =A0 - BSPs that are self contained.
>>
>> I'm ambivalent:
>>
>> =A0 - about having to update a lot of SRCREVs when I update the BSP bran=
ches.
>>
>> I have a problem:
>>
>> =A0 - If all the SRCREVs are not in a single location, I can't hunt them=
 all down
>> =A0 =A0 and update them effectively. That makes point #2 into "strongly"=
 dislike.
>>
>> I've got 350+ patches that are about to land for 2.6.34 (from the
>> 2.6.34 -longterm
>> tree), and I'll be merging them out to the BSPs. So this SRCREV along wi=
th the
>> rest will change.
>>
>> I'm looking for something that is effective in controlling the
>> branches, but is also
>> maintainable.
>>
>> Richard: can we have a central SRCREV in the default revisions (per
>> machine still), and
>> then override it in a BSP layer ? That way if for some reason you
>> don't have the
>> default revisions your BSP will be standalone, but I still have a way
>> to update everything
>> at once (and we'll eventually update the BSP layers as well).
>>
>> I can also set the SRCREVs in the recipes themselves via python (i.e.
>> set a default
>> again), that allows me a single point of control .. but perhaps
>> doesn't match existing
>> solutions.
>
> We have all the options with the syntax we have. You can set things in
> the core, the BSP can override, we can set things in the BSP that
> override the core.
>
> If you can clearly describe a consistent way you need the variables to
> work, we can then implement it :)

I can do just that :). I'll finish up what I'm working on and send out some=
thing
more detailed, but here's a high level RFC on a way that we can have self
contained BSPs and way that I can get updates pushed into them at the
same time.

I'd consider it levels of trust. The BSP (if it is maintained) can have a S=
RCREV
indicating that the BSP maintainer has tested with a particular set
of changes. At the same time, I need to be able to get them important fixes
and features, which can be set in a central location. These may not have be=
e
explicitly tested on a BSP, and when that testing is done, the BSP SRCREV
updates.

For me, this would take the form of setting something in the local.conf tha=
t
indicates whether you prefer the BSP vs system maintainer view of the
BSP content. I can easily switch on that, and use it to set the SRCREV
for the fetcher. To me this smells like what we already have with

 SRCREV_<machine> vs SRCREV

But we do need those per-machine SRCREVs available to do per-branch
content control. So we can't go to the system wide setting only manipulatin=
g
SRCREV vs a BSP setting the override. Is there some other functionality
that we can use to achieve what I describe without me adding to the
python in the kernel recipes ?

Cheers,

Bruce

I guess that's

>
> Cheers,
>
> Richard
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

