Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F466E00BFD; Mon, 16 Jun 2014 09:03:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5061E00B71
	for <poky@yoctoproject.org>; Mon, 16 Jun 2014 09:03:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Jun 2014 09:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,487,1400050800"; d="scan'208";a="446087899"
Received: from lakaruna-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.8])
	by azsmga001.ch.intel.com with ESMTP; 16 Jun 2014 09:03:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 16 Jun 2014 17:03:25 +0100
Message-ID: <1688476.ALLmfS1QqV@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.6-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
References: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] YB #6375 #6254
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
X-List-Received-Date: Mon, 16 Jun 2014 16:03:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 06 June 2014 21:24:40 Corneliu Stoicescu wrote:
> This patch requires the merge of the "[PATCH 0/6] YB #6375 #6254" set of
> patches on the openembedded-core@lists.openembedded.org mailing list and
> enables YB #6375 and #6254 for edgerouter and beaglebone BSPs.
> 
> This will:
> - enable the target controllers to dynamically determine what image fstype
> to use for the rootfs files - enable external scripts to get information
> like rootfs image fstype and extra files needed from the taregt
> controllers.
> 
> Corneliu Stoicescu (3):
>   beaglebonetarget.py: Add support for get_extra_files() classmethod
>   controllers/beaglebonetarget.py: enable dynamical determination of
>     rootfs type
>   controllers/edgeroutertarget.py: enable dynamical determination of
>     rootfs type
> 
>  .../lib/oeqa/controllers/beaglebonetarget.py           | 18
> +++++++++++------- .../lib/oeqa/controllers/edgeroutertarget.py           |
>  5 +++-- 2 files changed, 14 insertions(+), 9 deletions(-)

Acked-by: Paul Eggleton <paul.eggleton@linux.intel.com>


-- 

Paul Eggleton
Intel Open Source Technology Centre

