Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16622E00DD2; Wed, 10 Jan 2018 21:26:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9109AE00DAE;
	Wed, 10 Jan 2018 21:26:17 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w0B5QGVe026580
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Jan 2018 21:26:16 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 10 Jan 2018 21:26:15 -0800
To: Davis Roman <davis.roman84@gmail.com>, <poky@yoctoproject.org>
References: <CACfi_Z1iHtpMLTNnQO=FPpFVu+ZYaXrRLVSk6HkrrsSbt+CBkA@mail.gmail.com>
	<CACfi_Z1-wtH0iVO6Q3vg2Q661tWSHF1ZFQuGU_QVyCtijxW58Q@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <5e8d8895-3d01-02d9-2481-27f400834670@windriver.com>
Date: Thu, 11 Jan 2018 13:26:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CACfi_Z1-wtH0iVO6Q3vg2Q661tWSHF1ZFQuGU_QVyCtijxW58Q@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Fwd: How to make the os-release package work with local walltime instead of GMT?
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
X-List-Received-Date: Thu, 11 Jan 2018 05:26:19 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Davis,

You can try to add this to conf/local.conf or redefine it in os-release.bb:

BUILD_ID = "${@time.strftime('%Y-%m-%d %H:%M:%S',time.localtime())}"

// Robert

On 01/11/2018 12:55 PM, Davis Roman wrote:
> Hello,
> 
> I'm trying to fullfill a requirement which states that I must have a file in my 
> root filesystem which has the timestamp of when the rootfs was generated for 
> traceability purposes.
> 
> I've included the os-release package into my image recipe.
> 
> However, when I cat /etc/os-release, I notice that the BUILD_ID variable does 
> not reflect the actually time that my build took place.
> 
> Upon further inspection, I noticed in the os-release recipe that BUILD_ID is 
> based on the DATETIME variable.
> 
> Drilling down further, I noticed that DATETIME is defined 
> in ./meta/conf/bitbake.conf
> 
>      DATE := "${@time.strftime('%Y%m%d',time.gmtime())}"
>      TIME := "${@time.strftime('%H%M%S',time.gmtime())}"
>      DATETIME = "${DATE}${TIME}"
> 
> So it appears to me that DATETIME is based on gmttime.
> 
> Instead, I would like this to be based on wall time.
> 
> Any suggestions on how to do this?
> 
> Thank you,
> 
> Davis
> 
> 
> 

