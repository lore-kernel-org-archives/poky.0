Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0912E01244
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 09:21:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9EGLIOB012189
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Oct 2011 09:21:18 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 14 Oct 2011 09:21:18 -0700
Message-ID: <4E98617D.5040501@windriver.com>
Date: Fri, 14 Oct 2011 11:21:17 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E984ACB.1080901@mlbassoc.com> <4E985E22.1080008@windriver.com>
	<1318608939.2342.37.camel@ted>
In-Reply-To: <1318608939.2342.37.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: Poky SDK as an external toolchain
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
X-List-Received-Date: Fri, 14 Oct 2011 16:21:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 10/14/11 11:15 AM, Richard Purdie wrote:
> On Fri, 2011-10-14 at 11:06 -0500, Mark Hatle wrote:
>> On 10/14/11 9:44 AM, Gary Thomas wrote:
>>> Premise: I'm happy with the toolchain that builds with Poky/Yocto
>>> Problem: I'm not happy rebuilding said toolchain all the time, nor
>>> having my customers have to rebuild it.
>>>
>>> Solution? I'd like to build the meta-toolchain and then be able to
>>> use that as an external toolchain for subsequent builds.  That way,
>>> I can create the tools and reuse them internally as well as pass
>>> them to my customers.
>>>
>>> How can I make this happen?  The last time I tried anything like
>>> this, I spent many days in the attempt only to find out that it
>>> was never going to work...
>>
>> We have a similar need for our commercial products.  We allow/enable our
>> customers to rebuild the toolchains (and use the results), but we only provide
>> official support for our binary versions.  There are simply too many variations
>> possible to try to support the toolchains in source format.  (Toolchains =
>> bintuils, gcc, stock eglibc and a stock uclibc configurations...)
>>
>> Our intention is simply to create custom recipes that extract our binaries and
>> use them instead of doing a by-source build.  If there is an easier way that
>> would be nice.  (And I agree, using the results of the meta-toolchain build is
>> the right approach for anything standard.)
>>
>> I'd suggest this get added as an enhancement request to the bugzilla.  We're
>> currently working on feature planning for 1.2 so this would be a good time to
>> add it into the bucket of possible work items.
> 
> We already support external toolchains just fine. You can use a
> meta-toolchain as an external toolchain.

But we don't have a way to use OUR external toolchain directly as the toolchain
for building, avoiding building new ones right?

> If you want to reuse the toolchain directly, we do have sstate and we
> need to fix issues it has. We know and acknowledge they exist, we just
> need to track down the problems and fix them. The more people who help
> with that the sooner it will get done.

This is one case where I think sstate is only the answer for those folks who
want to speed rebuilding.  But in the case where you've come up with a certified
set of binary components.. there needs to be a way to inject that in without the
weight of the sstate.  (Copy of all of the various stages of the install, build,
packaging..)

> If anything goes into the bugzilla it should be examples of where sstate
> is failing. Most sstate bugs do get resolved failrly quickly.

I think this is a different usecase then the sstate.  To me sstate allows the
use of a cache to speed up building.  This is a case where we want to use
something external (which happens to be built by the build system -- setting the
default format) to avoid performing any build operations.

--Mark

> Cheers,
> 
> Richard
> 


