Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7584AE00C8F; Thu,  2 Jun 2016 03:24:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05767E00C81
	for <poky@yoctoproject.org>; Thu,  2 Jun 2016 03:24:01 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs48.server.lan (via HTTP);
	Thu, 2 Jun 2016 12:24:00 +0200
MIME-Version: 1.0
Message-ID: <trinity-73631430-ded2-47fb-b228-9630677ca200-1464863040175@3capp-gmx-bs48>
From: Arno <star@gmx.li>
To: poky@yoctoproject.org
Date: Thu, 2 Jun 2016 12:24:00 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:7PsrzDxnx0gUiatNTJoao3NZ12qCuGp61H4hdtQLB+F
	r2nFNp5kCKLDeXUIAZpEYXA8gahcjvO+Ex/wT8+rvu1+uYPObn
	xfC7uvrVIwsqzyQ0Jo80eepAteXhFmksCRG+ZdBnI1OitwAAt9
	msZz4zT7ghJlUEnixxeO+IEl6ymBTlpr9X4axxbGuefgHO6ld/
	PCfg8aMHDbQuUdINmXqWDE0ai2/AaBOuBEKJb5KsrfX/1mdvi+
	5n+g+7m4REifLbtv4A0fJUbfo9LLbDS8BmEvKnY2orJd1fzE3e yiUnFk=
X-UI-Out-Filterresults: notjunk:1;V01:K0:25fi6ZI2Rx8=:ncYwBtr4KUpjK1RM5q80nc
	o9rWA2tr33p9bPMiGlR08TMuEJComkdKzEB4TDdSr4t1gUnRbGg6Gb2NV9g9KCrLbhSBH0c5p
	Ioor8v2loWzd3/HFLvLunkkxHStAP8CXiO9Y88j9eZl9hnXZZWRiJAEUbaKaS7ErQCKYkqV4O
	okfiytps62TTQyTWqIqBNDHHyrnQh+MhB71Uj4svtgojVfo1qgF+rPk2aW8/3rJjycZHT+pWN
	o2FWw3h2sz01oI8Gr7Ems2CUvPmAfgrq0W0aLO34ou9yYq2oi78WDz0x9dM7gW6Vzds1iGopP
	KO8zL1tzV9dsbFBnlQO4SF2SpC8Y9ViH7HvyvMNu4nzG9MPyO0S9KmeVTnc9q9FOVVYOaWSEG
	T1SkHJqEy7sphAWNtPm5BXJB2hueb713XhM8m06yQLiStStv96Do0fFaPokPGVRUaA9btjFH5
	NlIQuTUbYA==
Subject: QEMU bug in scripts (maybe just XILINX zynq)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Jun 2016 10:24:05 -0000
Content-Type: text/plain; charset=UTF-8

Not sure whether this is a bug in xilinx or in poky layer.

"runqemu qemuzynq" out of the yocto build directory failed.
Reason is, that it calls qemu with params:  "-net nic,model=virtio", which is not present.
Instead of this, the available nic for zynq is "candence_gem".

I searched a while and found this hardcoded it poky/scripts/qemurun-internal.
A change there, and it works.

The second issue is with qemu and NFS.

According to manual I call

yocto_qemu$ runqemu qemuzynq ~/.y/nfs_qemu

The output is below:

-----------
Assuming /home/user/.y/nfs_qemu is an nfs rootfs

Continuing with the following parameters:
KERNEL: [/home/user/.y/yocto_qemu/tmp/deploy/images/qemuzynq/uImage]
ROOTFS: [/home/user/.y/nfs_qemu]
FSTYPE: [nfs]
Acquiring lockfile for tap0...
Using preconfigured tap device 'tap0'
If this is not intended, touch /tmp/qemu-tap-locks/tap0.skip to make runqemu skip tap0.
runqemu-export-rootfs restart /home/user/.y/nfs_qemu
No PID file, not stopping rpc.nfsd
Creating exports file...
Starting User Mode nfsd
  /home/user/.y/yocto_qemu/tmp/sysroots/x86_64-linux/usr/bin/pseudo -P /home/user/.y/yocto_qemu/tmp/sysroots/x86_64-linux/usr /home/user/.y/yocto_qemu/tmp/sysroots/x86_64-linux/usr/bin/unfsd -p -N -i /home/user/.runqemu-sdk/nfs0.pid -e /home/user/.runqemu-sdk/exports0 -x 11111 -n 3049 -y 21111 -m 3048
 
On your target please remember to add the following options for NFS
nfsroot=IP_ADDRESS:/home/user/.y/nfs_qemu,nfsvers=3,port=,mountprog=,nfsprog=,udp,mountport=
Error: Unable to support this combination of options
Releasing lockfile of preconfigured tap device 'tap0'
Shutting down the userspace NFS server...
runqemu-export-rootfs stop /home/user/.y/nfs_qemu
Stopping rpc.nfsd
Removing exports file
---------

The "Error: Unable to support this combination of options" is issued by runqemu-internal.

best regards
Arno

