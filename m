Return-Path: <denis@denix.org>
Received: from vms173023pub.verizon.net (vms173023pub.verizon.net
	[206.46.173.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A4C1E00CAA
	for <poky@yoctoproject.org>; Thu, 10 Apr 2014 15:43:51 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173023.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N3U00AOQ4C7ZZA0@vms173023.mailsrvcs.net> for
	poky@yoctoproject.org; Thu, 10 Apr 2014 16:43:34 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id DE78C2016D; Thu,
	10 Apr 2014 17:43:18 -0400 (EDT)
Date: Thu, 10 Apr 2014 17:43:18 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
Message-id: <20140410214318.GV3370@denix.org>
References: <72fd694877e24e5a95574a18a2e31d09@BLUPR05MB037.namprd05.prod.outlook.com>
	<CABwVrCq7Z_0NgYv2H7JfW1O+w+Ld5pGy3OsBC6L9wmeOwOKgsg@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CABwVrCq7Z_0NgYv2H7JfW1O+w+Ld5pGy3OsBC6L9wmeOwOKgsg@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: openssl: Need PRINC+1 in recipe?
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
X-List-Received-Date: Thu, 10 Apr 2014 22:43:54 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Fri, Apr 11, 2014 at 12:30:31AM +0300, Alexandru Vaduva wrote:
> Sorry to hijack this conversation but I believe in the next version of poky
> the package openssl should be updated and and for the rest of the version a
> patch should be applied to solve the newly appeared exploit.
> More info here:
> http://thehackernews.com/2014/04/heartbleed-openssl-zero-day-bug-leaves.html
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0160

Yes, that's what he was referring to...


> On Thu, Apr 10, 2014 at 11:20 PM, Bryan Evenson <bevenson@melinkcorp.com>wrote:
> 
> > All,
> >
> > I was previously on dylan-1.4.1 and today I upgraded to poky/dylan HEAD to
> > take in the openssl security patches.  Things are rebuilding, but I noticed
> > that the built package version is openssl-1.0.1e-r15.0, which is the same
> > version currently installed on my system.  Shouldn't the PR line change to:
> >
> > PR = "${INC_PR+1}.0"
> >
> > For the packaging systems to take in the update?

Well, I guess people are so used to not caring about tracking PRs anymore, 
they forget to bump them when backporting fixes to older branches. Paul?

-- 
Denys

