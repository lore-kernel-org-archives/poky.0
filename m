Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A9DFD59F5A
	for <webhook@archiver.kernel.org>; Wed,  6 Nov 2024 17:42:08 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web11.51743.1730914926594984685
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Nov 2024 09:42:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=F83A4cHV;
 spf=pass (domain: gmx.li, ip: 212.227.15.15, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1730914925; x=1731519725; i=star@gmx.li;
	bh=CSGfDpvUYy3oxeLIuXXfPtfjSEPuuPnuW8fHkP5yARU=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=F83A4cHVPqZRD/IOyqHUfnHd6JHv55otAYC9lRkko5ewKZKj1uq57xjivJh0UtAk
	 TX/8cu0ctabOgXYU8hTeUlZzSdMh3Q4tNlF/DYFgntrXOrh2z/KBDD7EnGWbxWsfs
	 GkyvsTqK1nNM+yYtDlf6I7pZkAz7wa65ePxJJmq00aOvKqc4CxlGS/TU/GzCKFdbz
	 7LAzOs/IdR7z1vtEWYvJsZBoXVOBe5buDNyNCgiDZL9DyR5KTwCtB6FzUF6oUgiZ6
	 9jP+KCjaP+QFulwwZ4FVbinsI3LzKItecSaxAHdWJDzTbtJ3Nm5hJSjl/rW9IpnAu
	 Vy87NQp2zB9XQLW9Ng==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.94.249]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1Mo6qv-1taLot3Oh9-00k0f5 for
 <poky@lists.yoctoproject.org>; Wed, 06 Nov 2024 18:42:04 +0100
Message-ID: <7729616b-76dc-4db2-8d55-3fc8dec79925@gmx.li>
Date: Wed, 6 Nov 2024 18:42:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
To: poky@lists.yoctoproject.org
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
 <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
 <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
 <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
 <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li>
 <CADkTA4PkbOgqwNoN4TjXZ5JeEgheo3mHNuOH3p6O6+1WC2D=ng@mail.gmail.com>
 <1AC79676-8721-4811-8EDD-4137CB6E5C78@gmx.li>
 <27270d33ba31945912e47b5a3c4acd2461ca6471.camel@linuxfoundation.org>
Content-Language: en-US
From: Arno Steffens <star@gmx.li>
In-Reply-To: <27270d33ba31945912e47b5a3c4acd2461ca6471.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:FFS8HBFjBdYrYhT75LwP5g7umbT7OHQfI2vkjpDzkV9mn8XZirG
 RWOBcNIWOuPDWSWEA1hCFA4Ldi5/0qfZdMnGDUkvhNhPeF/IZYnEgZ/JmuFReif5Bnxz8V7
 0uLtbiv6eT9uucA7JBpUT+WU//bnXdo2KCuYXODKcZClBAd8CYOvNwv++2dgjBj+eA95Zcz
 HdilDDyiBCPMdaipOhZuw==
UI-OutboundReport: notjunk:1;M01:P0:/lDbhp5bJ1w=;DND8Bf5OIsU9+FTqr5/ieVKSjWk
 D8CKXKlRiDFV2DewEjwRajt02ln+LAZZiNB0e+f3Lybaug3r7t53gcwwZbwkGCpknd3XzRXKM
 Rf3UTdaONiGoPsNPfBPghMOxr6MWKXgPPZWeU9/kKtQzQSlIkDR7+yW+jNJ2vyLFCxqDg+okP
 5q51TJnyHlLHu3ZfEUbo6IDpifu3Ivo2bmt9DptdxfGSIXxiSZL5+hF/0MFLoS1Q1BDE0g2Ug
 DjXYeoBr7Iagz3tTdjIOD+/SA6JZBsbwdYf09RKoCJ9kEEIq9+FqURnCPTgQU3GdWtr94tFW0
 PeWaIDYTJQBZm0aQJpENvFbAGNgQTxx9BfYSpT1bDPlcO6vJmJTek4UnNojG8pq8sFLieJz1X
 8jsfpIL0v2yUGwyt4/8r3Df20cUiLlRV/WXys02RvHlMxpZ4IQ8Nwyf5487FGox0OKNS7/e9t
 FZqr+KNUWCN5wibTVCrFlao6UNP4EdhepooeomvYhTvh1ZZOux/OGJyggMiQkiiQ7jAEucbuR
 DytJrAR//DlyAqRJF99+ja0zpkvQoULNxqmzI6k/ifQwoacDETv2XhOPTSG0fzOtPBxXDKla+
 B5eib1ooDwuLMb1O8x4jSdFTv1hGSsxAijb+n6r0Um2qbEWBi1bv31x2oT9gTWsvtDMlalhj6
 oWDbxa6LqFOpk3IZCHQXd5L1AkPiJCC+Vl+mWWIF6Jeh1OQOn3DA40s0bvqpqZRuT2EPSevPt
 pdWzTFTIjq3PBjgN+xVUKUJnCKKHAtkwJ8NyZltidqG7SkGJGr5Wo3BKgkckihejr4nEHxcBc
 bqM7Cd3dXf3GPFpzSi8YJ95w==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Nov 2024 17:42:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13481

On 11/6/24 11:57, Richard Purdie via lists.yoctoproject.org wrote:
> On Wed, 2024-11-06 at 11:49 +0100, Steve via lists.yoctoproject.org
> wrote:
>> Well, the idea with work-shared sounds good. But I didn't figure out
>> what param makes fetcher to checkout into work-shared?
>> Just modify $S doesn't help, it is checked out still to tmp/work/<my-
>> arch>/my-fw/${TAG}+git${SRCPV}/git
>> To workaround that for the moment I create a link, but that doesn't
>> work reliable.
>
> The way gcc handles it is a single recipe responsible for the source
> (gcc-source) which the other recipes all then depend upon.
>
> The kernel works a bit differently as the kernel creates the shared
> source and then the other recipes depend on virtual/kernel.
>
> Both approaches have complications and end up needing to be special
> cased in various places (archiver.bbclass for example) so they're
> definitely advanced usage.
>
> Cheers,
>
> Richard

Follow the path of recipes of kernel or gcc is rather frustrating for a
newbee. Having a recipe just for download seems not a good idea,
dependencies of recipes seem not to work, as download recipe creates no
real output.
What I did now, I created one standard recipeA that checks all out and
really does something that is needed
The other recipesB,C,... depend on recipeA and in their do_install (I
just want to pick some files out of repo that is checked out in recipeA)
I figure out the folder name by just ignoring the (for B, C, D...)
unknown git hash.
That seem to work.
Best regards

