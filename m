Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A36F4C80578
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 00:37:58 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3R5bvhA000148
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 22:37:57 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 26 Apr 2011 22:37:57 -0700
Message-ID: <4DB7ABD6.6060509@windriver.com>
Date: Wed, 27 Apr 2011 13:38:30 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4D5EB1FB.9030704@linux.intel.com> <4D5EC541.2050807@windriver.com>
In-Reply-To: <4D5EC541.2050807@windriver.com>
X-Originating-IP: [128.224.163.157]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Minimal images: kernel config
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
X-List-Received-Date: Wed, 27 Apr 2011 05:37:58 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年02月19日 03:15, Bruce Ashfield wrote:
> On 11-02-18 12:52 PM, Darren Hart wrote:
>> I've been getting more and more questions regarding flash footprint,
>> memory footprint, and boot time. All of these fall under the "minimal
>> image" heading in my head.
>>
>> Currently, poky-image-minimal is a simple subset of poky-image-sato. It
>> uses busybox, but is still dynamically linked and uses the same
>> somewhat-generic kernel build. By somewhat-generic I mean we have named
>> features that often cover more drivers than are stricly necessary for a
>> given board (usb-net comes to mind). I'd like to see minimal become a
>> truly minimal image from both the userspace and kernel side point of 
>> view.
>>
>> Here's my take on this. From userspace this means uclibc and a staticly
>> linked busybox. From the kernel this means a static build (no modules)
>> with nothing more than is required for the board's built-in peripherals
>> to function, with the possible exception of something like usb-storage.
>> I'd like to see a < 10M flash size and a <8M memory footprint.
>
> From the kernel angle, I have a profile/solution for this
> lurking in the 2.6.34 kernel, and one that we've been updating
> for the 2.6.37 kernel.
>
Hi Bruce,

> There's a kernel feature called "small", that when overlayed
> on top of any BSP, converts it to a tuned for small systems
> BSP. Other than that, we have to hold the line on BSP configurations.
> Keep them tuned and specific by default and add kernel configurations
> for optional features when request, not by default.
We are working on "minimal image". Right now we try to reduce rootfs 
size, but we think there are relationships between kernel configurations 
and rootfs, because rootfs also contains some kernel modules.
So would you send us a copy of kernel "small" configuration, more detail 
will be appreciated.

Thanks and Regards,
Kai
>
> That's the approach we've been taking without our 150 or so
> BSPs, and it has worked out really well for producing a
> general/debug BSP + something that is tuned for a truly
> embedded deployment.
>
> Bruce
>
>>
>> Thoughts on this direction?
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


