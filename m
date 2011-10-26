Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C82EFE006B4
	for <poky@yoctoproject.org>; Wed, 26 Oct 2011 10:26:07 -0700 (PDT)
Received: from mail-ww0-f44.google.com ([74.125.82.44])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 26 Oct 2011 10:26:07 -0700
Received: by wwe6 with SMTP id 6so1998174wwe.13
	for <poky@yoctoproject.org>; Wed, 26 Oct 2011 10:26:05 -0700 (PDT)
Received: by 10.227.198.141 with SMTP id eo13mr353199wbb.19.1319649965648;
	Wed, 26 Oct 2011 10:26:05 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id 11sm4360652wby.15.2011.10.26.10.26.03
	(version=SSLv3 cipher=OTHER); Wed, 26 Oct 2011 10:26:04 -0700 (PDT)
Message-ID: <4EA8428F.9070205@intel.com>
Date: Wed, 26 Oct 2011 10:25:35 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4EA8186C.9060906@mlbassoc.com>
	<CAEsOVNejiifxREadD5-Lh6_MazhH1Qh1dgWg-nAw_e1yA8kTXA@mail.gmail.com>
	<4EA83C08.5010002@mlbassoc.com>
In-Reply-To: <4EA83C08.5010002@mlbassoc.com>
Subject: Re: Strange ext filesystem error
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
X-List-Received-Date: Wed, 26 Oct 2011 17:26:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/26/2011 09:57 AM, Gary Thomas wrote:
> On 2011-10-26 10:44, McClintock Matthew-B29882 wrote:
>> On Wed, Oct 26, 2011 at 9:25 AM, Gary Thomas<gary@mlbassoc.com> wrote:
>>> I've noticed this behaviour on my Poky/Yocto based systems.
>>> First, I format some device, in this case an MMC card, as ext3
>>> (yes, my kernel supports ext3)
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
>>> # mkfs.ext3 /dev/mmcblk0p1
>>> Then, when I go to mount it, I get this error:
>>> # mount /dev/mmcblk0p1 /tmp/disk
>>> EXT2-fs (mmcblk0p1): warning: mounting ext3 filesystem as ext2
>>>
>>> Any ideas why? How can I get ext3 file system working?
>>
>> Does your kernel support ext3? Otherwise you can try:
>
> See above :-)
>
>>
>> $ mount -t ext3 /dev/mmcblk0p1 /tmp/disk
>
> This does work although forcing the file system type should not
> be necessary, but I'll live with it. This warning/error must have
> something to do with the mount program (part of busybox).

Does dmesg complain about the filesystem at all?

FWIW if the datestamps on the filesystem are unusual (e.g, in the 
future), this would likely cause problems when mouting them. But 
generally I would think that might raise a warning to run fsck, and not 
cause an ext3 fs to be degraded to ext2.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

