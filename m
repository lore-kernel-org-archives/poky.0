Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC389E006F5
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 12:57:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAGKvFKu020741
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 12:57:15 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 Nov 2011 12:57:15 -0800
Message-ID: <4EC423AA.2080204@windriver.com>
Date: Wed, 16 Nov 2011 14:57:14 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <aeedea3c-261d-447f-beb5-d2c6752c583f@zimbra33-e6.priv.proxad.net>
In-Reply-To: <aeedea3c-261d-447f-beb5-d2c6752c583f@zimbra33-e6.priv.proxad.net>
Subject: Re: Qt should be linked to openssl at compilation
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
X-List-Received-Date: Wed, 16 Nov 2011 20:57:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/16/11 1:47 PM, Francois Dupoux wrote:
> Hi,
>
> Would it be possible to link Qt with openssl at compilation time ?
>
> The problem we are having is our minimal root filesystem provides one Qt-4.7 application which connects to an HTTPS backend. But the openssl library is not in the root filesystem as it is not linked to any other application. So we end up with a run time error when Qt fails to dynamically load openssl:
>
> QSslSocket: cannot call unresolved function d2i_X509
>
> In that particular case this error is triggered by this function call:
> QSslCertificate::fromPath("/path/to/ca.crt");
>
> We are using Qt-Embedded but I guess the problem would be exactly the same with Qt-x11
>
> So it would be great to just link Qt with openssl so that all SSL related classes can work.
>
> We just need to add "-openssl-linked" to QT_CONFIG_FLAGS in recipes-qt/qt4.

Slightly off topic perhaps, but are you using the RPM packaging back-end?

This should have identified the usage of the openssl library and added it to the 
dependency set.  If it didn't I'm interested to know why it failed to detect it.

This is an outstanding enhancement request to add that same level of dependency 
detection to deb and ipkg.  Until then, if you want to use deb or ipkg you will 
likely need to add an RDEPENDS to openssl to get the dynamic version.

--Mark

> Many thanks
> Francois
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


