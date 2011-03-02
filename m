Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 161884C80A7E
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 19:34:21 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p221YKEN020758
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 1 Mar 2011 17:34:20 -0800 (PST)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 1 Mar 2011 17:34:19 -0800
Message-ID: <4D6D9E1C.6010104@windriver.com>
Date: Wed, 2 Mar 2011 09:32:12 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1298961777.git.xiaofeng.yan@windriver.com>	<201103011023.58911.paul.eggleton@linux.intel.com>	<34ADCD70-E17B-459F-88E7-D959B0DB4737@dominion.thruhere.net>
	<201103011624.06798.paul.eggleton@linux.intel.com>
In-Reply-To: <201103011624.06798.paul.eggleton@linux.intel.com>
X-Originating-IP: [128.224.162.178]
Subject: Re: [PATCH 0/2] Add qt3 to poky
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
X-List-Received-Date: Wed, 02 Mar 2011 01:34:21 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年03月02日 00:24, Paul Eggleton wrote:
> On Tuesday 01 March 2011 10:33:08 you wrote:
>> And since there was never a qtopia for qt3 I highly doubt anyone is using
>> qt3/e.
> Well, you never know what people are doing behind closed doors. There was also
> once a version of SystemRescueCD that was using the then-current version of
> QtParted with Qt/Embedded 3.x to avoid including X.
>
> For our purposes though it's only for LSB at this stage, so embedded appears
> to be superfluous.
>
> Cheers,
> Paul
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Hi All,

Qt3 could be superfluous because qt4 can include qt3 functions. But the 
most important is that our lsb-image must meet LSB's requirement. 
Otherwise our yocto can't be permitted to use the LSB Certified 
trademark. So qt3 is just for passing LSB test on lsb-image.

Thanks
Yan

