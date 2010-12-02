Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D3474C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 12:32:09 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2010 10:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="632490039"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2010 10:31:56 -0800
Message-ID: <4CF7E61B.4010604@intel.com>
Date: Thu, 02 Dec 2010 10:31:55 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 00/13][PULL] Fix LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Thu, 02 Dec 2010 18:32:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2010 10:17 PM, Dongxiao Xu wrote:
> Hi Saul,
>
> This pull request updates some LICENSE information, also it add
> LIC_FILES_CHKSUM if missing.
>
> Besides, the last commit fixed [BUGID #531].
>
> Please help to review and pull, thanks!
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dxu4/license
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/license
>
> Thanks,
>      Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>
>
> Dongxiao Xu (13):
>    linux-firmware: Update LIC_FILES_CHKSUM info
>    clutter-gst: Update LICENSE and LIC_FILES_CHKSUM info
>    gst-ffmpeg: Update LICENSE and LIC_FILES_CHKSUM info
>    gst-fluendo-mp3: Update LICENSE and LIC_FILES_CHKSUM info
>    gst-fluendo-mpegdemux: Fix LICENSE info
>    gupnp: Update LICENSE and LIC_FILES_CHKSUM info
>    libomxil: Fix LICENSE and LIC_FILES_CHKSUM info
>    libsamplerate0: Fix LICENSE and LIC_FILES_CHKSUM info
>    libtelepathy: Fix LICENSE and LIC_FILES_CHKSUM info
>    pulseaudio: Fix LICENSE and LIC_FILES_CHKSUM info
>    telepathy-idle: Fix LICENSE and LIC_FILES_CHKSUM info
>    zeroconf: Fix LICENSE and LIC_FILES_CHKSUM info
>    Use completion scheduler in rm_work.bbclass
>
>   meta/classes/rm_work.bbclass                       |    1 +
>   meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb    |    4 +++-
>   .../telepathy/libtelepathy_0.3.3.bb                |    4 +++-
>   .../telepathy/telepathy-idle_0.1.6.bb              |    4 +++-
>   meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb |    4 +++-
>   .../clutter/clutter-gst-1.0_git.bb                 |    3 +++
>   meta/recipes-graphics/clutter/clutter-gst.inc      |    2 +-
>   .../linux-firmware/linux-firmware_git.bb           |   13 +++++++++++++
>   .../gstreamer/gst-ffmpeg_0.10.1.bb                 |    5 ++++-
>   .../gstreamer/gst-fluendo-mp3_0.10.2.bb            |    3 +++
>   .../gstreamer/gst-fluendo-mpegdemux_0.10.7.bb      |    4 ++++
>   meta/recipes-multimedia/gstreamer/gst-fluendo.inc  |    1 -
>   meta/recipes-multimedia/libomxil/libomxil_0.3.3.bb |    4 +++-
>   .../libsamplerate/libsamplerate0_0.1.2.bb          |    4 +++-
>   meta/recipes-multimedia/pulseaudio/pulseaudio.inc  |    6 +++++-
>   15 files changed, 52 insertions(+), 10 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks

   Sau!


