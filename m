Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EEC164C81006
	for <poky@yoctoproject.org>; Thu, 12 May 2011 04:20:57 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4C9KtC1030642;
	Thu, 12 May 2011 10:20:55 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30116-10; Thu, 12 May 2011 10:20:51 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4C9KmK5030636
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 12 May 2011 10:20:49 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4DCB19C0.3060103@linux.intel.com>
References: <4DCB19C0.3060103@linux.intel.com>
Date: Thu, 12 May 2011 10:20:40 +0100
Message-ID: <1305192040.30391.487.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: directdisk images - replace the image type with a script?
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
X-List-Received-Date: Thu, 12 May 2011 09:20:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 16:20 -0700, Darren Hart wrote:
> I recently discovered that the directdisk images are malformed:
> 
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1028
> 
> While reviewing the directdisk recipe, I'm wondering if this image type
> has any real usage model. These are x86 specific. They partition a file
> image so when written to a real disk you get goofy partition tables
> (partitions do not end on cylinder boundaries).
> 
> The current recipes mangle the .cfg file (writing binary data over the
> text file - I'm guessing the dd commands do this).
> 
> We could patch this up, but is it worth it? All the other systems create
> ext3 images which are then installed on a disk per the instructions in
> the README.hardware document. The live image provides a simple
> dd-to-disk-and-boot solution. It seems to me the directdisk idea could
> be replaced with a script "mksyslinuximage.sh" or similar that took the
> image and kernel to use and the drive to partition, install syslinux on,
> and copy the filesystem to.
> 
> Thoughts?

We did get requests for that image type but I agree the implementation
is flawed. The trouble with the ext3 approach is that you depend on the
user having a script, syslinux installed, maybe knowing the location of
some syslinux files (vary by distro?), a set of tools, possibly a kernel
and that they get all the commands/parameters to the script right.

I strongly dislike the way its currently implemented since it should be
an image type, not a separate recipe (the same complaint applies to
-live images).

Since you've looked at it, is it possible to fix it or are there
variables that can only be determined when you know the final disk
geometry?

The trouble with -live images is that you have to write them somewhere
secondary to make them persistent or you hit the overhead of ramdisks.
Its a fairly ugly format and not what some end users want.

Cheers,

Richard



