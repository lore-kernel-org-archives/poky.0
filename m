Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC021E00E28; Wed,  1 Jun 2016 00:27:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F347DE00E17
	for <poky@yoctoproject.org>; Wed,  1 Jun 2016 00:27:34 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs56.server.lan (via HTTP);
	Wed, 1 Jun 2016 09:27:33 +0200
MIME-Version: 1.0
Message-ID: <trinity-50fe087f-3f91-4566-b157-52f7431a2c46-1464766053202@3capp-gmx-bs56>
From: Arno <star@gmx.li>
To: poky@yoctoproject.org
Date: Wed, 1 Jun 2016 09:27:33 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:vTg5Oiz/mrQwYjlRcNC0zUWat5cLUW2VlhalsrKcgXb
	aRLg6FuJqNLbuF5qXQ1zIUVn9c0EX5mdAIpF2YZOnea5IUMN6p
	SDMUYRzt4FiPMlJTljl/Qt8Qws8B6HaB4xPSgvfUOO9GME/nqy
	Xz1WnXjVEHTtbKS7VN106MCasdkXoR8apBuGFrLgKLBXSACaya
	+aoG2b238BaizAiwR5BiCfLcqSfidcxsBqE+6B3D9d0W5davhi
	v3hma9vAFjGM+joa61iFEtbW27fnlaMmcO38W5yrmFJluXZ9ND mnjHF8=
X-UI-Out-Filterresults: notjunk:1;V01:K0:66yK8Lm042s=:5jeoz7jjOE6il0jIMtiiWD
	R8/ICs6el7pmpYFHa68MOXJnEkLE3mbzXpU1eJ0NDum6jYrRVwGGuNTLg11/5hjIw3SzD+BHs
	tJ3TnWMcJTkg1f8yHjZBWiluQOIzn6fHKZMXsPWhq1Y81HHvLANmaL17/2t9W3xd6TdLHaU7T
	w2dYdZ/x3zwRx5vCQN0YnvOuIV4q2XDiW/UNqYK4jun3DhrSi/+OrR9Xv0dPwZf4jFZNpRhEi
	9mOixNnbUi4tY3E8qcEsvn49lYLUQGDWprKPLEyJt3WC/txrMgLcAxIMP+fvIrTJrFRSl7jH+
	jwj0xElEsVwV/m5w3b69sJM7FZ7ttJQk7npwPdjy384ABvE6MTQS81+7qJrKtyFxtABqz7/6A
	A7hu+qNhZBW3DUajUVRIWUhDAWbjLFWsxvvhrM6AgV/wustBlE6/xcZKIWhkcbiXDicMgMr7c
	HDbWUh6A+g==
Subject: QEMU
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
X-List-Received-Date: Wed, 01 Jun 2016 07:27:36 -0000
Content-Type: text/plain; charset=UTF-8

Have problems starting QEMU in NFS mode.
Referring to this document:
http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#dev-manual-qemu

Configured with current krogath an qemuzynq and created an SDK.



According to manual I tried to start it out of bitbake folder:

user@VB:~/.y/yocto_qemu$ runqemu qemuzynq

Continuing with the following parameters:
KERNEL: [/home/user/.y/yocto_qemu/tmp/deploy/images/qemuzynq/uImage]
ROOTFS: [/home/user/.y/yocto_qemu/tmp/deploy/images/qemuzynq/core-image-minimal-qemuzynq-20160531062534.rootfs.cpio]
FSTYPE: [cpio]
Acquiring lockfile for tap0...
Using preconfigured tap device 'tap0'
If this is not intended, touch /tmp/qemu-tap-locks/tap0.skip to make runqemu skip tap0.
Running qemu-system-arm...
/home/user/.y/yocto_qemu/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-arm -kernel /home/user/.y/yocto_qemu/tmp/deploy/images/qemuzynq/uImage -net nic,model=virtio -net tap,vlan=0,ifname=tap0,script=no,downscript=no -M xilinx-zynq-a9 -serial null -serial mon:stdio -dtb /home/user/.y/yocto_qemu/tmp/deploy/images/qemuzynq/uImage-qemuzynq.dtb -initrd /home/user/.y/yocto_qemu/tmp/deploy/images/qemuzynq/core-image-minimal-qemuzynq-20160531062534.rootfs.cpio -no-reboot -m 1024 -append "earlyprintk root=/dev/ram rw ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=1024M "
qemu-system-arm: Unsupported NIC model: virtio
Releasing lockfile of preconfigured tap device 'tap0'

---

My Linux machine is an Ubuntu1604 (running as VM on Windows PC with Virtual Box).

Compared to 2 days ago I feel to be close, but can't manage it.


Best regards
Arno

PS: Actually I want o boot this out of SDK into NFS:

I extracted the rootfs
runqemu-extract-sdk tmp/deploy/images/qemuzynq/core-image-minimal-qemuzynq.tar.gz ~/rootfs_qemu

out of the SDK folder, with sourced environment for SDK:
source environment-setup-cortexa9hf-neon-poky-linux-gnueabi

Starting the qemu gives error, that I don't understand:

user@VB:~/sdk_qemu$ runqemu qemuzynq ~/yocto_qemu/tmp/deploy/images/qemuzynq/uImage--4.4-xilinx+git0+89cc643aff-r0-qemuzynq-20160531062534.bin ~/rootfs_qemu bootparams=\"172.20.20.171:/home/user/rootfs_qemu,nfsvers=3,port=,mountprog=,nfsprog=,udp,mountport=\"

Assuming /home/user/rootfs_qemu is an nfs rootfs

Continuing with the following parameters:
KERNEL: [/home/user/yocto_qemu/tmp/deploy/images/qemuzynq/uImage--4.4-xilinx+git0+89cc643aff-r0-qemuzynq-20160531062534.bin]
ROOTFS: [/home/user/rootfs_qemu]
FSTYPE: [nfs]
Acquiring lockfile for tap0...
Using preconfigured tap device 'tap0'
If this is not intended, touch /tmp/qemu-tap-locks/tap0.skip to make runqemu skip tap0.
runqemu-export-rootfs restart /home/user/rootfs_qemu
No PID file, not stopping rpc.nfsd
Creating exports file...
Starting User Mode nfsd
  /home/user/sdk_qemu/sysroots/x86_64-pokysdk-linux/usr/bin/pseudo -P /home/user/sdk_qemu/sysroots/x86_64-pokysdk-linux/usr /home/user/sdk_qemu/sysroots/x86_64-pokysdk-linux/usr/bin/unfsd -p -N -i /home/user/.runqemu-sdk/nfs0.pid -e /home/user/.runqemu-sdk/exports0 -x 11111 -n 3049 -y 21111 -m 3048
 
On your target please remember to add the following options for NFS
nfsroot=IP_ADDRESS:/home/user/rootfs_qemu,nfsvers=3,port=,mountprog=,nfsprog=,udp,mountport=
Error: Unable to support this combination of options
Releasing lockfile of preconfigured tap device 'tap0'
Shutting down the userspace NFS server...
runqemu-export-rootfs stop /home/user/rootfs_qemu
Stopping rpc.nfsd
Removing exports file


I tried also qemuparams instead of bootparams, but result was same. It seems it doesn't take over this params.

?!?!?

