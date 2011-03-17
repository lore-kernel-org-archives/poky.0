Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews01.kpnxchange.com (cpsmtpb-ews01.kpnxchange.com
	[213.75.39.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A5684C800A4
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 08:54:03 -0500 (CDT)
Received: from cpbrm-ews12.kpnxchange.com ([10.94.84.143]) by
	cpsmtpb-ews01.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 17 Mar 2011 14:53:57 +0100
Received: from CPSMTPM-CMT105.kpnxchange.com ([195.121.3.21]) by
	cpbrm-ews12.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 17 Mar 2011 14:53:57 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT105.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Thu, 17 Mar 2011 14:53:57 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Thu, 17 Mar 2011 14:53:52 +0100
Message-ID: <4D82128E.3030107@de-haardt.com>
Date: Thu, 17 Mar 2011 14:54:22 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D7F4630.3030705@de-haardt.com>	<1300196286.30423.1726.camel@rex>	<4D7F7FB4.30007@de-haardt.com>	<1300291688.30423.1890.camel@rex>	<4D81BBAC.9000402@de-haardt.com>	<20110317075236.GB27644@sakrah.homelinux.org>	<4D81BFA8.8080504@de-haardt.com>
	<4D81C4B6.30700@de-haardt.com>
In-Reply-To: <4D81C4B6.30700@de-haardt.com>
X-OriginalArrivalTime: 17 Mar 2011 13:53:57.0334 (UTC)
	FILETIME=[C2C33F60:01CBE4AA]
X-RcptDomain: yoctoproject.org
Subject: Re: compile application header file missing
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
X-List-Received-Date: Thu, 17 Mar 2011 13:54:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Finally got it solved by adding FILES_${PN} += "${libdir}/libxmlpcp.so" 
to the end of my recipe, thanks for the help :)



