Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71BE0E017C1
	for <poky@yoctoproject.org>; Thu,  7 Nov 2013 10:38:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id rA7IcapC009391
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Nov 2013 10:38:36 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 7 Nov 2013 10:38:35 -0800
Message-ID: <527BDE2A.2030408@windriver.com>
Date: Thu, 7 Nov 2013 13:38:34 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
References: <CAF8s8J-NfHh=vhDk9937cJcxO8aBTFb3ZP+3J5=A2c+PG443QA@mail.gmail.com>	<CADkTA4OqyjQqqCsKcfoa14XW4BWQRAmwSQMB8rtypFc4M3mxeA@mail.gmail.com>
	<1383849357.5378.43.camel@dvhart-mobl4.amr.corp.intel.com>
In-Reply-To: <1383849357.5378.43.camel@dvhart-mobl4.amr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [patch] linux-yocto-rt_3.10.bbappend recipe
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
X-List-Received-Date: Thu, 07 Nov 2013 18:38:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-11-07 01:35 PM, Darren Hart wrote:
> On Tue, 2013-11-05 at 22:25 -0500, Bruce Ashfield wrote:
>> On Tue, Nov 5, 2013 at 6:06 PM, Eric Keller <keller.eric@gmail.com> wrote:
>>> Hi everyone,
>>>
>>> could you consider applying this patch so that we are able to build rt
>>> kernel for genericx86(-64)?
>>
>> Send a patch against the main linux-yocto-rt recipe (not via this
>> attached bbappend
>> patch), and we can have a look.
>
> Bruce, the genericx86 BSPs are not in oe-core, they are in
> meta-yocto-bsp, so the bbappend is the right place to do this.

Ah yes. Right you are.

>
>>
>> But adding the support is something that you can easily carry in your
>> own layer,
>> since by adding the support to the main recipe, we are implicitly agreeing that
>> I'll build and boot test it with each update. And I don't have a large
>> objection to that,
>> but I add new supported boards with caution, in particular genericx86, since it
>> doesn't have a tightly controlled platform or set of drivers.
>
> For context, I met with Eric and suggested he send this patch. I would
> be adding it myself if he didn't as genericx86* absolutely must support
> PREEMPT_RT IMNSHO.

Then I assume you'll be taking all the testing of it as well ? The
patch as it stands is still not properly formatted, but that's a
minor 'nit.

We should have cc'd the poky list on this as well, since it actually
isn't any changes to linux-yocto itself to support the type.

Bruce

>


