Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 16199E006F0
	for <poky@yoctoproject.org>; Wed, 13 Feb 2013 01:45:27 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r1D9pJjI003744; Wed, 13 Feb 2013 09:51:19 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ioMLqyH19cyf; Wed, 13 Feb 2013 09:51:19 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r1D9pEHk003740
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Wed, 13 Feb 2013 09:51:17 GMT
Message-ID: <1360748710.11225.26.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Erik =?ISO-8859-1?Q?Bot=F6?= <erik.boto@pelagicore.com>
Date: Wed, 13 Feb 2013 09:45:10 +0000
In-Reply-To: <CA+AhUGwJTH0UjXZe6QpQRSKeCY5pXOYCP7Schr1jOH8MmVqZeQ@mail.gmail.com>
References: <CA+AhUGwJTH0UjXZe6QpQRSKeCY5pXOYCP7Schr1jOH8MmVqZeQ@mail.gmail.com>
X-Mailer: Evolution 3.6.3-1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Python gobject bindings and gobject-introspection
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
X-List-Received-Date: Wed, 13 Feb 2013 09:45:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2013-02-13 at 10:34 +0100, Erik Botö wrote:
> I'm looking at building a newer version of pygobject then what's
> currently in Poky, and from what I find it seems the new recommended
> way is to use gobject-introspection and the gi.repository module.
>
> I saw that gobject-introspection was available in recipes-gnome/gnome/
> before but is now removed. So I'm curious about the reasoning for
> removing it? Was there any particular reason?

You can't cross compile gobject-introspection so the recipe didn't work.
There is a long standing bug open in the gnome bugzilla about this.

Cheers,

Richard



