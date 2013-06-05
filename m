Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9926FE014F8
	for <poky@yoctoproject.org>; Wed,  5 Jun 2013 01:18:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 01:18:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,804,1363158000"; d="scan'208";a="348378734"
Received: from unknown (HELO helios.localnet) ([10.252.121.220])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 01:18:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jesse Zhang <sen.zhang@windriver.com>
Date: Wed, 05 Jun 2013 09:18:06 +0100
Message-ID: <6436687.p1tUBSTh7S@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-23-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <685ca7c686ae03be5a9cc52153c14551098ad13a.1370417284.git.sen.zhang@windriver.com>
References: <cover.1370417284.git.sen.zhang@windriver.com>
	<685ca7c686ae03be5a9cc52153c14551098ad13a.1370417284.git.sen.zhang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] dev-manual: fix instructions for enabling ptest
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
X-List-Received-Date: Wed, 05 Jun 2013 08:18:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jesse,

On Wednesday 05 June 2013 15:29:11 Jesse Zhang wrote:
> The IMAGE_FEATURE and DISTRO_FEATURE are exchanged.
> 
> Signed-off-by: Jesse Zhang <sen.zhang@windriver.com>
> ---
>  documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> b/documentation/dev-manual/dev-manual-common-tasks.xml index
> ebd12d7..1cf6969 100644
> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> @@ -3619,8 +3619,8 @@
>                      which is found in the
>                      <link linkend='build-directory'>Build Directory</link>:
> <literallayout class='monospaced'>
> -     EXTRA_IMAGE_FEATURES += "ptest"
> -     DISTRO_FEATURES_append = " ptest-pkgs"
> +     DISTRO_FEATURES_append = " ptest"
> +     EXTRA_IMAGE_FEATURES += "ptest-pkgs"
>                      </literallayout>
>                      Once your build is complete, the ptest files are
> installed into the <filename>/usr/lib/&lt;package&gt;/ptest</filename>

Good catch! However, patches against the documentation need to be sent to the 
yocto@yoctoproject.org mailing list, preferably CCing Scott Rifenbark 
<scott.m.rifenbark@intel.com> as well. Would you mind re-sending to there? 

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

