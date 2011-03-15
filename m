Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A666E4C804D4
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 12:50:17 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FHoFWv022205;
	Tue, 15 Mar 2011 17:50:15 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22028-03; Tue, 15 Mar 2011 17:50:11 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FHo9ja022196
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 17:50:09 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <57d76b93d53e6313bdf5eae857d5c5c514f66524.1300173515.git.dongxiao.xu@intel.com>
References: <cover.1300173515.git.dongxiao.xu@intel.com>
	<57d76b93d53e6313bdf5eae857d5c5c514f66524.1300173515.git.dongxiao.xu@intel.com>
Date: Tue, 15 Mar 2011 17:50:00 +0000
Message-ID: <1300211400.30423.1819.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] xserver-nodm-init: add xuser to group audio
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
X-List-Received-Date: Tue, 15 Mar 2011 17:50:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 15:21 +0800, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> add rootless X user to group audio to access /dev/snd/*
> 
> Fixes [YOCTO #799]
> 
> CC: Ke Yu <ke.yu@intel.com>
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  .../x11-common/xserver-nodm-init.bb                |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)

Applied to master, thanks.

Richard


