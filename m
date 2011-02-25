Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 98B9B4C800B1
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 14:26:17 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1PKQHUu028289
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 25 Feb 2011 12:26:17 -0800 (PST)
Received: from Macintosh-5.local (172.25.34.41) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 25 Feb 2011 12:26:16 -0800
Message-ID: <4D681066.3040700@windriver.com>
Date: Fri, 25 Feb 2011 14:26:14 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1298661117.git.josh@linux.intel.com>
	<82d3ef44b338806b0af4b4fdbcab54f15108b0e5.1298661117.git.josh@linux.intel.com>
In-Reply-To: <82d3ef44b338806b0af4b4fdbcab54f15108b0e5.1298661117.git.josh@linux.intel.com>
X-Originating-IP: [172.25.34.41]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] base.bbclass: enable INCOMPATIBLE_LICENSE to	match slight variations
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
X-List-Received-Date: Fri, 25 Feb 2011 20:26:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Only thing I would be concerned with in this patch is a license of "GPLv3 w/
exception"  (I'm not sure how we address that, but there are cases where things
are GPLv3, but the exception may allow someone to use the component where they
would not normally allow for GPLv3.)  I'm not exactly sure the best way to
handle this...

--Mark

On 2/25/11 1:13 PM, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> Add a greedy any-character match to INCOMPATIBLE_LICENSE so that we can match
> different permutations of that license, i.e. if INCOMPATIBLE_LICENSE is set
> to GPLv3 we should also match GPLv3+
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  meta/classes/base.bbclass |    9 ++++++++-
>  1 files changed, 8 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
> index a674f52..3ff11d3 100644
> --- a/meta/classes/base.bbclass
> +++ b/meta/classes/base.bbclass
> @@ -345,7 +345,14 @@ python () {
>                  raise bb.parse.SkipPackage("incompatible with machine %s" % this_machine)
>  
>  
> -        dont_want_license = bb.data.getVar('INCOMPATIBLE_LICENSE', d, 1)
> +        dont_want_license = bb.data.getVar('INCOMPATIBLE_LICENSE', d, True)
> +        # If dont_want_license is set add a greedy any-character match
> +        # to it (if not already set) so that we can match permutations
> +        # of that license. i.e. if dont_want_license is set to GPLv3 we
> +        # also want to match GPLv3+
> +        if dont_want_license and not dont_want_license.endswith('.+'):
> +	    dont_want_license = dont_want_license + '.+'
> +
>          if dont_want_license and not pn.endswith("-native") and not pn.endswith("-cross") and not pn.endswith("-cross-initial") and not pn.endswith("-cross-intermediate"):
>              hosttools_whitelist = (bb.data.getVar('HOSTTOOLS_WHITELIST_%s' % dont_want_license, d, 1) or "").split()
>              lgplv2_whitelist = (bb.data.getVar('LGPLv2_WHITELIST_%s' % dont_want_license, d, 1) or "").split()


