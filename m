Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DCAEE0032E
	for <poky@yoctoproject.org>; Sat,  6 Oct 2012 03:42:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q96Agnoa024645;
	Sat, 6 Oct 2012 11:42:49 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21064-09; Sat,  6 Oct 2012 11:42:45 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q96AgfYk024639
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Sat, 6 Oct 2012 11:42:42 +0100
Message-ID: <1349520164.15658.75.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Khryukin <alexander@mezon.ru>
Date: Sat, 06 Oct 2012 11:42:44 +0100
In-Reply-To: <CABtOAfyzdkKdhROvoKUHqx8Ki+UKV5AwBSmY4hT_5o9oFsxu7Q@mail.gmail.com>
References: <CABtOAfw9y1rjQ3YsS42ZiM71nCUtmWVoOkNZiSb7X1r2JXFjcg@mail.gmail.com>
	<506EAAEC.1050704@r-finger.com> <1349430119.32599.0.camel@localhost>
	<CABtOAfyzdkKdhROvoKUHqx8Ki+UKV5AwBSmY4hT_5o9oFsxu7Q@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: docbook-utils-native-0.6.14-r3
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
X-List-Received-Date: Sat, 06 Oct 2012 10:42:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2012-10-06 at 12:46 +0400, Alexander Khryukin wrote:
> 
> 
> 2012/10/5 Alexander Khryukin <alexander@mezon.ru>
>         В Пт., 05/10/2012 в 10:39 +0100, Tomas Frydrych пишет:
>         > On 05/10/12 10:12, Alexander Khryukin wrote:
>         > > | jade: symbol lookup error:
>         >
>         > /home/user/poky/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
>         > > undefined symbol:
>         _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
>         >
>         > Looks like the jade executable was not linked against the
>         version of the
>         > lib in your sysroot; try rebuilding openjade-native.
>         >
>         > Tomas
>         > _______________________________________________
>         > poky mailing list
>         > poky@yoctoproject.org
>         > https://lists.yoctoproject.org/listinfo/poky
>         
>         
>         
>         >try rebuilding openjade-native
>         
>         How i can do it?Now i'm rebuilding bitbake core-image-sato-sdk
>         again
>         

Try "bitbake openjade-native -c cleansstate", then try "bitbake
core-image-sato-sdk". Technically this shouldn't make any difference but
there is something odd going on with openjade-native.

Cheers,

Richard





