Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAB80E00D46; Tue,  4 Jun 2019 00:08:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63A66E00D38
	for <poky@yoctoproject.org>; Tue,  4 Jun 2019 00:08:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x54787nH019094
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Jun 2019 00:08:08 -0700 (PDT)
Received: from [128.224.162.179] (128.224.162.179) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Tue, 4 Jun 2019 00:08:06 -0700
To: <richard.purdie@linuxfoundation.org>
References: <20190602145530.183521-1-kai.kang@windriver.com>
	<51adf784752be06beea78dbe4a523a403671dbe0.camel@linuxfoundation.org>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <ff89b5fc-9032-2e44-9834-12cbbcb9db64@windriver.com>
Date: Tue, 4 Jun 2019 15:06:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <51adf784752be06beea78dbe4a523a403671dbe0.camel@linuxfoundation.org>
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [meta-poky][PATCH v6 0/2] Make systemd as default init manager and configure wired network
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
X-List-Received-Date: Tue, 04 Jun 2019 07:08:11 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2019/6/3 下午8:30, richard.purdie@linuxfoundation.org wrote:
> On Sun, 2019-06-02 at 10:55 -0400, kai.kang@windriver.com wrote:
>> From: Kai Kang <kai.kang@windriver.com>
>>
>> v6:
>> * create .inc files as Richard suggested, and include them according
>> to POKY_INIT_MANAGER
>>
>> Kai Kang (2):
>>    poky.conf: make systemd as default init manager
>>    systemd-conf: configure wired network with dhcp
> This is looking good, I do agree with Peter about the file naming.


OK.


> I
> ran it through the autobuilder to see where we are at runtime and the
> results were not so good:
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/85/builds/484
>
> We may need to reduce some of the free space in the ptest image and it
> looks like there is an NFS startup failure issue in the sdk images.
> There may be other issues in there too but those were the two I
> immediately saw.

I'll check the issues one by one.

Regards,
Kai

>
> Cheers,
>
> Richard
>
>

-- 
Kai Kang


