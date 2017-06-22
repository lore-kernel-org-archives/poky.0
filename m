Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC93BE00B9F; Thu, 22 Jun 2017 03:46:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	WEIRD_QUOTING autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	*  0.0 WEIRD_QUOTING BODY: Weird repeated double-quotation marks
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CBD2E00B8B
	for <poky@yoctoproject.org>; Thu, 22 Jun 2017 03:45:55 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga105.jf.intel.com with ESMTP; 22 Jun 2017 03:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,373,1493708400"; d="scan'208";a="277312118"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 22 Jun 2017 03:45:52 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id AFF3F5803BB;
	Thu, 22 Jun 2017 03:45:51 -0700 (PDT)
Date: Thu, 22 Jun 2017 13:44:05 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-ID: <20170622104405.GA5307@linux.intel.com>
References: <FDD1C072-B0FB-4EC1-8461-A7F4484AB630@gmail.com>
MIME-Version: 1.0
In-Reply-To: <FDD1C072-B0FB-4EC1-8461-A7F4484AB630@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] wic: remove extra double-quote on documentation string
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Jun 2017 10:46:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 20, 2017 at 07:58:13AM -0400, Jean-Francois Dagenais wrote:
> Signed-off-by: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
> ---
> scripts/lib/wic/ksparser.py | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/lib/wic/ksparser.py b/scripts/lib/wic/ksparser.py
> index d026caa..47afda4 100644
> --- a/scripts/lib/wic/ksparser.py
> +++ b/scripts/lib/wic/ksparser.py
> @@ -114,7 +114,7 @@ def systemidtype(arg):
>     return arg
> 
> class KickStart():
> -    """"Kickstart parser implementation."""
> +    """Kickstart parser implementation."""
> 
>     DEFAULT_EXTRA_SPACE = 10*1024
>     DEFAULT_OVERHEAD_FACTOR = 1.3

+1 for the patch, but it should be sent to oe-core mailing list
openembedded-core@lists.openembedded.org

--
Regards,
Ed

