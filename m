Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E361E00D2B; Wed, 12 Oct 2016 16:03:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FA5CE00C72;
	Wed, 12 Oct 2016 16:03:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u9CN3bvs018398
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Oct 2016 16:03:38 -0700 (PDT)
Received: from [147.11.117.15] (147.11.117.15) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 12 Oct 2016 16:03:37 -0700
To: Kevin Hao <kexin.hao@windriver.com>, <linux-yocto@yoctoproject.org>,
	<poky@yoctoproject.org>
References: <20160920120025.159211-1-kexin.hao@windriver.com>
	<20160920120025.159211-2-kexin.hao@windriver.com>
	<20161008073634.GA19124@pek-khao-d1>
	<20161008073757.GB19124@pek-khao-d1>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <57FEC142.7000607@windriver.com>
Date: Wed, 12 Oct 2016 19:03:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20161008073757.GB19124@pek-khao-d1>
Subject: Re: [linux-yocto] [kernel-meta] meta-yocto-bsp: beaglebone: remove the stale kernel options
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
X-List-Received-Date: Wed, 12 Oct 2016 23:03:47 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/08/2016 03:37 AM, Kevin Hao wrote:
> On Sat, Oct 08, 2016 at 03:36:34PM +0800, Kevin Hao wrote:
>> On Tue, Sep 20, 2016 at 08:00:25PM +0800, Kevin Hao wrote:
>>> The kernel_configcheck complains about these unnecessary kernel options.
>>> The final .config is the same with or without them.
>>
>> Hi Bruce,
>>
>> It seems that you missed this patch for the linux 4.1 kernel-meta.
>
> Sorry for the typo. Should be linux 4.4.

I've cherry picked this to the 4.4 branch. SRCREV updates to follow.

Bruce

>
> Thanks,
> Kevin
>
>
>


