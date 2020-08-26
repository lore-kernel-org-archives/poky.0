Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web10.7702.1598427896421632047
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 00:44:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=klFE0Dw5;
 spf=pass (domain: gmx.de, ip: 212.227.15.19, mailfrom: rtie@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1598427894;
	bh=4tbhpaVQ9b65zHZ+mB/6AQ0d8vP7DAYAGzgMeSmh7V4=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=klFE0Dw5/RnxHSNqHdF96/zfzoluICxvCKLxSIiWSXBepvBIKSiiLefI/B6MH5sA6
	 /Norrc5JcejfMbtfp491mK9+unwnPl+mvBe6fIZMHphQQprL8XeylW92yD7v0mzCso
	 Z82m8JMmdeFIFOTGlYJPSIMFtihH4PFllSgB+3CQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.15.101] ([87.245.7.122]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mkpav-1ktqQr1qvP-00mKop for
 <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 09:44:54 +0200
Subject: Re: [poky] Macros from autoconf-archive are missing in SDK
To: poky@lists.yoctoproject.org
References: <9200244e-9b0b-078a-c092-4e615960fba8@gmx.de>
 <a778233f-cf7e-9e64-64f5-16e2c32cafdd@gmail.com>
From: "Robert Tiemann" <rtie@gmx.de>
Message-ID: <65aad705-8b17-b9f9-d6b1-9b95b79891d2@gmx.de>
Date: Wed, 26 Aug 2020 09:44:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a778233f-cf7e-9e64-64f5-16e2c32cafdd@gmail.com>
X-Provags-ID: V03:K1:HPhjnGA6t5Wv/AZ3D7nOL02J1gkBn1vsztzntOUJqlb0O6xPZ28
 iilIM/CjpeSf/DC5bBc2wdMA0dOS9fzg/QbdrRqZvFLX98Vqz1pj/kZh2Jac5hSjGgptGlp
 NufSsdb1+pHPbDu483/Ecq5Cww/jZUM+XXpXQ6LKjcW5QdHbF1msnc0xNfebqNDp9sxBNT7
 sLkYuO16uREs2R7sQ6Gaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Tz6oAyBrWAA=:d+EJERf/U/G1Wi7iFmYZZZ
 gwxSZol+x53Cub9fxDJHCed1A++lcYJoK3Q+YIwR37wfnZYxcOTEiZ7iJa1OOyX07jXb+TSm+
 prOcyEIzKYrRKitTXjRSnl2uOeSsTaMa+YtB5U2GF3ngnDV3TLIJKzYkZKbhaMvJXByEymZ8S
 /QkBLjl/bkZ7C3RSi+ckHWNgHFzVv6g3NN4QOej8M8bWV0v+Kxlau1WNc0u+YPm6C+h28Fhif
 D6UloyL7rh6sBRIyF2T0KQEmtyXts2kxQlh3N5pstSF6tpUwStIU8wmO73sS8SljjUDyH6wHh
 DAgPXP/6pwvg6Pvo/tLtzLvagHDhGP2Hl7CkmbSD/OK4bbEXl6qCoHn1wiTb9jt0lRb6Ko4G2
 tGmDHJTWDdkX5eCbzZ83uY8AgTivlUD1XMdwCvBTo/eKuom8PNfrlv0mFcI7V8NIliM0CcHKt
 keWxjquUBlrQ14Mned/CJjhIN8qx6T8/YZPwUVKYP9OWfGGR1l5ftB+jHyNDWd8nS9VwKsNhA
 LVKkHAz7ozdO8/0O1pmljCuY9vcUFwpl7iHUcFR1gCi6lJYPYWE8neLCKWSvoHssAlyFS5+oJ
 GX9cc0fKm4enLwpn+S/isrKzBmWxwZI1TL0AAopYdmnP7On+aFN98gY3OtfEY5YXZyqkeGi+f
 zpCv2HIdbVnqT23pzVNayhyFnL15xwDO5Ey7frEZnWooKme7BjpgBJ3ChePfutTOuP1E3Ff0D
 VU0H0r+fFE+JE2cC5BZfzq8Z8UD1vVQlMcIqkwVkzCU8K/ZprYe3LLR7FBH34jn8jxPW441aR
 twW4raysgEmhCaDcpETYgoxvzSVz+1rzddFIsQmgs8GPoK0cErhIBHi4CsuUzu2PB8K1IaVLo
 pbcFYfRePLOO7iqMuRacdVkwyRVWr47vH4EwmzRiHJ8gZCfbd+eUL4WXtBT1XOEhgBJG8ib/j
 ghojJ8nkOiIa4mIT6ZGc4rVJ2HUM/VeobywV5JdGI5ZxqXxR/YyNPaJcJGSoGCjcOOIMnvsfC
 wpdsfmZT2O1aZtPbR9Mbdh+rAXNN2fZ6BtkOLc5Ik5BI5EOzr2SOahQToa+iUQSKknIAD9qg7
 eQkj8/MQCKP+9FofedjsX57R/oBUDHXt5OqffnQ5Vd2xWNEnbsWFmt7YryZu98p8Ovs8xaH+F
 XZJYUC8ILsE1vrQgJ/ZAeYQVzteR7ejgDYSWC5maEHymjfvd5alVx81PxH1mTxBkZyFUKXCYb
 OtTbZ5tel+A8Tn8NT
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 8/26/20 8:33 AM, Khem Raj wrote:

> perhaps you need TOOLCHAIN_HOST_TASK_append = " nativesdk-autoconf-archive" in config metadata somewhere like local.conf or site.conf

Yes, this works (I have added this to local.conf).
Thank you very much!

Cheers,
Robert
