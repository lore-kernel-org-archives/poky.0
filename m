Return-Path: <Yi.Zhao@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 38A584C811D2
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 02:47:33 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0H8lULr008922;
	Mon, 17 Jan 2011 00:47:30 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 00:47:30 -0800
Received: from [128.224.163.188] ([128.224.163.188]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 00:47:30 -0800
Message-ID: <4D3401CA.3060600@windriver.com>
Date: Mon, 17 Jan 2011 16:46:02 +0800
From: Zhao Yi <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <4D33F57D.2030009@intel.com>
In-Reply-To: <4D33F57D.2030009@intel.com>
X-OriginalArrivalTime: 17 Jan 2011 08:47:30.0324 (UTC)
	FILETIME=[2CE0ED40:01CBB623]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: QemuARM Boot Failure
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
X-List-Received-Date: Mon, 17 Jan 2011 08:47:33 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Saul,

I tested the recent build images from the autobuilder.
The build images from both 2011011-1 and 20110112-1 can not boot. With 
the build image from 20110110-1, it can boot.

于 2011年01月17日 15:53, Saul Wold 写道:
>
> Bruce,
>
> Did you test the latest systemtap update on ARM? I am just curious 
> based on the current failure that we are having with qemuarm. If so, 
> against what revision of master? This might help us narrow down the 
> issue.
>
>
> I tried both the systemtap version and the older version and both 
> failed. The last known good qemuarm was 2 weeks ago, there have been a 
> number of kernel updates in that time along with a loads of userspace 
> changes, but no qemu updates since the first of the year. I am not 
> sure about the userspace changes yet, need to review them more deeply.
>
> I will be tied up tomorrow, but will try bisecting tomorrow evening if 
> there is no update before then.
>
> Thanks
> Sau!
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


