Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web09.10097.1644320205632140166
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 03:36:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=ZB/gRZn9;
 spf=pass (domain: gmx.de, ip: 212.227.15.19, mailfrom: rtie@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1644320202;
	bh=uO90sgUb1fQRv6M3Rjo1MfwhMNIuW5HEff+h75JVu0k=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=ZB/gRZn92NEzBmcewklBFEsktzryKd2xGFZjQ1GDTdL8qjVEGLqD7+LBeqg+8+3nz
	 WOZcuz/kSdoq+dwVh6l1TA5BbO48gJ6BK0NDPRwySE4ghw3nCHpV+vzJrHkOvg65YD
	 3LS97BOqKjTTXV+VjDrsueGOJd8F15moYjeeYIrY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.69.2] ([46.83.190.224]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MYvY2-1nm94k2cvQ-00Up3h; Tue, 08
 Feb 2022 12:36:42 +0100
Message-ID: <d503234b-8c10-7491-ced1-edbcb633c5f9@gmx.de>
Date: Tue, 8 Feb 2022 12:36:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [poky] Building a package of one version for target, and another version for native
To: poky@lists.yoctoproject.org, peter.kjellerstedt@axis.com
References: <3d282d2e-113e-fed8-17d0-5873f6f2e281@gmx.de>
 <25dd33b72a0f4bfca614d3d3db72809e@axis.com>
From: "Robert Tiemann" <rtie@gmx.de>
In-Reply-To: <25dd33b72a0f4bfca614d3d3db72809e@axis.com>
X-Provags-ID: V03:K1:UK4FCtuCdNnxv5KZiUklrNdI1eY2VxaEhihO8q6K5FKrneH1TF5
 HOwQvF6DGZn/mikp4D8iDv7su9d4yRy1vayUMvVSMDsDcUXF7yvC7H37Gs5/ZxrDuukNy6N
 8uWt7RTelZWBaMvqjBtrMyGLSRtIr9z55KUr7Nf3Z7D7cPKrkQRL6aRKslyCf24nAsQZ/3Z
 S4NYW8n056/2fATVaDWdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cG/cB+HdGPk=:0oSP5eSWRXxAPyKXxqh/tl
 XOTKKmNmYG/6xeoTiHou0Y2DGnf25Nbl0QnZiVm2Bnf2nyY/TEbt0vzP/FV50hvmYvdp/ipGa
 hgsn3QnkHaL4UKLVLYFYkreWP1SMkcFTAWjSM9ASpxI6cncznD3fFH3Iw2NCY+sj4w/2ilLZE
 xOtTQ0X8y0hu3ezJnIEkXffY1O/ELnDgJezZz85KcbMKuRTZw9FBEyAkMv8ZWsxao6fX1kTxu
 WQF09PYxHi7xsiBaxdgzApbMTNm8M+k6ytlKCApWV0lBcqI1HVZI5gOFtPS9QWXL1qkyhO3xP
 O2n6bWL8r2CTXzslS7i2PDXqa4EzW8cZ7y+UJ9vaaWOOm/r/YUa1A3u5rEnXRtyMeAF4jqP9u
 xSJIenmvcb8tmnWAOA9Wnm6eQ/VKZ5D4CBbKZoGlt/zQR2uVAIfG/C+xiYKWgFXVAgS2Q3CZG
 iZb19ljgylxJt46Fdb00nmdrNzxPBdmwi2zAWlpEyqDRRX4SnOyt+UGKqUZW9i40OpCrDvnQP
 RpFaUeMKcZFyWc0MJMHEoPgyzeaXvKpSdZZCJTXBswjtVE4Wm3EDYdmXRzh7/Cb9YKP0Gw4hV
 hWvBRZ1SzK0nfXPG26zsH+fxkXXBzgLP+P/v7ZOaDmo69wadRCsNhMYkKjGlDnZWvKGI7Ayjl
 tkCSThxWHevJ6u8syMWjRF8e6cC9/k4fJzQl9Uyu73jYN5ccAgYWKrQuPJYOiyH0IYSmpeEzw
 tl8KMM5w5l1M1V1KhamrhgHLcbPzn9iREwMLGzGFtU6mfNNJI8Gve+MIaoAmIGpsh+h1XRyhW
 B4mqqh+LVtqg0gn3es9GCrF3WH9zO89juHpRJ7/xgETzEwXZdnCF1tYEAqR8g3Vv/ekQaburK
 aSk6ALgx/dbvvGupEaBb8bmKOKYNt8ko/HtNgw0nM1j2poT5y0Hzx649sootY8FTc7y4eF/6d
 V9LWTtmNjJuMRY1Nq4Ko8Lx+LrFW7BvbX1FcdVwOaS3qF/ETSGtydMFtOCLAex83dA4STe9x4
 RyjeNLjDUtB8kvLkFho0Gda8vxpv6DTSq13lNcqmzPUY4IsR8F6G6k8CLpkWYP7SkQ==
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 1/28/22 20:18, Peter Kjellerstedt wrote:
>> -----Original Message-----

Hi, and apologies for my very slow reply.

>> PREFERRED_VERSION_gnutls-native =3D "3.6.12"
>> PREFERRED_VERSION_nettle-native =3D "3.5.1"
>
> That's the correct format. Not sure why it doesn't work though.
> It might have to do with how BBCLASSEXTEND works.

Thank you very much, this was the crucial hint. Removal of the
BBCLASSEXTEND lines from my copied and upgraded package recipes did the
job. The native versions are built from the original recipes now, target
packages are built from the new ones.

> One solution is to also copy the gnutls_3.6.12.bb recipe to
> your own layer and rename it to gnutls-native_3.6.12.bb and
> add an inherit of native to it.

This didn't work at first, and after some editing I ended up with
gnutls-native-native. :-D

> //Peter

Best regards,
Robert

