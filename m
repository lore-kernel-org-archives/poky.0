Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96E3E4C800A4
	for <poky@yoctoproject.org>; Sat, 23 Apr 2011 00:01:18 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Apr 2011 22:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,257,1301900400"; d="scan'208";a="913374404"
Received: from unknown (HELO [10.255.12.237]) ([10.255.12.237])
	by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2011 22:01:17 -0700
Message-ID: <4DB25D1D.4010105@intel.com>
Date: Fri, 22 Apr 2011 22:01:17 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <4DB14AF9.1050402@windriver.com>
In-Reply-To: <4DB14AF9.1050402@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Add qt3 to fix [YOCTO #816]
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
X-List-Received-Date: Sat, 23 Apr 2011 05:01:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/22/2011 02:31 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Add qt3 with a new layer "meta-qt3" and modify other files which is
> needed by qt3.
>
A new layer means that this should all be self contained within a layer, 
including the classes and the image recipe that can extend the 
core-image-lsb recipe.

You should not change bblayers sample, the qt3 layer is an optional 
layer specifically for LSB and not for general usage.

Also, please rebase your changes to the lastest master as the poky 
naming has been rebranded to oe-core.

Sau!

> Pull URL: git://git.pokylinux.org/poky-contrib.git
> Branch: xiaofeng/qt3
> Browse:http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/qt3
>
> Thanks,
> Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (1):
> qt3: Add qt3 to poky for fixing [YOCTO #816]
>
> meta-qt3/conf/layer.conf | 10 ++
> meta-qt3/recipes-qt3/qt3/qt-x11-free-common.inc | 90 ++++++++++++++++++++
> .../recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb | 71 +++++++++++++++
> .../recipes-qt3/qt3/qt-x11-free/configure.patch | 51 +++++++++++
> .../recipes-qt3/qt3/qt-x11-free/gcc4_1-HACK.patch | 28 ++++++
> .../recipes-qt3/qt3/qt-x11-free/no-examples.patch | 16 ++++
> meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.6.bb | 13 +++
> meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.7.bb | 16 ++++
> meta-yocto/conf/bblayers.conf.sample | 5 +-
> meta-yocto/conf/distro/poky-lsb.conf | 3 +-
> meta/classes/qt3e.bbclass | 11 +++
> meta/classes/qt3x11.bbclass | 15 +++
> meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb | 1 +
> 13 files changed, 327 insertions(+), 3 deletions(-)
> create mode 100755 meta-qt3/conf/layer.conf
> create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free-common.inc
> create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
> create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free/configure.patch
> create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free/gcc4_1-HACK.patch
> create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free/no-examples.patch
> create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.6.bb
> create mode 100755 meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
> create mode 100644 meta/classes/qt3e.bbclass
> create mode 100644 meta/classes/qt3x11.bbclass
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


