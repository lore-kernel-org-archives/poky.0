Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92DE24C810E3
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 16:07:49 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PM9keM004859
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 22:09:46 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KIfaDLPoMCL7 for <poky@yoctoproject.org>;
	Tue, 25 Jan 2011 22:09:46 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PM9g0b004850
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 22:09:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
Date: Tue, 25 Jan 2011 22:07:25 +0000
Message-ID: <1295993245.27814.133.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: Master stability update
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
X-List-Received-Date: Tue, 25 Jan 2011 22:07:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

We merged the features into master. I just want to highlight the status
of the following issues:

* pseudo problem causing failure of meta-toolchain and corruption of
certain file permissions - fixed in master

* the -live image issues some people and the autobuilder were seeing -
fixed in master

* the perf issue for linux-yocto-stable - fixed in master

The following are know issues with master:

* Using rm_work and switching machines to machines of the same
"multimachine" architecture breaks.

* When switching machines of the same "multimachine" architecture (e.g.
emenlow to atom-pc), some sstate packages are changing checksums when at
first glance they shouldn't (e.g. perl do_install). A quick scan of my
sstate directory:

$ ls *core2* | sed -e 's#core2-2-.*_#core2-2_#' | sort | uniq -cd | grep -v siginfo

yields:

      2 sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r6-core2-2_deploy-ipk.tgz
      2 sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r6-core2-2_deploy-rpm.tgz
      2 sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r6-core2-2_package.tgz
      2 sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r6-core2-2_populate-sysroot.tgz
      2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_deploy-ipk.tgz
      2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_deploy-rpm.tgz
      2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_package.tgz
      2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_populate-sysroot.tgz
      2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_deploy-ipk.tgz
      2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_deploy-rpm.tgz
      2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_package.tgz
      2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_populate-sysroot.tgz
      2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_deploy-ipk.tgz
      2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_deploy-rpm.tgz
      2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_package.tgz
      2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_populate-sysroot.tgz
      2 sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r2-core2-2_deploy-ipk.tgz
      2 sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r2-core2-2_deploy-rpm.tgz
      2 sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r2-core2-2_package.tgz
      2 sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r2-core2-2_populate-sysroot.tgz
      2 sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3-core2-2_deploy-ipk.tgz
      2 sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3-core2-2_deploy-rpm.tgz
      2 sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3-core2-2_package.tgz
      2 sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3-core2-2_populate-sysroot.tgz

which isn't too bad but shows there are some issues creeping in there.
These need investigating and fixing, there is a strong rpm theme going
on there. Also note this was just a minimal image, sato will likely
reveal other issues.

Cheers,

Richard


