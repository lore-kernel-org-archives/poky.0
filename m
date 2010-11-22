Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D5DFD4C80052
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 13:23:11 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAMJN8Rl001817;
	Mon, 22 Nov 2010 19:23:08 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01242-10; Mon, 22 Nov 2010 19:23:04 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAMJMvLF001811
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 22 Nov 2010 19:22:58 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Paul Eggleton <paul.eggleton@intel.com>
In-Reply-To: <d037e804e0b097a273b3385cddccef4b3791a8fd.1290423211.git.paul.eggleton@intel.com>
References: <cover.1290423211.git.paul.eggleton@intel.com>
	<d037e804e0b097a273b3385cddccef4b3791a8fd.1290423211.git.paul.eggleton@intel.com>
Date: Mon, 22 Nov 2010 19:22:55 +0000
Message-ID: <1290453775.1272.17276.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PATCH 1/3] openssl: disable execstack flag to prevent problems with SELinux
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
X-List-Received-Date: Mon, 22 Nov 2010 19:23:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Paul,

On Wed, 2010-11-17 at 11:37 +0000, Paul Eggleton wrote:
> The execstack flag gets set on libcrypto.so by default which causes SELinux
> to prevent it from being loaded on systems using SELinux, which includes
> Fedora. This patch disables the execstack flag. (Note: Red Hat do this in
> their openssl packaging.)
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>
> ---
>  meta/recipes-connectivity/openssl/openssl.inc      |    2 +-
>  .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
> index da90456..15144b1 100644
> --- a/meta/recipes-connectivity/openssl/openssl.inc
> +++ b/meta/recipes-connectivity/openssl/openssl.inc
> @@ -15,7 +15,7 @@ S = "${WORKDIR}/openssl-${PV}"
>  
>  AR_append = " r"
>  CFLAG = "${@base_conditional('SITEINFO_ENDIANESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
> -	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
> +	-DTERMIO ${FULL_OPTIMIZATION} -Wall -Wa,--noexecstack"

Should this flag be used for both the -native and target versions or
just the native one?

If its just native specific, you should be able to do something like:

CFLAG_append_virtclass-native = " -Wa,--noexecstack"

Cheers,

Richard
 



