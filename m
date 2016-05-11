Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90B97E00E9E; Tue, 10 May 2016 20:27:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5237E00E92
	for <poky@yoctoproject.org>; Tue, 10 May 2016 20:27:36 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u4B3RYHq004263
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 May 2016 20:27:34 -0700 (PDT)
Received: from [128.224.163.137] (128.224.163.137) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 10 May 2016 20:27:34 -0700
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Burton, Ross"
	<ross.burton@intel.com>
References: <cover.1461653189.git.liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <5732A6A4.6060707@windriver.com>
Date: Wed, 11 May 2016 11:27:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <cover.1461653189.git.liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] [jethro] Consolidated pull
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 May 2016 03:27:37 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit


Ping.

// Robert

On 04/26/2016 02:47 PM, Robert Yang wrote:
> The following changes since commit 6dba9abd43f7584178de52b623c603a5d4fcec5c:
>
>    tzcode: update to 2016c (2016-04-11 22:03:08 +0100)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib rbt/jethro
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/jethro
>
> Humberto Ibarra (2):
>    yocto-bsp: fix default kernel for x86_64 arch
>    yocto-bsp: Set correct default branches and branches base for i386,
>      qemu and x86_64 archs
>
> Ross Burton (1):
>    conf/distro/poky.conf: use example.com for connectivity check
>
>   meta-yocto/conf/distro/poky.conf                                  | 5 +----
>   .../arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 4 ++--
>   .../arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend       | 8 ++++----
>   .../arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 8 ++++----
>   .../target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall | 2 +-
>   .../arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 4 ++--
>   6 files changed, 14 insertions(+), 17 deletions(-)
>

