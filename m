Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9E294C800A4
	for <poky@yoctoproject.org>; Thu, 26 May 2011 08:57:38 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4QDsUq5016018;
	Thu, 26 May 2011 14:54:30 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15732-05; Thu, 26 May 2011 14:54:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4QDsMlj016012
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 26 May 2011 14:54:25 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4DDE37EE.101@de-haardt.com>
References: <4DDE01BB.3000109@de-haardt.com> <1306402981.27470.97.camel@rex>
	<4DDE37EE.101@de-haardt.com>
Date: Thu, 26 May 2011 14:54:16 +0100
Message-ID: <1306418056.27470.181.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@yoctoproject.org>
Subject: Re: wrong rpm name qt package
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
X-List-Received-Date: Thu, 26 May 2011 13:57:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-05-26 at 13:22 +0200, Gerard van den Bosch wrote:
> On 05/26/2011 11:43 AM, Richard Purdie wrote:
> > On Thu, 2011-05-26 at 09:31 +0200, Gerard van den Bosch wrote:
> >> I have developed a shared library using Qt, it compiles without any
> >> problems but it goes wrong with rpm packaging.
> >> When it packages it should create a rpm package with the name
> >> "libxmlpcpqt" but it creates a package with "libxmlpcpqt1".
> >> My question is where does the '1' come from?
> >>
> >> The install part from the recipe is as follows:
> >> do_install() {
> >>       install -d ${D}${libdir}
> >>       install -m 0755 ${S}/${PN}.so ${D}${libdir}
> >> }
> >>
> >> In
> >> the /tmp/work/armv7a-poky-linux-gnueabi/libxmlpcpqt-0.1-r1/image/usr/lib the libxmlpcpqt.so file correctly exists.
> > This happens as debian style package naming is enabled (debian.bbclass
> > is inherited).
> >
> > Cheers,
> >
> > Richard
> >
> I tried removing debian from the INHERITS+= variable in the poky.conf
> but then it printed it couldn't find the function that is inside
> debian.bbclass and didn't create the package.
> Modifying debian.bbclass would be too drastic so I work around it like
> this:
> Added PACKAGES+= ${PN}1 to my recipe
> Modified the IMAGE_INSTALL+= variable from libxmlpcpqt to libxmlpcpqt1
> This resulted in a working solution.

This is a bug and you should never need to do this. IMAGE_INSTALL should
be getting remapped to the new names. The code that is meant to do that
is at the top of image.bbclass:

    # If we don't do this we try and run the mapping hooks while parsing which is slow
    # bitbake should really provide something to let us know this...
    if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
        runtime_mapping_rename("PACKAGE_INSTALL", d)
        runtime_mapping_rename("PACKAGE_INSTALL_ATTEMPTONLY", d)

Can you check that the code is being called? I suspect something to do
with the BB_WORKERCONTEXT variable has been broken. We should be doing
this in a better way anyhow...

Cheers,

Richard





