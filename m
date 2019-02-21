Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5295DE00B92; Wed, 20 Feb 2019 18:46:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 739EEE0048C
	for <poky@yoctoproject.org>; Wed, 20 Feb 2019 18:46:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x1L2k2rh000973
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 20 Feb 2019 18:46:02 -0800 (PST)
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.435.0;
	Wed, 20 Feb 2019 18:46:01 -0800
To: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>, poky <poky@yoctoproject.org>
References: <6924cb17.721d.1690a3583ba.Coremail.zzs213@126.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <3512d45d-fb35-5d45-f6c5-f90334d5a97c@windriver.com>
Date: Thu, 21 Feb 2019 10:55:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <6924cb17.721d.1690a3583ba.Coremail.zzs213@126.com>
X-Originating-IP: [128.224.163.141]
Subject: Re: how to known whether a .inc file had been include
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
X-List-Received-Date: Thu, 21 Feb 2019 02:46:13 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 02/20/2019 05:21 PM, 张忠山 wrote:
> In my recipe, Would include a foo.inc.But if it
> had been include in other place, I won't include it duplicated.
> So howto check whether foo.inc had been include?

I haven't ever met such requirement. So instead of trying to figure out 
how, I'd suggest to take a look at why you have such needs. Maybe you 
change something else and do not have to do this after that.

Best Regards,
Chen Qi

