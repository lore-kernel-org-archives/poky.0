Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BB98E0134F
	for <poky@yoctoproject.org>; Tue,  1 Nov 2011 03:27:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA1ARdRn027255;
	Tue, 1 Nov 2011 10:27:39 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26021-10; Tue,  1 Nov 2011 10:27:35 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA1ARTB9027249
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 1 Nov 2011 10:27:30 GMT
Message-ID: <1320143249.13918.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 01 Nov 2011 10:27:29 +0000
In-Reply-To: <9186e7a3b40e2d09f9f0b8b369015a7d8e219bd3.1320113401.git.dongxiao.xu@intel.com>
References: <cover.1320113401.git.dongxiao.xu@intel.com>
	<9186e7a3b40e2d09f9f0b8b369015a7d8e219bd3.1320113401.git.dongxiao.xu@intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] netbase.bbappend: Change to version 4.46 due to the upgrade
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
X-List-Received-Date: Tue, 01 Nov 2011 10:27:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-01 at 10:11 +0800, Dongxiao Xu wrote:
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  .../beagleboard/interfaces                         |    0
>  ...netbase_4.45.bbappend => netbase_4.46.bbappend} |    0
>  2 files changed, 0 insertions(+), 0 deletions(-)
>  rename meta-yocto/recipes-core/netbase/{netbase-4.45 => netbase-4.46}/beagleboard/interfaces (100%)
>  rename meta-yocto/recipes-core/netbase/{netbase_4.45.bbappend => netbase_4.46.bbappend} (100%)

Merged to master, thanks.

Richard


