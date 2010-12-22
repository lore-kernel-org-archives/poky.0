Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABAE64C80039
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 08:02:54 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 5EFDD12EC1CD
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 08:41:53 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <C40A274E-BE70-4CE5-87D3-81F65CAF51AA@dominion.thruhere.net>
References: <C40A274E-BE70-4CE5-87D3-81F65CAF51AA@dominion.thruhere.net>
Date: Wed, 22 Dec 2010 14:02:46 +0000
Message-ID: <1293026566.13942.7.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Replacement for fakeroot do_install()?
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
X-List-Received-Date: Wed, 22 Dec 2010 14:02:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-22 at 14:48 +0100, Koen Kooi wrote:
> Hi,
> 
> What's is the pseudo way to do fakeroot do_install()? I have a number
> of OE recipes that still use fakeroot and I would like to get rid of
> that in the OE layer for yocto.

fakeroot is a flag which tells the runqueue to load appropriate
environment variables for running the task under a fakeroot like
program, and as such it's still perfectly valid whether you're using
fakeroot or pseudo.

tl;dr

fakeroot do_install() is the pseudo way too

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


