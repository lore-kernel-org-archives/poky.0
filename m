Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 72D074C800A7
	for <poky@lists.pokylinux.org>; Wed,  2 Feb 2011 12:00:08 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1C07316603B0; Wed,  2 Feb 2011 11:00:08 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7087A1660388;
	Wed,  2 Feb 2011 11:00:07 -0700 (MST)
Message-ID: <4D499BA7.8060604@mlbassoc.com>
Date: Wed, 02 Feb 2011 11:00:07 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D499346.4050800@mlbassoc.com> <4D49976E.5030800@linux.intel.com>
In-Reply-To: <4D49976E.5030800@linux.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky & armv5te
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
X-List-Received-Date: Wed, 02 Feb 2011 18:00:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2011 10:42 AM, Darren Hart wrote:
> On 02/02/2011 09:24 AM, Gary Thomas wrote:
>> I'd like to use Poky with my OMAP-L138 which is armv5te
>> Sadly today, this just isn't a go because of GCC issues.
>> I've tried all the combinations which are in the trees
>> (main & contrib) with no luck:
>> * 4.3.3 - fails to build GCC
>> * 4.5.1 - everything builds but kernel crashes
>> * 4.5.2 - fails to build GCC
>>
>> Am I totally out of luck?
>
> What are you running into? I've recently backported some changes in support of the Beagleboard (armv7-a) which were necessary to build with 4.5.1 and our 2.21 binutils.

As far as 4.5.1 goes, the kernel crashes immediately on bootup.
I didn't diagnose this much as it seemed to be similar to the
problem reported 2011-01-31 18:52GMT
   'Kernel Panics on armv4t with gcc.4.5.1'
To that end, I tried to use the 4.5.2 patches from Nitin
which failed to build at all (reported this morning)

Do you have a tree with your changes?  I could try my armv5te
overlay to see what happens.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

