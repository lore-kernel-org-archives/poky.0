Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B39BBE0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 14:12:56 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 03 Jan 2012 14:12:56 -0800
Received: by iazz13 with SMTP id z13so29579246iaz.25
	for <poky@yoctoproject.org>; Tue, 03 Jan 2012 14:12:55 -0800 (PST)
Received: by 10.42.151.68 with SMTP id d4mr56766164icw.36.1325628775529;
	Tue, 03 Jan 2012 14:12:55 -0800 (PST)
Received: from [10.6.18.227] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id r18sm181511331ibh.4.2012.01.03.14.12.54
	(version=SSLv3 cipher=OTHER); Tue, 03 Jan 2012 14:12:54 -0800 (PST)
Message-ID: <4F037D65.10409@intel.com>
Date: Tue, 03 Jan 2012 14:12:53 -0800
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1324577368.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1324577368.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] linux-yocto/meta-yocto: update routerstationpro & beagleboard
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
X-List-Received-Date: Tue, 03 Jan 2012 22:12:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/2011 10:12 AM, Bruce Ashfield wrote:
> Richard/Saul,
>
> This is a follow on to my oe-core pull request for fixes and updates
> to the kernel. This change bumps the preferred kernel for the yocto
> beagleboard and routerstationpro support to 3.0.x and fixes the -rt
> support for the routerstationpro.
>
> Cheers,
>
> Bruce
>
>
> The following changes since commit 906567682d06d8de1915b78ddf6128cd7bda6adc:
>
>    linux-yocto: use PATH to locate kconf_check (2011-12-22 12:15:25 -0500)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
>
> Bruce Ashfield (2):
>    linux-yocto/meta-yocto: routerstationpro/beagleboard: add 3.0.x
>      support
>    linux-yocto-rt/meta-yocto: add routerstationpro support
>
>   meta-yocto/conf/machine/beagleboard.conf           |    1 +
>   meta-yocto/conf/machine/routerstationpro.conf      |    1 +
>   .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++++----
>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
>   4 files changed, 10 insertions(+), 8 deletions(-)
>

Merged into Poky Master

Thanks
	Sau!

