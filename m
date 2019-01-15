Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5E6AE00BED; Tue, 15 Jan 2019 07:25:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F37DE006F1;
	Tue, 15 Jan 2019 07:25:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0FFOlMS031034
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Jan 2019 07:24:57 -0800
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Tue, 15 Jan 2019 07:24:37 -0800
To: sadu A <pkr6797@gmail.com>, <yocto@yoctoproject.org>,
	<poky@yoctoproject.org>
References: <CALdre-xUUX38urFXonqepnhfXVduQFF3rGJAfpZ3SHxphe=p0w@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <fddc6229-13b7-7e9a-4e55-129a2ced6e07@windriver.com>
Date: Tue, 15 Jan 2019 10:24:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CALdre-xUUX38urFXonqepnhfXVduQFF3rGJAfpZ3SHxphe=p0w@mail.gmail.com>
X-Originating-IP: [172.25.44.4]
Subject: Re: [yocto] Qemu Launch Issue:
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
X-List-Received-Date: Tue, 15 Jan 2019 15:25:26 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 1/15/19 5:54 AM, sadu A wrote:
> Hi Team,
> 
> I'm new to yocto environment, I need clarification on this:
> 
> Launching Qemu default and launching by using "-nographic" option makes 
> any difference.
> 
> Please clarify this.

Using:
   $ runqemu nographic

is useful when you have logged into a server and
you don't want to allow X11 forwarding to your workstation/laptop.

See:
   google: qemu nographic
   for example:
 
https://serverfault.com/questions/471719/how-to-start-qemu-directly-in-the-console-not-in-curses-or-sdl

for details.


../Randy
> 
> 
> Regards,
> Kumar
> 


-- 
# Randy MacLeod
# Wind River Linux

