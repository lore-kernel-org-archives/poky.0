Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews05.kpnxchange.com (cpsmtpb-ews05.kpnxchange.com
	[213.75.39.8])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85A154C80A73
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 01:19:25 -0500 (CDT)
Received: from cpbrm-ews08.kpnxchange.com ([10.94.84.139]) by
	cpsmtpb-ews05.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 22 Apr 2011 08:19:24 +0200
Received: from CPSMTPM-CMT108.kpnxchange.com ([195.121.3.24]) by
	cpbrm-ews08.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 22 Apr 2011 08:19:24 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT108.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Fri, 22 Apr 2011 08:19:24 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Fri, 22 Apr 2011 08:19:21 +0200
Message-ID: <4DB11DE8.7060101@de-haardt.com>
Date: Fri, 22 Apr 2011 08:19:20 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4DA2CC29.7040301@de-haardt.com> <4DAEFAF2.3020507@linux.intel.com>
	<20110420153153.GK5675@jama.jama.net>
	<4DAF008F.70706@linux.intel.com>
	<20110421062719.GA6678@jama.jama.net>
	<4DAFF7A5.7060309@de-haardt.com> <4DB0A981.3020302@linux.intel.com>
In-Reply-To: <4DB0A981.3020302@linux.intel.com>
X-OriginalArrivalTime: 22 Apr 2011 06:19:24.0512 (UTC)
	FILETIME=[39C3DE00:01CC00B5]
X-RcptDomain: yoctoproject.org
Cc: poky <poky@yoctoproject.org>
Subject: Re: load kernel module at startup
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
X-List-Received-Date: Fri, 22 Apr 2011 06:19:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/22/2011 12:02 AM, Darren Hart wrote:
>
> On 04/21/2011 02:23 AM, Gerard van den Bosch wrote:
>> On 04/21/2011 08:27 AM, Martin Jansa wrote:
>>> On Wed, Apr 20, 2011 at 08:49:35AM -0700, Darren Hart wrote:
>>>> On 04/20/2011 08:31 AM, Martin Jansa wrote:
>>>>> On Wed, Apr 20, 2011 at 08:25:38AM -0700, Darren Hart wrote:
>>>>>> On 04/11/2011 02:38 AM, Gerard van den Bosch wrote:
>>>>>>> Hello,
>>>>>>>
>>>>>>> I would like to modprobe my wireless driver kernel module
>>>>>>> at startup automatically.
>>>>>>>
>>>>>>> This works when I generate a rootfs and then boot up the
>>>>>>> first time so the modules file gets generated and then I
>>>>>>> can manually add the kernel module in that file and then
>>>>>>> reboot.
>>>>>>>
>>>>>>> When I look in the manpage of update-modules it states that
>>>>>>> a config file should be added in /etc/modutils but that
>>>>>>> directory is not in my rootfs.
>>>>>>>
>>>>>>> So I was wondering what I have to do to get /etc/modutils
>>>>>>> directory or an other way to get the kernel module loaded
>>>>>>> at startup.
>>>>>>>
>>>>>>> I am using the Poky 4.0 Laverne release.
>>>>>> I believe you can just add the name of the module to:
>>>>>>
>>>>>> /etc/modules
>>>>>>
>>>>>> Can you try that?
>>>>> module_autoload_module_name to do that, is not supported in
>>>>> Poky?
>>>> I am not familiar with this technique.
>>> I've checked Poky 5.0 and according to git log it was there from
>>> the beginning, so also in Poky 4.0. And also it's inherited by
>>> linux-yocto(-stable).
>>>
>>> if you read classes/kernel.bbclass you'll notice ie:
>>> module_autoload_ipv6 = "ipv6"
>>>
>>> which adds postinst to kernel-module-ipv6 package to "modprobe
>>> ipv6" and also creates /etc/modutils/ipv6 file with "ipv6" in it to
>>> autoload ipv6 module after reboot.
>>>
>> Added the following line to class/kernel.bbclass:
>> module_autoload_libertas-sdio = "libertas-sdio" After that I
>> rebuilded the kernel and generated the image but didn't get the
>> modutils file and it didn't autoload either.
> I was hoping to get to this today and got derailed on something else.
> Would you please open a bug that we can use to track this. I'll get to
> it as soon as I can.
>
> http://bugzilla.yoctoproject.org/
>
> Thanks,
>
> Darren
>
Ok, I have opened the bug, it can be found here: http://bugzilla.pokylinux.org/show_bug.cgi?id=1002

Regards,
Gerard

>> Also tried adding the line inside my kernel recipe after "inherit
>> kernel" but that also didn't work.
>>
>>> similar module_conf_bluez = "alias net-pf-31 bluez" creates
>>> /etc/modprobe.d/bluez.conf (or /etc/modutils/bluez.conf for 2.4
>>> kernel) with "alias net-pf-31 bluez"
>>>
>>> and those files are added to kernel-module-something FILES, so
>>> removing module removes autoload and config with it properly.
>>>
>>> Regards,
>> This part I don't understand, how can I figure out what to alias?
>> With some googling I came across some list where it's major number
>> related, but there is no difference between /proc/devices when I have
>> the module loaded or not.
>>
>> Regards, Gerard
>>
>>



