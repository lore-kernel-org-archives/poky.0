Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F1F04C81065
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 21:59:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Jan 2011 19:59:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,361,1291622400"; d="scan'208";a="699408838"
Received: from unknown (HELO [10.255.14.47]) ([10.255.14.47])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2011 19:59:55 -0800
Message-ID: <4D3A563B.5080206@intel.com>
Date: Fri, 21 Jan 2011 19:59:55 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Nitin A Kamble <nitin.a.kamble@intel.com>
References: <cover.1295632514.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295632514.git.nitin.a.kamble@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] revert some of the dso linking changes got fixed	by newer linker
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
X-List-Received-Date: Sat, 22 Jan 2011 03:59:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 09:59 AM, Nitin A Kamble wrote:
> The newer linker from binutils 2.21 has a fix which avoids linking errors with
> weak symbols like pthread_cancel, when --no-add-as-needed parameter is passed
> to the linker.
>
Nitin,

Seems there is a problem with Mutter and the DSO changes.

  arm-poky-linux-gnueabi-libtool: link: cannot find the library 
`/usr/lib/libpangocairo-1.0.la' or unhandled argument 
`/usr/lib/libpangocairo-1.0.la'
make[4]: *** [wm-tester] Error 1
make[4]: Leaving directory 
`/intel/poky/distro/build/tmp/work/armv5te-poky-linux-gnueabi/mutter-2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842-r18/git/src/wm-tester'
make[3]: *** [all-recursive] Error 1
make[3]: Leaving directory 
`/intel/poky/distro/build/tmp/work/armv5te-poky-linux-gnueabi/mutter-2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842-r18/git/src'
make[2]: *** [all] Error 2
make[2]: Leaving directory 
`/intel/poky/distro/build/tmp/work/armv5te-poky-linux-gnueabi/mutter-2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842-r18/git/src'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory 
`/intel/poky/distro/build/tmp/work/armv5te-poky-linux-gnueabi/mutter-2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842-r18/git'
make: *** [all] Error 2

Please investigate,

Thanks


> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: nitin/dso_linking_change
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/dso_linking_change
>
> Thanks,
>      Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>
>
> Nitin A Kamble (3):
>    libmusicbrainz: revert the dso_linking_change patch as the new linker
>      fixes it
>    libzypp: revert the dso_linking_change patch as the new linker fixes
>      it
>    apt: revert the dso_linking_change patch as the new linker fixes it
>
>   .../apt-0.7.14/dso_linking_change_build_fix.patch  |   25 ----------
>   meta/recipes-devtools/apt/apt_0.7.14.bb            |    5 +-
>   .../libzypp/dso_linking_change_build_fix.patch     |   50 --------------------
>   meta/recipes-extended/libzypp/libzypp_git.bb       |    5 +-
>   .../dso_linking_change_build_fix.patch             |   29 -----------
>   .../musicbrainz/libmusicbrainz_3.0.3.bb            |    5 +-
>   6 files changed, 6 insertions(+), 113 deletions(-)
>   delete mode 100644 meta/recipes-devtools/apt/apt-0.7.14/dso_linking_change_build_fix.patch
>   delete mode 100644 meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch
>   delete mode 100644 meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/dso_linking_change_build_fix.patch
>


