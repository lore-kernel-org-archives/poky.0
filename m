Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD2F44C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 16:33:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Feb 2011 14:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,242,1297065600"; d="scan'208";a="714334712"
Received: from unknown (HELO [10.255.12.96]) ([10.255.12.96])
	by orsmga001.jf.intel.com with ESMTP; 28 Feb 2011 14:33:55 -0800
Message-ID: <4D6C22D3.9080500@intel.com>
Date: Mon, 28 Feb 2011 14:33:55 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <cover.1298922394.git.mark.hatle@windriver.com>
	<c8fff34ebe8c9e22bc863e54f5db81a5988c89bb.1298922394.git.mark.hatle@windriver.com>
In-Reply-To: <c8fff34ebe8c9e22bc863e54f5db81a5988c89bb.1298922394.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] populate_sdk_rpm.bbclass: Add the necessary solvedb lock
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
X-List-Received-Date: Mon, 28 Feb 2011 22:33:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/28/2011 11:50 AM, Mark Hatle wrote:
> [BUG #776]
>
Gentle reminder, format for bugs is: [BUGID #NNNN]

Sau!

> When using the RPM solve databases, we have to lock our operations
> to avoid removing it while it's in use.
>
> The same lock is shared by the rootfs_rpm.bbclass
>
> Signed-off-by: Mark Hatle<mark.hatle@windriver.com>
> ---
>   meta/classes/populate_sdk_rpm.bbclass |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/meta/classes/populate_sdk_rpm.bbclass b/meta/classes/populate_sdk_rpm.bbclass
> index 0afe042..da308c1 100644
> --- a/meta/classes/populate_sdk_rpm.bbclass
> +++ b/meta/classes/populate_sdk_rpm.bbclass
> @@ -5,6 +5,7 @@ rpmlibdir = "/var/lib/rpm"
>   RPMOPTS="--dbpath ${rpmlibdir} --define='_openall_before_chroot 1'"
>   RPM="rpm ${RPMOPTS}"
>
> +do_populate_sdk[lockfiles] += "${DEPLOY_DIR_RPM}/rpm.lock"
>
>   populate_sdk_post_rpm () {
>


