Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3D0F4C80044
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 13:39:37 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Apr 2011 11:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,325,1299484800"; d="scan'208";a="625676530"
Received: from unknown (HELO [10.255.13.36]) ([10.255.13.36])
	by orsmga002.jf.intel.com with ESMTP; 08 Apr 2011 11:39:37 -0700
Message-ID: <4D9F5668.80807@intel.com>
Date: Fri, 08 Apr 2011 11:39:36 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1302076785.git.kai.kang@windriver.com>
In-Reply-To: <cover.1302076785.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] LSB: add nspr and nss to pass LSB library check
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
X-List-Received-Date: Fri, 08 Apr 2011 18:39:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/2011 01:06 AM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Hi Saul,
>
> I add the exact LICENSE version and update LICENSE files and resend the patches.
> Because the license information exists in every file, so just pick one file's header as LICENSE file.
>
Kang,

If the license block is the same as the copyright file, then the correct 
file is the copyright.  What I was looking for if was multiple licensed 
was a couple of different files that might have had different license 
headers.

Please use the copyright file for both nspr and nss.

Sorry to make this difficult, we just need to get the license 
information correct.

Sau!

> add nss and nspr to provide libnss3.so, libssl3.so and libnspr4.so
> to pass LSB library check.
> Both are imported from oe, rev 6fe7cef27069415f2eba36bc640cf59013d4979b
> And add header for each patch
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kangkai/bugfix-nss
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/bugfix-nss
>
> Thanks,
>      Kang Kai<kai.kang@windriver.com>
> ---
>
>
> Kang Kai (2):
>    nspr: add nspr to pass LSB library test
>    nss: add nss for LSB library check
>
>   .../mozilla/nspr-4.8.7/30_config_64bits.dpatch     |   45 +
>   .../mozilla/nspr-4.8.7/30_pkgconfig.dpatch         |   37 +
>   .../mozilla/nspr-4.8.7/81_sonames.dpatch           |  233 +
>   .../mozilla/nspr-4.8.7/unbreak-build.diff          |   50 +
>   .../recipes-extended/mozilla/nspr-tools-native.inc |   29 +
>   .../mozilla/nspr-tools-native_4.8.7.bb             |   16 +
>   meta/recipes-extended/mozilla/nspr.inc             |   44 +
>   meta/recipes-extended/mozilla/nspr_4.8.7.bb        |   17 +
>   .../mozilla/nss-3.12.6/00_ckbi_1.79.patch          | 6390 ++++++++++++++++++++
>   .../mozilla/nss-3.12.6/25_entropy.patch            |   26 +
>   .../mozilla/nss-3.12.6/38_hurd.patch               |   63 +
>   .../mozilla/nss-3.12.6/38_kbsd.patch               |  156 +
>   .../mozilla/nss-3.12.6/38_mips64_build.patch       |   31 +
>   .../mozilla/nss-3.12.6/80_security_build.patch     |   21 +
>   .../mozilla/nss-3.12.6/80_security_tools.patch     |   30 +
>   .../mozilla/nss-3.12.6/81_sonames.patch            |  355 ++
>   .../mozilla/nss-3.12.6/85_security_load.patch      |   83 +
>   .../mozilla/nss-3.12.6/90_realpath.patch           |   39 +
>   .../mozilla/nss-3.12.6/91_build_pwdecrypt.patch    |   21 +
>   .../nss-3.12.6/95_add_spi+cacert_ca_certs.patch    | 1172 ++++
>   .../mozilla/nss-3.12.6/96_NSS_VersionCheck.patch   |   23 +
>   .../97_SSL_RENEGOTIATE_TRANSITIONAL.patch          |   25 +
>   .../mozilla/nss-3.12.6/build-fix.patch             |   67 +
>   meta/recipes-extended/mozilla/nss-3.12.6/nss.pc.in |   11 +
>   meta/recipes-extended/mozilla/nss-3.12.6/series    |   14 +
>   meta/recipes-extended/mozilla/nss_3.12.6.bb        |  116 +
>   26 files changed, 9114 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch
>   create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/30_pkgconfig.dpatch
>   create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/81_sonames.dpatch
>   create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff
>   create mode 100644 meta/recipes-extended/mozilla/nspr-tools-native.inc
>   create mode 100644 meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb
>   create mode 100644 meta/recipes-extended/mozilla/nspr.inc
>   create mode 100644 meta/recipes-extended/mozilla/nspr_4.8.7.bb
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/00_ckbi_1.79.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/25_entropy.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/38_hurd.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/38_kbsd.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/38_mips64_build.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/80_security_build.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/80_security_tools.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/81_sonames.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/85_security_load.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/90_realpath.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/91_build_pwdecrypt.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/95_add_spi+cacert_ca_certs.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/96_NSS_VersionCheck.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/97_SSL_RENEGOTIATE_TRANSITIONAL.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/build-fix.patch
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/nss.pc.in
>   create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/series
>   create mode 100644 meta/recipes-extended/mozilla/nss_3.12.6.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


