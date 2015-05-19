Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 582C5E009B8; Tue, 19 May 2015 00:30:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 988A0E00998
	for <poky@yoctoproject.org>; Tue, 19 May 2015 00:30:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t4J7UDcN024462; Tue, 19 May 2015 08:30:13 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 7AvZ9KfuEIeT; Tue, 19 May 2015 08:30:13 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t4J7Tw9O024448
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 19 May 2015 08:30:09 +0100
Message-ID: <1432020598.11357.109.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nithyakala Sainath <nithisai@gmail.com>
Date: Tue, 19 May 2015 08:29:58 +0100
In-Reply-To: <CACj2azs1yrQ0fVuJhrgkDTj_kk5G=z4pqmNLjiLeNZFpQv-Lxg@mail.gmail.com>
References: <CACj2azs1yrQ0fVuJhrgkDTj_kk5G=z4pqmNLjiLeNZFpQv-Lxg@mail.gmail.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Multiple versions of libx11 are due to be built
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
X-List-Received-Date: Tue, 19 May 2015 07:30:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-05-18 at 01:53 +0530, Nithyakala Sainath wrote:
> I want to understand the process of choosing a recipe by bitbake
>
> There is a libx11_1.3.2.bb in a layer called A with higher priority of
> 6.
>
> There is another libx11_1.4.0.bb in a layer called B with priority of
> 5.
>
> So bitbake sshould automatically pick up libx11  from A right ? Why is
> it giving me error like:
>
> " Multiple versions of libx11 are due to be built. Only one version of
> a given PN should be built in any given build. You likely need to set
> PREFERRED_VERSION_libx11 to select the correct version or don't depend
> on multiple versions."

The two libx11 recipes are likely not identical. The things the recipe
provides, be it directly with PROVIDES or in the form of packages it
generates is likely not identical. Something in your build is depending
on this item which only one recipe provides, hence the message above.

> Why should i even prefer a version? This happens when I build an
> image. But when I directly call
>
> bitbake libx11
>
> the one from layer A is getting picked up.
>
> I am confused. Can you please tell me ?
> 
Something in the image depends on something only one of the recipe
provides. I would agree debugging this can be a pain and is something we
should improve...

Cheers,

Richard



