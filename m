Received: from shell1.rawbw.com (shell1.rawbw.com [198.144.192.42])
 by mx.groups.io with SMTP id smtpd.web09.6033.1579826313458719845
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 16:38:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: rawbw.com, ip: 198.144.192.42, mailfrom: yuri@rawbw.com)
Received: from yv.noip.me (c-73-189-35-76.hsd1.ca.comcast.net [73.189.35.76])
	(authenticated bits=0)
	by shell1.rawbw.com (8.15.1/8.15.1) with ESMTPSA id 00O0cW6l014678
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
	for <poky@lists.yoctoproject.org>; Thu, 23 Jan 2020 16:38:33 -0800 (PST)
	(envelope-from yuri@rawbw.com)
X-Authentication-Warning: shell1.rawbw.com: Host c-73-189-35-76.hsd1.ca.comcast.net [73.189.35.76] claimed to be yv.noip.me
To: poky@lists.yoctoproject.org
From: "Yuri" <yuri@rawbw.com>
Subject: How to build the kernel with a particular driver not included into the kernel, but built as a loadable module?
Message-ID: <64c8ab1e-3a75-9b42-1e31-ff6b412f10f8@rawbw.com>
Date: Thu, 23 Jan 2020 16:38:30 -0800
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

I need to debug a particular Ethernet adapter driver.

Is there a way to prevent its inclusion into the kernel, and instead to 
make it built as a loadable kernel module?


Thanks,

Yuri


