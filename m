Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 750C9E01753; Mon, 18 Jun 2018 20:12:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8381CE0174C
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 20:12:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w5J3CkKP011841
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 20:12:46 -0700 (PDT)
Received: from server.local (128.224.22.59) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 18 Jun 2018 20:12:45 -0700
To: He Zhe <zhe.he@windriver.com>, <kexin.hao@windriver.com>,
	<poky@yoctoproject.org>
References: <20180619030207.23381-1-zhe.he@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <4c46c157-1170-8235-196d-e061d4877e60@windriver.com>
Date: Mon, 18 Jun 2018 23:12:44 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20180619030207.23381-1-zhe.he@windriver.com>
Subject: Re: [yocto] [PATCH] meta-yocto-bsp: Let yocto BSPs be able to build with linux-yocto-dev
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
X-List-Received-Date: Tue, 19 Jun 2018 03:12:48 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

On 2018-06-18 11:02 PM, He Zhe wrote:
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>   .../recipes-kernel/linux/linux-yocto-dev.bbappend         | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
>   create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
> 
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
> new file mode 100644
> index 0000000000..f044dafb4d
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
> @@ -0,0 +1,15 @@
> +KBRANCH_genericx86  = "standard/base"
> +KBRANCH_genericx86-64  = "standard/base"
> +KBRANCH_edgerouter = "standard/edgerouter"
> +KBRANCH_beaglebone-yocto = "standard/beaglebone"
> +KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
> +
> +KMACHINE_genericx86 ?= "common-pc"
> +KMACHINE_genericx86-64 ?= "common-pc-64"
> +KMACHINE_beaglebone-yocto ?= "beaglebone"
> +
> +COMPATIBLE_MACHINE_genericx86 = "genericx86"
> +COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> +COMPATIBLE_MACHINE_edgerouter = "edgerouter"
> +COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
> +COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
> 


