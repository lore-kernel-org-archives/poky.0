Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0822A4C8006D
	for <poky@lists.pokylinux.org>; Thu, 10 Feb 2011 09:13:12 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AFDCtX021159;
	Thu, 10 Feb 2011 15:13:12 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21041-02; Thu, 10 Feb 2011 15:13:08 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AFD5qT021153
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Feb 2011 15:13:05 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D53FA34.4000105@mlbassoc.com>
References: <4D533BCA.9000902@mlbassoc.com>
	<1297301826.20543.1722.camel@rex>  <4D53FA34.4000105@mlbassoc.com>
Date: Thu, 10 Feb 2011 15:13:00 +0000
Message-ID: <1297350780.20543.5060.camel@rex>
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
X-List-Received-Date: Thu, 10 Feb 2011 15:13:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-10 at 07:46 -0700, Gary Thomas wrote:
> On 02/09/2011 06:37 PM, Richard Purdie wrote:
> > On Wed, 2011-02-09 at 18:13 -0700, Gary Thomas wrote:
> >> I just noticed that with the new fetcher, git tarballs are
> >> no longer being created.
> >>     * Is this expected?
> >>     * Can it be [re]enabled?  This is a great help to me so I
> >>       can distribute pre-staged sources to my customers. Tarballs
> >>       are much more convenient than .git repositories.
> >
> > Its expected, just set BB_GENERATE_MIRROR_TARBALLS = "1" in local.conf
> > to generate them if you need them.
> >
> > As standard the average user doesn't need/use/want them and the fetcher
> > no longer needs them so we don't generate them by default any more.
> 
> What would I need to do to get them generated?  Here's what I
> tried (which did not work):
> 
> * I noticed that my build used git.pokylinux.org.matchbox-terminal, so
> 
> ... set BB_GENERATE_MIRROR_TARBALLS in local.conf
> % bitbake matchbox-terminal -c clean
> % rm -f sstate-cache/*matchbox-terminal*
> % bitbake matchbox-terminal
> 
> It seemed happy to use the stored GIT in downloads/git2/git.pokylinux.org.matchbox-terminal,
> but did not generate a tarball during the process.

That download directory already existed? It only updates the tarball if
the repo changes:

        os.chdir(ud.clonedir)
        mirror_tarballs = data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True)
        if mirror_tarballs != "0" and ud.repochanged:
            logger.info("Creating tarball of git repository")
            runfetchcmd("tar -czf %s %s" % (repofile, os.path.join(".") ),

(from git.py in the fetcher)

I guess we could make it do this if the destination file doesn't exist
too, I'll add a patch to do that.

Cheers,

Richard


