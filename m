Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19A074C8024E
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 17:58:40 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2011 15:58:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,290,1301900400"; d="scan'208";a="740391803"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by orsmga001.jf.intel.com with ESMTP; 29 Apr 2011 15:58:40 -0700
Message-ID: <4DBB429F.2000701@intel.com>
Date: Fri, 29 Apr 2011 15:58:39 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
In-Reply-To: <cover.1304069545.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/10] recipe upgrades, Apr. 29
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
X-List-Received-Date: Fri, 29 Apr 2011 22:58:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/29/2011 02:35 AM, Qing He wrote:
> From: Qing He<qing.he@intel.com>
>
> upgraded 9 recipes
> add 1: nettle as the new dependency of gnutls
>
>
Qing,

I noticed that there are a number of recipes below that you updated, but 
did not update their patches.  Please update all patches to contain the 
Upstream-Status: information.

I will a look for an updated pull request early next week.

Thanks
	Sau!

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/upgrade
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/upgrade
>
> Thanks,
>      Qing He<qing.he@intel.com>
> ---
>
>
> Qing He (10):
>    attr: upgrade to version 2.4.46
>    acl: upgrade to version 2.2.51
>    augeas: upgrade to version 0.8.1
>    curl: upgrade to version 7.21.6
>    busybox: upgrade to version 1.18.4
>    nettle: add new recipe
>    gnutls: upgrade to version 2.12.3
>    shared-mime-info: upgrade to version 0.90
>    lzo: upgrade to version 2.05
>    libcap: upgrade to version 2.20
>
>   .../busybox/busybox-1.17.3/make-382-fix.patch      |   25 -
>   .../B921600.patch                                  |    0
>   .../busybox-appletlib-dependency.patch             |    0
>   .../busybox-udhcpc-no_deconfig.patch               |   19 +-
>   .../{busybox-1.17.3 =>  busybox-1.18.4}/defconfig   |    0
>   .../get_header_tar.patch                           |    4 +-
>   .../run-parts.in.usr-bin.patch                     |    0
>   .../udhcpc-fix-nfsroot.patch                       |    0
>   .../udhcpscript.patch                              |    0
>   .../{busybox_1.17.3.bb =>  busybox_1.18.4.bb}       |    7 +-
>   meta/recipes-extended/augeas/augeas_0.7.4.bb       |    6 -
>   meta/recipes-extended/augeas/augeas_0.8.1.bb       |    6 +
>   meta/recipes-support/attr/acl_2.2.49.bb            |    6 -
>   meta/recipes-support/attr/acl_2.2.51.bb            |    6 +
>   .../attr/attr-2.4.44/double-free.patch             |   18 -
>   .../attr/attr-2.4.44/memory-leak-in-copy.patch     |   50 -
>   .../attr/attr-2.4.44/memory-leak2.patch            |   18 -
>   .../attr/attr-2.4.44/pull-in-string.h.patch        |   21 -
>   .../attr/attr-2.4.44/thinko-in-restore.patch       |   19 -
>   meta/recipes-support/attr/attr_2.4.44.bb           |   12 -
>   meta/recipes-support/attr/attr_2.4.46.bb           |    6 +
>   meta/recipes-support/attr/ea-acl.inc               |    2 +-
>   .../attr/files/no-fixed-prog-path.patch            |   99 --
>   meta/recipes-support/curl/curl/noldlibpath.patch   |    2 +
>   meta/recipes-support/curl/curl/pkgconfig_fix.patch |    5 +-
>   .../curl/{curl_7.21.2.bb =>  curl_7.21.6.bb}        |    6 +-
>   .../gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch |   16 -
>   .../configure-fix.patch                            |   14 +-
>   .../gnutls-openssl.patch                           |    2 +
>   meta/recipes-support/gnutls/gnutls_2.10.4.bb       |   10 -
>   meta/recipes-support/gnutls/gnutls_2.12.3.bb       |   11 +
>   meta/recipes-support/libcap/libcap.inc             |    2 +-
>   meta/recipes-support/libcap/libcap_2.19.bb         |    6 -
>   meta/recipes-support/libcap/libcap_2.20.bb         |    6 +
>   .../lzo/{lzo-2.04 =>  lzo-2.05}/acinclude.m4        |    0
>   .../lzo/{lzo-2.04 =>  lzo-2.05}/autoconf.patch      |    4 +-
>   .../lzo/{lzo_2.04.bb =>  lzo_2.05.bb}               |    8 +-
>   meta/recipes-support/nettle/files/acinclude.m4     | 1062 ++++++++++++++++++++
>   meta/recipes-support/nettle/nettle_2.1.bb          |   31 +
>   .../files/fix-parallel-build.patch                 |   33 +
>   .../shared-mime-info/shared-mime-info_0.80.bb      |    5 -
>   .../shared-mime-info/shared-mime-info_0.90.bb      |    7 +
>   42 files changed, 1208 insertions(+), 346 deletions(-)
>   delete mode 100644 meta/recipes-core/busybox/busybox-1.17.3/make-382-fix.patch
>   rename meta/recipes-core/busybox/{busybox-1.17.3 =>  busybox-1.18.4}/B921600.patch (100%)
>   rename meta/recipes-core/busybox/{busybox-1.17.3 =>  busybox-1.18.4}/busybox-appletlib-dependency.patch (100%)
>   rename meta/recipes-core/busybox/{busybox-1.17.3 =>  busybox-1.18.4}/busybox-udhcpc-no_deconfig.patch (90%)
>   rename meta/recipes-core/busybox/{busybox-1.17.3 =>  busybox-1.18.4}/defconfig (100%)
>   rename meta/recipes-core/busybox/{busybox-1.17.3 =>  busybox-1.18.4}/get_header_tar.patch (76%)
>   rename meta/recipes-core/busybox/{busybox-1.17.3 =>  busybox-1.18.4}/run-parts.in.usr-bin.patch (100%)
>   rename meta/recipes-core/busybox/{busybox-1.17.3 =>  busybox-1.18.4}/udhcpc-fix-nfsroot.patch (100%)
>   rename meta/recipes-core/busybox/{busybox-1.17.3 =>  busybox-1.18.4}/udhcpscript.patch (100%)
>   rename meta/recipes-core/busybox/{busybox_1.17.3.bb =>  busybox_1.18.4.bb} (81%)
>   delete mode 100644 meta/recipes-extended/augeas/augeas_0.7.4.bb
>   create mode 100644 meta/recipes-extended/augeas/augeas_0.8.1.bb
>   delete mode 100644 meta/recipes-support/attr/acl_2.2.49.bb
>   create mode 100644 meta/recipes-support/attr/acl_2.2.51.bb
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/double-free.patch
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/memory-leak-in-copy.patch
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/memory-leak2.patch
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/pull-in-string.h.patch
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/thinko-in-restore.patch
>   delete mode 100644 meta/recipes-support/attr/attr_2.4.44.bb
>   create mode 100644 meta/recipes-support/attr/attr_2.4.46.bb
>   delete mode 100644 meta/recipes-support/attr/files/no-fixed-prog-path.patch
>   rename meta/recipes-support/curl/{curl_7.21.2.bb =>  curl_7.21.6.bb} (92%)
>   delete mode 100644 meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch
>   rename meta/recipes-support/gnutls/{gnutls-2.10.4 =>  gnutls-2.12.3}/configure-fix.patch (76%)
>   rename meta/recipes-support/gnutls/{gnutls-2.10.4 =>  gnutls-2.12.3}/gnutls-openssl.patch (98%)
>   delete mode 100644 meta/recipes-support/gnutls/gnutls_2.10.4.bb
>   create mode 100644 meta/recipes-support/gnutls/gnutls_2.12.3.bb
>   delete mode 100644 meta/recipes-support/libcap/libcap_2.19.bb
>   create mode 100644 meta/recipes-support/libcap/libcap_2.20.bb
>   rename meta/recipes-support/lzo/{lzo-2.04 =>  lzo-2.05}/acinclude.m4 (100%)
>   rename meta/recipes-support/lzo/{lzo-2.04 =>  lzo-2.05}/autoconf.patch (84%)
>   rename meta/recipes-support/lzo/{lzo_2.04.bb =>  lzo_2.05.bb} (59%)
>   create mode 100644 meta/recipes-support/nettle/files/acinclude.m4
>   create mode 100644 meta/recipes-support/nettle/nettle_2.1.bb
>   create mode 100644 meta/recipes-support/shared-mime-info/files/fix-parallel-build.patch
>   delete mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
>   create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


