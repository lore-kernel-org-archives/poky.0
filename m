Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DF40E00DF8; Thu, 11 Jan 2018 17:45:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EAD2E0056D
	for <poky@yoctoproject.org>; Thu, 11 Jan 2018 17:45:22 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w0C1jHN8013371
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 11 Jan 2018 17:45:19 -0800
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Thu, 11 Jan 2018 17:45:06 -0800
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, "Diaz de Grenu,
	Jose" <Jose.DiazdeGrenu@digi.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B45F94@dor-sms-xch01.digi.com>
	<74fdcc9f-d8dd-5758-a900-ccfffeea0399@windriver.com>
	<ed781a27-9452-e6c6-89ee-d08b9b75d050@linux.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <6f1b6255-3105-cff4-2ccb-9d2faf6e1749@windriver.com>
Date: Fri, 12 Jan 2018 09:45:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <ed781a27-9452-e6c6-89ee-d08b9b75d050@linux.intel.com>
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
X-List-Received-Date: Fri, 12 Jan 2018 01:45:23 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 01/11/2018 07:40 PM, Alexander Kanavin wrote:
> On 01/11/2018 07:33 AM, Robert Yang wrote:
>> Yes, just remove the "else" block and use something like:
>>
>> if [ -z "$D" ]; then
>>      # Actions
>> fi
>>
>> But it would be better if you can make it work during do_rootfs rather
>> than firstboot.
> 
> This is not correct. If you do this, then the postinst will be executed once, 
> during image creation, and Actions will never be taken.

Sorry, I think that the 'Action' will be executed when first boot ?

// Robert

> 
> Alex
> 

