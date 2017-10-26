Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 231BBE00D2D; Thu, 26 Oct 2017 11:15:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63462E00D1B
	for <poky@yoctoproject.org>; Thu, 26 Oct 2017 11:15:48 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP; 26 Oct 2017 11:15:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,301,1505804400"; d="scan'208";a="914128124"
Received: from swold-mobl2.jf.intel.com ([10.24.10.43])
	by FMSMGA003.fm.intel.com with ESMTP; 26 Oct 2017 11:15:47 -0700
Message-ID: <1509041747.6434.108.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: leonardo.sandoval.gonzalez@linux.intel.com, poky@yoctoproject.org
Date: Thu, 26 Oct 2017 11:15:47 -0700
In-Reply-To: <20171026173539.72472-1-leonardo.sandoval.gonzalez@linux.intel.com>
References: <20171026173539.72472-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: Evolution 3.24.5 (3.24.5-1.fc26) 
Mime-Version: 1.0
Subject: Re: [PATCH 1/2] auto.conf.sample: auto.conf sample file
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
X-List-Received-Date: Thu, 26 Oct 2017 18:15:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-10-26 at 10:35 -0700,
leonardo.sandoval.gonzalez@linux.intel.com wrote:
> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
> 
> For completion, place a sample file explaining the reason of this
> file and its
> normal usage. No configuration value is enable, just comments.
> 
> Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.in
> tel.com>
> ---
>  meta-poky/conf/auto.conf.sample | 5 +++++
>  1 file changed, 5 insertions(+)
>  create mode 100644 meta-poky/conf/auto.conf.sample
> 
> diff --git a/meta-poky/conf/auto.conf.sample b/meta-
> poky/conf/auto.conf.sample
> new file mode 100644
> index 0000000000..e58b2fab45
> --- /dev/null
> +++ b/meta-poky/conf/auto.conf.sample
> @@ -0,0 +1,5 @@
> +#
> +# auto.conf: The file is usually created and written to by an
> autobuilder. The settings
I would say Continuous Integration System (CI) or autobuilder
> +# put into the file are typically the same as you would find in the
> conf/local.conf
> +# or the conf/site.conf files.
> +#
> \ No newline at end of file
> -- 
> 2.12.3
> 

