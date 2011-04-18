Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 076854C80A7C
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 16:56:36 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Apr 2011 14:56:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,235,1301900400"; d="scan'208";a="911312759"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by fmsmga001.fm.intel.com with ESMTP; 18 Apr 2011 14:56:32 -0700
Message-ID: <4DACB38F.1090606@intel.com>
Date: Mon, 18 Apr 2011 14:56:31 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1302862307.git.qing.he@intel.com>
In-Reply-To: <cover.1302862307.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] security fixes
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
X-List-Received-Date: Mon, 18 Apr 2011 21:56:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/15/2011 03:16 AM, Qing He wrote:
> From: Qing He<qing.he@intel.com>
>
> This patch set upgrades several recipes to address the following CVEs:
>
>     libexif: CVE-2007-6351, CVE-2007-6352, CVE-2009-3895
>     libxml2: CVE-2010-4008
>     openssl: CVE-2010-4180, CVE-2010-4252, CVE-2010-0014
>     rsync: CVE-2011-1097
>
> they are targeting for 1.0 point release
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/cve
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/cve
>
> Thanks,
>      Qing He<qing.he@intel.com>
> ---
>
>
> Qing He (4):
>    libexif: upgrade to 0.6.20
>    libxml2: upgrade to version 2.7.8
>    openssl: upgrade to version 0.9.8r
>    rsync: upgrade to version 3.0.8
>
>   .../configure-targets.patch                        |    1 +
>   .../debian/ca.patch                                |    0
>   .../debian/config-hurd.patch                       |    0
>   .../debian/debian-targets.patch                    |    0
>   .../debian/engines-path.patch                      |    0
>   .../debian/kfreebsd-pipe.patch                     |    0
>   .../debian/make-targets.patch                      |    0
>   .../debian/man-dir.patch                           |    0
>   .../debian/man-section.patch                       |    0
>   .../debian/no-rpath.patch                          |    0
>   .../debian/no-symbolic.patch                       |    0
>   .../debian/perl-path.diff                          |    0
>   .../debian/pic.patch                               |    0
>   .../debian/pkg-config.patch                        |    0
>   .../debian/rc4-amd64.patch                         |    0
>   .../debian/rehash-crt.patch                        |    0
>   .../debian/rehash_pod.patch                        |    0
>   .../debian/series                                  |    0
>   .../debian/shared-lib-ext.patch                    |    0
>   .../debian/stddef.patch                            |    0
>   .../debian/version-script.patch                    |    0
>   .../parallel-make-fix.patch                        |    2 ++
>   .../shared-libs.patch                              |    2 ++
>   meta/recipes-connectivity/openssl/openssl.inc      |    2 +-
>   .../{openssl_0.9.8p.bb =>  openssl_0.9.8r.bb}       |    6 +++---
>   .../recipes-core/libxml/libxml2/libxml-64bit.patch |    2 ++
>   meta/recipes-core/libxml/libxml2_2.7.7.bb          |    6 ------
>   meta/recipes-core/libxml/libxml2_2.7.8.bb          |    6 ++++++
>   .../rsync/{rsync_3.0.7.bb =>  rsync_3.0.8.bb}       |    6 +++---
>   .../{libexif_0.6.16.bb =>  libexif_0.6.20.bb}       |    6 +++---
>   30 files changed, 23 insertions(+), 16 deletions(-)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/configure-targets.patch (97%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/ca.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/config-hurd.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/debian-targets.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/engines-path.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/kfreebsd-pipe.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/make-targets.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/man-dir.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/man-section.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/no-rpath.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/no-symbolic.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/perl-path.diff (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/pic.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/pkg-config.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/rc4-amd64.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/rehash-crt.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/rehash_pod.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/series (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/shared-lib-ext.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/stddef.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/debian/version-script.patch (100%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/parallel-make-fix.patch (95%)
>   rename meta/recipes-connectivity/openssl/{openssl-0.9.8p =>  openssl-0.9.8r}/shared-libs.patch (97%)
>   rename meta/recipes-connectivity/openssl/{openssl_0.9.8p.bb =>  openssl_0.9.8r.bb} (86%)
>   delete mode 100644 meta/recipes-core/libxml/libxml2_2.7.7.bb
>   create mode 100644 meta/recipes-core/libxml/libxml2_2.7.8.bb
>   rename meta/recipes-devtools/rsync/{rsync_3.0.7.bb =>  rsync_3.0.8.bb} (71%)
>   rename meta/recipes-support/libexif/{libexif_0.6.16.bb =>  libexif_0.6.20.bb} (61%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged into Master

Thanks
	Sau!


