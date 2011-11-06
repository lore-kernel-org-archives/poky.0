Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC56E00311
	for <poky@yoctoproject.org>; Sun,  6 Nov 2011 05:20:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA6DK7su009751;
	Sun, 6 Nov 2011 13:20:07 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08488-04; Sun,  6 Nov 2011 13:20:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA6DJvRC009730
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 6 Nov 2011 13:19:58 GMT
Message-ID: <1320585597.23708.5.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Matthias =?ISO-8859-1?Q?D=FCbon?= <mail@ing-duebon.de>
Date: Sun, 06 Nov 2011 13:19:57 +0000
In-Reply-To: <CANv1b=0WaEi032+aBYPstKwvG6C-QD3aXbEa-947k_P_7aiLYA@mail.gmail.com>
References: <CANv1b=0WaEi032+aBYPstKwvG6C-QD3aXbEa-947k_P_7aiLYA@mail.gmail.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: content of build/tmp/work folder?
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
X-List-Received-Date: Sun, 06 Nov 2011 13:20:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2011-11-06 at 09:48 +0100, Matthias Dübon wrote:
> Hello everyone,
> 
> 
> I am just starting to dive into Poky (and embedded linux). I really
> like the concept and the idea of Yocto(resp. Poky) and up to now
> (almost) everything worked as expected. But the build/tmp/work
> directory is puzzling me. 
> The handbook stated "this directory contains various subdirectories
> for each architecture". In m my working directory I found the
> following folders:
> 
> all-poky-linux    

These are architecture independent things like scripts/graphics/fonts.

> beagleboard-poky-linux-gnueabi 
>qemux86-poky-linux
>qemuarm-poky-linux-gnueabi

These are machine specific things (you must have built for three
different machines).

> armv5te-poky-linux-gnueabi
> i586-poky-linux
>armv7a-vfp-neon-poky-linux-gnueabi 

These are software built for specific architectures and specific
optimisations within those architectures.

>i686-nativesdk-pokysdk-linux  
> i686-pokysdk-linux

These are parts of the SDK/toolchain (targetted at an i686 SDKMACHINE)

> i686-linux                      

These are "native" software designed to run on the system you're
building on.
> 
> Ok, beagleboard-poky-linux-gnueabi, qemuarm-poky-linux-gnueabi, ...
> are architectures I build. But what about the others folders. What the
> meaning of all-poky-linux?

Hope that helps!

Cheers,

Richard



