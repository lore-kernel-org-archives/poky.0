Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A79FE00307
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 13:32:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAGLWuEq028342
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 Nov 2011 13:32:56 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 Nov 2011 13:32:56 -0800
Message-ID: <4EC42C07.7010409@windriver.com>
Date: Wed, 16 Nov 2011 15:32:55 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: Francois Dupoux <fdupoux@free.fr>
References: <5c7672eb-ff1d-4bc7-bdf8-81f467051e8d@zimbra33-e6.priv.proxad.net>
In-Reply-To: <5c7672eb-ff1d-4bc7-bdf8-81f467051e8d@zimbra33-e6.priv.proxad.net>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Wed, 16 Nov 2011 21:32:59 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/16/11 3:20 PM, Francois Dupoux wrote:
> ----- Original Message -----
> From: "Mark Hatle"<mark.hatle@windriver.com>
> To: poky@yoctoproject.org
> Sent: Wednesday, 16 November, 2011 8:57:14 PM
> Subject: Re: [poky] Qt should be linked to openssl at compilation
>
>> So it would be great to just link Qt with openssl so that all SSL related classes can work.
>>
>> We just need to add "-openssl-linked" to QT_CONFIG_FLAGS in recipes-qt/qt4.
>
> Slightly off topic perhaps, but are you using the RPM packaging back-end?
>
> This should have identified the usage of the openssl library and added it to the
> dependency set.  If it didn't I'm interested to know why it failed to detect it.
>
> This is an outstanding enhancement request to add that same level of dependency
> detection to deb and ipkg.  Until then, if you want to use deb or ipkg you will
> likely need to add an RDEPENDS to openssl to get the dynamic version.
>
> Hi Mark,
>
> Yes, I am using RPM packages, with the latest stable version (poky-6.0)

What is your base configuration, i.e. machine type (or architecture) .. and 
which image type are you building for?

I'd like to try to reproduce this linking to openssl, but not getting referenced 
in the dependency set.

--Mark

> Thanks


