Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EEF8E01358
	for <poky@yoctoproject.org>; Tue, 17 Jan 2012 12:58:29 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jan 2012 12:58:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="108065860"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2012 12:58:28 -0800
Message-ID: <4F15E0F4.5010707@linux.intel.com>
Date: Tue, 17 Jan 2012 12:58:28 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1326216193.git.josh@linux.intel.com>
In-Reply-To: <cover.1326216193.git.josh@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Add alsa-state configuration for Beagleboard
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
X-List-Received-Date: Tue, 17 Jan 2012 20:58:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2012 09:39 AM, Joshua Lock wrote:
> CAVEAT: This series requires the alsa-state series recently submitted to the
> OE-Core mailing list.
>
> This change set drops the BSP-specific beagleboard-audio recipe in favour of
> extending the common alsa-state recipe for alsa configuration.
>
> Note: the beagleboard-audio recipe was not working in any stock image as the
> amixer package is not included by default.
>
> The following changes since commit 6ccf3fe442a2f7b2d330c749c66b3227bc47c3d6:
>
>    task-base: add alsa-state to task-base-alsa (2012-01-10 08:34:20 -0800)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/poky-contrib josh/devices
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=josh/devices
>
> Joshua Lock (2):
>    alsa-state: add beagleboard specific asound.state
>    beagleboard-audio: drop in favour of alsa-state
>
>   meta-yocto/conf/machine/beagleboard.conf           |    3 -
>   .../recipes-bsp/alsa-state/alsa-state.bbappend     |    1 +
>   .../alsa-state/alsa-state/beagleboard/asound.state |  656 ++++++++++++++++++++
>   .../beagleboard-audio/beagleboard-audio.bb         |   33 -
>   .../beagleboard-audio/beagleboard-audio            |   44 --
>   5 files changed, 657 insertions(+), 80 deletions(-)
>   create mode 100644 meta-yocto/recipes-bsp/alsa-state/alsa-state.bbappend
>   create mode 100644 meta-yocto/recipes-bsp/alsa-state/alsa-state/beagleboard/asound.state
>   delete mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
>   delete mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio
>

Merged into Poky Master

Thanks
	Sau!

