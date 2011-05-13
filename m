Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4EB424C81213
	for <poky@yoctoproject.org>; Fri, 13 May 2011 17:27:05 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 May 2011 15:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,366,1301900400"; 
   d="scan'208";a="1469429"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by fmsmga002.fm.intel.com with ESMTP; 13 May 2011 15:27:03 -0700
Message-ID: <4DCDB037.3010000@linux.intel.com>
Date: Fri, 13 May 2011 15:27:03 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1305105317.git.ke.yu@intel.com>
In-Reply-To: <cover.1305105317.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] Update patch upstream-status
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
X-List-Received-Date: Fri, 13 May 2011 22:27:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/11/2011 02:19 AM, Yu Ke wrote:
> From: Yu Ke<ke.yu@intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/patch-status-05-11
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/patch-status-05-11
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (8):
>    iputils: update patch Upstream-Status
>    mktemp: update patch Upstream-Status
>    xinetd: update Upstream-Status
>    libdrm: update patch Upstream-Status
>    qemugl: update patch Upstream-Status
>    x11-common: update patch Upstream-Status
>    xorg-app: update patch Upstream-Status
>    xorg-driver: update patch Upstream-Status
>
>   .../files/debian/add-icmp-return-codes.diff        |    2 ++
>   .../iputils/files/debian/fix-arping-timeouts.diff  |    2 ++
>   .../files/debian/fix-dead-host-ping-stats.diff     |    2 ++
>   .../iputils/files/debian/targets.diff              |    2 ++
>   .../iputils/files/debian/use_gethostbyname2.diff   |    2 ++
>   .../mktemp/files/disable-strip.patch               |    2 ++
>   ...vices-from-inetd.conf-if-a-service-with-t.patch |    2 ++
>   ...arious-fixes-from-the-previous-maintainer.patch |    2 ++
>   ...uld-be-able-to-listen-on-IPv6-even-in-ine.patch |    2 ++
>   .../drm/libdrm-2.4.25/installtests.patch           |    2 +-
>   .../mesa/qemugl/remove-x11r6-lib-dir.patch         |    2 ++
>   meta/recipes-graphics/mesa/qemugl/versionfix.patch |    2 ++
>   .../x11-common/x11-common/gplv2-license.patch      |    2 ++
>   .../xserver-nodm-init/gplv2-license.patch          |    2 ++
>   .../xorg-app/xdpyinfo/disable-xkb.patch            |    2 ++
>   .../xorg-app/xset/disable-xkb.patch                |    2 ++
>   .../xf86-video-omapfb/omap-blacklist-tv-out.patch  |    4 +++-
>   .../xf86-video-omapfb/omap-force-plain-mode.patch  |    2 ++
>   .../omap-revert-set-CRTC-limit.patch               |    2 ++
>   .../omap-revert-set-virtual-size.patch             |    2 ++
>   .../xorg-driver/xf86-video-omapfb/omapfb-neon.diff |    2 ++
>   21 files changed, 42 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged, thanks for the great work with these!

Sau!


