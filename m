Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B86CCE01753; Mon, 18 Jun 2018 20:13:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ADC5E0174C
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 20:13:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w5J3D1uN000688
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 20:13:21 -0700
Received: from server.local (128.224.22.59) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 18 Jun 2018 20:12:56 -0700
To: He Zhe <zhe.he@windriver.com>, <kexin.hao@windriver.com>,
	<poky@yoctoproject.org>
References: <20180619030301.24897-1-zhe.he@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <00246e99-ff96-7c61-8deb-af9450bd08a5@windriver.com>
Date: Mon, 18 Jun 2018 23:12:55 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20180619030301.24897-1-zhe.he@windriver.com>
Subject: Re: [yocto] [PATCH] meta-yocto-bsp: mpc8315e-rdb: Change kernel provider assignment to a weaker one
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
X-List-Received-Date: Tue, 19 Jun 2018 03:13:32 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

On 2018-06-18 11:03 PM, He Zhe wrote:
> Currently mpc8315e-rdb.conf comes after local.conf during parsing. We should
> give local.conf a chance to overwrite the kernel provider assignment, like
> other BSPs.
> 
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>   meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> index 34f12303a1..72f52912eb 100644
> --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> @@ -15,7 +15,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
>   MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
>   
>   PREFERRED_VERSION_linux-yocto ?= "4.15%"
> -PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>   
>   PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>   XSERVER ?= "xserver-xorg \
> 


