Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DBB74C80039
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 13:51:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2011 11:51:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,274,1291622400"; d="scan'208";a="643364313"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2011 11:51:11 -0800
Message-ID: <4D237A07.2000307@linux.intel.com>
Date: Tue, 04 Jan 2011 11:50:31 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <1294079767-5931-1-git-send-email-koen@openembedded.org>
In-Reply-To: <1294079767-5931-1-git-send-email-koen@openembedded.org>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] sstate.bbclass: fix multimachine builds when	PACKAGE_ARCH = MACHINE_ARCH
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
X-List-Received-Date: Tue, 04 Jan 2011 19:51:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/03/2011 10:36 AM, Koen Kooi wrote:
> From: Koen Kooi<koen@dominion.thruhere.net>
>
> previously you could only build one set of packages for multiple machines:
>
> MACHINE=foo bitbake task-base
> MACHINE=bar bitbake task-base
>
> would only create task-base packages for foo, but not for both foo and bar.
> Doing MACHINE=bar bitbake task-base -c cleanall would remove the packages for foo.
>
> The solution is to use MULTIMACH_ARCH as suggested by Richard Purdie.
>
> Signed-off-by: Koen Kooi<koen@dominion.thruhere.net>
> ---
>   meta/classes/sstate.bbclass |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
> index 0ba130c..b6e6c92 100644
> --- a/meta/classes/sstate.bbclass
> +++ b/meta/classes/sstate.bbclass
> @@ -5,7 +5,7 @@ SSTATE_MANFILEBASE = "${SSTATE_MANIFESTS}/manifest-${SSTATE_PKGARCH}-"
>   SSTATE_MANFILEPREFIX = "${SSTATE_MANFILEBASE}${PN}"
>
>
> -SSTATE_PKGARCH    = "${BASE_PACKAGE_ARCH}"
> +SSTATE_PKGARCH    = "${MULTIMACH_ARCH}"
>   SSTATE_PKGSPEC    = "sstate-${PN}-${MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-"
>   SSTATE_PKGNAME    = "${SSTATE_PKGSPEC}${BB_TASKHASH}"
>   SSTATE_PKG        = "${SSTATE_DIR}/${SSTATE_PKGNAME}"
Pulled into master now

Thanks for the patch

  Sau!


