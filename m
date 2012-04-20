Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B190E01415
	for <poky@yoctoproject.org>; Fri, 20 Apr 2012 09:49:12 -0700 (PDT)
Received: from [192.168.0.2] (host86-133-43-110.range86-133.btcentralplus.com
	[86.133.43.110]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 226D699C5
	for <poky@yoctoproject.org>; Fri, 20 Apr 2012 17:49:11 +0100 (BST)
Message-ID: <4F919386.6060606@r-finger.com>
Date: Fri, 20 Apr 2012 17:49:10 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F5B73E6.9040908@mlbassoc.com> <1856275.4JdY7aZveN@helios>
	<CAC+thW26psx39QTFBUqXexPkxao8hk_D_nmrMhOis5+0Gdo3YQ@mail.gmail.com>
In-Reply-To: <CAC+thW26psx39QTFBUqXexPkxao8hk_D_nmrMhOis5+0Gdo3YQ@mail.gmail.com>
Subject: Re: Poky doesn't play nice with meta-oe
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
X-List-Received-Date: Fri, 20 Apr 2012 16:49:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/04/12 17:01, Andrea Galbusera wrote:
> Before starting to mess up things I'm asking if there is any relevant
> improvement on this side? I need a few recipes that are in meta-oe but
> not in poky/yocto (python-twisted, gpsd and a few more). Enabling
> meta-oe over my current edison environment would be nice to avoid
> manually importing those recipes with dependencies. Maybe master
> branch and upcoming 1.2 are expected to work better on this side?

I have tried combining Yocto with meta-oe about a week ago, and it does
not work at all at the moment; ended up with images that were very
broken. I think systemd is the principal culprit, though as the meta-oe
layer has higher priority than Yocto, not the only problem (though
forcing a lower priority on it, does not much help).

Tomas


