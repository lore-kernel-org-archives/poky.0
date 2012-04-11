Return-Path: <saul.wold@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 876F1E0070C
	for <poky@yoctoproject.org>; Wed, 11 Apr 2012 07:56:33 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 11 Apr 2012 07:56:16 -0700
Received: by pbcuo15 with SMTP id uo15so4378846pbc.25
	for <poky@yoctoproject.org>; Wed, 11 Apr 2012 07:56:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=JlaijBFW/y1V/DTCqzrQJRakZfPH6Vnd+NxwYtCW/W4=;
	b=comRGVG64HnYsdaGrPus3KCZEkiS4EIlDhwJZQCixRvdUHpHqWRmHgrmM4Baioxr2K
	CfgAoJS+ZHo4ljP5D+gz3of5JE3uU08w46s1l5mWqcdQb3o7nmTX0RvbHOU6bB8mF92o
	4uEXzdrPHRGAeMqsLJr2fhIsLrY8uLqjVNqL9JVeHO1t2Xwa8QXmKNwdsyrN/wlxsnl/
	F0xYYurEawusok4T0CDDWSeJ6PS+KvsHGC+4r8xZkByshYPKVZt6js62dQdBnRiAulvK
	PYwTLRvmAUXufwaIQCSpdUVhYkPzrN7dzyU1Ghd9U65ZokM2r3IVyicI8sg9qw6bOaNI
	E20g==
Received: by 10.68.242.129 with SMTP id wq1mr4306651pbc.134.1334156175651;
	Wed, 11 Apr 2012 07:56:15 -0700 (PDT)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id vh10sm3088477pbc.29.2012.04.11.07.56.13
	(version=SSLv3 cipher=OTHER); Wed, 11 Apr 2012 07:56:14 -0700 (PDT)
Message-ID: <4F859B8C.4030403@intel.com>
Date: Wed, 11 Apr 2012 07:56:12 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1334064083.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1334064083.git.bruce.ashfield@windriver.com>
X-Gm-Message-State: ALoCoQmuzbtggyn+AKL7fR+R900BsLYPzUdundmRgnXDLcnMmjHvUNoikKK9EzaxBu/6Zt7Y8Gb6
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto/meta-yocto: update hardware reference boards to v3.0.24
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
X-List-Received-Date: Wed, 11 Apr 2012 14:56:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/10/2012 06:23 AM, Bruce Ashfield wrote:
> Richard/Saul,
>
> Here's a quick bump of the reference board SRCREVs to v3.0.24.
> This has been in tree for some time, and has been built many
> times by anyone using AUTOREV (myself included). This escaped my
> mass update to v3.0.24.
>
> Cheers,
>
> Bruce
>
> The following changes since commit c0a812c22272887390e44734fb426fd47c05e346:
>
>    documentation/bsp-guide/bsp.xml: Added a info about meta-intel layer (2012-04-10 13:32:45 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
>
> Bruce Ashfield (1):
>    linux-yocto/meta-yocto: update hardware reference boards to v3.0.24
>
>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
>   1 files changed, 4 insertions(+), 4 deletions(-)
>

Merged into Poky Master

Thanks
	Sau!

