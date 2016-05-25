Return-Path: <tom.zanussi@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5253AE00D33; Wed, 25 May 2016 11:44:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 195B4E00D08
	for <poky@yoctoproject.org>; Wed, 25 May 2016 11:44:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2016 11:44:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,364,1459839600"; d="scan'208";a="974471737"
Received: from spmorimo-mobl3.amr.corp.intel.com (HELO
	tzanussi-mobl.amr.corp.intel.com) ([10.254.125.102])
	by fmsmga001.fm.intel.com with ESMTP; 25 May 2016 11:44:06 -0700
Message-ID: <5745F276.5070103@linux.intel.com>
Date: Wed, 25 May 2016 13:44:06 -0500
From: Tom Zanussi <tom.zanussi@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: poky@yoctoproject.org, alejandro.hernandez@intel.com
References: <cover.1464119315.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1464119315.git.tom.zanussi@linux.intel.com>
Subject: Re: [PATCH 0/4] Use */intel branches in genericX86 BSPs
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
X-List-Received-Date: Wed, 25 May 2016 18:44:11 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Just FYI, once the changes have been made to linux-yocto, I'll resubmit
these with the correct SRCREVs - for now these are just FYI, please
don't merge them yet.

Tom

On 05/25/2016 01:32 PM, Tom Zanussi wrote:
> In order to provide more timely support for Intel platforms, this
> patchset switches the genericX86 BSPs over to using a set of dedicated
> */intel branches created for linux-yocto 4.1 and 4.4 kernels.
> 
> These branches and the corresponding kernel metadata branches provide
> a place to add Intel-specific features and updates which aren't yet
> upstream or may never go upstream but nevertheless are useful for
> various users.
> 
> In order to have all Intel-related BSPs derive from a common source,
> the genericX86 BSPs (in addition to the meta-intel BSPs) are being
> switched over to these branches - there should be no loss in
> functionality by doing so.
> 
> The following changes since commit 28433319ad8299aa23b1fcfdddbe100b29e86517:
> 
>   bitbake: toaster: tests browser Add test for creating a project (2016-05-11 11:32:58 +0100)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib tzanussi/intel-branches
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/intel-branches
> 
> Tom Zanussi (4):
>   meta-yocto-bsp: Switch linux-yocto 4.4 genericx86* BSPs to
>     standard/intel
>   meta-yocto-bsp: Switch linux-yocto 4.1 genericx86* BSPs to
>     standard/intel
>   linux-yocto/4.1: Make standard/intel branches available
>   linux-yocto/4.4: Make standard/intel branches available
> 
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
>  meta/recipes-kernel/linux/linux-yocto_4.1.bb                 | 2 +-
>  meta/recipes-kernel/linux/linux-yocto_4.4.bb                 | 2 +-
>  4 files changed, 10 insertions(+), 10 deletions(-)
> 


