Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E0E434C8090C
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 22:07:42 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Feb 2011 20:07:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="709828087"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by orsmga001.jf.intel.com with ESMTP; 18 Feb 2011 20:07:42 -0800
Message-ID: <4D5F420D.40809@intel.com>
Date: Fri, 18 Feb 2011 20:07:41 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1297985951.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297985951.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Urgent doc fixes for gtk+
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
X-List-Received-Date: Sat, 19 Feb 2011 04:07:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 03:40 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Richard/Saul,
>
> This pull request should finally sort out the issues building
> documentation for gtk+.
>
> I was able to reproduce the problem reliably by building
> docbook-utils-native *before* attempting to build gtk+. With
> that known, I have tested this under an openSUSE 11.2 chroot
> and on a 40-core Fedora 13 server, building for qemux86
> and qemuppc. I also did a full poky-image-sato build on the
>   40-way which completed successfully after I disabled
> PARALLEL_MAKE for perl-native.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/gtk-doc-fixes
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/gtk-doc-fixes
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (4):
>    docbook-dsssl-stylesheets-native: add missing files to install
>    openjade-native: Set datadir explicitly
>    docbook-utils-native: set SGML_EXTRA_CATALOGS in jw
>    gtk+: Fix build of documentation
>
>   .../docbook-dsssl-stylesheets-native_1.79.bb       |    4 +-
>   .../docbook-utils/docbook-utils-native_0.6.14.bb   |    5 ++-
>   .../openjade/openjade-native_1.3.2.bb              |    6 +++-
>   .../recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch |   33 ++++++++++++++++++++
>   meta/recipes-gnome/gtk+/gtk+.inc                   |    5 ++-
>   meta/recipes-gnome/gtk+/gtk+_2.12.7.bb             |    2 +-
>   meta/recipes-gnome/gtk+/gtk+_2.16.6.bb             |    2 +-
>   meta/recipes-gnome/gtk+/gtk+_2.22.1.bb             |    5 ++-
>   8 files changed, 52 insertions(+), 10 deletions(-)
>   create mode 100644 meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Sau!


