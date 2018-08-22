Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 999AEE0095C; Wed, 22 Aug 2018 06:02:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 593A6E006C7
	for <poky@yoctoproject.org>; Wed, 22 Aug 2018 06:02:56 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	w7MD2qPY015719
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 22 Aug 2018 14:02:53 +0100
Message-ID: <b0365432ac2a4b6a0c8c540d3af29b303193d8b9.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dominik Holland <dominik.holland@pelagicore.com>, poky@yoctoproject.org
Date: Wed, 22 Aug 2018 14:02:52 +0100
In-Reply-To: <23b93cf4-bdf4-4d5e-7592-c3e9a5dcdd7a@pelagicore.com>
References: <23b93cf4-bdf4-4d5e-7592-c3e9a5dcdd7a@pelagicore.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.1 at dan
X-Virus-Status: Clean
Subject: Re: nativesdk-python3 support for mingw
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
X-List-Received-Date: Wed, 22 Aug 2018 13:02:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-08-22 at 14:48 +0200, Dominik Holland wrote:
> not sure whether my last mail on this actually got on the list
> (didn't found it on the archive, so sending it again...)
> 
> i tried to create a mingw-based windows SDK using poky which also
> contains python3 (nativesdk-python3).
> 
> It looked like nobody have tried to do this before (or support for it
> was removed again ?). So i fixed a few recipes (db, gdbm, ncurses,
> readline, openssl) to compile with mingw.
> 
> Aftwards i also fixed python3 and got it working in a packaged SDK.
> To
> do that i applied the patches from the mingw package maintainers (~80
> patches).
> 
> My question is whether all these fixes for the mentioned packages are
> wanted ? Is there an interest in supporting a full fledged mingw SDK
> ?
> 
> And are you also interested in the mingw patches for mingw (I didn't
> check whether i need all of them, that's probably some python expert
> should check).

This work would belong in the meta-mingw layer. That layer is
maintained as a "best effort" currently and as such there aren't plans
to extend its scope. If anyone wanted to step up and help there it
would be much appreciated and anyone doing that could influence what
range of targets were supported on mingw...

Cheers,

Richard


