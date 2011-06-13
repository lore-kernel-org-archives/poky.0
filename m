Return-Path: <prvs=51458a9b9f=jmitchell@ll.mit.edu>
Received: from mx2.ll.mit.edu (MX2.LL.MIT.EDU [129.55.12.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16D804C800A3
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 14:44:50 -0500 (CDT)
Received: from LLE2K7-HUB01.mitll.ad.local (LLE2K7-HUB01.mitll.ad.local) by
	mx2.ll.mit.edu (unknown) with ESMTP id p5DJinFq020770 for
	<poky@yoctoproject.org>; Mon, 13 Jun 2011 15:44:49 -0400
Message-ID: <4DF668B1.1060500@ll.mit.edu>
Date: Mon, 13 Jun 2011 15:44:49 -0400
From: Jeff Mitchell <jmitchell@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110505 Lightning/1.0b3pre Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.4.6813, 1.0.148,
	0.0.0000
	definitions=2011-06-13_05:2011-06-13, 2011-06-13,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=4
	phishscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=6.0.2-1012030000 definitions=main-1106130127
Subject: Git/perl build problems
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
X-List-Received-Date: Mon, 13 Jun 2011 19:44:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Late last week I did a full rebuild of packages from poky master branch 
(beagleboard target). Today, if I update my clone's master branch to 
current upstream, I'm unable to build git (extra whitespace added for 
clarity)

NOTE: Running task 210 of 4247 (ID: 324, 
virtual:native:/home/jmitchell/yocto/poky/meta/recipes-devtools/git/git_1.7.5.1.bb, 
do_configure)

NOTE: package git-native-1.7.5.1-r1: task do_configure: Started

ERROR: Logfile of failure stored in: 
/home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/log.do_configure.12679

Log data follows:

| 
/home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/run.do_configure.12679: 
/home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/automake: 
/home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad 
interpreter: No such file or directory

| 
/home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/run.do_configure.12679: 
/home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/automake: 
/home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad 
interpreter: No such file or directory

My guess is that it's related to 4c790efa, but reverting that patch in a 
private branch did not really help. I've tried cleaning and rebuilding 
perl, perl-native, and git, with no success.

Did I simply miss some updating step...?

Thanks,
Jeff

