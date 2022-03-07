Received: from smtp-auth.mailprotect.be (smtp-auth.mailprotect.be [178.208.39.153])
 by mx.groups.io with SMTP id smtpd.web12.24869.1646649517810368254
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 02:38:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: arvicom.eu, ip: 178.208.39.153, mailfrom: w.delacadena@arvicom.eu)
Received: from localhost (localhost [127.0.0.1])
	by smtp-auth.mailprotect.be (Postfix) with ESMTP id C782CC009F
	for <poky@lists.yoctoproject.org>; Mon,  7 Mar 2022 11:38:34 +0100 (CET)
X-Virus-Scanned: Combell AS/AV service at smtp-auth.mailprotect.be
Received: from smtp-auth.mailprotect.be ([178.208.39.153])
	by localhost (com-basicem-sasl01.mailprotect.be [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BIBZs1Ixa1Ky for <poky@lists.yoctoproject.org>;
	Mon,  7 Mar 2022 11:38:34 +0100 (CET)
Received: from [192.168.0.54] (ip-195-46-227-98.atm.pt.lu [195.46.227.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp-auth.mailprotect.be (Postfix) with ESMTPSA id 71207C009D
	for <poky@lists.yoctoproject.org>; Mon,  7 Mar 2022 11:38:34 +0100 (CET)
Message-ID: <2590960b-9ecb-19c0-8ac2-932f05688486@arvicom.eu>
Date: Mon, 7 Mar 2022 11:38:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
To: poky@lists.yoctoproject.org
From: "Wladimir De la Cadena" <w.delacadena@arvicom.eu>
Subject: Compiling additional sources as recipe
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to include external source code inside the vendor/xxx/xxx=20
directory, and I dont know how can I use bitbake to compile it.=C2=A0 Bit=
bake=20
receipe fetches only the prebuilts even after we changed the source=20
directory which points to the correct directory, how to remove=20
prebuilts? I tried to check if the particular task from particular=20
receipe is called or not with bb.info logs but those are failing with=20
another error how to add logs in bb receipe?

Thanks for your help.

Wladimir

