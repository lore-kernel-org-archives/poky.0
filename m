Return-Path: <glep-poky@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8643DE0059A
	for <poky@pokylinux.org>; Thu, 29 Mar 2012 02:00:13 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1SDBDC-0007dm-KJ
	for poky@pokylinux.org; Thu, 29 Mar 2012 11:00:06 +0200
Received: from pd9e17ed1.dip.t-dialin.net ([217.225.126.209])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 29 Mar 2012 11:00:06 +0200
Received: from dzu by pd9e17ed1.dip.t-dialin.net with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 29 Mar 2012 11:00:06 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Detlev Zundel <dzu@denx.de>
Date: Thu, 29 Mar 2012 10:54:30 +0200
Organization: Church of Emacs - Missionary division
Message-ID: <m2wr634wjd.fsf@lamuella.denx.de>
References: <4F71D17B.2030200@mlbassoc.com> <1332859973.3854.15.camel@elmorro>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: pd9e17ed1.dip.t-dialin.net
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.0.93 (gnu/linux)
Cancel-Lock: sha1:fIkX/riIl2wGIS657NuZaORSrDs=
Subject: Re: Strange file names
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
X-List-Received-Date: Thu, 29 Mar 2012 09:00:13 -0000
Content-Type: text/plain

Hi Tom,

> It may seem strange, but filenames are just text after all, and I wanted
> to avoid having separate 'meta-files' describing that same logic that
> would also have to be kept in sync, so decided it would be less
> error-prone to keep that information in the filenames themselves.

It indeed is a possibility to encode "more than usual" into filenames,
but it certainly will have other effects also.  Now that the name of the
file itself contains "business logic" that is important for the system,
I wonder how this interacts with other parts of the (sometimes
unwritten) expectations of the development environment.  One thing which
immediately comes to my mind is the interaction with the version control
system.

Changing "an attribute" of such a file (which is coded in the inline
python code) will essentially look like the deletion and addition of a
file for version control.  Of course our version control (git) will be
clever enough to identify the file as being the same, but still we now
have an operation which was previously not used to change "business
logic", i.e. renaming files, doing just that.  So for tracing the
history of such an item I now need to trace the "rename history"
additionally to the "content history".

So in contrast to the original idea of "keeping the information in one
place", we now have two places, i.e. the content and the filename and
the latter is really a very uncommon place for that.

I do have a severe bad feeling in my stomach about going into this
(uncharted) territory and I do not know whether the potential problems
that we (yet) do not see are worth it.  So I would also like you to
reconsider that strategy.

Thanks
  Detlev

--
DENX Software Engineering GmbH,      MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich,  Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-40 Fax: (+49)-8142-66989-80 Email: dzu@denx.de


