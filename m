Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F91D4C81110
	for <poky@lists.pokylinux.org>; Mon, 10 Jan 2011 15:07:25 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AL93uK012964; Mon, 10 Jan 2011 21:09:03 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id GL4JBOyhDjuL; Mon, 10 Jan 2011 21:09:03 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AL8vlW012939
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 10 Jan 2011 21:08:59 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <AANLkTikNW+Nq0dyF0j5nS8dCetcxLgd6W4mQ=QUEwc26@mail.gmail.com>
References: <4D26588E.7070701@mlbassoc.com>
	<AANLkTikFj5SROL4Thc3Aj8VK6oLudeVz=2vSRiJ8jOM9@mail.gmail.com>
	<AANLkTinAz2JynsoSYXZB6sTJUg2hJa8Apa_gNaKsdHfi@mail.gmail.com>
	<AANLkTinp0GooZu6e5uHCaTey=42qUe-NF9FN6qvVTwO3@mail.gmail.com>
	<1294405139.17519.27035.camel@rex>
	<AANLkTikNW+Nq0dyF0j5nS8dCetcxLgd6W4mQ=QUEwc26@mail.gmail.com>
Date: Mon, 10 Jan 2011 21:07:07 +0000
Message-ID: <1294693627.1492.1386.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SRCREV_FORMAT breaks my builds
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
X-List-Received-Date: Mon, 10 Jan 2011 21:07:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-07 at 07:44 -0700, Chris Larson wrote:
> On Fri, Jan 7, 2011 at 5:58 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > The error is caused by our recent updates to bitbake from bitbake
> > upstream. The behaviour of skipped tasks changed in the cache changes in
> > that variable expansion was still attempted for variables from skipped
> > recipes.
> >
> > I've added this fix:
> >
> > http://git.pokylinux.org/cgit.cgi/poky/commit/?id=847b717862a518746bc5e457f40760e3bd36f1db
> >
> >
> > which seems to fix the problem here for me.
> 
> Well spotted, thanks.  I'll go ahead and apply to upstream master as
> well, unless you'd like to do so.

Just to follow up for the benefit of the mailing list, I didn't like my
ugly fix, Chris found a neater way to do it and both bitbake upstream
and poky now have the neater version of the fix.

Cheers,

Richard


