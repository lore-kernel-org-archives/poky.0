Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2832E00BD9;
	Fri, 28 Mar 2014 13:41:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2SKfjHo015419
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Mar 2014 13:41:45 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 28 Mar 2014 13:41:45 -0700
Message-ID: <5335DE88.8040603@windriver.com>
Date: Fri, 28 Mar 2014 16:41:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Hart, Darren" <darren.hart@intel.com>, Denys Dmytriyenko <denis@denix.org>
References: <1396031047.14790.24.camel@ted> <5335BF1C.9030902@windriver.com>
	<5335BF6A.8080404@windriver.com> <1396031644.14790.26.camel@ted>
	<5335C1AF.5080904@windriver.com>
	<CF5B1473.7DC1D%darren.hart@intel.com>
	<5335C6AA.6020308@windriver.com>
	<CF5B160D.7DC33%darren.hart@intel.com>
	<5335C8C6.20604@windriver.com> <20140328191218.GO3370@denix.org>
	<5335CA00.8070207@windriver.com>
	<CF5B18D7.7DC4F%darren.hart@intel.com>
	<5335CD0C.8000801@windriver.com>
	<CF5B2B7A.7DCA2%darren.hart@intel.com>
In-Reply-To: <CF5B2B7A.7DCA2%darren.hart@intel.com>
Cc: yocto-builds <yocto-builds@yoctoproject.org>, "WOLD,
	SAUL" <saul.wold@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	Denys Dmytriyenko <denys@ti.com>
Subject: Re: meta-yocto-bsp changes and 3.14
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
X-List-Received-Date: Fri, 28 Mar 2014 20:41:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-28 04:37 PM, Hart, Darren wrote:
> On 3/28/14, 12:27, "Bruce Ashfield" <bruce.ashfield@windriver.com> wrote:
>
>> On 14-03-28 03:22 PM, Hart, Darren wrote:
>>> On 3/28/14, 12:14, "Bruce Ashfield" <bruce.ashfield@windriver.com>
>>> wrote:
>>>
>>>> On 14-03-28 03:12 PM, Denys Dmytriyenko wrote:
>>>>> On Fri, Mar 28, 2014 at 03:08:54PM -0400, Bruce Ashfield wrote:
>>>>>> On 14-03-28 03:05 PM, Hart, Darren wrote:
>>>>>>> On 3/28/14, 11:59, "Bruce Ashfield" <bruce.ashfield@windriver.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> On 14-03-28 02:57 PM, Hart, Darren wrote:
>>>>>>>>> On 3/28/14, 11:38, "Bruce Ashfield" <bruce.ashfield@windriver.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> On 14-03-28 02:34 PM, Richard Purdie wrote:
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> With regard to beagleboard, whilst the kernel may have support
>>>>>>>>>>> for it,
>>>>>>>>>>> I'd like to remove it from meta-yocto-bsp.
>>>>>>>>>>
>>>>>>>>>> ok. I had planned to just leave the compatible machine as 3.10
>>>>>>>>>> and
>>>>>>>>>> leave
>>>>>>>>>> the support there, since there are a few people who contact me
>>>>>>>>>> regularly
>>>>>>>>>> and poke with the support.
>>>>>>>>>>
>>>>>>>>>> Is there a place we can put them as a "retirement" home ? versus
>>>>>>>>>> asking
>>>>>>>>>> people to locally restore the support.
>>>>>>>>>
>>>>>>>>> The retirement home would be the 1.5 stable releases. Yes?
>>>>>>>>
>>>>>>>> Nope. That's my point, I have 3.10 changes for the Xm in
>>>>>>>> linux-yocto
>>>>>>>> 3.10 that lives in 1.6. We can make it less visible, but I'd like
>>>>>>>> the
>>>>>>>> configs to follow the latest versions of the tree.
>>>>>>>
>>>>>>> Isn't it just the SRCREV that matters here? Those can always just be
>>>>>>> applied to 1.5. RP is only asking to remove the beagle board as a
>>>>>>> reference BSP from the meta-yocto-bsp layer, he doesn't care if the
>>>>>>> linux-yocto/meta data remains in place.
>>>>>>
>>>>>> We are talking past each other. I'm asking for the meta-yocto-bsp and
>>>>>> machine conf file to be around .. somewhere .. I don't want people
>>>>>> to have to scrounge them up and revive them from old releases, or
>>>>>> revert commits to make them available.
>>>>>>
>>>>>> So this is outside of linux-yocto, I'd like a single layer than when
>>>>>> added, gives access to the BSPs "as they were" in the 3.10 tree, and
>>>>>> I'd like that layer to not be on people's local drives only.
>>>>>
>>>>> 3.10 EOL is projected as Sep, 2015 - do you plan to keep
>>>>> linux-yocto-3.10
>>>>> until then?
>>>>
>>>> That's the plan. I tried to kill 3.4 before it official died and was
>>>> reminded that we'd keep LTSI support around a bit longer. I'm sure we
>>>> can bend a bit on the dates, but the general feel is correct .. the
>>>> tree
>>>> will be around for a while yet.
>>>
>>>
>>> Ah, but here's the thing. If someone wants to use an older kernel
>>> because
>>> they can't risk the change from the newer kernel, then they shouldn't be
>>> changing the release either. Dropping support in the next release is not
>>> the same as dropping support. The 1.5 series is still getting stable
>>> updates, and 3.10 lives on there for that BSP. This is the direction I
>>> drive internally as well.
>>
>> That's not what I said, and not what I meant. I want to keep the support
>> in 3.10 AND 1.6 .. you'll note that I've never said 1.5 at any point.
>> I just don't want it to be the official "reference" BSP.
>>
>>>
>>> I'm still not clear on which changes you are getting at that are
>>> relevant
>>> to beagle board in 1.6 that are not portable to 1.5. For example:
>>
>> As I've said before, I'm not going to support 3.10 updates that I'm
>> testing
>> on master on 1.5, since I'll have to prepare commits for multiple
>> release branches and test there.
>>
>> If a -stable maintainer wants those commits, they are welcome, but
>> I have no bandwidth to backport and test.
>>
>> I'm saying that it works in 3.10, and it works against 1.6, and that
>> is what I want to be available.
>
>
> Yes, the 1.5 suggestion was mine in response to working with RP on
> reducing the BSPs in meta-yocto-bsp to 1 per architecture per the stated
> intent of that layer.
>
> However - that's really all the time I can spend on it :-) Not the hill I
> want to die on and all that.

Me either. Responding to the thread was more time than it took me
to test the bbappend and send it out. As you saw in my email there,
I won't fight to keep them either .. I'm just on the record saying
that I won't be testing them on 1.5 either!

I'd think a meta-yocto-old-bsps layer somewhere is all that is
needed.

Bruce

>
> --
> Darren Hart
> Yocto Project - Linux Kernel
> Intel Open Source Technology Center
>
>
>


