Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A29274C80ABA
	for <poky@yoctoproject.org>; Sun,  3 Jul 2011 07:28:44 -0500 (CDT)
Received: from [192.168.0.101] (91-64-95-94-dynip.superkabel.de [91.64.95.94])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 340E21B10C0D
	for <poky@yoctoproject.org>; Sun,  3 Jul 2011 12:36:42 +0000 (UTC)
Message-ID: <4E10607A.1070909@freyther.de>
Date: Sun, 03 Jul 2011 14:28:42 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110516 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E0DC212.5020808@freyther.de> <4E0DCF2C.1090602@windriver.com>
In-Reply-To: <4E0DCF2C.1090602@windriver.com>
X-Enigmail-Version: 1.1.1
Subject: Re: Installing GDB or the saga of getting RPM/Zypp to run on	JFFS2
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
X-List-Received-Date: Sun, 03 Jul 2011 12:28:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/01/2011 03:44 PM, Mark Hatle wrote:

> 
> macro files are being loaded from:
> 
> %{_usrlibrpm}/macros:%{_usrlibrpm}/poky/macros:%{_usrlibrpm}/poky/%{_target}/macros:%{_etcrpm}/macros.*:%{_etcrpm}/macros:%{_etcrpm}/%{_target}/macros:~/.oerpmmacros
> 
> The key above is the /etc/rpm/macros.*
> 
> I would recommend a new file be generated called /etc/rpm/macros.jffs2 that
> changes the setting as appropriate for that filesystem.  (How it's placed into
> the filesystem I'm not sure.  I think it all comes down to detecting we're
> building a jffs2 filesystem and doing it there.  Perhaps in the rootfs_rpm.bbclass?)

What do you think about something like the change below? Alternatively one
could write a post-inst script that checks if one is on jffs2 and then creates
the config file.


diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 3a11858..70459e5 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -139,6 +139,14 @@ EOF
        install -d ${IMAGE_ROOTFS}/${sysconfdir}
        echo ${BUILDNAME} > ${IMAGE_ROOTFS}/${sysconfdir}/version

+
+       # check if there is a jffs2 install, it requires a workaround
+       # due lacking support for MMAP read/write.
+       (echo "${IMAGE_FSTYPES}" | grep "jffs2" > /dev/null)
+       if [ $? == 0 ]; then
+               echo "%__dbi_txn      create lock log txn auto_commit nommap
private" > ${IMAGE_ROOTFS}/etc/rpm/macros.jffs2
+       fi
+
        ${RPM_POSTPROCESS_COMMANDS}
        ${ROOTFS_POSTPROCESS_COMMAND}

@@ -164,6 +172,7 @@ EOF
 }

 remove_packaging_data_files() {
+       rm -rf ${IMAGE_ROOTFS}/etc/rpm/macros.jffs2
        rm -rf ${IMAGE_ROOTFS}${rpmlibdir}
        rm -rf ${IMAGE_ROOTFS}${opkglibdir}
 }

