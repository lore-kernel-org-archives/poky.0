Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 90BFB4C80FBE
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 03:50:54 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Dec 2010 01:50:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="368438501"
Received: from unknown (HELO [10.255.13.218]) ([10.255.13.218])
	by azsmga001.ch.intel.com with ESMTP; 31 Dec 2010 01:50:53 -0800
Message-ID: <4D1DA77C.8060300@linux.intel.com>
Date: Fri, 31 Dec 2010 01:50:52 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1293765141.git.qing.he@intel.com>
In-Reply-To: <cover.1293765141.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] recipe upgrades, Qing He, 12/31/2010
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
X-List-Received-Date: Fri, 31 Dec 2010 09:50:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2010 07:16 PM, Qing He wrote:
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro
>
> Thanks,
>      Qing He
> ---
>
>
> Qing He (6):
>    parted: upgrade to version 2.3
>    libtasn1: upgrade to version 2.9
>    gnutls: upgrade to version 2.10.4
>    ncurses: upgrade to version 5.7
>    augeas: upgrade to version 0.7.4
>    lzo: upgrade to version 2.04
>
Qing,

What kind of testing did you do?  I saw LIC_FILES_CHKSUM failures in lzo 
and ncurses!

Please verify these and resubmit.

Sau!

>   meta/recipes-core/ncurses/ncurses-5.7/config.cache |    4 +
>   .../ncurses/ncurses-5.7/tic-hang.patch             |   25 +
>   .../ncurses/ncurses/makefile_tweak.patch           |   89 -
>   meta/recipes-core/ncurses/ncurses/visibility.patch | 4904 --------------------
>   meta/recipes-core/ncurses/ncurses_5.4.bb           |   11 -
>   meta/recipes-core/ncurses/ncurses_5.7.bb           |  242 +
>   meta/recipes-extended/augeas/augeas_0.7.3.bb       |    6 -
>   meta/recipes-extended/augeas/augeas_0.7.4.bb       |    6 +
>   .../{parted-1.9.0 =>  parted-2.3}/no_check.patch    |    0
>   .../{parted-1.9.0 =>  parted-2.3}/syscalls.patch    |    0
>   .../parted/{parted_1.9.0.bb =>  parted_2.3.bb}      |   12 +-
>   .../configure-fix.patch                            |    0
>   .../gnutls-openssl.patch                           |    0
>   .../gnutls-texinfo-euro.patch                      |    0
>   .../gnutls/{gnutls_2.8.6.bb =>  gnutls_2.10.4.bb}   |    4 +-
>   .../gnutls/{libtasn1_2.8.bb =>  libtasn1_2.9.bb}    |    4 +-
>   meta/recipes-support/lzo/lzo-2.03/autofoo.patch    |   17 -
>   .../lzo/{lzo-2.03 =>  lzo-2.04}/acinclude.m4        |    0
>   meta/recipes-support/lzo/lzo-2.04/autoconf.patch   |   19 +
>   .../lzo/{lzo_2.03.bb =>  lzo_2.04.bb}               |    9 +-
>   20 files changed, 311 insertions(+), 5041 deletions(-)
>   create mode 100644 meta/recipes-core/ncurses/ncurses-5.7/config.cache
>   create mode 100644 meta/recipes-core/ncurses/ncurses-5.7/tic-hang.patch
>   delete mode 100644 meta/recipes-core/ncurses/ncurses/makefile_tweak.patch
>   delete mode 100644 meta/recipes-core/ncurses/ncurses/visibility.patch
>   delete mode 100644 meta/recipes-core/ncurses/ncurses_5.4.bb
>   create mode 100644 meta/recipes-core/ncurses/ncurses_5.7.bb
>   delete mode 100644 meta/recipes-extended/augeas/augeas_0.7.3.bb
>   create mode 100644 meta/recipes-extended/augeas/augeas_0.7.4.bb
>   rename meta/recipes-extended/parted/{parted-1.9.0 =>  parted-2.3}/no_check.patch (100%)
>   rename meta/recipes-extended/parted/{parted-1.9.0 =>  parted-2.3}/syscalls.patch (100%)
>   rename meta/recipes-extended/parted/{parted_1.9.0.bb =>  parted_2.3.bb} (54%)
>   rename meta/recipes-support/gnutls/{gnutls-2.8.6 =>  gnutls-2.10.4}/configure-fix.patch (100%)
>   rename meta/recipes-support/gnutls/{gnutls-2.8.6 =>  gnutls-2.10.4}/gnutls-openssl.patch (100%)
>   rename meta/recipes-support/gnutls/{gnutls-2.8.6 =>  gnutls-2.10.4}/gnutls-texinfo-euro.patch (100%)
>   rename meta/recipes-support/gnutls/{gnutls_2.8.6.bb =>  gnutls_2.10.4.bb} (53%)
>   rename meta/recipes-support/gnutls/{libtasn1_2.8.bb =>  libtasn1_2.9.bb} (81%)
>   delete mode 100644 meta/recipes-support/lzo/lzo-2.03/autofoo.patch
>   rename meta/recipes-support/lzo/{lzo-2.03 =>  lzo-2.04}/acinclude.m4 (100%)
>   create mode 100644 meta/recipes-support/lzo/lzo-2.04/autoconf.patch
>   rename meta/recipes-support/lzo/{lzo_2.03.bb =>  lzo_2.04.bb} (72%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


