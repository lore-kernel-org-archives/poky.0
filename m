Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE16C4C80FBB
	for <poky@yoctoproject.org>; Wed, 11 May 2011 13:57:05 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4BIv3D5022273
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 May 2011 11:57:03 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 May 2011 11:57:03 -0700
Message-ID: <4DCADBFC.5020409@windriver.com>
Date: Wed, 11 May 2011 14:57:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110419 Thunderbird/3.1.9 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4DCAD58D.3040501@mlbassoc.com>	<BANLkTimxcWskB6AQZZ-cN3kTpegt4vK2jg@mail.gmail.com>
	<4DCAD7CF.6000807@mlbassoc.com>
In-Reply-To: <4DCAD7CF.6000807@mlbassoc.com>
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
X-List-Received-Date: Wed, 11 May 2011 18:57:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-05-11 02:39 PM, Gary Thomas wrote:
> On 05/11/2011 12:34 PM, Bruce Ashfield wrote:
>> On Wed, May 11, 2011 at 2:29 PM, Gary Thomas<gary@mlbassoc.com> wrote:
>>> Building from master, updated earlier today.
>>>
>>> OE Build Configuration:
>>> BB_VERSION = "1.11.0"
>>> METADATA_BRANCH = "my_master"
>>> METADATA_REVISION = "2e4518bf18d977e1249ef7e7cd384df66e7b4801"
>>> TARGET_ARCH = "arm"
>>> TARGET_OS = "linux-gnueabi"
>>> MACHINE = "qemuarm"
>>> DISTRO = "poky"
>>> DISTRO_VERSION = "1.0+snapshot-20110511"
>>> TARGET_FPU = "soft"
>>>
>>> When I runqemu on core-image-sato, it brings up the simulated
>>> video screen and the Yocto splash shows. The progress bar goes
>>> to about 60% and then it just hangs there forever.
>>>
>>> core-image-minimal boots to a login prompt
>>>
>>> Ideas? How can I figure out where it's bombing out?
>>
>> When I saw this go by:
>>
>> commit a2e232e2313ee267076bb8de32a1a604dbebc33b
>> Author: Zhai Edwin<edwin.zhai@intel.com>
>> Date: Tue May 10 14:02:35 2011 +0800
>>
>> qemu: Upgrade qemu git to the latest 0.14 branch
>>
>> Also add missing patch to build qemu-git
>>
>> [YOCTO #1013] got fixed
>>
>> (From OE-Core rev: 9b80846152931bed018f33baaaf1ba253e756867)
>>
>> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
>> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>
>> I wondered about compatibility. Have you tried with the older qemu ?
>
> I believe so. I ran the same test a few days ago and it worked fine.
> I'm trying qemux86 now with this latest tree. After that, I could
> try reverting the change you mention.
>
> Any clues how to get "under the covers" when booting a qemu image?
> Once it brings up the video/splash screen, I'm in the dark as to
> what's going on.

Typically I'd redirect the console to another tty, but you
could use SERIAL_LOGFILE as an option to your qemu launch
to log the tty output to something you can watch while the
splash screen takes over. But I must warn, that I've never
actually used that option with poky :)

Alternately, removing psplash (or disabling it) in your
sato rootfs would get you more information, and let you
know if it is just the graphics causing a problem.

Bruce

>


