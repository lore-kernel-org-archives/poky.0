Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews06.kpnxchange.com (cpsmtpb-ews06.kpnxchange.com
	[213.75.39.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C8014C800A4
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 09:45:34 -0500 (CDT)
Received: from cpbrm-ews09.kpnxchange.com ([10.94.84.140]) by
	cpsmtpb-ews06.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 18 Mar 2011 15:45:33 +0100
Received: from CPSMTPM-CMT102.kpnxchange.com ([195.121.3.18]) by
	cpbrm-ews09.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 18 Mar 2011 15:45:32 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT102.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Fri, 18 Mar 2011 15:45:32 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Fri, 18 Mar 2011 15:45:29 +0100
Message-ID: <4D83700C.1000402@de-haardt.com>
Date: Fri, 18 Mar 2011 15:45:32 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: poky@yoctoproject.org
X-OriginalArrivalTime: 18 Mar 2011 14:45:32.0951 (UTC)
	FILETIME=[224EAA70:01CBE57B]
X-RcptDomain: yoctoproject.org
Subject: problem with serial interface laverne
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
X-List-Received-Date: Fri, 18 Mar 2011 14:45:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have changed from green to laverne release.
But now I have a problem with the serial interface.
The booting process goes good but when asked for the login name I can 
enter root and press enter.
Then I am presented with the shell but can't type anything anymore, only 
some enters seem to get through.
Is there changed anything concerning the serial interface and or 
settings for this in the laverne release?

I have kept my machine settings and kernel the same.

Regards,
Gerard


