Received: from smtp-auth.mailprotect.be (smtp-auth.mailprotect.be [178.208.39.153])
 by mx.groups.io with SMTP id smtpd.web11.75.1636043610825595748
 for <poky@lists.yoctoproject.org>;
 Thu, 04 Nov 2021 09:33:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: arvicom.eu, ip: 178.208.39.153, mailfrom: w.delacadena@arvicom.eu)
Received: from localhost (localhost [127.0.0.1])
	by smtp-auth.mailprotect.be (Postfix) with ESMTP id 380D7C00F7
	for <poky@lists.yoctoproject.org>; Thu,  4 Nov 2021 17:33:28 +0100 (CET)
X-Virus-Scanned: Combell AS/AV service at smtp-auth.mailprotect.be
Received: from smtp-auth.mailprotect.be ([178.208.39.153])
	by localhost (com-basicem-sasl01.mailprotect.be [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ObbCYchqeOrI for <poky@lists.yoctoproject.org>;
	Thu,  4 Nov 2021 17:33:28 +0100 (CET)
Received: from [192.168.0.102] (unknown [185.213.187.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp-auth.mailprotect.be (Postfix) with ESMTPSA id 09E70C00DC
	for <poky@lists.yoctoproject.org>; Thu,  4 Nov 2021 17:33:28 +0100 (CET)
Message-ID: <4eb84ffb-f274-fc40-7c7b-a2d88b5acaf0@arvicom.eu>
Date: Thu, 4 Nov 2021 17:33:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: poky@lists.yoctoproject.org
From: "Wladimir De la Cadena" <w.delacadena@arvicom.eu>
Subject: dependency error
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


Hello,

I am getting this dependency error in some of my recipes. Could you 
please advice what is the error?

ERROR: perl-5.24.4-r0 do_package_qa: QA Issue: 
/usr/lib/libperl.so.5.24.4 contained in package perl-lib requires 
libm.so.6(GLIBC_2.29)(64bit), but no providers found in 
RDEPENDS_perl-lib? [file-rdeps]

Wladimir

