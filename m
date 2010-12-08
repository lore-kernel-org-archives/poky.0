Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7FCB4C81220
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 08:06:25 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 06:06:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="634353508"
Received: from unknown (HELO helios.localnet) ([10.255.16.53])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 06:06:23 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: "Tian, Kevin" <kevin.tian@intel.com>
Date: Wed, 8 Dec 2010 14:06:19 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <201012081402.16308.paul.eggleton@linux.intel.com>
In-Reply-To: <201012081402.16308.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201012081406.20138.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Wed, 08 Dec 2010 14:06:26 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 08 December 2010 14:02:15 Paul Eggleton wrote:
> I have to admit I didn't look closely enough to be sure - I was mainly
> testing between two different build machines which don't share the same
> native arch, so the native packages were rebuilt anyway. I'm starting a
> fresh build now with my new branch to see if I can reproduce your results.

FYI my build just finished and it's definitely rebuilding a whole bunch of packages (and not just native ones). More concerningly it seems to have rebuilt git-native and the hash has actually changed, although bitbake-diffsigs doesn't seem to be able to tell me what is different other than the hash itself.

Cheers,
Paul

