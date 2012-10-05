Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CB9FE0049B
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 20:19:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Oct 2012 20:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,538,1344236400"; d="scan'208";a="152665087"
Received: from unknown (HELO [10.255.13.203]) ([10.255.13.203])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Oct 2012 20:19:13 -0700
Message-ID: <506E51B1.6060801@linux.intel.com>
Date: Thu, 04 Oct 2012 20:19:13 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1349394751-28272-1-git-send-email-sgw@linux.intel.com>
	<1472694.z6zoviGNz8@helios>
	<CAMKF1so_3v3+qQAcsDa2jJbRL+Ot2H-xozCGZW+FkrACmZ+UCg@mail.gmail.com>
In-Reply-To: <CAMKF1so_3v3+qQAcsDa2jJbRL+Ot2H-xozCGZW+FkrACmZ+UCg@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: fix Poky release info to include release number
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
X-List-Received-Date: Fri, 05 Oct 2012 03:19:14 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/04/2012 05:31 PM, Khem Raj wrote:
>
>
> On Thursday, October 4, 2012, Paul Eggleton
> <paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>>
> wrote:
>  > On Thursday 04 October 2012 16:52:31 Saul Wold wrote:
>  >> Signed-off-by: Saul Wold <sgw@linux.intel.com
> <mailto:sgw@linux.intel.com>>
>  >> ---
>  >>  meta-yocto/conf/distro/poky.conf |    4 ++--
>  >>  1 file changed, 2 insertions(+), 2 deletions(-)
>  >>
>  >> diff --git a/meta-yocto/conf/distro/poky.conf
>  >> b/meta-yocto/conf/distro/poky.conf index ad45f25..8e82496 100644
>  >> --- a/meta-yocto/conf/distro/poky.conf
>  >> +++ b/meta-yocto/conf/distro/poky.conf
>  >> @@ -71,8 +71,8 @@ CONNECTIVITY_CHECK_URIS ?= " \
>  >>  SANITY_TESTED_DISTROS ?= " \
>  >>              Yocto (Built by Poky 7.0) 1.2 \n \
>  >>              Yocto (Built by Poky 8.0) 1.3 \n \
>  >> -            Poky 7.0 (Yocto Project 1.2 Reference Distro) \n \
>  >> -            Poky 8.0 (Yocto Project 1.3 Reference Distro) \n \
>  >> +            Poky 7.0 (Yocto Project 1.2 Reference Distro) 1.2 \n \
>  >> +            Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3 \n \
>  >
>  > Hmm, in prompting Richard to change DISTRO_NAME in the manner we have, I
>  > hadn't realised we would still end up with the version at the end as
> well :(
>
> Yeah that looks a bit odd

I think this is due to the issue put both the DISTRO_NAME and 
DISTRO_VERSION into the issue and the LSB DISTRIB_RELEASE is both also.

We could change issue, but I am not sure we can change the LSB, I would 
have to dig into the standard!

Sau!

>  >
>  > Cheers,
>  > Paul
>  >
>  > --
>  >
>  > Paul Eggleton
>  > Intel Open Source Technology Centre
>  > _______________________________________________
>  > poky mailing list
>  > poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>  > https://lists.yoctoproject.org/listinfo/poky
>  >

