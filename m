Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97D3B4C80BD8
	for <poky@pokylinux.org>; Mon, 20 Dec 2010 15:23:51 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKLP6oU012456; Mon, 20 Dec 2010 21:25:06 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id xVxDNElI31vs; Mon, 20 Dec 2010 21:25:06 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKLOvNi012446
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 21:24:59 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D08E868.6090606@mlbassoc.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex>  <4D08E868.6090606@mlbassoc.com>
Date: Mon, 20 Dec 2010 21:23:13 +0000
Message-ID: <1292880193.25087.5059.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 0/1] Fix weird rebuild issue even when sstate signature doesn't change
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
X-List-Received-Date: Mon, 20 Dec 2010 21:23:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-15 at 09:10 -0700, Gary Thomas wrote:
> On 12/15/2010 02:12 AM, Richard Purdie wrote:
> > On Tue, 2010-12-14 at 21:40 +0800, Kevin Tian wrote:
> > I've merged this patch into master, good catch and hopefully this gets
> > sstate into a good working state.
> >
> > I've merged an updated version of Paul's sstate branch too.
> >
> > I'm hoping this makes sstate packages finally usable!
> 
> Mucho bettero (TM) :-)
> 
> I just tried this from master and at least on the same machine
> but different build paths, it performed much as hoped.  My initial
> build (step 1) took some 165 minutes, building the same target using
> the sstate cache from step 1 took only 22.  The only packages rebuilt
> during step 2 were the kernel and the image tasks (I tested this with
> my own image+kernel recipes, so it's OK if this differs a little from
> other's results).
> 
> Bottom line, it seems to be working much better now.
> 
> Note to Paul: I also still see lots of LD_PRELOAD messages like
>    ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
> but they did not seem to affect the result.

This error should be fixed with some changes that went in today.

> Note to Richard: I'm still seeing a ton of Noexec messages every time I rebuild
> a package in this tree.  I thought I understood you to say they should happen
> at most once?

Yes, I've pushed some changes which should help too.

Its taken longer that I'd have liked but we *are* getting there with
sstate and prebuilds! :)

Cheers,

Richard



