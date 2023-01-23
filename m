Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web11.38547.1674464151675685464
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 00:55:52 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: ito@lineo.co.jp)
Received: from [10.2.0.7] (y254190.ppp.asahi-net.or.jp [118.243.254.190])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id A11D780312C4E;
	Mon, 23 Jan 2023 17:55:49 +0900 (JST)
Message-ID: <8ada8dc6-fb4b-5042-9fce-d0926d422226@lineo.co.jp>
Date: Mon, 23 Jan 2023 17:55:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: poky@lists.yoctoproject.org
From: "Takayasu Ito" <ito@lineo.co.jp>
Subject: yocto-3.1.22/RELEASENOTES
Cc: docs@lists.yoctoproject.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I was checking the following RELEASENOTE contents, and the CVE for
cairo vulnerability has already been fixed in 2019 and the change in the 
PATCH file is that the status of the upstream PATCH has been changed 
from pending to backported.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.22/RELEASENOTES


-- 
Takayasu Ito
Yocto Project Ambassador
Solution Department Lineo Solutions, Inc.
https://www.lineo.co.jp/english/
Email: ito@lineo.co.jp

