Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FDD8E00B6B
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 04:43:06 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2QBgZW2012695; Wed, 26 Mar 2014 11:42:54 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 0aThd5qr9DPf; Wed, 26 Mar 2014 11:42:53 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2QBgo4P012706
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 26 Mar 2014 11:42:51 GMT
Message-ID: <1395834164.24890.89.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 26 Mar 2014 11:42:44 +0000
In-Reply-To: <5332B9F3.9020008@mlbassoc.com>
References: <53329F23.8020307@visionaid.com>
	<CAJTo0LZUE-QAmPGysmwxCfxSajms8-VhWTXcunjMgW8bMAYNqw@mail.gmail.com>
	<5332B167.4060707@visionaid.com>
	<CAJTo0LYDjA0+R1LnkyXi7013uYwjZtoGWzbxE-+FJXuGpgLoaA@mail.gmail.com>
	<5332B833.2010402@visionaid.com> <5332B9F3.9020008@mlbassoc.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Poky core-image-minimal fails to build with package_deb
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
X-List-Received-Date: Wed, 26 Mar 2014 11:43:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2014-03-26 at 05:28 -0600, Gary Thomas wrote:
> On 2014-03-26 05:21, Jeremy Powell wrote:
> > On 26/03/14 11:06, Burton, Ross wrote:
> >> On 26 March 2014 10:52, Jeremy Powell <jeremy@visionaid.com> wrote:
> >>> On 26/03/14 10:14, Burton, Ross wrote:
> >>>> On 26 March 2014 09:34, Jeremy Powell <jeremy@visionaid.com> wrote:
> >>>>> I'm trying to build poky from the git master head, but there are several
> >>>>> problems in the DpkgIndexer class in ./meta/lib/oe/package_manager.py
> >>>> Can you file a bug for these issues please (reply here with the number
> >>>> so it doesn't get lost).
> >>>>
> >>>> Ross
> >>>
> >>> Hi Ross - thanks for your reply. I've created an account on
> >>> bugzilla.yoctoproject.org, but its not clear to me which product this bug
> >>> would refer to. Meta-yocto or  OE-Core perhaps?
> >> oe-core, component deployment.
> >>
> >> Ross
> > Thanks again, I've opened a bug #6047:
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=6047
> > 
> > I've also attached a patch to it which resolves the issue for me.
> 
> It would be good if your bug report explains what is going wrong
> (and why if you understand it), not just that "it fails and here's
> the patch".  This will aid not only in understanding the problem but
> also for future searches of the bugzilla database for similar issues.

FWIW I've sent out some patches which address this problem and some
others I spotted.

Cheers,

Richard


