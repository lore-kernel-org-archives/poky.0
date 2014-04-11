Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4618E00C38
	for <poky@yoctoproject.org>; Thu, 10 Apr 2014 21:22:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3B4MBHP024254
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 10 Apr 2014 21:22:11 -0700 (PDT)
Received: from server.local (128.224.20.58) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 10 Apr 2014 21:22:11 -0700
Message-ID: <53476EC1.50307@windriver.com>
Date: Fri, 11 Apr 2014 00:25:37 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: <bin.jiang@windriver.com>
References: <1397186283-3796-1-git-send-email-bin.jiang@windriver.com>
In-Reply-To: <1397186283-3796-1-git-send-email-bin.jiang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] edgerouter: remove RTC kernel option
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
X-List-Received-Date: Fri, 11 Apr 2014 04:22:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-04-10, 11:18 PM, bin.jiang@windriver.com wrote:
> From: Bin Jiang <bin.jiang@windriver.com>
>
> Fix YOCTO #6111.

I pulled this into the kernel tree. Thanks for the quick turn around.

Bruce

>
> Bin Jiang (1):
>    meta: Remove RTC kernel options in edgerouter
>
>   meta/cfg/kernel-cache/bsp/edgerouter/edgerouter.cfg |    3 ---
>   1 file changed, 3 deletions(-)
>


