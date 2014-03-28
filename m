Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DB4E00BCE;
	Fri, 28 Mar 2014 12:27:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2SJRAW1014714
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Mar 2014 12:27:10 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 28 Mar 2014 12:27:10 -0700
Message-ID: <5335CD0C.8000801@windriver.com>
Date: Fri, 28 Mar 2014 15:27:08 -0400
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
In-Reply-To: <CF5B18D7.7DC4F%darren.hart@intel.com>
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
X-List-Received-Date: Fri, 28 Mar 2014 19:27:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-28 03:22 PM, Hart, Darren wrote:
> On 3/28/14, 12:14, "Bruce Ashfield" <bruce.ashfield@windriver.com> wrote:
>
>> On 14-03-28 03:12 PM, Denys Dmytriyenko wrote:
>>> On Fri, Mar 28, 2014 at 03:08:54PM -0400, Bruce Ashfield wrote:
>>>> On 14-03-28 03:05 PM, Hart, Darren wrote:
>>>>> On 3/28/14, 11:59, "Bruce Ashfield" <bruce.ashfield@windriver.com>
>>>>> wrote:
>>>>>
>>>>>> On 14-03-28 02:57 PM, Hart, Darren wrote:
>>>>>>> On 3/28/14, 11:38, "Bruce Ashfield" <bruce.ashfield@windriver.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> On 14-03-28 02:34 PM, Richard Purdie wrote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> With regard to beagleboard, whilst the kernel may have support
>>>>>>>>> for it,
>>>>>>>>> I'd like to remove it from meta-yocto-bsp.
>>>>>>>>
>>>>>>>> ok. I had planned to just leave the compatible machine as 3.10 and
>>>>>>>> leave
>>>>>>>> the support there, since there are a few people who contact me
>>>>>>>> regularly
>>>>>>>> and poke with the support.
>>>>>>>>
>>>>>>>> Is there a place we can put them as a "retirement" home ? versus
>>>>>>>> asking
>>>>>>>> people to locally restore the support.
>>>>>>>
>>>>>>> The retirement home would be the 1.5 stable releases. Yes?
>>>>>>
>>>>>> Nope. That's my point, I have 3.10 changes for the Xm in linux-yocto
>>>>>> 3.10 that lives in 1.6. We can make it less visible, but I'd like the
>>>>>> configs to follow the latest versions of the tree.
>>>>>
>>>>> Isn't it just the SRCREV that matters here? Those can always just be
>>>>> applied to 1.5. RP is only asking to remove the beagle board as a
>>>>> reference BSP from the meta-yocto-bsp layer, he doesn't care if the
>>>>> linux-yocto/meta data remains in place.
>>>>
>>>> We are talking past each other. I'm asking for the meta-yocto-bsp and
>>>> machine conf file to be around .. somewhere .. I don't want people
>>>> to have to scrounge them up and revive them from old releases, or
>>>> revert commits to make them available.
>>>>
>>>> So this is outside of linux-yocto, I'd like a single layer than when
>>>> added, gives access to the BSPs "as they were" in the 3.10 tree, and
>>>> I'd like that layer to not be on people's local drives only.
>>>
>>> 3.10 EOL is projected as Sep, 2015 - do you plan to keep
>>> linux-yocto-3.10
>>> until then?
>>
>> That's the plan. I tried to kill 3.4 before it official died and was
>> reminded that we'd keep LTSI support around a bit longer. I'm sure we
>> can bend a bit on the dates, but the general feel is correct .. the tree
>> will be around for a while yet.
>
>
> Ah, but here's the thing. If someone wants to use an older kernel because
> they can't risk the change from the newer kernel, then they shouldn't be
> changing the release either. Dropping support in the next release is not
> the same as dropping support. The 1.5 series is still getting stable
> updates, and 3.10 lives on there for that BSP. This is the direction I
> drive internally as well.

That's not what I said, and not what I meant. I want to keep the support
in 3.10 AND 1.6 .. you'll note that I've never said 1.5 at any point.
I just don't want it to be the official "reference" BSP.

>
> I'm still not clear on which changes you are getting at that are relevant
> to beagle board in 1.6 that are not portable to 1.5. For example:

As I've said before, I'm not going to support 3.10 updates that I'm testing
on master on 1.5, since I'll have to prepare commits for multiple
release branches and test there.

If a -stable maintainer wants those commits, they are welcome, but
I have no bandwidth to backport and test.

I'm saying that it works in 3.10, and it works against 1.6, and that
is what I want to be available.

>
> $ git l dora..
> meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
> 54c2e99 bsps: update H/W reference boards to v3.10.32
> 9688673 bsps: update to 3.10.28
> e0d8e2c linux-yocto-bsps: update reference BSPs to v3.10.25
> 8babbd1 meta-yocto-bsp: update SRCREVs for 3.10.17 and beagleboard fixes
>
>
> $ git l dora.. meta-yocto-bsp/conf/machine/beagleboard.conf
> <empty>
>
> $ git l dora.. meta/recipes-kernel/linux/linux-yocto_3.10.bb
> c7d9a07 linux-yocto/3.10: integrate latest LTSI changes
> 771803e linux-yocto/3.10: update to v3.10.32
> 4b967d9 linux-yocto/3.10: enable CONFIG_FHANDLE for standard and
> preempt-rt kernels
> 9be7acc linux-yocto/3.10: add minnow-io feature to LTSI
> 3fefbe3 linux-yocto/3.10: arbitrary write with CONFIG_X86_X32
> (CVE-2014-0038)
> 088677a linux-yocto/3.10: update to v3.10.28
> ab9c345 linux-yocto/3.10: add powermanagement config to 32 bit common-pc
> 897d13a linux-yocto/3.10: integrate LTSI
> e7f8537 linux-yocto/3.10: mohonpeak bsp config and scc files
> a166c2e linux-yocto/3.10: update to 3.10.25
> 5d90065 linux-yocto/3.10: update meta data for media fragments
> 121dcd3 linux-yocto/*: restore branch designations
> 04e3487 linux-yocto/3.10: -rt, ebtables and e1000 fixes
> 5745f59 linux/yocto-3.10: merge v3.10.19
> e1e1ee5 linux-yocto/3.10: meta: ARM: OMAP3: Add USB PHY driver for
> Beagleboard
> 89c986c linux-yocto/3.10: meta: ARM: OMAP3: Add USB PHY driver for
> Beagleboard
> e9ec153 linux-yocto/3.10: fix qemuarm boot and spurious mips build warning
> baf005b linux-yocto/3.10: common-pc: add missing dependencies for BRCMSMAC
> 1fe7bca linux-yocto/3.10: haswell-wc and crystalforest support
> a23c7e9 linux-yocto-3.10: bump to 3.10.17 and -rt11
> 56cc2f2 linux-yocto/3.10: MinnowBoard support
>
>
> All of this strikes me as either not relevant, or perfectly acceptable for
> a 1.5 point release. So the single layer you are asking for where the
> beagle board BSP exists as it was is poky/meta-yocto-bsp:dora. We won't be
> removing it from there.
>
> Am I still missing something about what you are looking for?

Yep, see above.

Bruce

>
> --
> Darren Hart
> Yocto Project - Linux Kernel
> Intel Open Source Technology Center
>
>
>


