Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F81D4C8106A
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 13:41:35 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Dec 2010 11:41:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,240,1291622400"; d="scan'208";a="872532615"
Received: from unknown (HELO [10.255.13.220]) ([10.255.13.220])
	by fmsmga001.fm.intel.com with ESMTP; 28 Dec 2010 11:41:34 -0800
Message-ID: <4D1A3D6C.4000508@linux.intel.com>
Date: Tue, 28 Dec 2010 11:41:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: New live image missing rootfs
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
X-List-Received-Date: Tue, 28 Dec 2010 19:41:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm working on a preempt-rt layer, currently in my contrib branch:

http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/meta-rt

It builds and boots for qemux86-64 and creates a similarly sized image 
for atom-pc, but when I build the -live image, the resulting image is 
8.5 MB instead of the expected 81 MB. Mounting the 8.5 MB image shows it 
to be missing the root filesystem.

$ ls poky-image-minimal-rt
initrd  ldlinux.sys  syslinux.cfg  vmlinuz

I followed the same process I used to create the live image recipes in 
the meta-demo layer. Can anyone explain why this recipe wouldn't 
complete the assembly - and not issue any obvious complaints to the console?


Thanks,

-- 
Darren Hart
Yocto Linux Kernel

