Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5915E4C800A3
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 12:48:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Feb 2011 10:48:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,181,1297065600"; d="scan'208";a="603819184"
Received: from doubt.jf.intel.com (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2011 10:48:45 -0800
Message-ID: <4D5D6D8E.1010903@linux.intel.com>
Date: Thu, 17 Feb 2011 10:48:46 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1297930635.git.qing.he@intel.com>
	<6ac5c7e1d3a2c5fce1b1af01df5339cc8e73c219.1297930635.git.qing.he@intel.com>
In-Reply-To: <6ac5c7e1d3a2c5fce1b1af01df5339cc8e73c219.1297930635.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] openssl: fix parallel make
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
X-List-Received-Date: Thu, 17 Feb 2011 18:48:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 12:18 AM, Qing He wrote:
> From: Qing He<qing.he@intel.com>

I've noticed we have a lot of patches in our sources that have single 
line commit logs. It takes a little more time to create an explanatory 
message, but it saves everyone who looks at it more time. If understand 
this one correctly, it should read something like:

-----
openssl: fix parallel make

The current makefile doesn't explicitly list certain dependencies which 
result in a build failure with parallel make.
-----

However, I don't see how the new build_testapps target impacts this.

Thanks,

Darren

>
> Signed-off-by: Qing He<qing.he@intel.com>
> ---
>   .../openssl/openssl-0.9.8p/parallel-make-fix.patch |   18 ++++++++++++++++++
>   meta/recipes-connectivity/openssl/openssl.inc      |    6 +++---
>   .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
>   3 files changed, 22 insertions(+), 4 deletions(-)
>   create mode 100644 meta/recipes-connectivity/openssl/openssl-0.9.8p/parallel-make-fix.patch
>
> diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8p/parallel-make-fix.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/parallel-make-fix.patch
> new file mode 100644
> index 0000000..60fab9d
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssl/openssl-0.9.8p/parallel-make-fix.patch
> @@ -0,0 +1,18 @@
> +fix the parallel build regarding shared libraries.
> +
> +Signed-off-by: Qing He<qing.he@intel.com>
> +
> +diff --git a/Makefile.org b/Makefile.org
> +index 2fb0309..8bec3d0 100644
> +--- a/Makefile.org
> ++++ b/Makefile.org
> +@@ -352,6 +352,9 @@ all_testapps: build_libs build_testapps
> + build_testapps:
> + 	@dir=crypto; target=testapps; $(BUILD_ONE_CMD)
> +
> ++libcrypto.a: build_crypto
> ++libssl.a: build_ssl
> ++
> + build_shared:	$(SHARED_LIBS)
> + libcrypto$(SHLIB_EXT): libcrypto.a $(SHARED_FIPS)
> + 	@if [ "$(SHLIB_TARGET)" != "" ]; then \
> diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
> index f054c26..68b3d7b 100644
> --- a/meta/recipes-connectivity/openssl/openssl.inc
> +++ b/meta/recipes-connectivity/openssl/openssl.inc
> @@ -10,7 +10,9 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=83d26c69f6f0172ee7f795790424b453"
>
>   DEPENDS = "perl-native"
>
> -SRC_URI = "http://www.openssl.org/source/openssl-${PV}.tar.gz"
> +SRC_URI = "http://www.openssl.org/source/openssl-${PV}.tar.gz \
> +           file://parallel-make-fix.patch \
> +          "
>   S = "${WORKDIR}/openssl-${PV}"
>
>   AR_append = " r"
> @@ -29,8 +31,6 @@ export DIRS = "crypto ssl apps"
>   export EX_LIBS = "-lgcc -ldl"
>   export AS = "${CC} -c"
>
> -PARALLEL_MAKE = ""
> -
>   inherit pkgconfig siteinfo
>
>   PACKAGES =+ "libcrypto libssl"
> diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
> index 283b82a..f42b3cb 100644
> --- a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
> +++ b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
> @@ -1,6 +1,6 @@
>   require openssl.inc
>
> -PR = "r2"
> +PR = "r3"
>   SRC_URI += "file://debian/ca.patch \
>               file://debian/config-hurd.patch;apply=no \
>               file://debian/debian-targets.patch \


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

