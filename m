Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10FB7E0142B
	for <poky@yoctoproject.org>; Thu,  2 Aug 2012 01:16:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Aug 2012 01:16:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="176083664"
Received: from unknown (HELO helios.localnet) ([10.252.121.75])
	by azsmga001.ch.intel.com with ESMTP; 02 Aug 2012 01:16:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ratheendran R <ratheendran.s@gmail.com>
Date: Thu, 02 Aug 2012 09:16:41 +0100
Message-ID: <4002576.7rubR7mxtc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <CALM_QrXnC+y7S2EFq1bJhJxr5YVfgMvRuVx0BoTJ0+1TaGjUYQ@mail.gmail.com>
References: <CALM_QrXnC+y7S2EFq1bJhJxr5YVfgMvRuVx0BoTJ0+1TaGjUYQ@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Qt embedded in
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
X-List-Received-Date: Thu, 02 Aug 2012 08:16:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 01 August 2012 23:31:05 Ratheendran R wrote:
> I am new to yocto linux distribution, I am trying out yocto 0.9 release
> which is of my interest
> 
> Yocto Project 0.9 Release Notes for Poky
> 4.0<http://www.yoctoproject.org/download/yocto/yocto-project-0.9-release-not
> es-poky-4.0> Version: 4.0.1 "Laverne"
>  Release date: 11 Mar 2011
>  Type: Yocto
> 
> I am not able to find the recipe for Qt embedded 4.6.3,kindly let me know
> if that is missing from my observation,please let me the work around for
> this.

There was no Qt/Embedded recipe in 0.9, that is correct; that was not added 
until the release after that.

Is there any particular reason why you want to use such an old (and by now 
unsupported) release? If not I suggest you use the latest stable release 
(denzil / 1.2.1).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

