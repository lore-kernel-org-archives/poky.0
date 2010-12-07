Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36E724C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 18:53:27 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB70rNBD012818;
	Mon, 6 Dec 2010 16:53:23 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 6 Dec 2010 16:53:22 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.25]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 6 Dec 2010 16:53:22 -0800
Message-ID: <4CFD8581.5080106@windriver.com>
Date: Mon, 06 Dec 2010 19:53:21 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101203 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4CFD6EFA.8050503@linux.intel.com>
In-Reply-To: <4CFD6EFA.8050503@linux.intel.com>
X-OriginalArrivalTime: 07 Dec 2010 00:53:22.0860 (UTC)
	FILETIME=[25EEA6C0:01CB95A9]
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, poky@yoctoproject.org
Subject: Re: Proper recipe naming and PV definition
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
X-List-Received-Date: Tue, 07 Dec 2010 00:53:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-06 6:17 PM, Darren Hart wrote:
> I'm having trouble determining what the best practice is for naming a
> linux kernel recipe.
>
> The meta-linaro layer contains a linux-linaro recipe, and eventually I'd
> like it to contain two. One for the stable kernel and one for the
> development kernel. These are currently 2.6.35 and 2.6.37 respectively.
> I currently have:
>
> linux-linaro-2.6.35_git.bb
> PV=2.6.35
>
> This results in directory names in the build tree like:
> linux-linaro-2.6.36_2.6.35 (or similar, with the version duplicated). As
> I understand it, the PV _must_ contain a standard Linux kernel version
> along the lines of 2.6.[0-9]+-* (and parsing fails without it).
>
> In order to both track the version and distinguish between stable and
> dev, would something like the following be appropriate? This also
> replaces _git with _KERNELVER (as proposed by Marcin).
>
> linux-linaro-stable_2.6.35.bb
> PV=2.6.35+git${SRCREV}
>
> linux-linaro-dev_2.6.37.bb
> PV=2.6.37+git${SRCREV}

For me the _git is not negotiable. It is the indication of
the source of the package. One of the main points about building
from an upstream git source is that we can bump it via the
SRCREV and leave the recipe alone.

I'm going to continue using this:

PV = "${LINUX_VERSION}+git${SRCPV}"

For the linux-yocto recipes.

Cheers,

Bruce

>
> Thanks,
>


