Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0AC6E4C80048
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 13:28:50 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Dec 2010 11:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,350,1288594800"; d="scan'208";a="584063352"
Received: from unknown (HELO [10.255.14.19]) ([10.255.14.19])
	by orsmga002.jf.intel.com with ESMTP; 15 Dec 2010 11:28:50 -0800
Message-ID: <4D0916F4.9060703@linux.intel.com>
Date: Wed, 15 Dec 2010 11:28:52 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
	<c5ab4d56f97a0e45b124d40c9f536541be04c201.1292430240.git.josh@linux.intel.com>
In-Reply-To: <c5ab4d56f97a0e45b124d40c9f536541be04c201.1292430240.git.josh@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 01/14] openssl-native: disable execstack flag to prevent problems with SELinux
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
X-List-Received-Date: Wed, 15 Dec 2010 19:28:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 03:37 AM, Paul Eggleton wrote:
> The execstack flag gets set on libcrypto.so by default which causes SELinux
> to prevent it from being loaded on systems using SELinux, which includes
> Fedora. This patch disables the execstack flag. (Note: Red Hat do this in
> their openssl packaging.)
>
> Signed-off-by: Paul Eggleton<paul.eggleton@linux.intel.com>
> ---
>   meta/recipes-connectivity/openssl/openssl.inc      |    6 +++++-
>   .../recipes-connectivity/openssl/openssl_0.9.8o.bb |    2 +-
>   2 files changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
> index 11dd1e5..dc2ff3e 100644
> --- a/meta/recipes-connectivity/openssl/openssl.inc
> +++ b/meta/recipes-connectivity/openssl/openssl.inc
> @@ -15,7 +15,11 @@ S = "${WORKDIR}/openssl-${PV}"
>
>   AR_append = " r"
>   CFLAG = "${@base_conditional('SITEINFO_ENDIANESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
> -	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
> +	-DTERMIO ${FULL_OPTIMIZATION}"


Why do we need to remove -Wall? Doesn't that reduce our visibility into 
potential issues?


> +
> +# Avoid binaries being marked as requiring an executable stack (which causes
> +# issues with SELinux on the host)
> +CFLAG_append_virtclass-native = " -Wa,--noexecstack"
>
>   # -02 does not work on mipsel: ssh hangs when it tries to read /dev/urandom
>   CFLAG_mtx-1 := "${@'${CFLAG}'.replace('-O2', '')}"
> diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
> index 31c5568..aa11cdf 100644
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


-- 
Darren Hart
Yocto Linux Kernel

