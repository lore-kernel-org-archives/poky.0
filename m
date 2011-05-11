Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E82F54C80A47
	for <poky@yoctoproject.org>; Wed, 11 May 2011 18:20:19 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2011 16:20:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,354,1301900400"; d="scan'208";a="745947922"
Received: from unknown (HELO [10.255.12.71]) ([10.255.12.71])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2011 16:20:19 -0700
Message-ID: <4DCB19C0.3060103@linux.intel.com>
Date: Wed, 11 May 2011 16:20:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: directdisk images - replace the image type with a script?
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
X-List-Received-Date: Wed, 11 May 2011 23:20:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I recently discovered that the directdisk images are malformed:

http://bugzilla.pokylinux.org/show_bug.cgi?id=1028

While reviewing the directdisk recipe, I'm wondering if this image type
has any real usage model. These are x86 specific. They partition a file
image so when written to a real disk you get goofy partition tables
(partitions do not end on cylinder boundaries).

The current recipes mangle the .cfg file (writing binary data over the
text file - I'm guessing the dd commands do this).

We could patch this up, but is it worth it? All the other systems create
ext3 images which are then installed on a disk per the instructions in
the README.hardware document. The live image provides a simple
dd-to-disk-and-boot solution. It seems to me the directdisk idea could
be replaced with a script "mksyslinuximage.sh" or similar that took the
image and kernel to use and the drive to partition, install syslinux on,
and copy the filesystem to.

Thoughts?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

