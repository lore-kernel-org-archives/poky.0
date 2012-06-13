Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CAD2E01304
	for <poky@yoctoproject.org>; Wed, 13 Jun 2012 01:08:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5D8896q019112;
	Wed, 13 Jun 2012 09:08:09 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16297-09; Wed, 13 Jun 2012 09:08:04 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5D881Tx019106
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 13 Jun 2012 09:08:02 +0100
Message-ID: <1339574880.8065.20.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patrick <kpa_info@yahoo.fr>
Date: Wed, 13 Jun 2012 09:08:00 +0100
In-Reply-To: <4FD83EC0.7050605@yahoo.fr>
References: <4FD753B2.9060705@yahoo.fr> <1339512456.8065.13.camel@ted>
	<4FD83EC0.7050605@yahoo.fr>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Running script after installation (postinst)
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
X-List-Received-Date: Wed, 13 Jun 2012 08:08:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2012-06-13 at 09:18 +0200, Patrick wrote:
> On 06/12/2012 04:47 PM, Richard Purdie wrote:
> > On Tue, 2012-06-12 at 16:35 +0200, Patrick wrote:
> >> Dear all,
> >>
> >> In one of our recipes we need to execute a small script after the
> >> installation of the package. Following yocto dev manual point 4.3.6 we
> >> have added a pkg_postinst function.
> >>
> >> This doesn’t work properly as the script is executed at first start-up
> >> and not after installation. Below are an example of this recipe.
> >>
> >> Do you have any idea why this script is started as first boot time and
> >> not after installation ?
> >>
> >> Thanks in advance for any help !
> >
> > We try and run postinstalls "offline" at image creation time. If they
> > fail, they run at first boot.
> >
> > You can tell which context you're in by the contents of the $D variable
> > (note, $D, not ${D}). For example, you could therefore do:
> >
> >
> > pkg_postinst_task-system-tweaks () {
> >     #!/bin/sh -e
> >
> >     #Mount tmprecovery at startup
> >     mkdir -p $D/tmprecovery
> >     mkdir -p $D/data
> >     echo "/dev/mtdblock6        /tmprecovery        yaffs2      0 0">>  $D/etc/fstab
> >     echo "/dev/mtdblock7        /data               yaffs2   noauto  0 0">>  $D/etc/fstab
> >

> The problems when using $D is that the script is executed against the 
> files of the package not against the whole rootfs. For example in the 
> dummy recipes above we change the file $D/etc/fstab that is not in the 
> package of the recipes.

If you reference $D as part of a postinst script, it will run against
the files of the rootfs, not just the package. There are some problems
ensuring dependencies are present when this happens though, some
backends like rpm don't like ensuring that dependencies are present.

> We have also tried to add (R)DEPENDS to the package that contains fstab 
> with no change.
> 
> Any idea why ?

You would need to add the dependency in and then it sounds like you're
probably using rpm and it doesn't want to honour the dependency for some
reason. You could add a rootfs post process command to add in what you
need which would guarantee all the files are present first...

Cheers,

Richard


