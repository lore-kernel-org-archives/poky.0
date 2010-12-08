Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06FC54C8120E
	for <poky@pokylinux.org>; Wed,  8 Dec 2010 08:02:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2010 06:02:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="634352033"
Received: from unknown (HELO helios.localnet) ([10.255.16.53])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 06:02:19 -0800
To: "poky@pokylinux.org" <poky@pokylinux.org>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
Date: Wed, 8 Dec 2010 14:02:15 +0000
MIME-Version: 1.0
Message-Id: <201012081402.16308.paul.eggleton@linux.intel.com>
Subject: Re: sstate status
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
X-List-Received-Date: Wed, 08 Dec 2010 14:02:37 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 08 December 2010 11:41:22 you wrote:
> Do we still need those variable whitelisting changes? Based on original
> branch you pushed (basically RP's branch rebased on master imo), I think it
> basically works at least for a single recipe build though above weird issue
> exists for image build.
>
> Of course we need keep some bitbake specific variables in whitelist, such as
> DATE, TIME and several others you added in last commit.

Aren't many of those variables still exposed via preserved_envvars_list()?
 
> On the other hand, did you observe my issue on this new push? I want to
> understand its root cause, which is really funny. 

I have to admit I didn't look closely enough to be sure - I was mainly testing between two different build machines which don't share the same native arch, so the native packages were rebuilt anyway. I'm starting a fresh build now with my new branch to see if I can reproduce your results.

Cheers,
Paul

