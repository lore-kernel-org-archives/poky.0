Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id D70714C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 11:41:52 -0600 (CST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Pnx0C-0002sI-7u from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Fri, 11 Feb 2011 09:41:52 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 11 Feb 2011 09:41:51 -0800
Received: from [172.30.80.144] ([172.30.80.144]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Fri, 11 Feb 2011 10:41:51 -0700
Message-ID: <4D5574D7.3010005@mentor.com>
Date: Fri, 11 Feb 2011 10:41:43 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D5569A0.7080308@mlbassoc.com>
In-Reply-To: <4D5569A0.7080308@mlbassoc.com>
X-OriginalArrivalTime: 11 Feb 2011 17:41:51.0233 (UTC)
	FILETIME=[F6FF2710:01CBCA12]
Subject: Re: busybox & update-alternatives
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
X-List-Received-Date: Fri, 11 Feb 2011 17:41:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2011 09:53 AM, Gary Thomas wrote:
> A build for my platform with today's master
> 49a18f1748d2417958b8e19cdd58c0c79f4fc728
> shows a new behaviour - many messages like this:
> update-alternatives: Linking //usr/bin/wc to ../../bin/busybox
>
> Questions:
> * Is this truly new or was it just quiet before?
> * Can't this be done at image build time? On my little
> embedded OMAP-L138, it takes nearly 2 minutes to run
> through this. My root is a ramdisk, so this is a cost
> I see on _every_ boot.
> * If it can't be done at build time, can I disable it?

It can be done at build time _except_ for when there's a conflict.  I 
suspect what's going on is that a recent change has introduced a 
conflict (which is to say, busybox provides foo as an alternative and 
something else also provides it, but isn't registering it as an 
alternative).  If you check the whole boot log (or log.do_rootfs) you 
can find where the conflict is and then do something like 
http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=902b98f32ffd35661e43382f47226f65528ff1b1 
(it's a little more complicated if the recipe also does BBCLASSEXTEND, 
since you don't want to do the move for virtclass-foo).

-- 
Tom Rini
Mentor Graphics Corporation

