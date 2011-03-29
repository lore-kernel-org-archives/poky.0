Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 577794C800AC
	for <poky@yoctoproject.org>; Mon, 28 Mar 2011 22:31:53 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2T3VqEI000477
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 Mar 2011 20:31:52 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 28 Mar 2011 20:31:51 -0700
Message-ID: <cover.1301368727.git.kai.kang@windriver.com>
Old-Date: Tue, 29 Mar 2011 11:18:47 +0800
Date: Tue, 29 Mar 2011 11:32:12 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: saul.wold@intel.com
Subject: [PATCH 0/2][RESEND] LSB: add nspr and nss to pass LSB library check
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
X-List-Received-Date: Tue, 29 Mar 2011 03:31:53 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

add nss and nspr to provide libnss3.so, libssl3.so and libnspr4.so
to pass LSB library check.
Both are imported from oe, rev 6fe7cef27069415f2eba36bc640cf59013d4979b 
And add header for each patch


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (2):
  nspr: add nspr to pass LSB library test
  nss: add nss for LSB library check

 .../mozilla/nspr-4.8.7/30_config_64bits.dpatch     |   45 +
 .../mozilla/nspr-4.8.7/30_pkgconfig.dpatch         |   37 +
 .../mozilla/nspr-4.8.7/81_sonames.dpatch           |  233 +
 .../mozilla/nspr-4.8.7/unbreak-build.diff          |   50 +
 .../recipes-extended/mozilla/nspr-tools-native.inc |   29 +
 .../mozilla/nspr-tools-native_4.8.7.bb             |   16 +
 meta/recipes-extended/mozilla/nspr.inc             |   44 +
 meta/recipes-extended/mozilla/nspr_4.8.7.bb        |   17 +
 .../mozilla/nss-3.12.6/00_ckbi_1.79.patch          | 6390 ++++++++++++++++++++
 .../mozilla/nss-3.12.6/25_entropy.patch            |   26 +
 .../mozilla/nss-3.12.6/38_hurd.patch               |   63 +
 .../mozilla/nss-3.12.6/38_kbsd.patch               |  156 +
 .../mozilla/nss-3.12.6/38_mips64_build.patch       |   31 +
 .../mozilla/nss-3.12.6/80_security_build.patch     |   21 +
 .../mozilla/nss-3.12.6/80_security_tools.patch     |   30 +
 .../mozilla/nss-3.12.6/81_sonames.patch            |  355 ++
 .../mozilla/nss-3.12.6/85_security_load.patch      |   83 +
 .../mozilla/nss-3.12.6/90_realpath.patch           |   39 +
 .../mozilla/nss-3.12.6/91_build_pwdecrypt.patch    |   21 +
 .../nss-3.12.6/95_add_spi+cacert_ca_certs.patch    | 1172 ++++
 .../mozilla/nss-3.12.6/96_NSS_VersionCheck.patch   |   23 +
 .../97_SSL_RENEGOTIATE_TRANSITIONAL.patch          |   25 +
 .../mozilla/nss-3.12.6/build-fix.patch             |   67 +
 meta/recipes-extended/mozilla/nss-3.12.6/nss.pc.in |   11 +
 meta/recipes-extended/mozilla/nss-3.12.6/series    |   14 +
 meta/recipes-extended/mozilla/nss_3.12.6.bb        |  116 +
 26 files changed, 9114 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch
 create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/30_pkgconfig.dpatch
 create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/81_sonames.dpatch
 create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff
 create mode 100644 meta/recipes-extended/mozilla/nspr-tools-native.inc
 create mode 100644 meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb
 create mode 100644 meta/recipes-extended/mozilla/nspr.inc
 create mode 100644 meta/recipes-extended/mozilla/nspr_4.8.7.bb
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/00_ckbi_1.79.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/25_entropy.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/38_hurd.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/38_kbsd.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/38_mips64_build.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/80_security_build.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/80_security_tools.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/81_sonames.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/85_security_load.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/90_realpath.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/91_build_pwdecrypt.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/95_add_spi+cacert_ca_certs.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/96_NSS_VersionCheck.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/97_SSL_RENEGOTIATE_TRANSITIONAL.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/build-fix.patch
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/nss.pc.in
 create mode 100644 meta/recipes-extended/mozilla/nss-3.12.6/series
 create mode 100644 meta/recipes-extended/mozilla/nss_3.12.6.bb


