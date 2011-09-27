Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F296E004CF
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 09:10:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Sep 2011 09:10:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,449,1312182000"; d="scan'208";a="56216175"
Received: from unknown (HELO helios.localnet) ([10.252.120.163])
	by azsmga001.ch.intel.com with ESMTP; 27 Sep 2011 09:10:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "McClintock Matthew-B29882" <B29882@freescale.com>
Date: Tue, 27 Sep 2011 17:10:31 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1317129817.git.paul.eggleton@linux.intel.com>
	<76951fc9ca9407ebb26a59302697213334937a6b.1317129817.git.paul.eggleton@linux.intel.com>
	<CAEsOVNc3BQLKkHHmvRE6oDe6k8CA_3Lybgqh8XmvLyNA+xhQ2A@mail.gmail.com>
In-Reply-To: <CAEsOVNc3BQLKkHHmvRE6oDe6k8CA_3Lybgqh8XmvLyNA+xhQ2A@mail.gmail.com>
MIME-Version: 1.0
Message-Id: <201109271710.31382.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Tue, 27 Sep 2011 16:10:35 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Hi Matthew,

On Tuesday 27 September 2011 16:41:42 McClintock Matthew-B29882 wrote:
> <paul.eggleton@linux.intel.com> wrote:
> > Specify a list of tested distributions, based on those tested prior
> > to the Yocto Project 1.1 release as recorded on the wiki.
> 
> What are the specific qualifications to make this list? I have run on
> CentOS 5.X in addition to ones on this list.

Well, there are two aspects:

1) We need the concrete information on what was tested; we've been collecting 
this on the following wiki page:

   https://wiki.yoctoproject.org/wiki/Distribution_Support

So, I'm not the person that sets policy on this (I'm not sure we have a policy 
yet) but thinking off the top of my head, ideally a Poky build of core-image-
sato should run "out of the box" (after installation of necessary packages, 
that is) with no hacks, although if we are able to document any necessary 
changes clearly I suspect even that shouldn't be an issue.

2) More practically we need to know what the ID string is for the distro. The 
code in sanity.bbclass looks at /etc/redhat-release, /etc/SuSE-release, 
/etc/lsb-release etc. to determine this.

FWIW I agree that CentOS should be on the list but I do not have a system 
running it to test, and I was missing the above information when I put 
together the patch. If you're confident that it works well for builds and can 
help with the above then I'm sure we can add it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

