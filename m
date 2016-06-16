Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52FD6E00D63; Wed, 15 Jun 2016 20:05:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD8F1E00D5B
	for <poky@yoctoproject.org>; Wed, 15 Jun 2016 20:05:56 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id j2so5719209qkf.1
	for <poky@yoctoproject.org>; Wed, 15 Jun 2016 20:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+c77IsmZWzndGLHZZduWBpE6ru6tLICZelPiBZInC5g=;
	b=YxtvinKRdKar3uRifBzFrrb76cWSEwYLncVehjOag9EA1LGBSeKt+K/cgudENWU0Su
	bqarcFQ0bP8xJ7vkdU5mH7hnCI+mhE/JtGIPrJnU0yFvM9BzWFBlLezJhszlsecvTQd5
	588Zw+Mjy6z0LClqpYHHqOnCJfD8RiOlyGZZJkNXbxbyRIEfQWNl/aTvZg4NQmlXEw0c
	txx66KrGf0CrF2ZwAYQ7QVCsu6PozUYLjo9SZAVZV+aipWRsslyPSl79E1StpDFk/nuT
	wmTmiwp9+T0yBpEYIhtr0olbJOS9b4qXw+bS7NTB9qbSWS9WdeHFsdQ4+zNMMtMfLZQk
	nxrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+c77IsmZWzndGLHZZduWBpE6ru6tLICZelPiBZInC5g=;
	b=jRokzeNHD2D2CDIAlPj6oeYnpkBGyqoGZux3Dw3DHC4N6bE75jnpHyULDKAdEzswzD
	4fpwup/JH14h9M5u6+Hd0nZBpX3n1yQLpOnyshUciD8esMas3brd5F0Fw8Euik80+Imy
	m+ggOGdxeh9A3BUrnMMxrf8M/4c1F3L9p5qSCeieKo5JMcr+10WVwx+qIm/heb9lYoDK
	sHzxhk6s/hJH/cghAd/uMgbCDE56pQy/DXguTXXAt4CXy8GsFKo1M7FHdjpTal/NwQDe
	TJIwAIstgkJtGbihVyRByohDIuTnk6mEY+3B04IJff07wO5N/0Gl/EqwH7x/feot/0yq
	4YWQ==
X-Gm-Message-State: ALyK8tI076lB8Z7EQSvN+iQoN1EYkM426iGk2GtJQ3Ld27CMwHS/ZZfuSalK1SsKhxD6p1b+rPj2LFJPvpEdMg==
X-Received: by 10.200.42.43 with SMTP id k40mr2247762qtk.98.1466046350877;
	Wed, 15 Jun 2016 20:05:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.8.133 with HTTP; Wed, 15 Jun 2016 20:05:20 -0700 (PDT)
In-Reply-To: <4B09C702-BFE0-4848-8F40-D0AA14FCB5E1@src-solution.com>
References: <4B09C702-BFE0-4848-8F40-D0AA14FCB5E1@src-solution.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Jun 2016 20:05:20 -0700
Message-ID: <CAMKF1sp0A9X00KU6-sdH+N2K2fAJ5CkT9TZzo0O8rr0o+dhQ8g@mail.gmail.com>
To: Jean-Fabien Arnaud <jean-fabien.arnaud@src-solution.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Cross compilation - Could not find lua libs
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
X-List-Received-Date: Thu, 16 Jun 2016 03:05:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 8, 2016 at 7:30 AM, Jean-Fabien Arnaud
<jean-fabien.arnaud@src-solution.com> wrote:
> Hello
>
> I would like to compile https://github.com/sbernard31/lualwm2m with a pok=
y
> toolchain, but it can not find lua library and i do not know why.
>
> Lua 5.1 is installed, and I have no problem to compile with the =C2=AB de=
fault =C2=BB
> gcc.

lua should also be added to your SDK and Lua is in another layer in
meta-openembedded. So add that layer to your project
as well as to one of images and then do -cpopulate_sdk <image> this
should hopefully add needed lua dev libs and headers
to your SDK.

>
>
>
> $:~/build_arm$ cmake
> -DCMAKE_C_COMPILER=3D/opt/poky/1.6.1/sysroots/x86_64-pokysdk-linux/usr/bi=
n/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
> ../lualwm2m/
>
> -- The C compiler identification is GNU 4.8.2
>
> -- Check for working C compiler:
> /opt/poky/1.6.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnue=
abi/arm-poky-linux-gnueabi-gcc
>
> -- Check for working C compiler:
> /opt/poky/1.6.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnue=
abi/arm-poky-linux-gnueabi-gcc
> -- works
>
> -- Detecting C compiler ABI info
>
> -- Detecting C compiler ABI info - done
>
> CMake Error at
> /usr/share/cmake-2.8/Modules/FindPackageHandleStandardArgs.cmake:108
> (message):
>
>   Could NOT find Lua51 (missing: LUA_LIBRARIES) (found version "5.1.5")
>
> Call Stack (most recent call first):
>
>   /usr/share/cmake-2.8/Modules/FindPackageHandleStandardArgs.cmake:315
> (_FPHSA_FAILURE_MESSAGE)
>
>   /usr/share/cmake-2.8/Modules/FindLua51.cmake:76
> (FIND_PACKAGE_HANDLE_STANDARD_ARGS)
>
>   CMakeLists.txt:3 (find_package)
>
>
>
> $:~/build_arm$ cmake ../lualwm2m/
>
> -- The C compiler identification is GNU 4.8.4
>
> -- Check for working C compiler: /usr/bin/cc
>
> -- Check for working C compiler: /usr/bin/cc -- works
>
> -- Detecting C compiler ABI info
>
> -- Detecting C compiler ABI info - done
>
> -- Found Lua51:
> /usr/lib/x86_64-linux-gnu/liblua5.1.so;/usr/lib/x86_64-linux-gnu/libm.so
> (found version "5.1.5")
>
> -- Configuring done
>
> -- Generating done
>
> -- Build files have been written to: /home/jf/build_arm
>
>
>
> I hope i am publishing on the good ML, if anybody can tell me what am I
> doing wrong ?
>
>
>
> Thank you
>
> Jean Fabien
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

