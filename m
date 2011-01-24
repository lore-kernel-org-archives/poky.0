Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E5F44C8109B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 10:05:46 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0OG7dZ4016387; Mon, 24 Jan 2011 16:07:39 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id TVY4bXv3bCz2; Mon, 24 Jan 2011 16:07:39 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0OG6Imc016257
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 24 Jan 2011 16:06:20 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dexuan Cui <dexuan.cui@intel.com>
In-Reply-To: <cover.1295359004.git.dexuan.cui@intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
Date: Mon, 24 Jan 2011 16:04:05 +0000
Message-ID: <1295885045.14388.45539.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [RFC: enhance toolchain bootstrap process: v3: 0/7] enhance the toolchain bootstrap process
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
X-List-Received-Date: Mon, 24 Jan 2011 16:05:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Dexuan,

On Tue, 2011-01-18 at 21:57 +0800, Dexuan Cui wrote:
> Hi Richard and all,
> 
> The patch set enhances the toolchain bootstrap process by installing a separate sysroot for each step of the process.
> The purpose is to avoid file overwriting in the current global sysroot, namely, to fix Bug 239: http://bugzilla.pokylinux.org/show_bug.cgi?id=239
> 
> 
> The basic idea is straightforward:
> 1) For gcc-cross-initial and -intermediate, by changing MULTIMACH_TARGET_SYS to install the files into new locations;
> 2) Fix the build of eglibc-initial, eglibc by using the appropriate compilers, libs, headers;
> 3) Also make proper changes for the crosssdk/nativesdk version.
> 
> I've split all the changes into small git commits and each commit should be basically self-explanatory. :-)

I've had a look through this and experimented a little with the code and
I've some feedback:

  sstate.bbclass: allow each step of toolchain bootstrap processes to do populate_sysroot independently
  cross.bbclass: make MULTIMACH_TARGET_SYS adjustable for bindir, libdir, libexecdir

These two are fine.

  gcc-cross-initial, gcc-crosssdk-initial: change CROSS_TARGET_SYS_DIR and insall into new locations

This change is ok but its incomplete. Why? If I apply this change and
try a build, things won't work as it needs bits from later commits. To
illustrate this and some other details, take a look at:

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/tt-bootstrap&id=5512f876b103987b74722a7788a1ebe797852bbe

Here I've updated glibc and eglibc to use the new locations so the
change will allow a build to succeed in its own right. Notice that I've
simplified the variables quite a bit too.

There is also a subsequent commit on the branch to enable this change
for gcc-cross-intermediate.

  eglibc-initial, eglibc-initial-nativesdk: install into individual sysroots
  gcc-cross-intermediate, gcc-crosssdk-intermediate: change CROSS_TARGET_SYS_DIR and insall into new locations
  cross.bbclass: modify sysroot_stage_all to allow gcc-{cross,crossdk}-intermediate to populate the libgcc_s.so* files
  eglibc, eglibc-nativesdk: fix the build due to changes to eglibc-initial and gcc-cross-intermediate

These other changes need separating out more cleanly. For example,
adding a patch to gcc should be a separate commit, the update to use a
new sysroot directory should probably be one commit so builds work
before and after it.

I'm also wondering if there isn't a neater way to handle the target
sysroot problem instead of the prefixes you're using. I'll send an
update as and when I've experimented a little to determine if this is
possible.

Cheers,

Richard




