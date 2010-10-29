Return-Path: <rcwoolley@gmail.com>
Received: from mail-wy0-f171.google.com (mail-wy0-f171.google.com
	[74.125.82.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAB6C4C80287
	for <poky@pokylinux.org>; Fri, 29 Oct 2010 15:01:03 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb39 with SMTP id 39so3608073wyb.2
	for <poky@pokylinux.org>; Fri, 29 Oct 2010 13:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=84wxXkQlVa9LU29BRNt1zA7TrkmaaOWCZXHCklHkJR0=;
	b=VDXvmfMPv0Pnb0vSjiSpSiiemB3DywWa3+sInG2zp8+f2Td40OKAVtzlCmmOQp/cs4
	Ib1gb5QFV/6LfMcMZ6tor5pO9vsvoyLE40Jd/HL+yD6oVkSnupg1G142p99JNnfMC4i5
	z4hGnIWPceW/KfZmG5TvGp0IdnrCTlkxbLysQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=FMEKJCscJ3lJcX/cMGvihPI23pu3DuQXiNtaYxXnPXrYprfEubqMMg9LoAufyz5avj
	/2mKDLkQCyNohen/yo22bbxwufbNkl3BXcHY20ucbuITfulRPLTuhlCmYPaFI7IU1Erg
	F5F41iz+zaOLIZTXTHMdiZlSojiTAVRqfe7Ew=
MIME-Version: 1.0
Received: by 10.216.52.135 with SMTP id e7mr3197132wec.98.1288381708124; Fri,
	29 Oct 2010 12:48:28 -0700 (PDT)
Received: by 10.216.74.79 with HTTP; Fri, 29 Oct 2010 12:48:28 -0700 (PDT)
Date: Fri, 29 Oct 2010 15:48:28 -0400
Message-ID: <AANLkTikxFm-z7tUAJV8zMvxOqQ3u3A9GbaSdJy0yuJjr@mail.gmail.com>
From: Rob Woolley <rcwoolley@gmail.com>
To: poky@pokylinux.org
Subject: do_rootfs() RPM error message
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Oct 2010 20:01:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I ran into a minor build system glitch and wanted to share the
workaround I used.

I was following the steps in the Poky quick start guide.  When the
build got to the do_rootfs() task, the rpm command complained on all
packages with:

 	installing package <PKG> needs 125MB on the /boot filesystem

My /boot partition is only 100MB which is what triggered the problem.

However, since the disk space on the host filesystem is irrelevant for
assembling the rootfs for the target, I added --ignoresize to the rpm
line that triggered the problem.

I suspect that it's related to the fact that rpm -U was used with
--justdb and without --root.  It may be needed on similar rpm calls as
well.

Once I made the change my build completed successfully.

Cheers,
Rob

diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 6e9cbba..ceab7c9 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -80,7 +80,7 @@ fakeroot rootfs_rpm_do_rootfs () {
        # an actual package install!
        ${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat
${DEPLOY_DIR_RPM}/solvedb.macro`" \
                -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
-               -U --justdb --noscripts --notriggers --noparentdirs
--nolinktos \
+               -U --justdb --noscripts --notriggers --noparentdirs
--nolinktos --ignoresize \
                ${IMAGE_ROOTFS}/install/install.manifest

        if [ ! -z "${PACKAGE_INSTALL_ATTEMPTONLY}" ]; then

