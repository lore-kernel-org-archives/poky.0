Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1682BE00721
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 15:42:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAGNgNpW022860
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 15:42:24 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 Nov 2011 15:42:23 -0800
Message-ID: <4EC44A5E.2050206@windriver.com>
Date: Wed, 16 Nov 2011 17:42:22 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <5c7672eb-ff1d-4bc7-bdf8-81f467051e8d@zimbra33-e6.priv.proxad.net>
	<4EC42C07.7010409@windriver.com> <4EC4348B.7010003@freyther.de>
In-Reply-To: <4EC4348B.7010003@freyther.de>
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
X-List-Received-Date: Wed, 16 Nov 2011 23:42:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/16/11 4:09 PM, Holger Hans Peter Freyther wrote:
> On 11/16/2011 10:32 PM, Mark Hatle wrote:
>
>>
>> I'd like to try to reproduce this linking to openssl, but not getting
>> referenced in the dependency set.
>
> Qt has three SSL options:
> 	1.) no SSL
> 	2.) dlopen at runtime (the one probably configured), some people
>              believe it avoids the OpenSSL advertizement clause.. and saves
> 	    static initialization when SSL is not used..

Ahh, I didn't know there was a dlopen option.  If that is the case then there is 
no way for auto detection to be able to determine the need for OpenSSL.  So 
RDEPENDS would be the correct way in that case.

--Mark

> 	3.) link to OpenSSL (the -openssl-linked config option the original
> 	    mail is referring to)
>
>
> Either you do 2.) and make QtNetwork RDEPEND on libssl/libcrypt and make sure
> the symlinks are present... or you do 3.) as proposed in the original email.
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


