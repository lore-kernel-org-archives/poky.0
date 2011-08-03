Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 382F24C80332
	for <poky@yoctoproject.org>; Wed,  3 Aug 2011 06:55:23 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 54DA05AE686; Wed,  3 Aug 2011 05:55:22 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A056216603C2;
	Wed,  3 Aug 2011 05:55:20 -0600 (MDT)
Message-ID: <4E393728.6040309@mlbassoc.com>
Date: Wed, 03 Aug 2011 05:55:20 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Augmenting base files
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
X-List-Received-Date: Wed, 03 Aug 2011 11:55:23 -0000
X-Groupsio-MsgNum: 6832
Content-Type: multipart/mixed; boundary="------------040104000201010008030601"

--------------040104000201010008030601
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'd like to add some additional files to my build.  These are
simple scripts, etc, and it makes sense to include them as part
of the base-files package for my platform.

I tried to use the attached .bbappend file for this.  Sadly, after
the package fetch/unpack/patch, it has virtually nothing in it
and the build fails miserably.
   ERROR: Function 'base-files: LIC_FILES_CHKSUM points to invalid file: licenses/GPL-2' failed

Looking at the work tree:
   $ ls tmp/work/mytarget-mydistro-linux/base-files-3.0.14-r69.1/
   license-destdir  my_script  temp

Without the .bbappend, I see this in the work tree:
   $ ls tmp/work/mytarget-mydistro-linux/base-files-3.0.14-r69
   deploy-ipks  host.conf  issue            licenses       package         profile   share   temp
   filesystems  image      issue.net        motd           packages-split  pseudo    shells  usbd
   fstab        inputrc    license-destdir  nsswitch.conf  pkgdata         rotation  shlibs

Note: I put my script in
   my-layer/packages/misc/base-files-3.0.14/mytarget/my_script

If I replace this line in the .bbappend
   FILESEXTRAPATHS := "${THISDIR}/${PN}-${PV}"
with these (the way I was told to do this when .bbappend first came available):
   THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
   FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}/${MACHINE}"], d)}:"
then the recipe works.

Obviously, I've done something major to upset things and/or I don't understand
FILESEXTRAPATHS which I think should just add to the current list of places to
satisfy SRC_URI.

Ideas what I've done wrong?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------040104000201010008030601
Content-Type: text/plain;
 name="base-files_3.0.14.bbappend"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="base-files_3.0.14.bbappend"

#
# Just tell BitBake where to find my component files
#
FILESEXTRAPATHS := "${THISDIR}/${PN}-${PV}"
PR .= ".1"

SRC_URI_mytarget_append = "\
    file://my_script \
"

do_install_mytarget_append () {
    install -m 0755 ${WORKDIR}/my_script ${D}${SYSCONFDIR}/my_script
}


--------------040104000201010008030601--
