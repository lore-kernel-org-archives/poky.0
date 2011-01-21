Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E5474C811F5
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 19:04:26 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Jan 2011 17:04:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="377697566"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 17:04:25 -0800
Message-ID: <4D38DB98.80409@intel.com>
Date: Thu, 20 Jan 2011 17:04:24 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1295303777-20599-1-git-send-email-yanok@emcraft.com>
In-Reply-To: <1295303777-20599-1-git-send-email-yanok@emcraft.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] openssl: drop the valgrind patch that introduce a	security hole
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
X-List-Received-Date: Fri, 21 Jan 2011 01:04:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/17/2011 02:36 PM, Ilya Yanok wrote:
> debian/valgrind.patch is the 'famous' Debian OpenSSL patch responsible
> for everyone using Debian and derivatives changing their keys. All keys
> generated with the patched OpenSSL are compromised so at very least we
> have to drop this patch for good.
>
> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
> ---
>   .../openssl/openssl-0.9.8p/debian/valgrind.patch   |   15 ---------------
>   .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    1 -
>   2 files changed, 0 insertions(+), 16 deletions(-)
>   delete mode 100644 meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch
>
> diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch
> deleted file mode 100644
> index e9f86ea..0000000
> --- a/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -Index: openssl-0.9.8k/crypto/rand/md_rand.c
> -===================================================================
> ---- openssl-0.9.8k.orig/crypto/rand/md_rand.c	2008-09-16 13:50:05.000000000 +0200
> -+++ openssl-0.9.8k/crypto/rand/md_rand.c	2009-07-19 11:36:05.000000000 +0200
> -@@ -477,8 +477,10 @@
> - 		MD_Update(&m,local_md,MD_DIGEST_LENGTH);
> - 		MD_Update(&m,(unsigned char *)&(md_c[0]),sizeof(md_c));
> - #ifndef PURIFY
> -+#if 0 /* Don't add uninitialised data. */
> - 		MD_Update(&m,buf,j); /* purify complains */
> - #endif
> -+#endif
> - 		k=(st_idx+MD_DIGEST_LENGTH/2)-st_num;
> - 		if (k>  0)
> - 			{
> diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
> index 3ae6bf4..283b82a 100644
> --- a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
> +++ b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
> @@ -13,7 +13,6 @@ SRC_URI += "file://debian/ca.patch \
>               file://debian/no-symbolic.patch \
>               file://debian/pic.patch \
>               file://debian/pkg-config.patch \
> -            file://debian/valgrind.patch \
>               file://debian/rc4-amd64.patch \
>               file://debian/rehash-crt.patch \
>               file://debian/rehash_pod.patch \
Pulled into Master

Thanks
	Sau!


