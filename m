Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 012A2E013AD
	for <poky@yoctoproject.org>; Fri, 16 Mar 2012 16:47:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2GNlbEx009989;
	Fri, 16 Mar 2012 23:47:37 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08490-06; Fri, 16 Mar 2012 23:47:33 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2GNlRx5009981
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 16 Mar 2012 23:47:28 GMT
Message-ID: <1331941648.18586.213.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 16 Mar 2012 23:47:28 +0000
In-Reply-To: <4F638691.6020803@mlbassoc.com>
References: <4F63546E.4000407@mlbassoc.com> <4F635D1A.2030304@mlbassoc.com>
	<4F638691.6020803@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Can't build web-webkit
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
X-List-Received-Date: Fri, 16 Mar 2012 23:47:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-16 at 12:29 -0600, Gary Thomas wrote:
> On 2012-03-16 09:32, Gary Thomas wrote:
> > On 2012-03-16 08:55, Gary Thomas wrote:
> >> I'm getting an error fetching for meta/recipes-sato/web/web-webkit_git.bb
> >> I tried running the clone by hand:
> >>
> >> $ git clone git://git.yoctoproject.org/web-webkit
> >> Cloning into 'web-webkit'...
> >> fatal: remote error: access denied or repository not exported: /web-webkit
> 
> Filed as bug #2135
> 
> >>
> >> Query: I have a tar package of this (I built it yesterday! using only that)
> >> Why is the fetcher trying to go to the network for it now?
> >>
> >> Note: if I populate ${BUILD}/downloads/git2/git.yoctoproject.org.web-webkit
> >> from my tarball, the build succeeds without problems.
> >
> > It seems that something has changed in the fetcher (git) code
> >
> > I was previously using (which works with no network activity)
> > commit 8f07bdc0a42dd7a7c3acf5d1b13220dbc98c8017
> > Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> > Date: Wed Feb 29 16:27:21 2012 +0000
> >
> > Now I'm using (which fails)
> > commit be0f9dd483af2a2f55b2ae8ef9ca172e7c90819c
> > Author: Paul Eggleton <paul.eggleton@linux.intel.com>
> > Date: Thu Mar 15 13:17:58 2012 +0000
> >
> > Any ideas where I should look?
> >
> 
> I've bisected this to this commit:
>    commit 87ef82dead665ea8805ccbab8ef871dc20008701
>    Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>    Date:   Tue Dec 6 22:20:11 2011 +0000
> 
>      bitbake/fetch: Fix uri_replace
> 
> Richard - Any ideas what might have broken in your changes?  Whatever this
> change does, it breaks the use of a pre-staged tarball for git trees (at least)

I think you've found the problem and I've applied the patch, thanks!

Sorry about the C&P error in the commit.

Cheers,

Richard



