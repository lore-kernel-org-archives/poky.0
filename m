Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71D444C80332
	for <poky@yoctoproject.org>; Wed,  3 Aug 2011 07:07:15 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D0DBA16603E9; Wed,  3 Aug 2011 06:07:11 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7F20416603E1;
	Wed,  3 Aug 2011 06:07:09 -0600 (MDT)
Message-ID: <4E3939ED.5070608@mlbassoc.com>
Date: Wed, 03 Aug 2011 06:07:09 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4E393728.6040309@mlbassoc.com>
In-Reply-To: <4E393728.6040309@mlbassoc.com>
Subject: Re: Augmenting base files
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
X-List-Received-Date: Wed, 03 Aug 2011 12:07:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-08-03 05:55, Gary Thomas wrote:
> I'd like to add some additional files to my build. These are
> simple scripts, etc, and it makes sense to include them as part
> of the base-files package for my platform.
>
> I tried to use the attached .bbappend file for this. Sadly, after
> the package fetch/unpack/patch, it has virtually nothing in it
> and the build fails miserably.
> ERROR: Function 'base-files: LIC_FILES_CHKSUM points to invalid file: licenses/GPL-2' failed
>
> Looking at the work tree:
> $ ls tmp/work/mytarget-mydistro-linux/base-files-3.0.14-r69.1/
> license-destdir my_script temp
>
> Without the .bbappend, I see this in the work tree:
> $ ls tmp/work/mytarget-mydistro-linux/base-files-3.0.14-r69
> deploy-ipks host.conf issue licenses package profile share temp
> filesystems image issue.net motd packages-split pseudo shells usbd
> fstab inputrc license-destdir nsswitch.conf pkgdata rotation shlibs
>
> Note: I put my script in
> my-layer/packages/misc/base-files-3.0.14/mytarget/my_script
>
> If I replace this line in the .bbappend
> FILESEXTRAPATHS := "${THISDIR}/${PN}-${PV}"
> with these (the way I was told to do this when .bbappend first came available):
> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}/${MACHINE}"], d)}:"
> then the recipe works.

Sorry, this doesn't seem to be true - it still has problems either way.

The only way I've been able to get this to work at all is by changing SRC_URI
   SRC_URI += "\
       file://my_script \
   "
No other form seems to work.

A follow up problem is that my script gets installed, but doesn't seem to be
packaged.   I get a warning:
   WARNING: For recipe base-files, the following files were installed but not shipped in any package:
   WARNING:   my_script
I thought that this line in the main recipe should include my file:
   FILES_${PN} = "/"
How do I get my script to be included?

Note: this is becoming such a pain, I'll probably just write a special recipe
for it even though I think it makes sense to do it like I've been attempting...

>
> Obviously, I've done something major to upset things and/or I don't understand
> FILESEXTRAPATHS which I think should just add to the current list of places to
> satisfy SRC_URI.
>
> Ideas what I've done wrong?
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

