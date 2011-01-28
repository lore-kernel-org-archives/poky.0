Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 249CD4C8006D
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 12:42:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Jan 2011 10:42:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,393,1291622400"; d="scan'208";a="381318537"
Received: from unknown (HELO [10.255.14.108]) ([10.255.14.108])
	by azsmga001.ch.intel.com with ESMTP; 28 Jan 2011 10:42:32 -0800
Message-ID: <4D430E17.5010003@intel.com>
Date: Fri, 28 Jan 2011 10:42:31 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1296167950.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296167950.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/9] docbook-utils and related recipes
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
X-List-Received-Date: Fri, 28 Jan 2011 18:42:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 02:42 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Richard,
>
> This pull request includes several new recipes to allow us to build
> documentation for other packages. The main one is docbook-utils, and
> the other recipes are its dependencies. I've also re-enabled
> documentation generation in the iputils script and verified it works
> correctly.
>
> These recipes are from OpenEmbedded, and some of the source packges
> haven't changed in a long time. As such a couple of the recipes I've
> updated to use modern staging and BBCLASSEXTEND. Please look them over,
> and if things look good I will also submit them back to OE.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/docbook-utils
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/docbook-utils
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (9):
>    sgml-common: new recipe v0.6.3
>    docbook-sgml-dtd: new recipes - v3.1, v4.1, v4.5
>    docbook-dsssl-stylesheets: new recipe v1.79
>    sgmlspl: new recipe, v1.03ii
>    opensp: new recipe v1.5
>    openjade: new recipe v1.3.2
>    docbook-utils: new recipe v0.6.14
>    iputils: enable generation of man pages
>    distro_tracking_fields.inc: added docbook-utils and dependencies
>
>   .../conf/distro/include/distro_tracking_fields.inc |   69 +
>   .../docbook-dsssl-stylesheets-native_1.79.bb       |   53 +
>   .../docbook-sgml-dtd-3.1-native.bb                 |   23 +
>   .../docbook-sgml-dtd-4.1-native.bb                 |   23 +
>   .../docbook-sgml-dtd-4.5-native.bb                 |   21 +
>   .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   49 +
>   .../docbook-utils/docbook-utils_0.6.14.bb          |   20 +
>   .../openjade/openjade-1.3.2/autoconf.patch         |  173 ++
>   .../openjade/openjade-1.3.2/configure.patch        |   68 +
>   .../openjade/openjade-1.3.2/makefile.patch         |   34 +
>   .../openjade-1.3.2/oj-native-libosp-fix.patch      |   15 +
>   meta/recipes-devtools/openjade/openjade_1.3.2.bb   |   66 +
>   .../opensp/opensp/attributevalue.patch             |   62 +
>   .../opensp/opensp/fix-docdir.patch                 |   14 +
>   meta/recipes-devtools/opensp/opensp/m4.patch       | 1925 ++++++++++++++++++++
>   .../opensp/opensp/rangmap-fix.patch                |   15 +
>   meta/recipes-devtools/opensp/opensp_1.5.bb         |   27 +
>   .../sgml-common/sgml-common-0.6.3/autohell.patch   |   58 +
>   .../sgml-common/sgml-common-native_0.6.3.bb        |   50 +
>   .../sgml-common/sgml-common_0.6.3.bb               |   53 +
>   meta/recipes-devtools/sgmlspl/files/combined.patch |  457 +++++
>   .../sgmlspl/sgmlspl-native_1.03ii.bb               |   17 +
>   meta/recipes-extended/iputils/iputils_s20101006.bb |   10 +-
>   23 files changed, 3297 insertions(+), 5 deletions(-)
>   create mode 100644 meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
>   create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
>   create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
>   create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
>   create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
>   create mode 100644 meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb
>   create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/autoconf.patch
>   create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/configure.patch
>   create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
>   create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/oj-native-libosp-fix.patch
>   create mode 100644 meta/recipes-devtools/openjade/openjade_1.3.2.bb
>   create mode 100644 meta/recipes-devtools/opensp/opensp/attributevalue.patch
>   create mode 100644 meta/recipes-devtools/opensp/opensp/fix-docdir.patch
>   create mode 100644 meta/recipes-devtools/opensp/opensp/m4.patch
>   create mode 100644 meta/recipes-devtools/opensp/opensp/rangmap-fix.patch
>   create mode 100644 meta/recipes-devtools/opensp/opensp_1.5.bb
>   create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
>   create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
>   create mode 100644 meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
>   create mode 100644 meta/recipes-devtools/sgmlspl/files/combined.patch
>   create mode 100644 meta/recipes-devtools/sgmlspl/sgmlspl-native_1.03ii.bb
>
Can you address the LIC_FILES_CHKSUM issues, I know we talked about this 
also.  Can you get a copy of the license from the Upstream and in the 
case of autotools "providing" one, can you confirm with the upstream 
author that is their correct license.

Thanks
	Sau!


