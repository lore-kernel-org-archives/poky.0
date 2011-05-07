Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECFFF4C8007E
	for <poky@yoctoproject.org>; Sat,  7 May 2011 02:50:50 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p477oh9R002184;
	Sat, 7 May 2011 08:50:43 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02088-02; Sat,  7 May 2011 08:50:39 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p477oWV0002178
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 7 May 2011 08:50:35 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4DC4C4EA.8050507@windriver.com>
References: <BANLkTikX3sP7yTAkH0F70i2DAabrU9u+bw@mail.gmail.com>
	<1304740882.2592.39.camel@elmorro>  <4DC4C4EA.8050507@windriver.com>
Date: Sat, 07 May 2011 08:50:27 +0100
Message-ID: <1304754627.30391.185.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: bitbake error in master ?
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
X-List-Received-Date: Sat, 07 May 2011 07:50:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-05-07 at 00:04 -0400, Bruce Ashfield wrote:
> On 11-05-07 12:01 AM, Tom Zanussi wrote:
> > On Fri, 2011-05-06 at 20:56 -0700, Bruce Ashfield wrote:
> >> Am I the only one seeing:
> >>
> >> Traceback (most recent call last):
> >>    File "/home/bruce/poky/bitbake/bin//bitbake", line 34, in<module>
> >>      import bb
> >>    File "/home/bruce/poky/bitbake/lib/bb/__init__.py", line 74, in<module>
> >>      from bb import fetch2 as fetch
> >>    File "/home/bruce/poky/bitbake/lib/bb/fetch2/__init__.py", line 31,
> >> in<module>
> >>      import bb.data, bb.persist_data, bb.utils
> >>    File "/home/bruce/poky/bitbake/lib/bb/persist_data.py", line 29, in<module>
> >>      from bb.compat import total_ordering
> >> ImportError: No module named compat
> >>
> >> Which appears to be triggered by:
> >>
> >> commit 754d1c69839982b7cdd49839a398e688c0ad9a9b
> >> Author: Chris Larson<chris_larson@mentor.com>
> >> Date:   Mon Apr 4 09:36:45 2011 -0700
> >>
> >>      persist_data: implement comparison, same as dict
> >>
> >>      (Bitbake rev: 1190406c526c7bb7cf415867be83e0403812a7dd)
> >>
> >>      Signed-off-by: Chris Larson<chris_larson@mentor.com>
> >>      Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
> >>
> >> -----
> >>
> >> Since I haven't heard anyone else mention this, and it seems to be pretty
> >> fundamental .. I tend to suspect myself. But looking at the poky git
> >> repos for master shows me what I have on disk here.
> >>
> >> I'll look at this again tomorrow, but just thought I'd ping the list, since
> >> this is stopping me from testing pretty much anything at the moment.
> >>
> >
> > I just saw this too, for now backed up to the last known good commit for
> > me, 72875493b8bbb5d6793380ee71c6bca4f438ca04, in case you need one...
> 
> Thanks Tom,
> 
> Saves me a little bisection fun.

Oops, I had this locally but didn't add it, sorry. Its there now.

Cheers,

Richard


