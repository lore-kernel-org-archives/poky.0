Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1461B4C800B1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 10:13:08 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1SGD4ht025328;
	Mon, 28 Feb 2011 16:13:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25117-04; Mon, 28 Feb 2011 16:13:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1SGCx70025322
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 28 Feb 2011 16:13:00 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4D6BB5E7.8060902@de-haardt.com>
References: <4D6BB5E7.8060902@de-haardt.com>
Date: Mon, 28 Feb 2011 16:12:46 +0000
Message-ID: <1298909566.26736.7580.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: recipe gtk program include directories
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
X-List-Received-Date: Mon, 28 Feb 2011 16:13:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-28 at 15:49 +0100, Gerard van den Bosch wrote:
> I have created a simple program with GTK and now I want to add it as a 
> package in poky.
> Because it is a single C file I have constructed the following recipe:
> 
> DESCRIPTION = "Battery indication"
> SECTION = "examples"
> LICENSE = "GPL"
> DEPENDS = "gtk+"
> 
> SRC_URI = "file://image.c"
> 
> S = "${WORKDIR}"
> 
> do_compile() {
>      ${CC} image.c -o image
> }
> 
> do_install() {
>      install -d ${D}${bindir}
>      install -m 0755 image ${D}${bindir}
> }
> 
> Now I have the problem that on my ubuntu computer I normally add 
> `pkg-config --libs --cflags gtk+-2.0` to the gcc compile line to include 
> the right directories.
> 
> But I don't understand how to do this in a recipe, can someone point me 
> to an example or explain how this is done?

Can't you just add that to the do_compile line as you'd usually do, e.g:

do_compile () {
    ${CC} image.c -o image `pkg-config --libs --cflags gtk+-2.0`
}

? (and add pkgconfig-native to DEPENDS)

Cheers,

Richard


