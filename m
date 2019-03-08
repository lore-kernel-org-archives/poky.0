Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B424E00D11; Thu,  7 Mar 2019 23:12:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, FREEMAIL_FROM,
	FROM_EXCESS_BASE64 autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from m15-41.126.com (m15-41.126.com [220.181.15.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C51AE00D01
	for <poky@yoctoproject.org>; Thu,  7 Mar 2019 23:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=kjRxO
	SiwrpiAydJc79SRLhTQvxszAei3ryD9DN+Zoyw=; b=CSgggUvj9wNuplyrvRhyQ
	M0e4eWsQmlQkPeLU0thN3O/PRzVO/ilmC0HXwvEO4agUmmKtbbGpLmtwCxHlyS6U
	P95HjlACK9lNmKPjaeUzPflvgfFMkuzfkvVjYhftbQnRMD2FggZTJdmhfV8HkUEw
	5YN51oi5gWQbBoFZmjQG04=
Received: from zzs213$126.com ( [171.214.199.206] ) by ajax-webmail-wmsvr41
	(Coremail) ; Fri, 8 Mar 2019 15:12:09 +0800 (CST)
X-Originating-IP: [171.214.199.206]
Date: Fri, 8 Mar 2019 15:12:09 +0800 (CST)
From: =?GBK?B?1cXW0sm9?= <zzs213@126.com>
To: poky@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20180927(cd7136b6) Copyright (c) 2002-2019 www.mailtech.cn 126com
In-Reply-To: <143c3452.5462.1695bf865f8.Coremail.zzs213@126.com>
References: <143c3452.5462.1695bf865f8.Coremail.zzs213@126.com>
MIME-Version: 1.0
Message-ID: <132d9c69.5f42.1695c251ad6.Coremail.zzs213@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: KcqowAAnop3KFYJcfQ8FAA--.19344W
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiDw9xGVpD7z77-QABsn
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Re: libtool-cross failed configure on yocto-2.6.1 with newlib
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Mar 2019 07:12:12 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

T24gMjAxOS8zLzggz8LO5zI6MjMsICDVxdbSyb0gV3JvdGU6Cj4gTXkgaG9zdCBzeXN0ZW0gaXM6
Cj4gICAgIAo+ICAgICBMaW51eCBnZmNkMTAxIDQuMTUuMC00Ni1nZW5lcmljICM0OX4xNi4wNC4x
LVVidW50dSBTTVAgVHVlIEZlYiAxMiAxNzo0NToyNCBVVEMgMjAxOSB4ODZfNjQgeDg2XzY0IHg4
Nl82NCBHTlUvTGludXgKPiAKPiBBbmQgdXNpbmcgeW9jdG8tMi42LjEgd2l0aCBuZXdsaWI6Cj4g
Cj4gICAgIFRDTElCQyA6PSAibmV3bGliIgo+IAo+IEkgd3JvdGUgYSBjdXN0b20gLmJiIHRvIGJ1
aWxkICJrY29uZmlnLWZyb250ZW5kcyIsIGl0ICJpbmhlcml0IGF1dG90b29scyIKPiAKPiB3aGVu
IHJ1biAiYml0YmFrZSBrY29uZmlnLWZyb250ZW5kcyIsIGxpYnRvb2wtY3Jvc3MgZmFpbGVkIHRv
IGNvbmZpZ3VyZToKPiAKPiAgICAgRVJST1I6IGxpYnRvb2wtY3Jvc3MtMi40LjYtcjAgZG9fY29u
ZmlndXJlOiBjb25maWd1cmUgZmFpbGVkCj4gICAgIEVSUk9SOiBsaWJ0b29sLWNyb3NzLTIuNC42
LXIwIGRvX2NvbmZpZ3VyZTogRnVuY3Rpb24gZmFpbGVkOiBkb19jb25maWd1cmUgKGxvZyBmaWxl
IGlzIGxvY2F0ZWQgYXQgLi4uL2xpYnRvb2wtY3Jvc3MvMi40LjYtcjAvdGVtcC9sb2cuZG9fY29u
ZmlndXJlLjExMTg4KQoKTXkgcmVjaXBlIGZvciAia2NvbmZpZy1mcm9udGVuZHMiIGluaGVydCBu
YXRpdmUsIFNvIGl0IGp1c3QgdHJ5IHRvIApidWlsZCBuYXRpdmUgdG9vbCwgd2h5IG5lZWQgbGli
dG9vbC1jcm9zcz8KCi0tIApCZXN0IFJlZ2FyZHMsCnp6cwo=

