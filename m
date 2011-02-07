Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 258D14C800A4
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 12:35:08 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BA39B1660295; Mon,  7 Feb 2011 11:35:07 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id DEE12166016D;
	Mon,  7 Feb 2011 11:35:06 -0700 (MST)
Message-ID: <4D503B5A.3040805@mlbassoc.com>
Date: Mon, 07 Feb 2011 11:35:06 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <AANLkTinobVPqACVbGb5VjmuROL9-74r1E1B1Ux5xXvVo@mail.gmail.com>	<4D4FE267.5080907@mlbassoc.com>	<4D4FEAD4.50200@gmail.com>
	<4D50388A.4030707@linux.intel.com>
In-Reply-To: <4D50388A.4030707@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: chromium browser
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
X-List-Received-Date: Mon, 07 Feb 2011 18:35:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2011 11:23 AM, Darren Hart wrote:
> On 02/07/2011 04:51 AM, embedded.yogesh wrote:
>> On Monday 07 February 2011 05:45 PM, Gary Thomas wrote:
>>> On 02/06/2011 09:52 PM, yogesh lal wrote:
>>>> Hi,
>>>>
>>>> I am new to poky, so don't know it will make any sense or not, but
>>>> can we build chromium browser using Poky ?
>>>
>>> What's your target architecture? Last I checked, only x86 and ARM
>>> are supported.
>>>
>>> It can be done, but it's certainly not for the faint of heart :-)
>>>
>>
>> I am working on X86 platform. Can you give some initial start up where I
>> have to look ?
>
> Find and download the Chromium source, then have a look at the Poky Reference Guide for how to create an appropriate recipe, using recipes for projects with similar source layouts
> as examples.
>
> http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html

Probably a lot easier to start with the OpenEmbedded recipe
since it already works.  The biggest problem is that there
are a ton of dependencies, so you'll need to bring in those
recipes as well.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

