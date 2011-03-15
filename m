Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40C8D4C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 04:40:23 -0500 (CDT)
Received: from [192.168.0.7] (5ad4d781.bb.sky.com [90.212.215.129])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 0D56B12EC00B
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 05:24:04 -0500 (CDT)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4D7E8D6B.1020209@linux.intel.com>
References: <4D7E88AC.5060809@linux.intel.com>
	<4D7E8D6B.1020209@linux.intel.com>
Date: Tue, 15 Mar 2011 09:40:15 +0000
Message-ID: <1300182015.2537.6.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 (2.32.2-1.fc14) 
Subject: Re: DISTRO 'poky' not found
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
X-List-Received-Date: Tue, 15 Mar 2011 09:40:23 -0000
X-Groupsio-MsgNum: 4544
Content-Type: multipart/mixed; boundary="=-rN491b8fa7Td4vqUe/1U"

--=-rN491b8fa7Td4vqUe/1U
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-14 at 14:49 -0700, Darren Hart wrote:
> 
> On 03/14/2011 02:29 PM, Darren Hart wrote:
> > I've run into this error several times during development of various things. It will be in a build tree that I have been working with for a while, then when I come back to it, I get the following. Any idea what triggers this? I suspect something in my workflow, but I can't imagine what it would be. I'd really like to not have to delete my build tree.
> >
> > $ cd poky.git
> > $ source poky-init-build-env build-qemux86/
> >
> > ### Shell environment set up for Poky builds. ###
> >
> > You can now run 'bitbake<target>'
> >
> > Common targets are:
> >      poky-image-minimal
> >      poky-image-sato
> >      meta-toolchain
> >      meta-toolchain-sdk
> >
> > You can also run generated qemu images with a command like 'poky-qemu qemux86'
> >
> > $ bitbake linux-yocto
> > ERROR:  Poky's config sanity checker detected a potential misconfiguration.
> >      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
> >      Following is the list of potential problems / advisories:
> >
> >      Please set TARGET_OS directly, or choose a MACHINE or DISTRO that does so.
> > DISTRO 'poky' not found. Please set a valid DISTRO in your local.conf
> 
> 
> Thanks to Beth and Mark who pointed me in the right direction. This 
> appears to be a problem with master, if I cherry-pick my changes on top 
> of the bernard branch, the build continues as expected.
> 

Ah, our layers.conf.sample doesn't include the new meta-yocto layer. So
I'm guessing this is a clean build dir?

We need a patch like the attached.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre

--=-rN491b8fa7Td4vqUe/1U
Content-Disposition: attachment; filename="layers.patch"
Content-Type: text/x-patch; name="layers.patch"; charset="UTF-8"
Content-Transfer-Encoding: 7bit

diff --git a/meta-yocto/conf/bblayers.conf.sample b/meta-yocto/conf/bblayers.conf.sample
index b2f37c0..ee85a98 100644
--- a/meta-yocto/conf/bblayers.conf.sample
+++ b/meta-yocto/conf/bblayers.conf.sample
@@ -5,4 +5,5 @@ LCONF_VERSION = "4"
 BBFILES ?= ""
 BBLAYERS = " \
   ##POKYBASE##/meta \
+  ##POKYBASE##/meta-yocto \
   "

--=-rN491b8fa7Td4vqUe/1U--
