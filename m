Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F357AE008CF; Wed, 21 Jan 2015 01:15:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D0D0E00873
	for <poky@yoctoproject.org>; Wed, 21 Jan 2015 01:15:30 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 21 Jan 2015 01:12:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="443097843"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.5.201])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Jan 2015 01:02:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Wed, 21 Jan 2015 09:15:28 +0000
Message-ID: <2357714.EBi0WJ6xIL@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <1421785142-911-1-git-send-email-sgw@linux.intel.com>
References: <1421785142-911-1-git-send-email-sgw@linux.intel.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2] maintainers: Update for non-maintained recipes
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
X-List-Received-Date: Wed, 21 Jan 2015 09:15:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Saul,

On Tuesday 20 January 2015 12:19:02 Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
> v2: Missed that an update already occurred for some items
> 
>  meta-yocto/conf/distro/include/maintainers.inc | 32
> ++++++++++++++++++-------- 1 file changed, 23 insertions(+), 9 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/include/maintainers.inc
> b/meta-yocto/conf/distro/include/maintainers.inc index 85b206c..0fdd314
> 100644
> --- a/meta-yocto/conf/distro/include/maintainers.inc
> +++ b/meta-yocto/conf/distro/include/maintainers.inc
>...
> +RECIPE_MAINTAINER_pn-dbus-ptest = "Chong Lu <Chong.Lu@windriver.com>"

dbus-ptest was renamed to dbus-test in 1.6.

> +RECIPE_MAINTAINER_pn-python-argparse = "Richard Purdie
> <richard.purdie@linuxfoundation.org>"

python-argparse was recently dropped (now integrated into python itself).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

