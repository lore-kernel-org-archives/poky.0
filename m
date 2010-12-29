Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 064E64C80FFE
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 12:01:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 10:01:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="691718592"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 29 Dec 2010 10:01:41 -0800
Message-ID: <4D1B7784.6080604@intel.com>
Date: Wed, 29 Dec 2010 10:01:40 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1293616099.git.ke.yu@intel.com>
In-Reply-To: <cover.1293616099.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] check if lockfile is writable (bug 606 patch V2)
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
X-List-Received-Date: Wed, 29 Dec 2010 18:01:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/29/2010 01:54 AM, Yu Ke wrote:
> I've sent a patch for bug 606 before, which add sanity check for $DL_DIR.
>
> After digging more, the root cause is hidden in bb.utils.lockfile(), so it
> is more general to add check there. hence comes out the V2 patch for bug606.
> please discard my V1 patch.
>
Ke,

I still wonder about this.  If the DL_DIR is read-only, since it is a 
shared environment (as example), when a fetch occurs, it may be for 
different reasons.

A couple of examples are:
1) an upstream fetch was missed (world build, but different hardware)
2) a developer changed the version information

In cases like this we really do want to do the fetch, so how can we 
handle that issue correctly, and not just fail and force the user to 
re-download all the packages (which may not be possible).

One option I can think of is to add a "WRITABLE_DL_DIR" (losy name but 
you get the idea) or something like that which if the DL_DIR is 
read-only could be written to for the lock file and ultimately the fetch 
of the missing upstream package.

Thoughts?

Sau!

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/bug606-v2
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug606-v2
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (1):
>    bb.utils: check if lock file is writable, to fix bug 606
>
>   bitbake/lib/bb/utils.py |    4 ++++
>   1 files changed, 4 insertions(+), 0 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


