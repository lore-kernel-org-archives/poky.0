Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7200E00E2B; Mon, 11 Apr 2016 06:24:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC69FE00DFC
	for <poky@yoctoproject.org>; Mon, 11 Apr 2016 06:24:12 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u3BDOASh025263
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 11 Apr 2016 06:24:11 -0700 (PDT)
Received: from server.local (147.11.118.130) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 11 Apr 2016 06:24:10 -0700
To: Robert Yang <liezhi.yang@windriver.com>, <poky@yoctoproject.org>
References: <cover.1460297985.git.liezhi.yang@windriver.com>
	<570B0354.7040201@windriver.com> <570B0E9A.90602@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <570BA579.9040408@windriver.com>
Date: Mon, 11 Apr 2016 09:24:09 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <570B0E9A.90602@windriver.com>
Subject: Re: [PATCH 0/1] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
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
X-List-Received-Date: Mon, 11 Apr 2016 13:24:27 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-10 10:40 PM, Robert Yang wrote:
>
>
> On 04/11/2016 09:52 AM, Bruce Ashfield wrote:
>> On 2016-04-10 10:22 AM, Robert Yang wrote:
>>> The following changes since commit
>>> 778121ab844af623a215430ba579a5fb3947928b:
>>>
>>>    local.conf.sample: Make it possible to override EXTRA_IMAGE_FEATURES
>>> (2016-04-09 23:00:46 +0100)
>>>
>>> are available in the git repository at:
>>>
>>>    git://git.pokylinux.org/poky-contrib rbt/kernel
>>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/kernel
>>>
>>> Robert Yang (1):
>>>    poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
>>>
>>
>> Can you provide some bootlogs ? Size information, etc ? When we jump
>> this between kernel versions, we need to log some sort of information
>> about functionality and the size of the image.
>>
>> I've been carrying this support forward, but in 4.4, we did change
>> some of the kernel configs, so it would be good to see what sort of
>> size delta we are talking about.
>
> * Size:
> $ du -s tmp/deploy/images/qemux86/bzImage*
> 2664
> tmp/deploy/images/qemux86/bzImage--4.4.3+git0+770996a263_73481a3abd-r0-qemux86-20160411015757.bin
>
> 2572
> tmp/deploy/images/qemux86/bzImage--4.1.18+git0+b9023d4c8f_f5b08e95bc-r0-qemux86-20160411022834.bin
>
>
> We can see that 4.1 and 4.4 are nearly the same (92K different).

Excellent. That is good news.

>
> And:
> $ runqemu qemux86 ramfs
> works well. Please see the boot logs in the attachment.

perfect. Thanks!

>
> And poky-tiny only supports qemux86 + cpio.gz atm, I've filed two
> enhancements
> for YP 2.2 to support more machines and fs types:
>

As long as it doesn't add too much extra functionality, it makes sense.
Tiny turns pretty much everything off on purpose, since it forms a
baseline that we do expect users to extend or add their own configs. It
is much easier to add, then to subtract.

Thanks for the extra details here. As long as RP is willing to merge
this patch for the 2.1 release, I have no objections.

Bruce

> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9428
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9429
>
> // Robert
>
>>
>> Bruce
>>
>>>   meta-poky/conf/distro/poky-tiny.conf | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>
>>


