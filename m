Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7641F4C80F9A
	for <poky@yoctoproject.org>; Wed, 11 May 2011 13:39:51 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 06B5B166038A; Wed, 11 May 2011 12:39:51 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4230416601B1;
	Wed, 11 May 2011 12:39:11 -0600 (MDT)
Message-ID: <4DCAD7CF.6000807@mlbassoc.com>
Date: Wed, 11 May 2011 12:39:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <4DCAD58D.3040501@mlbassoc.com>
	<BANLkTimxcWskB6AQZZ-cN3kTpegt4vK2jg@mail.gmail.com>
In-Reply-To: <BANLkTimxcWskB6AQZZ-cN3kTpegt4vK2jg@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: qemuarm hangs
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
X-List-Received-Date: Wed, 11 May 2011 18:39:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/11/2011 12:34 PM, Bruce Ashfield wrote:
> On Wed, May 11, 2011 at 2:29 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> Building from master, updated earlier today.
>>
>> OE Build Configuration:
>> BB_VERSION        = "1.11.0"
>> METADATA_BRANCH   = "my_master"
>> METADATA_REVISION = "2e4518bf18d977e1249ef7e7cd384df66e7b4801"
>> TARGET_ARCH       = "arm"
>> TARGET_OS         = "linux-gnueabi"
>> MACHINE           = "qemuarm"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.0+snapshot-20110511"
>> TARGET_FPU        = "soft"
>>
>> When I runqemu on core-image-sato, it brings up the simulated
>> video screen and the Yocto splash shows.  The progress bar goes
>> to about 60% and then it just hangs there forever.
>>
>> core-image-minimal boots to a login prompt
>>
>> Ideas?  How can I figure out where it's bombing out?
>
> When I saw this go by:
>
> commit a2e232e2313ee267076bb8de32a1a604dbebc33b
> Author: Zhai Edwin<edwin.zhai@intel.com>
> Date:   Tue May 10 14:02:35 2011 +0800
>
>      qemu: Upgrade qemu git to the latest 0.14 branch
>
>      Also add missing patch to build qemu-git
>
>      [YOCTO #1013] got fixed
>
>      (From OE-Core rev: 9b80846152931bed018f33baaaf1ba253e756867)
>
>      Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
>      Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>
> I wondered about compatibility. Have you tried with the older qemu ?

I believe so.  I ran the same test a few days ago and it worked fine.
I'm trying qemux86 now with this latest tree.  After that, I could
try reverting the change you mention.

Any clues how to get "under the covers" when booting a qemu image?
Once it brings up the video/splash screen, I'm in the dark as to
what's going on.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

