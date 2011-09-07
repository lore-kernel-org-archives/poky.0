Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 214CDE01254
	for <poky@yoctoproject.org>; Wed,  7 Sep 2011 15:33:21 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p87MdEjH030310; Wed, 7 Sep 2011 23:39:14 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id VJKPNFLiVFpU; Wed,  7 Sep 2011 23:39:14 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p87MdBko030302
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 7 Sep 2011 23:39:13 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1109061016470.17792@localhost6.localdomain6>
References: <alpine.DEB.2.02.1109061016470.17792@localhost6.localdomain6>
Date: Wed, 07 Sep 2011 23:33:08 +0100
Message-ID: <1315434788.13021.50.camel@ted>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: poky@yoctoproject.org
Subject: Re: wanting to clarify some details about PREMIRRORS
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
X-List-Received-Date: Wed, 07 Sep 2011 22:33:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-09-06 at 10:20 -0400, Robert P. J. Day wrote:
> after a short and educational chat with a couple people who should
> know, i want to clarify what i understand about PREMIRRORS so i can
> document it properly.  and it seems that the poky list, not the yocto
> list, is the right place for that.  (correct me if i'm wrong.)
> 
>   i'm reading the poky reference manual:
> 
> http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html
> 
> and here's what i *think* i understand about the proper use of
> PREMIRRORS.
> 
>   first, it's for identifying more quickly accessible and downloadable
> source for a given build, and it reflects *only tarballs*, is that
> correct?  as in, regardless of how you would *normally* get some
> software component for your build (ftp, http, git, svn, ...),

If the destination is an ftp/http/https url then it will try and obtain
tarballs from them.

You could do a "git://    git://" premirror and it would try and fetch
using git from the alternative git url.

>  what
> PREMIRRORS represents is ***only*** tarballs that match precisely the
> software component your build needs.  is that correct?

And no, it might not necessarily exactly match. See below.

>   also, is there a list of acceptable archive suffixes that PREMIRRORS
> can handle?  i've seen .tar.gz, .tar.bz2, .tgz and so on.  is there a
> fetcher method that makes it clear what you can and can't have in
> PREMIRRORS?

It should match the original source url, or be in the format that the
mirror generation code for that type of url uses. I'd not expect users
to be manually generating these so I'm not sure documenting a list makes
sense.

>   next, as i read it, the PREMIRRORS entries for ftp, http and https
> represent what are normally tarballs, anyway.  when you get into
> SCM-based fetches, then the PREMIRRORS location would contain the
> resulting tarball you would have ended up with.
> 
>   for instance, with my default yocto build, i need to "git" the
> 3.0... linux kernel.  what i end up with is the 500M tarball
> git2_git.yoctoproject.org.linux-yocto-3.0.tar.gz.  so as long as i
> copy that tarball into my PREMIRRORS local directory, as long as my
> subsequent yocto builds require *precisely* that git clone of the
> kernel, my local PREMIRRORS tarball will be used, correct?

That tarball will be used to "seed" a checkout directory. The system
will then check if the revisions it needs are present. If the revisions
are not present, it would try and then incrementally fetch what was
missing from the upstream using the normal SRC_URI.

Cheers,

Richard



