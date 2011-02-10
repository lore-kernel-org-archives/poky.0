Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2A0A4C800AD
	for <poky@lists.pokylinux.org>; Thu, 10 Feb 2011 09:34:15 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AFYAhk021441;
	Thu, 10 Feb 2011 15:34:10 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21041-07; Thu, 10 Feb 2011 15:34:06 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AFY1hA021435
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Feb 2011 15:34:01 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <1297350780.20543.5060.camel@rex>
References: <4D533BCA.9000902@mlbassoc.com>
	<1297301826.20543.1722.camel@rex>  <4D53FA34.4000105@mlbassoc.com>
	<1297350780.20543.5060.camel@rex>
Date: Thu, 10 Feb 2011 15:33:55 +0000
Message-ID: <1297352035.20543.5148.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: git tarballs gone?
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
X-List-Received-Date: Thu, 10 Feb 2011 15:34:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-10 at 15:13 +0000, Richard Purdie wrote:
> On Thu, 2011-02-10 at 07:46 -0700, Gary Thomas wrote:
> > It seemed happy to use the stored GIT in downloads/git2/git.pokylinux.org.matchbox-terminal,
> > but did not generate a tarball during the process.
> 
> That download directory already existed? It only updates the tarball if
> the repo changes:
> 
>         os.chdir(ud.clonedir)
>         mirror_tarballs = data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True)
>         if mirror_tarballs != "0" and ud.repochanged:
>             logger.info("Creating tarball of git repository")
>             runfetchcmd("tar -czf %s %s" % (repofile, os.path.join(".") ),
> 
> (from git.py in the fetcher)
> 
> I guess we could make it do this if the destination file doesn't exist
> too, I'll add a patch to do that.

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=59a08262aba2d2b9b8b299a2818fb4cfe13b9909

It turned out to be a bit more ugly than I'd anticipated but a nice
improvement.

Cheers,

Richard


