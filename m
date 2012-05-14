Return-Path: <flocirel@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9383E0137A;
	Mon, 14 May 2012 07:28:16 -0700 (PDT)
Received: by wgbds11 with SMTP id ds11so3349302wgb.5
	for <multiple recipients>; Mon, 14 May 2012 07:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=u2UU/cGX+pGj6AZuCu5JcBQ1/pHRNsB0iy4cjfCEPHE=;
	b=PoIhVjCUCNS1+o58QdWXNNPdmTIj7qMZlu/GLcG2vRs2LbWVeg5gzwNxwrVfejHw3d
	cQlgP232IZJP6ArIDfRcGUB2uueNMZXEIMjgWgER1WrekJyJdzAEg1MdQLDyn8Vbupw/
	ixUSSgHwCVQ6SI+yE+B6lNDc8jlBFjADulNzuIcikH9+BwNHb94aAYNdAI5agdugG8ze
	VvbmcA9qMW1OPTEYWLN+Q2CevgX/eRMPbLHYL4FWndafSdWW8rJ9YRZVp0c29E2bDfhK
	RTkks/NZSLcBI5GpNzFOmZuJfCHZ1v0HYJWrAK7dtkr+4UjAMEyl8S+/gvPFn6/klS/E
	O2vA==
MIME-Version: 1.0
Received: by 10.180.100.230 with SMTP id fb6mr21484721wib.3.1337005695448;
	Mon, 14 May 2012 07:28:15 -0700 (PDT)
Received: by 10.223.2.17 with HTTP; Mon, 14 May 2012 07:28:15 -0700 (PDT)
In-Reply-To: <4FAE57F3.5070409@mlbassoc.com>
References: <4FADA8C4.6020605@mlbassoc.com> <1336808085.2494.243.camel@ted>
	<4FAE512E.8070004@mlbassoc.com> <1336825256.2494.252.camel@ted>
	<4FAE57F3.5070409@mlbassoc.com>
Date: Mon, 14 May 2012 17:28:15 +0300
Message-ID: <CANdftmP_j1Gpgbu6ra0ZFhpa2iR8VOb+-5WVO_SVvVc=go4upw@mail.gmail.com>
From: Foinel <flocirel@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Michael Halstead <michael@yoctoproject.org>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: Stuck fetching latest Yocto kernel?
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
X-List-Received-Date: Mon, 14 May 2012 14:28:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Anyone seeing this also on the yocto 3.0. kernel?

| ERROR. Could not find an excutable target for yocto/standard/base
| ERROR. Could not locate meta series for yocto/standard/beagleboard
| ERROR. Could not modify yocto/standard/base

These error messages are prefixed by a lot of:

build/tmp-eglibc-eglibc/sysroots/x86_64-linux/usr/bin/scc: line 399:
yocto/standard/beagleboard-standard: No such file or directory



On Sat, May 12, 2012 at 3:30 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-05-12 06:20, Richard Purdie wrote:
>>
>> On Sat, 2012-05-12 at 06:01 -0600, Gary Thomas wrote:
>>>
>>> On 2012-05-12 01:34, Richard Purdie wrote:
>>>>
>>>> On Fri, 2012-05-11 at 18:03 -0600, Gary Thomas wrote:
>>>>>
>>>>> This task has been stuck for ~12 hours now
>>>>> =A0 =A0 0:
>>>>> linux-yocto-3.0.24+git2+34e0d2b4b4e9778b31f9ea99ca43f0dc71a7ee23_2+8f=
d5a8eb4067c7032389e82d54f0e54e1e27f78c-r4
>>>>> do_fetch (pid 4665)
>>>>>
>>>>> Is something stuck?
>>>>
>>>>
>>>> There was a DDOS attack against servers in the same location at the
>>>> Yocto Project servers yesterday which causes a number of problems. I
>>>> suspect that this may have caused it to hang :(
>>>
>>>
>>> Doesn't look to have improved yet - I can't even connect to the mirror
>>> =A0 =A0http://downloads.yoctoproject.org/mirror/sources/
>>>
>>
>> Hmm, Michael, is there a problem with that address?
>
>
> I don't know if you can ping (ICMP) it, but at least from here in the US
> I can't get to it. =A0Here's a traceroute from my location:
> =A0Host
> =A0 Loss% =A0 Snt =A0 Last =A0 Avg =A0Best =A0Wrst StDev
> =A01. 177-241-234-64.skybeam.com
> =A0 0.0% =A0 =A0 2 =A0 14.9 =A012.9 =A010.9 =A014.9 =A0 2.8
> =A02. 221-253-73-208.skybeam.com
> =A0 0.0% =A0 =A0 2 =A0 14.7 =A016.4 =A014.7 =A018.2 =A0 2.5
> =A03. g-0-2-rtr-bkl.nco.skybeam.net
> =A0 =A00.0% =A0 =A0 2 =A0 14.4 =A015.7 =A014.4 =A017.0 =A0 1.8
> =A04. g-0-3-rtr-mck-core.nco.skybeam.net
> =A0 0.0% =A0 =A0 2 =A0 16.7 =A016.7 =A016.7 =A016.7 =A0 0.0
> =A05. teng2-4-rtr-mkh-core-1.nco.skybeam.net
> =A0 0.0% =A0 =A0 2 =A0 13.9 =A014.0 =A013.9 =A014.0 =A0 0.0
> =A06. 62-255-73-208.skybeam.com
> =A0 =A00.0% =A0 =A0 2 =A0 23.7 =A022.5 =A021.3 =A023.7 =A0 1.7
> =A07. teng2-2-den-rtr-1670-bdr-1.skybeam.net
> =A0 0.0% =A0 =A0 2 =A0 13.5 =A014.8 =A013.5 =A016.1 =A0 1.9
> =A08. xe-8-3-3.edge3.Denver1.Level3.net
> =A0 =A00.0% =A0 =A0 1 =A0 18.4 =A018.4 =A018.4 =A018.4 =A0 0.0
> =A09. vlan52.ebr2.Denver1.Level3.net
> =A0 0.0% =A0 =A0 1 =A0 20.6 =A020.6 =A020.6 =A020.6 =A0 0.0
> 10. ae-2-2.ebr2.Seattle1.Level3.net
> =A0 =A00.0% =A0 =A0 1 =A0 57.9 =A057.9 =A057.9 =A057.9 =A0 0.0
> 11. ae-21-52.car1.Seattle1.Level3.net
> =A0 =A00.0% =A0 =A0 1 =A0 52.7 =A052.7 =A052.7 =A052.7 =A0 0.0
> 12. 4.53.150.46
> =A0 =A00.0% =A0 =A0 1 =A0 45.0 =A045.0 =A045.0 =A045.0 =A0 0.0
> 13. corv-car1-gw.nero.net
> =A0 =A00.0% =A0 =A0 1 =A0 52.2 =A052.2 =A052.2 =A052.2 =A0 0.0
> 14. ???
>
> I get to the same point if I start the trace in the UK
>
> Trying a simple fetch just hangs:
> $ wget http://downloads.yoctoproject.org/mirror/sources/
> --2012-05-12 13:29:57-- =A0http://downloads.yoctoproject.org/mirror/sourc=
es/
> Resolving downloads.yoctoproject.org... 140.211.169.118
> Connecting to downloads.yoctoproject.org|140.211.169.118|:80... connected=
.
> HTTP request sent, awaiting response...
>
>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

