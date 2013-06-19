Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68716E01493
	for <poky@yoctoproject.org>; Tue, 18 Jun 2013 21:33:52 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id E11FB68A01C; Wed, 19 Jun 2013 05:33:50 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id DDA3468A019;
	Wed, 19 Jun 2013 05:33:47 +0100 (BST)
Message-ID: <51C134AB.5030007@mlbassoc.com>
Date: Wed, 19 Jun 2013 05:33:47 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <83DB4EC8FADD45428E3CC4E3664761FD015B210C@AMDTCEX12.actuant.pri>
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD015B210C@AMDTCEX12.actuant.pri>
Subject: Re: Creating library
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
X-List-Received-Date: Wed, 19 Jun 2013 04:33:55 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-06-19 04:45, Keskinarkaus, Teemu wrote:
> Hi,
>
> Hopefully this is the correct mailing list.
>
> I’m using Yocto/Poky to create Linux distribution and so far everything has gone rather smoothly, but now I have come up to a problem that I cannot seem to be able to fix.
>
> I’m adding existing old software to Yocto/Poky and they don’t use autotools so there is ready made Makefile that does everything.
>
> Problem comes with the library that is compiled that way too. Makefile has targets ‘all’ and ‘install’ that does the compilation and installation. Library compiles ok and installs
> ok too under –build directory, but when bitbake creates the deb-packages it creates only library-dev.deb, library-dbg.deb and library-staticdev.deb. The package library.deb does
> not get created and that causes build to fail. I looked the logs and bitbake says that NOTE: not creating empty library.deb – package. or something like that.
>
> I’ve tried anything that comes to my mind and also searched documentation and google and looked other libraries that are in yocto/poky, but just cannot get that work. I’ve also
> tried add FILES_${PN} to the recipe to force the files in the library.deb package, but that didn’t help.  Makefile installs the files to DESTDIR and files are installed just fine
> in the temporary image that is created under build-directory.
>
> For some reason, maybe because lack of autotools, I had to set S and B dir to point to the dir where library sources are. Would that be causing the problems even though the library
> gets installed to image in build-directory?
>
> Library.deb isn’t the actual name, but just an example.
>
> I wouldn’t want to convert all the software to use autotools since there are quite many of them and they are used in other projects as well so it would be rather big task. Any idea
> how to get that library thing to work?

See if this helps; tell bitbake to allow empty packages like this:
   ALLOW_EMPTY_${PN} = "1"
Put this line in your recipe and you should be able to move forward.

>
> I have few kernel modules where I also had to set S and B to point the dir where the kernel module sources are, but in those cases there were no problems. Only the library gives me
> hard time.
>
> -Teemu Keskinarkaus

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

