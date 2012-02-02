Return-Path: <saul.wold@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0CD3E00307
	for <poky@yoctoproject.org>; Thu,  2 Feb 2012 10:00:53 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 02 Feb 2012 09:54:56 -0800
Received: by iabz7 with SMTP id z7so3680366iab.25
	for <poky@yoctoproject.org>; Thu, 02 Feb 2012 09:54:55 -0800 (PST)
Received: by 10.50.236.5 with SMTP id uq5mr13355984igc.13.1328205295499;
	Thu, 02 Feb 2012 09:54:55 -0800 (PST)
Received: from [10.6.18.218] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id l35sm6105871ibj.0.2012.02.02.09.54.54
	(version=SSLv3 cipher=OTHER); Thu, 02 Feb 2012 09:54:54 -0800 (PST)
Message-ID: <4F2ACDED.2050602@intel.com>
Date: Thu, 02 Feb 2012 09:54:53 -0800
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1327954069.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org
Subject: Re: [PATCH 0/2] linux-yocto/meta-yocto: 3.2.2 and 3.0.18
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
X-List-Received-Date: Thu, 02 Feb 2012 18:00:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2012 12:16 PM, Bruce Ashfield wrote:
> Richard/Saul,
>
> This is a follow up to the oe-core pull request that I just sent.
> Once that merges, this can go into yocto to add 3.0.18 and 3.2.2
> support for the emulated boards.
>
> Testing and updating of the hardware reference platforms will follow
> in the next few days.
>
> Cheers,
>
> Bruce
>
> The following changes since commit 879bdbb8ec2c01eaca6ac6769b39cf7bdd9d6a2d:
>
>    linux-yocto/meta-yocto: update to v3.0.18 + features (2012-01-30 14:35:20 -0500)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
>
> Bruce Ashfield (2):
>    linux-yocto/meta-yocto: create linux-yocto 3.2 bbappend
>    meta-yocto/poky.conf: set qemu* preferred linux-yocto version to 3.2
>
>   meta-yocto/conf/distro/poky.conf                   |   12 ++++++------
>   .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   19 +++++++++++++++++++
>   2 files changed, 25 insertions(+), 6 deletions(-)
>   create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
>

Merged into Poky master

Thanks
	Sau!


