Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EA6EE00D3D; Tue, 13 Sep 2016 07:04:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E85AEE00D34
	for <poky@yoctoproject.org>; Tue, 13 Sep 2016 07:03:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8DE3tkb009372
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 13 Sep 2016 07:03:55 -0700
Received: from server.local (147.11.118.112) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 13 Sep 2016 07:03:54 -0700
To: Robert Yang <liezhi.yang@windriver.com>, "Burton, Ross"
	<ross.burton@intel.com>
References: <cover.1473668648.git.liezhi.yang@windriver.com>
	<52b278723167707e032353daded2d1ccf0f44b59.1473668648.git.liezhi.yang@windriver.com>
	<CAJTo0LYvLLvjJHNaA-JfZCGKGWDWNfdR5E9+rwHDXTMYuYPgow@mail.gmail.com>
	<620f9e8e-3cf0-445a-f79d-b4b48a017fb1@windriver.com>
	<607d954c-6cab-870a-f298-5ff8c1470c31@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <0c346db0-600c-a374-bec1-7453dff3091a@windriver.com>
Date: Tue, 13 Sep 2016 10:03:53 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <607d954c-6cab-870a-f298-5ff8c1470c31@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] poky-lsb.conf: use kernel 4.8
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
X-List-Received-Date: Tue, 13 Sep 2016 14:04:01 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-09-12 9:44 PM, Robert Yang wrote:
>
>
> On 09/12/2016 08:48 PM, Bruce Ashfield wrote:
>> On 2016-09-12 04:39 AM, Burton, Ross wrote:
>>>
>>> On 12 September 2016 at 09:25, Robert Yang <liezhi.yang@windriver.com
>>> <mailto:liezhi.yang@windriver.com>> wrote:
>>>
>>>      # Use the LTSI Kernel for LSB Testing
>>>     -PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.1%"
>>>     +PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.8%"
>>>
>>>
>>> As the comment says, poky-lsb uses the currently LTSI kernel, which is
>>> 4.1.17.   If this isn't booting for you then this needs to be fixed
>>> without upgrading to 4.8, unless there's a new LTSI kernel on the
>>> horizon (Bruce?).
>>
>> I see Robert already replied, but I can comment here that the next
>> LTSI looks to be 4.9. We stretched to make 4.8 for this release, so
>> it will be spring before we have a new LTSI kernel to use.
>
> Thanks for the reply, will we fix "qemuarm64 + poky-lsb + 4.1 kernel"
> can't be boot issue in Yocto 2.2, please ?

I'm sure someone will :D I haven't looked at it myself, but will have
my hands full with 4.8 for the next while.

Bruce

>
> // Robert
>
>>
>> Bruce
>>
>>>
>>> Ross
>>
>>


