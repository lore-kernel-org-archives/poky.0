Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D481E00E01; Thu, 26 May 2016 22:28:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 May 2016 22:28:30 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D943BE00D49
	for <poky@yoctoproject.org>; Thu, 26 May 2016 22:28:30 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs48.server.lan (via HTTP);
	Fri, 27 May 2016 07:23:25 +0200
MIME-Version: 1.0
Message-ID: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>
From: star@gmx.li
To: poky@yoctoproject.org
Date: Fri, 27 May 2016 07:23:25 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:TdGonRdM5Ny9zL5xEGZWC1xTJdBy0DZpT63788VF5Fe
	dRKGwn/wvyWMdAhKT8h6UGmRM+AIFwxW+hU0CrzdyeyFe8gyGL
	bGH7AaIO9YaNB92KSK0HkgMvl9F5+8aB82b+6FH7UxtxYBPrBw
	aEiQBpklsLE7yncRZrA/do5JEUM7la5ggWOUEctwIDhYi134ab
	S7XLluNHGEMRncpxQ+F1/YKhO4MPpnhzQeFl6SBAxfco/OVQpf
	r99+f8CDdxJchvIn0Mm6vS9AMWT12uS2tEmVq5yyCQX5BLAcj6 2uElNU=
X-UI-Out-Filterresults: notjunk:1;V01:K0:D9cNJ5EX7Gk=:yUeXNCXQRILuguTxh6zrKo
	2m0W3ANE+XYG3Gs6OI+9metiDaHXIB6Th3Y/UrBrNzSLuLmIZFmDRYfVZhrfaGy3gqEV2h6so
	hYIqUdLkBJePL7PWCJBv4sPku4adtnkIjgP499IzxCjSOLpyEEZoRNtd++JbG6+xhhvncNNWi
	owWT2wCnzjzl688uHv7PiFHaIxinFl4HFnHOo22owKGFPs/QX6IscHL/0xYapm4AIudOCfKWh
	pdj8brLDBfpKOOH/LGUJCDPCIQRaJCFvOYrOfH6yDaGHnjIS6OrxSHgi9eN+7fKL+zYwuNl8p
	U7gdWI+cNU7o+kludKrlup4hHQFR/2zcoJQ8WQ6NFPDuN3mhVc2FWgjLjVTk3X33zpCATWHb8
	N1Y3C34DUY5QeK9lnUjbikVi5hYOh6z6sjELj0i6Ve5ldLb8avD+ZJ2CvSEkwuOQ7zd3t0rqL
	f1Io82BOEg==
Subject: lib-sdl issue with qemu
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
X-List-Received-Date: Fri, 27 May 2016 05:28:34 -0000
Content-Type: text/plain; charset=UTF-8

Tried a "bitbake core-image-minimal" with included xilinx meta-layer and machine "qemuzynq".
I get the above mentioned error on an Ubuntu 1604, but with already installed libsdl.

See below: 

...
| ERROR: User requested feature sdl
|        configure was not able to find it.
|        Install SDL devel
| 
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /home/user/yocto_qemu/tmp/work/x86_64-linux/qemu-native/2.4.0-r1/temp/log.do_configure.3236)
ERROR: Task 72 (virtual:native:/home/user/yocto/poky/meta/recipes-devtools/qemu/qemu_2.4.0.bb, do_configure) failed with exit code '1'


sudo apt-get install libsdl1.2-dev
...
libsdl1.2-dev is already the newest version (1.2.15+dfsg1-3).
0 upgraded, 0 newly installed, 0 to remove and 95 not upgraded.

Best regards
Arno

