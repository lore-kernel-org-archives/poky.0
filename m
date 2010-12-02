Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84AE54C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 12:46:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2010 10:46:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="863691848"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 10:46:10 -0800
Message-ID: <4CF7E972.6070308@intel.com>
Date: Thu, 02 Dec 2010 10:46:10 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@intel.com>
References: <201011191023.58154.paul.eggleton@intel.com>
In-Reply-To: <201011191023.58154.paul.eggleton@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: PATCH: openssl: disable execstack flag to prevent problems with SELinux
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
X-List-Received-Date: Thu, 02 Dec 2010 18:46:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 02:23 AM, Paul Eggleton wrote:
> openssl: disable execstack flag to prevent problems with SELinux
>
> The execstack flag gets set on libcrypto.so by default which causes SELinux
> to prevent it from being loaded on systems using SELinux, which includes
> Fedora. This patch disables the execstack flag. (Note: Red Hat do this in
> their openssl packaging.)
>
Should this be a native only CFLAG change?

Since we are not SELinux on the target (that might be a layer someone 
else might provide).


Sau!


> Signed-off-by: Paul Eggleton<paul.eggleton@intel.com>
>
> ---
> diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
> index da90456..15144b1 100644
> --- a/meta/recipes-connectivity/openssl/openssl.inc
> +++ b/meta/recipes-connectivity/openssl/openssl.inc
> @@ -15,7 +15,7 @@ S = "${WORKDIR}/openssl-${PV}"
>
>   AR_append = " r"
>   CFLAG = "${@base_conditional('SITEINFO_ENDIANESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
> -	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
> +	-DTERMIO ${FULL_OPTIMIZATION} -Wall -Wa,--noexecstack"
>
>   # -02 does not work on mipsel: ssh hangs when it tries to read /dev/urandom
>   CFLAG_mtx-1 := "${@'${CFLAG}'.replace('-O2', '')}"
> diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
> index 3949540..fe02272 100644
> --- a/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
> +++ b/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
> @@ -1,6 +1,6 @@
>   require openssl.inc
>
> -PR = "r0"
> +PR = "r1"
>   SRC_URI += "file://debian/ca.patch \
>               file://debian/config-hurd.patch;apply=no \
>               file://debian/debian-targets.patch \
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


