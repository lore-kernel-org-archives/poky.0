Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F108E004CF
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 09:40:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Sep 2011 09:40:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,450,1312182000"; d="scan'208";a="71253385"
Received: from unknown (HELO helios.localnet) ([10.252.120.163])
	by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2011 09:40:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "McClintock Matthew-B29882" <B29882@freescale.com>
Date: Tue, 27 Sep 2011 17:40:05 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1317129817.git.paul.eggleton@linux.intel.com>
	<201109271710.31382.paul.eggleton@linux.intel.com>
	<CAEsOVNd=Ns1EfSBewKMoiMhDz9DvX9h-ULrJQkLa+h08XEfKJw@mail.gmail.com>
In-Reply-To: <CAEsOVNd=Ns1EfSBewKMoiMhDz9DvX9h-ULrJQkLa+h08XEfKJw@mail.gmail.com>
MIME-Version: 1.0
Message-Id: <201109271740.05725.paul.eggleton@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] conf/distro/poky.conf: set SANITY_TESTED_DISTROS
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
X-List-Received-Date: Tue, 27 Sep 2011 16:40:08 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 27 September 2011 17:19:50 you wrote:
> The other question is what MACHINE's we build for - it should be
> fairly comprehensive to just test for one, but it's hardly adequate...
> I'd assume x86, arm, ppc, mips all need to be build tested and boot
> tested?

I'm not sure we need to go that far. We do run such comprehensive tests for a 
small list of common distros as part of the core testing done by the Yocto QA 
team. However, whilst it's entirely possible that a host distribution might 
cause failures with one MACHINE / TARGET_ARCH and not another, in practice I 
would expect that if a build of a fairly comprehensive image (such as core-
image-sato) for one machine is able to complete successfully and run within 
QEMU then that should be a good indicator that the host distro is suitable. 
Additionally, if builds are being run on that system on a regular basis (e.g. 
the autobuilders, or a developer's main machine) then that would of course 
increase the level of confidence in that distribution.

Naturally, resources allowing we would like to have full batches of tests run 
on more distributions, but I don't think it's practical to commit to testing 
every distro.

Jiajun might have some other opinions/experience here, Jiajun...?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

