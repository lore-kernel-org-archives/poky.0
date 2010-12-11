Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21E814C80FA4
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 11:19:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Dec 2010 09:19:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="686151090"
Received: from unknown (HELO [10.255.13.241]) ([10.255.13.241])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2010 09:19:21 -0800
Message-ID: <4D03B29A.7030600@linux.intel.com>
Date: Sat, 11 Dec 2010 09:19:22 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Yocto Project Discussions <yocto@linux.intel.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: bsp-guide review and a couple quick fixes
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
X-List-Received-Date: Sat, 11 Dec 2010 17:19:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I read through the bsp-guide as it stands in the poky.git master. I know
Scott R. is working on this, so hopefully the following feedback will be
of some value to his efforts.

In addition to the following, I have a couple patches available in my
contrib branch. Scott, you can cherry-pick these, or just recreate them
as part of you work if that proves easier:

    Pull URL: git://git.pokylinux.org/poky-contrib.git
      Branch: dvhart/docs-bsp
      Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/docs-bsp
    
    Darren Hart (2):
      bsp-guide: fix two minor typographical and grammatical errors
      bsp-guide: correct BBPATH example
    
     documentation/bsp-guide/bsp.xml |    6 +++---
     1 files changed, 3 insertions(+), 3 deletions(-)



The document is described as being generic, but it gets progressively
more Poky specific through each subsequent section. I'm not sure I
understand the value of trying to make the document generically describe
a BSP, especially when bitbake specific variables and reference to
existing poky recipes are required to make it complete.

The following are some brief thoughts and corrections organized by section.

1.3
BBFILE_COLLECTIONS += "bsp"
Make it clear that "bsp" should be replaced with the board name. Perhaps
using a trailing comment?

There needs to be a description of what each variable is for. How is
BBFILE_PRIORITY used? Is 1 the highest priority? What is a good default?


1.4
Poky/OpenEmbedded => Poky and OpenEmbedded

what hardware drivers => which hardware drivers

and also => and

This section needs an example illustrating the points described.


1.6
We want to encourage developers and users to use the linux-yocto kernel. Our
BSP documentation should reflect this - especially if it has the yocto
logo on it.

packages => recipes-kernel (right?)

various grammatical errors - irrelevant if we re-write. One instance of what
that should be which for example.


1.9
How is prebuild different than sstate-cache?


1.10
the simplest the most preferred option => the simplest and the most
preferred option

Thanks,

-- 
Darren Hart
Yocto Linux Kernel

