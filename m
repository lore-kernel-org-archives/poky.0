Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 725DAE00502
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 08:06:36 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8GFCaFQ026155; Fri, 16 Sep 2011 16:12:37 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 8FkJ9Zu91Mtx; Fri, 16 Sep 2011 16:12:36 +0100 (BST)
Received: from [192.168.1.36] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8GFCT6w026140
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 16 Sep 2011 16:12:31 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 16 Sep 2011 16:06:17 +0100
In-Reply-To: <CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
	<CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1316185585.20858.29.camel@ted>
Mime-Version: 1.0
Cc: poky@yoctoproject.org, chinmaya hoshing <cahoshing@gmail.com>
Subject: Re: Getting error in linux-yocto kernel during build.
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
X-List-Received-Date: Fri, 16 Sep 2011 15:06:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:
> On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
> <bruce.ashfield@gmail.com> wrote:
> > On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing <cahoshing@gmail.com> wrote:
> >> Hi ,
> >> I am building poky-build minimal live image for fishriver machine on 64 bit
> >> host machine.
> >> As I am having limited internet band-width, so I have identified all the
> >> dependent packages and setup a Apache server on my local system so that I
> >> can redirect the SRC_URI of all the packages to my local server.
> >> I have changed the related recipes to build  minimal live image, and modify
> >> bitbake.conf to add LOCAL_MIRROR="xxx.xxx.xxx.xxx/packages" , in side
> >> packages I have tars which  was present "build/download" folder.
> >> While building linux-yocto, fetch and unpack was done but during kernel
> >> checkout whatever git commits I have done previously in poky source were
> >> flashed out (lost),  also the only recipe remains in  meta/recipe-kernel/ is
> >> linux .
> >>
> >> Following are the changes made in
> >> meta/recipes-kernel/linux/linux-yocto_git.bb
> >> #SRCREV_FORMAT = "meta_machine"
> >> SRC_URI = "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
> >>  // This tar file I took from
> >> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2
> >> PV = "${LINUX_VERSION}"
> >> In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I modified
> >> PREFERRED_VERSION_linux-yocto = "3.0"                (which  was
> >> PREFERRED_VERSION_linux-yocto = "3.0+git%" )
> >>
> >> Can any one help me to find the solution that if I had to pull linux kernel
> >> source from tar file or such and not from git repository. What things I have
> >> to do.
> >
> > The linux-yocto recipes are designed from the ground up to work on a git
> > based repository, and there's really no way to get around that fact (and no
> > plans to make any changes in this area).
> 
> Thinking further about this, if the tgz actually was just a tarball of the git
> repositories (including the git blobs), it could work.

This is exactly what we use behind the scenes for mirroring the git
repositories so this should work. It should be possible to use our
existing PREMIRROR code to avoid having to rewrite individual recipes
though.

It will firstly unpack the tarball, then access whether the revisions it
needs are present. If they're not, it will then (and only then) try and
fetch them over the network. If the tarball is complete it will
therefore not touch the network. If its incomplete it will only fetch
the different (delta).

Cheers,

Richard


