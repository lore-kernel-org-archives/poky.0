Return-Path: <wayne.tams@simpleaudio.com>
Received: from grape.ukhost4u.com (grape.ukhost4u.com [188.64.188.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2A19E00724
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 03:48:14 -0800 (PST)
Received: from [217.43.209.136] (port=39901 helo=[192.168.1.64])
	by grape.ukhost4u.com with esmtpsa (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
	(Exim 4.80) (envelope-from <wayne.tams@simpleaudio.com>)
	id 1Tvnx5-0006it-0s; Thu, 17 Jan 2013 11:48:11 +0000
Message-ID: <50F7E4FA.705@simpleaudio.com>
Date: Thu, 17 Jan 2013 11:48:10 +0000
From: Wayne Tams <wayne.tams@simpleaudio.com>
Organization: Simple Audio
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <50F7CFDA.6090505@simpleaudio.com>
	<CAJTo0Lay83xOxnhUAUmb8bS+igk=woeMCboXR+S+VeTHYY61Fg@mail.gmail.com>
In-Reply-To: <CAJTo0Lay83xOxnhUAUmb8bS+igk=woeMCboXR+S+VeTHYY61Fg@mail.gmail.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - grape.ukhost4u.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - simpleaudio.com
X-Get-Message-Sender-Via: grape.ukhost4u.com: authenticated_id:
	wayne.tams+simpleaudio.com/only user confirmed/virtual account
	not confirmed
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: poky@yoctoproject.org
Subject: Re: gst-rtsp not building
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
X-List-Received-Date: Thu, 17 Jan 2013 11:48:14 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/01/13 11:15, Burton, Ross wrote:
> On 17 January 2013 10:18, Wayne Tams <wayne.tams@simpleaudio.com> wrote:
>> DESTDIR=/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/image
>> install
>> | make: *** No rule to make target `install'.  Stop.
>>
>> Could anyone suggest what could be causing this error and what I could do to
>> fix it.
> To be honest that's probably why that recipe is in a branch (my
> branch) and not in meta-oe...
>
> Do the do_configure and do_build logs actually look like they worked?
> Sometimes "install" will fail because configure failed without an
> error, so build does nothing, and then install actually errors out.
>
> Ross
I did have a recipe but it just wasn't quite right, your branch helped 
me there.

You know what the configure was failing, fixed that. Which leads me on to,

ERROR: This autoconf log indicates errors, it looked at host include 
and/or library paths while determining system capabilities.
Rerun configure task after fixing this. The path was 
'/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/gst-rtsp'
ERROR: Function failed: do_qa_configure

perhaps linked to gst-common.inc no longer being available?

Wayne


