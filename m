Return-Path: <fdupoux@free.fr>
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C90C9E00307
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 13:20:22 -0800 (PST)
Received: from zimbra33-e6.priv.proxad.net (unknown [172.20.243.183])
	by smtp4-g21.free.fr (Postfix) with ESMTP id D94094C8368;
	Wed, 16 Nov 2011 22:20:14 +0100 (CET)
Date: Wed, 16 Nov 2011 22:20:13 +0100 (CET)
From: Francois Dupoux <fdupoux@free.fr>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <5c7672eb-ff1d-4bc7-bdf8-81f467051e8d@zimbra33-e6.priv.proxad.net>
In-Reply-To: <4EC423AA.2080204@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [46.33.16.32]
X-Mailer: Zimbra 7.1.4-GA3333 (ZimbraWebClient - GC15 (Linux)/7.1.4-GA3333)
X-Authenticated-User: fdupoux@free.fr
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
X-List-Received-Date: Wed, 16 Nov 2011 21:20:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

----- Original Message -----
From: "Mark Hatle" <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Sent: Wednesday, 16 November, 2011 8:57:14 PM
Subject: Re: [poky] Qt should be linked to openssl at compilation

> So it would be great to just link Qt with openssl so that all SSL related classes can work.
>
> We just need to add "-openssl-linked" to QT_CONFIG_FLAGS in recipes-qt/qt4.

Slightly off topic perhaps, but are you using the RPM packaging back-end?

This should have identified the usage of the openssl library and added it to the 
dependency set.  If it didn't I'm interested to know why it failed to detect it.

This is an outstanding enhancement request to add that same level of dependency 
detection to deb and ipkg.  Until then, if you want to use deb or ipkg you will 
likely need to add an RDEPENDS to openssl to get the dynamic version.

Hi Mark,

Yes, I am using RPM packages, with the latest stable version (poky-6.0)

Thanks

