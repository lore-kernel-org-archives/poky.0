Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A356FE006B8
	for <poky@yoctoproject.org>; Sun, 11 Dec 2011 01:48:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBB9mdno018978;
	Sun, 11 Dec 2011 09:48:39 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18623-02; Sun, 11 Dec 2011 09:48:34 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBB9mTCl018972
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 11 Dec 2011 09:48:30 GMT
Message-ID: <1323596908.2731.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Sun, 11 Dec 2011 09:48:28 +0000
In-Reply-To: <4EE2DB52.5050107@windriver.com>
References: <4EE2887C.3000601@gherzan.ro> <4EE29B38.3030104@linux.intel.com>
	<4EE2A184.6020901@gherzan.ro> <4EE2DB52.5050107@windriver.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Sun, 11 Dec 2011 09:48:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-12-09 at 22:08 -0600, Mark Hatle wrote:
> On 12/9/11 6:02 PM, Andrei Gherzan wrote:
> >
> >> This looks like our debian-style package renaming, which renames
> >> libraries to include the lib prefix.
> >>
> >> We have a brief blurb about it here:
> >> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-debian
> >>
> >> Regards,
> >> Joshua
> >
> > Yes it looks like. But here is the problem: i included this pkg in IMAGE-INSTALL
> > and i found library from -extra with even if
> > LICENSE_${PN}-extra = "GPLv3+"
> >
> > And i think that this could be because of this name style change.
> 
> There are two issues here.  The first is that IMAGE_INSTALL is the binary 
> package name.  This name can be munged with the renaming as Joshua mentioned. 
> Most people assume that this name matches the source recipe name.  So there is 
> confusion to deal with.
> 
> The other issue is that any place a user is asked to list a -binary- package 
> name, it should go through the same munging process as it does when things are 
> generated.  The IMAGE_INSTALL does not do this at this time.  (It -really- 
> should!)  This has been on my list of things to work on for a while now, but I 
> have not had the time to get to it.
> 
> Patches are welcome!  ;)

To quote image.bbclass:

export PACKAGE_INSTALL ?= "${IMAGE_INSTALL} ${FEATURE_INSTALL}"

python () {
    # If we don't do this we try and run the mapping hooks while parsing which is slow
    # bitbake should really provide something to let us know this...
    if d.getVar('BB_WORKERCONTEXT', True) is not None:
        runtime_mapping_rename("PACKAGE_INSTALL", d)
        runtime_mapping_rename("PACKAGE_INSTALL_ATTEMPTONLY", d)
}

so as far as I know, the remapping does work.

Cheers,

Richard


