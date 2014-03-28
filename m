Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03438E00BC7;
	Fri, 28 Mar 2014 11:24:49 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2SIOKiQ001492; Fri, 28 Mar 2014 18:24:20 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Qkdlr4ywEyp6; Fri, 28 Mar 2014 18:24:19 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2SIOC0x001489
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 28 Mar 2014 18:24:13 GMT
Message-ID: <1396031047.14790.24.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, yocto-builds
	<yocto-builds@yoctoproject.org>, "Ashfield, Bruce"
	<Bruce.Ashfield@windriver.com>, "saul.wold" <saul.wold@intel.com>, Denys
	Dmytriyenko <denys@ti.com>, "Hart, Darren" <darren.hart@intel.com>
Date: Fri, 28 Mar 2014 18:24:07 +0000
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: meta-yocto-bsp changes and 3.14
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
X-List-Received-Date: Fri, 28 Mar 2014 18:24:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
parts that I could pull together, there seemed to be some pieces
missing, specifically:

* the yocto-linux-dev.bbappend was underpopulated
* the yocto-linux-3.14.bbappend was missing
* no removal of beagleboard
* no addition to the README for beaglebone
* local.conf.sample needs updates
* missing edgerouter configuration in linux-yocto*
* should we be removing a mips BSP?
* need a layer version bump so beth can handle this on the autobuilder

I added commits for some of these, the 3.14 kernel bbappend is missing
SRCREVs though for example. The state of where I got to is:

http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=master-next

Beth: Your AR is to figure out the autobuilder side of this and build
the two new replacement BSPs (beaglebone and edgerouter) instead of the
old ones. When that and the current build on the AB is done, can we run
a build of master-next please?

Denys: I'm hoping you can help out with the README

Bruce: can you look at the linux-yocto-* changes, particularly the 3.14
SRCREVs and that linux-yocto-dev looks right?

Cheers,

Richard



