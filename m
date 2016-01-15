Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4093AE009C3; Fri, 15 Jan 2016 08:05:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1811BE0096C
	for <poky@yoctoproject.org>; Fri, 15 Jan 2016 08:05:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u0FG5gS6001534
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Jan 2016 08:05:42 -0800 (PST)
Received: from [128.224.62.190] (128.224.62.190) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 15 Jan 2016 08:05:40 -0800
To: Arno <star@gmx.li>, <poky@yoctoproject.org>
References: <trinity-8e3e6815-e458-4eed-926e-96325a4e39bb-1452151456046@3capp-gmx-bs07>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <569918D3.60403@windriver.com>
Date: Fri, 15 Jan 2016 11:05:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <trinity-8e3e6815-e458-4eed-926e-96325a4e39bb-1452151456046@3capp-gmx-bs07>
X-Originating-IP: [128.224.62.190]
Subject: Re: TCF agent doesn't support run control service
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
X-List-Received-Date: Fri, 15 Jan 2016 16:05:55 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-01-07 02:24 AM, Arno wrote:
> While my tests with TCF I found that I can't debug with it (remote exploring works).
> In eclispe I get in the Tab Debugger Configuration/download the message:
> "peer does not support run control service".
> As I am new to both Yocto and TCF I kindly ask, is this an issue of me (wrong handling), TCF in general, TCF in Yocto or is an issue with my target ARM-CortexA9 system?
> Does it mean, I should keep going for GDB?
>


According to a co-worker, this is discussed on
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=5069#c4

Does that help?

-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
Canada, K2K 2W5

