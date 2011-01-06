Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 375254C80BD4
	for <poky@pokylinux.org>; Thu,  6 Jan 2011 17:23:11 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06NOlZH022527; Thu, 6 Jan 2011 23:24:47 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id L7V5K9MzQygr; Thu,  6 Jan 2011 23:24:46 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06NOgRT022513
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 6 Jan 2011 23:24:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D264A67.9020901@mlbassoc.com>
References: <1294354570.17519.25325.camel@rex> <4D264A67.9020901@mlbassoc.com>
Date: Thu, 06 Jan 2011 23:22:36 +0000
Message-ID: <1294356156.17519.25382.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@pokylinux.org>
Subject: Re: RFC/RFT Checksums as part of stamp files
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
X-List-Received-Date: Thu, 06 Jan 2011 23:23:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-06 at 16:04 -0700, Gary Thomas wrote:
> On 01/06/2011 03:56 PM, Richard Purdie wrote:
> > We've been working on checksums and sstate for a while, one of the
> > pieces we've not put in place so far is using the checksums in the stamp
> > files.
>     ... snip
> > My proposal for dealing with this will be to start having the packaging
> > backend take ownership of PE and PR fields. These should be auto
> > incremented when the build changes. That in itself is easy enough if you
> > have one build area, the tricky bit is where you have multiple build
> > sources feeding into a common packages repo like Angstrom.
> >
> > For this we're going to need some kind of network service that takes a
> > version and provides the PE/PR values back, incrementing them each time
> > it sees a new version/checksum.
> 
> How would this play with non-core packages/recipes, e.g. the ones that
> are only in my local trees?
>
> Also, how could this work in a no-network-available environment?

Keep in mind this server solution is only needed where you are feeding
the output of multiple build machines into one package feed and need to
synchronise them with respect to versions. This is something you'd have
to explicitly setup (just like the package feed itself).

If you are feeding to a package feed its assumed you have some kind of
connectivity to it and that it can presumably host the synchronisation
solution.

Local recipes would work just the same as core ones, they all behave the
same way.

Yocto itself has no plans to host actual package feeds, we are likely to
end up with some kind of public sstate cache but that doesn't need any
synchronisation.

Cheers,

Richard





