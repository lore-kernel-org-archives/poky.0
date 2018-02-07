Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38D21E00DE6; Tue,  6 Feb 2018 21:15:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CB58E00A44
	for <poky@yoctoproject.org>; Tue,  6 Feb 2018 21:15:50 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Feb 2018 21:15:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,471,1511856000"; d="scan'208";a="172323439"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.20.239])
	([10.221.20.239])
	by orsmga004.jf.intel.com with ESMTP; 06 Feb 2018 21:15:48 -0800
To: avinash.reddy.palleti@intel.com, poky@yoctoproject.org
References: <1517978948-29740-1-git-send-email-avinash.reddy.palleti@intel.com>
	<1517978948-29740-2-git-send-email-avinash.reddy.palleti@intel.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <436da4e8-77d7-68c4-9dbd-52b494fc932b@intel.com>
Date: Wed, 7 Feb 2018 13:15:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <1517978948-29740-2-git-send-email-avinash.reddy.palleti@intel.com>
Cc: saul.wold@intel.com
Subject: Re: [PATCH] linux-firmware: Add reference to iwlwifi-8000C firmware
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
X-List-Received-Date: Wed, 07 Feb 2018 05:15:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/07/2018 12:49 PM, avinash.reddy.palleti@intel.com wrote:
> From: Avinash Reddy Palleti <avinash.reddy.palleti@intel.com>
> 
> Adding reference to iwlwifi-8000c firmware which was removed erroneously in
> commit  3e4b382c0c687a76f824cd84b478c4f778e15e3e
> 
> Signed-off-by: Avinash Reddy Palleti <avinash.reddy.palleti@intel.com>
> ---
>  meta/recipes-kernel/linux-firmware/linux-firmware_git.bb | 3 ++-

This should be sent to the list: openembedded-core@lists.openembedded.org

Thanks,
Anuj

>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
> index ff60d30..3a2148d 100644
> --- a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
> +++ b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
> @@ -247,7 +247,7 @@ PACKAGES =+ "${PN}-ralink-license ${PN}-ralink \
>               ${PN}-iwlwifi-6050-4 ${PN}-iwlwifi-6050-5 \
>               ${PN}-iwlwifi-7260 \
>               ${PN}-iwlwifi-7265 \
> -             ${PN}-iwlwifi-7265d ${PN}-iwlwifi-8265 \
> +             ${PN}-iwlwifi-7265d ${PN}-iwlwifi-8000c ${PN}-iwlwifi-8265 \
>               ${PN}-iwlwifi-misc \
>               ${PN}-ibt-license ${PN}-ibt ${PN}-ibt-misc \
>               ${PN}-ibt-11-5 ${PN}-ibt-12-16 ${PN}-ibt-hw-37-7 ${PN}-ibt-hw-37-8 \
> @@ -619,6 +619,7 @@ FILES_${PN}-iwlwifi-6050-5 = "${nonarch_base_libdir}/firmware/iwlwifi-6050-5.uco
>  FILES_${PN}-iwlwifi-7260   = "${nonarch_base_libdir}/firmware/iwlwifi-7260-*.ucode"
>  FILES_${PN}-iwlwifi-7265   = "${nonarch_base_libdir}/firmware/iwlwifi-7265-*.ucode"
>  FILES_${PN}-iwlwifi-7265d   = "${nonarch_base_libdir}/firmware/iwlwifi-7265D-*.ucode"
> +FILES_${PN}-iwlwifi-8000c   = "${nonarch_base_libdir}/firmware/iwlwifi-8000C-*.ucode"
>  FILES_${PN}-iwlwifi-8265   = "${nonarch_base_libdir}/firmware/iwlwifi-8265-*.ucode"
>  FILES_${PN}-iwlwifi-misc   = "${nonarch_base_libdir}/firmware/iwlwifi-*.ucode"
>  
> 


