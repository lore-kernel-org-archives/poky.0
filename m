Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A802E4C80BCF
	for <poky@yoctoproject.org>; Tue, 30 Nov 2010 18:08:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Nov 2010 16:08:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,282,1288594800"; d="scan'208";a="631794863"
Received: from unknown (HELO [10.255.12.249]) ([10.255.12.249])
	by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2010 16:08:00 -0800
Message-ID: <4CF591DF.3060802@intel.com>
Date: Tue, 30 Nov 2010 16:07:59 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
Subject: Re: [PATCH 00/11] recpies upgrade: mesa and other graphics recipes
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
X-List-Received-Date: Wed, 01 Dec 2010 00:08:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2010 03:26 AM, Yu Ke wrote:
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/upgrade-11-28
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade-11-28
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (11):
>    sqlite: upgrade from 3.6.23 to 3.7.3
>    libxml2-native: remove the --without-debug option
>    talloc: add new recipes talloc 2.0.1
Ke:
Is talloc's usage native only, or is it also used on the target system?
Seems to be used on the target also.

Since talloc is really a support library, I am moving it to recipes-support.

More importantly, you override the do_confgure() functionality.  I 
understand this was taken from OE, but this is not encouraged in poky.
This do_configure() may work in the native, but may not be correct when 
cross compiling.  This recipe / upstream package needs to be fixed to 
correctly handle this.

We know that currently the mesa code is primarily built for x86, but 
that may change in the future.


Thanks
    Sau!



>    mesa-dri: upgrade from 7.8.2 to 7.9
>    mesa-xlib: upgrade from 7.8.2 to 7.9
>    mesa: enable glu
>    glew: add new recipes glew 1.5.7
>    mesa-demo: add new recpies mesa demo 8.0.2
>    mesa-dri-glsl-native: upgrade from 7.8.2 to 7.9
>    qemugl: upgrade to git commit
>      33466cd83c2a9d7d3fb9fe437fb6a4d6fbd866b9
>    xf86-video-omapfb: upgrade to latest commit
>
>   .../conf/distro/include/poky-default-revisions.inc |    6 +-
>   .../distro/include/preferred-xorg-versions.inc     |    2 +-
>   meta/recipes-core/libxml/libxml2.inc               |    2 +-
>   meta/recipes-core/libxml/libxml2_2.7.7.bb          |    2 +-
>   meta/recipes-extended/talloc/talloc_2.0.1.bb       |   24 ++++
>   meta/recipes-graphics/glew/files/autotools.patch   |  146 ++++++++++++++++++++
>   meta/recipes-graphics/glew/glew_1.5.7.bb           |   19 +++
>   meta/recipes-graphics/mesa/mesa-common.inc         |    5 +-
>   meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb     |   19 +++
>   ...native_7.8.2.bb =>  mesa-dri-glsl-native_7.9.bb} |    9 +-
>   meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |   53 -------
>   meta/recipes-graphics/mesa/mesa-dri_7.9.bb         |   38 +++++
>   .../mesa/{mesa-xlib_7.8.2.bb =>  mesa-xlib_7.9.bb}  |   15 +--
>   meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb    |    3 -
>   meta/recipes-support/sqlite/sqlite3_3.7.3.bb       |    5 +
>   15 files changed, 270 insertions(+), 78 deletions(-)
>   create mode 100644 meta/recipes-extended/talloc/talloc_2.0.1.bb
>   create mode 100644 meta/recipes-graphics/glew/files/autotools.patch
>   create mode 100644 meta/recipes-graphics/glew/glew_1.5.7.bb
>   create mode 100644 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
>   rename meta/recipes-graphics/mesa/{mesa-dri-glsl-native_7.8.2.bb =>  mesa-dri-glsl-native_7.9.bb} (58%)
>   delete mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
>   create mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.9.bb
>   rename meta/recipes-graphics/mesa/{mesa-xlib_7.8.2.bb =>  mesa-xlib_7.9.bb} (51%)
>   delete mode 100644 meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb
>   create mode 100644 meta/recipes-support/sqlite/sqlite3_3.7.3.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


