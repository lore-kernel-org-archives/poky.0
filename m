Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEC2EE00E0B; Tue, 16 Jan 2018 01:22:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60B2DE00E7D
	for <poky@yoctoproject.org>; Tue, 16 Jan 2018 01:22:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w0G9M0sj021191
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 16 Jan 2018 01:22:00 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Tue, 16 Jan 2018 01:22:00 -0800
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, "Diaz de Grenu,
	Jose" <Jose.DiazdeGrenu@digi.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B45F94@dor-sms-xch01.digi.com>
	<74fdcc9f-d8dd-5758-a900-ccfffeea0399@windriver.com>
	<ed781a27-9452-e6c6-89ee-d08b9b75d050@linux.intel.com>
	<6f1b6255-3105-cff4-2ccb-9d2faf6e1749@windriver.com>
	<9230ba72-f2b7-75e9-eba7-04088483594b@linux.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <9fecc62e-340b-cd26-17c0-b56479e60a9c@windriver.com>
Date: Tue, 16 Jan 2018 17:22:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <9230ba72-f2b7-75e9-eba7-04088483594b@linux.intel.com>
Subject: Re: Postinstallation script for target throw warnings
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
X-List-Received-Date: Tue, 16 Jan 2018 09:22:19 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 01/12/2018 08:49 PM, Alexander Kanavin wrote:
> On 01/12/2018 03:45 AM, Robert Yang wrote:
>>>> But it would be better if you can make it work during do_rootfs rather
>>>> than firstboot.
>>>
>>> This is not correct. If you do this, then the postinst will be executed once, 
>>> during image creation, and Actions will never be taken.
>>
>> Sorry, I think that the 'Action' will be executed when first boot ?
> 
> Before that happens, the script needs to be deferred to first boot by issuing 
> 'exit 1'. There's special magic to extract it from rpm and place in a separate 
> execute-on-first-boot location in the target filesystem that gets triggered by 
> 'exit 1'.

Ah, yes, thank you very much.

// Robert

> 
> Alex
> 

