Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F36DE011B8
	for <poky@yoctoproject.org>; Tue,  6 Sep 2011 07:20:45 -0700 (PDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1R0wW4-0006FD-J5
	for poky@yoctoproject.org; Tue, 06 Sep 2011 10:20:44 -0400
Date: Tue, 6 Sep 2011 10:20:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: poky@yoctoproject.org
Message-ID: <alpine.DEB.2.02.1109061016470.17792@localhost6.localdomain6>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: wanting to clarify some details about PREMIRRORS
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
X-List-Received-Date: Tue, 06 Sep 2011 14:20:45 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  after a short and educational chat with a couple people who should
know, i want to clarify what i understand about PREMIRRORS so i can
document it properly.  and it seems that the poky list, not the yocto
list, is the right place for that.  (correct me if i'm wrong.)

  i'm reading the poky reference manual:

http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html

and here's what i *think* i understand about the proper use of
PREMIRRORS.

  first, it's for identifying more quickly accessible and downloadable
source for a given build, and it reflects *only tarballs*, is that
correct?  as in, regardless of how you would *normally* get some
software component for your build (ftp, http, git, svn, ...), what
PREMIRRORS represents is ***only*** tarballs that match precisely the
software component your build needs.  is that correct?

  also, is there a list of acceptable archive suffixes that PREMIRRORS
can handle?  i've seen .tar.gz, .tar.bz2, .tgz and so on.  is there a
fetcher method that makes it clear what you can and can't have in
PREMIRRORS?

  next, as i read it, the PREMIRRORS entries for ftp, http and https
represent what are normally tarballs, anyway.  when you get into
SCM-based fetches, then the PREMIRRORS location would contain the
resulting tarball you would have ended up with.

  for instance, with my default yocto build, i need to "git" the
3.0... linux kernel.  what i end up with is the 500M tarball
git2_git.yoctoproject.org.linux-yocto-3.0.tar.gz.  so as long as i
copy that tarball into my PREMIRRORS local directory, as long as my
subsequent yocto builds require *precisely* that git clone of the
kernel, my local PREMIRRORS tarball will be used, correct?

  am i making sense so far?  i'm sure i'll be asking more.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

