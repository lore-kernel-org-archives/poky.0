Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9643C4C8007E
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 04:17:58 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id BF9DF12EC1C7
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 04:59:20 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <AANLkTi=rooisMrYS=N6GmL38siorVezxkE23g5OU697b@mail.gmail.com>
References: <AANLkTi=rooisMrYS=N6GmL38siorVezxkE23g5OU697b@mail.gmail.com>
Date: Wed, 02 Feb 2011 10:17:47 +0000
Message-ID: <1296641867.2862.5.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Error Compiling Poky-Green-3.3
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
X-List-Received-Date: Wed, 02 Feb 2011 10:17:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi there,

On Wed, 2011-02-02 at 14:46 +0530, Akshat Saha wrote:

> I have downloaded the stable poky-green-3.3.1 and trying to compile it
> for MACHINE ?= "netbook". Any help/suggestion/advice is truly
> appreciated.

The current stable is actually Laverne 4.0: http://pokylinux.org/getit/
> 
> 
> Commands used:
>      1. $ source poky-init-build-env.... (Working Directory changes to
>         build)
>      2. then commented MACHINE ?= "qemux86" in local.conf and
>         uncommented MACHINE ?= "netbook"
>      3. $ bitbake -DDD poky-image-minimal-live 
> Error faced:
> 
> 
> gconvert.c:55:2: error: #error GNU libiconv not in use but included
> iconv.h is from libiconv
> 
> 
I'd be curious to hear if you still see this with Laverne? If so could
you let us know what operating system/distro you are using to build
with.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


