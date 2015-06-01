Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AB0AE009AD; Sun, 31 May 2015 21:02:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9CC7E00952;
	Sun, 31 May 2015 21:02:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t51421B3019248
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 31 May 2015 21:02:01 -0700 (PDT)
Received: from server.local (128.224.23.202) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.224.2;
	Sun, 31 May 2015 21:02:01 -0700
Message-ID: <556BD938.3020103@windriver.com>
Date: Mon, 1 Jun 2015 00:02:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Kevin Hao <kexin.hao@windriver.com>, <poky@yoctoproject.org>,
	<linux-yocto@yoctoproject.org>
References: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
In-Reply-To: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
Subject: Re: [PATCH 0] bump to linux-yocto 3.19 for the non-x86 BSPs
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
X-List-Received-Date: Mon, 01 Jun 2015 04:02:06 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-05-27 8:19 AM, Kevin Hao wrote:
> Hi,
>
> This patch series updates the kernel to 3.19 for the non-x86 BSPs. It includes
> two kernel patches, one patch for meta and one patch for meta-yocto-bsp layer.
> Boot test on beaglebone black, edgerouter and mpc8315 boards.
>

Thanks Kevin.

I was on the road last week, but I've staged these changes and will send
them out Monday.

Bruce

> Thanks,
> Kevin
>


