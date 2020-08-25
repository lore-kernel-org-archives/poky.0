Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web10.9475.1598343331642503176
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 01:15:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=KLiiKdgh;
 spf=pass (domain: gmx.de, ip: 212.227.15.19, mailfrom: rtie@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1598343329;
	bh=xRjYee3vKAnVmW47c7ghgXIXeKIo3FQ20KpcVCEgnsM=;
	h=X-UI-Sender-Class:To:From:Subject:Date;
	b=KLiiKdghsp0juu2pf60w2lMhO1lqlORVrZgXdGtZ81EyBv8p/jFkZEO0/gAaGoTa0
	 BDI4hQUxLFZK5woyhSxE2dSyNlSRsdi9yXCqyGoN1kaYPjRD1pN5BD1iPytH1o1yes
	 F6rbbUbK9qTe9TYO1B0lOu1I5coU1tLO2pkUUjno=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.15.101] ([87.245.7.122]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MQvCv-1jwy0c2uQx-00O2Nq for
 <poky@lists.yoctoproject.org>; Tue, 25 Aug 2020 10:15:29 +0200
To: poky@lists.yoctoproject.org
From: "Robert Tiemann" <rtie@gmx.de>
Subject: Macros from autoconf-archive are missing in SDK
Message-ID: <9200244e-9b0b-078a-c092-4e615960fba8@gmx.de>
Date: Tue, 25 Aug 2020 10:15:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:phqWeOTxEYaSYNfShrTjydHUdapSVq4i5gPn8tl68crEIoQl4xS
 du1XUZOzKR7cBgh7GdqPKkzcvohvZElwP+QrZg9g2qSmKwOLc4vOt24HOJcl986JuisBowb
 LLdr3oyDcGxkBVNTpnbmO1CN/yiq2a4VyR8P42uWRfOkMLod1tUNc8+WWZGvq9ZuserUYMZ
 qVWcXrONWC1mkGADfmlbg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5vvBzhKXs1s=:ATE5edHQDEGhNeMzU1mPZT
 Gt96gYO6o6x6zT4uJ/yML8oIWPDixGTXYrhsNLT0TBg75E3fXLB+GnYjDj6XPd+P+ccnxZTwx
 +DxihXq5+DtlgQpwwjhYWvhwpbR8t+upofmAx3nrdGnXcqNMhAHoR0VDn/7cP+JedT3jAB/eD
 +8L+Im0yJXOdJmkxgoAH4+RZxNvOgdjinPMG3WVY6XGVmDa+ONnItLM5baU9lA4sEZpUTUGMv
 2QLK1W8beVNc3yLLsWjigqc9dYaOb9j5/+eGjT/h4rPUhwVb1CnKINvFziOvEgqxKgGq/d3xg
 E/RBMkoZaPD9sI0aMfb05QKQLX3I61hr8JlIYuSAKYWilBWvGx9PaPJHK1MAR0jx07wiw2Zuy
 pk7VrzYCYpOlL88alm4/0num/u10F/Dh7hT/0WB6vmr7W/cyPnANFZ8xtL4u1vhk0hmztSTYU
 uZpleetR8iXgEnF1aw8P7L25pSXhSvjHdVuvegqGdzekppc9wXThTWvLbnixDgZJxReROFcQP
 6JJu0tAZ1r+nBn1grV2JMcYX4NX8aRW1+zyLsVII4HXlH5obEYTFlJgQm1kV7TG6u6poWgVqO
 KPqsTPrZRc6kQlooTAB6NNjZ+qhyE5VA4sunQLR9ZWJMJqTeOt5+n+lXxE1aZW9wWnBmO4F5F
 k1c6iFi9xOOxpsartAn/0Ck5gs1A/fwDCkglCvpOXBy9onfT1VrMlmZ/FgVArXxYYE4mjZWK6
 Zu2IbjEuzWMh8TkvXc0r8W+c1SW0KYFkDbYHpJyFYU/tNZOxmtGEzT64gVIfpRPIknASlhq1f
 Lf+ADnpfU0SijkoROmtAco3tNPkqTHznd8dYVuvulZbJh1QdVe7PxLoLYfelmGsCZoxtUBcCi
 knSJp/sR0Jza8t70lLERUoxEJk5jXoOTwWR38R9gtY8koN+x2TyxolcI/4pN7fKuVL/ObnZIg
 khLwCtbu5AlzuZ9BZaU1cj9DWuar+SYnTtnSjix//+CF+ZiqMJkGKwebNO7vUw5HGemAwodJm
 o1diBVFnyQWN9sWXW0MVDr5CS21TFFf9gHWgompWtY4XVLY3kt/D+YkFT4FCc/K9KSVlFLHYB
 /rX9f1jFiRryr1h4MP176yj7mMvsxHyCXP3L3lByqgCsv7wBo7llLfW6LYAPEsuBfEkSfE5eH
 5Ze9lWefGRTHm5UgFaWuCfLQzheQsR7662tanAIj+msRs3+w608tgiejiIS3+Aob23ZycgEoD
 IFRvIrwEoLKhVA7hM
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I have a few recipes depending on autoconf-archive (using
DEPENDS = "autoconf-archive"). The image is built correctly; the various m4
macros from autoconf-archive, however, do not end up in the SDK.

The SDK used to be complete in jethro, but now in dunfell these files are
missing. I *think* the line
SSTATE_EXCLUDEDEPS_SYSROOT += ".*->autoconf-archive-native"
in meta/conf/layer.conf is causing this, so I have tried adding
autoconf-archive-native to the DEPENDS variable of my recipes. This didn't
work, and now I don't know what else I could try.

What can I do to add the m4 files from autoconf-archive to the SDK?

Thank you,
Robert
