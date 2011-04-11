Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews07.kpnxchange.com (cpsmtpb-ews07.kpnxchange.com
	[213.75.39.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FF8B4C80059
	for <poky@yoctoproject.org>; Mon, 11 Apr 2011 04:38:51 -0500 (CDT)
Received: from cpbrm-ews17.kpnxchange.com ([10.94.84.148]) by
	cpsmtpb-ews07.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 11 Apr 2011 11:38:50 +0200
Received: from CPSMTPM-CMT108.kpnxchange.com ([195.121.3.24]) by
	cpbrm-ews17.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 11 Apr 2011 11:38:50 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT108.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Mon, 11 Apr 2011 11:38:50 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Mon, 11 Apr 2011 11:38:49 +0200
Message-ID: <4DA2CC29.7040301@de-haardt.com>
Date: Mon, 11 Apr 2011 11:38:49 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
X-OriginalArrivalTime: 11 Apr 2011 09:38:50.0803 (UTC)
	FILETIME=[43AFB830:01CBF82C]
X-RcptDomain: yoctoproject.org
Subject: load kernel module at startup
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
X-List-Received-Date: Mon, 11 Apr 2011 09:38:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I would like to modprobe my wireless driver kernel module at startup 
automatically.

This works when I generate a rootfs and then boot up the first time so 
the modules file gets generated and then I can manually add the kernel 
module in that file and then reboot.

When I look in the manpage of update-modules it states that a config 
file should be added in /etc/modutils but that directory is not in my 
rootfs.

So I was wondering what I have to do to get /etc/modutils directory or 
an other way to get the kernel module loaded at startup.

I am using the Poky 4.0 Laverne release.

Regards,
Gerard van den Bosch


