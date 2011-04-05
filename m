Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0F3C4C800A2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:32:43 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so148925gxk.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=z2zyRCAUGlyA9dDdVaxcI7d9sMxHn350qmtjd1WJ/64=;
	b=s5ugB+zyHdOzzN3AmW2KALxZWjlxK4FGnktMIBXHzuPKblg1N7Dx2n040av8oSP7kR
	FE1HFeAbpCt1hEo2nb656S0NCqFgQGvHzrfp7dTcmeYRmcjeQ/13/3TLeVoXZecZF9jI
	CwmlNKj2gLtvmhYoP+CsfDQ/3NnqYDJBGB68A=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=tDLYDg6SRZz5cyKNfGqPuyp2CVDvbZLK5Bxa/70YvFvgSBN3eTqRzYIBsWvD7fz35E
	/5zIKla1tq8HaL0rdlrTDn88w60/juWUfv9kYqTllc2K3soMt2rhRLRt/HG61tF0yXeY
	qG2D++QPn6nrpNMPBjKnUncR82UpPYn720oYg=
Received: by 10.236.191.71 with SMTP id f47mr11540255yhn.15.1302010363028;
	Tue, 05 Apr 2011 06:32:43 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id 42sm2557121yhl.68.2011.04.05.06.32.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:32:41 -0700 (PDT)
Message-Id: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 5 Apr 2011 08:26:27 -0500
Date: Tue, 05 Apr 2011 06:32:41 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 00/16] [DOCS] Poky Reference Manual Updates
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
X-List-Received-Date: Tue, 05 Apr 2011 13:32:43 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These changes represent edits through the structure, bitbake.
Other notable changes is the Autotooled section re-written.
Also, SSTATE_DIR variable added to the variables appendix.
Style tags cleaned up.  OProfile cleaned up a bit.  Building 
the cross-GDB Package fixed.  

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/poky-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (16):
  documentation/poky-ref-manual/poky-ref-manual.xml: Updated
    rev-history table
  documentation/poky-ref-manual/development.xml: Edits for Eclipse and
    Anjuta
  documentation/poky-ref-manual/development.xml: Corrected command
    syntax
  documentation/poky-ref-manual/development.xml:  OProfileUI section
    updated
  documentation/poky-ref-manual/ref-structure.xml: bitbake section
    updated
  documentation/poky-ref-manual/ref-bitbake.xml:  removed 'varname'
    style
  documentation/poky-ref-manual/ref-bitbake.xml:  Grammar fix
  documentation/poky-ref-manual/ref-bitbake.xml: type fixed
  document/poky-ref-manual/ref-classes.xml: removed <function> tag
  documentation/poky-ref-manual/ref-classes.xml:  Fix to <filename> tag
  documentation/poky-ref-manual/ref-classes.xml: re-write of autotooled
    packages
  documentation/poky-ref-manual/ref-classes.xml: tag updates
  documentation/poky-ref-manual/ref-structure.xml:  Edits for Rel 1.0
  documentation/poky-ref-manual/ref-variables.xml: added SSTATE_DIR
    variable
  documentation/poky-ref-manual/ref-bitbake.xml: BitBake parsing
    section update
  documentation/poky-ref-manual/ref-bitbake.xml: style tags updated

 documentation/poky-ref-manual/development.xml     |   61 +++++++---
 documentation/poky-ref-manual/poky-ref-manual.xml |    4 +-
 documentation/poky-ref-manual/ref-bitbake.xml     |   50 ++++----
 documentation/poky-ref-manual/ref-classes.xml     |  128 +++++++++------------
 documentation/poky-ref-manual/ref-structure.xml   |  108 ++++++++++++++++--
 documentation/poky-ref-manual/ref-variables.xml   |    6 +
 6 files changed, 229 insertions(+), 128 deletions(-)


