Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 923974C811C5
	for <poky@pokylinux.org>; Thu, 23 Dec 2010 05:57:09 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNBv0Fe009779; Thu, 23 Dec 2010 11:57:01 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id cw9Djjs31Hac; Thu, 23 Dec 2010 11:57:00 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNBuuYH009774
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 11:56:58 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "jiajun.xu" <jiajun.xu@intel.com>
Date: Thu, 23 Dec 2010 11:55:24 +0000
Message-ID: <1293105324.1588.708.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@pokylinux.org>
Subject: Another sanity test tweak
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
X-List-Received-Date: Thu, 23 Dec 2010 11:57:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Jiajun,

Along with bugs 611 and 612, I also noticed messages in the qemu logs
about the qemu process being present when it very clearly wasn't. These
are due to Test_Check_Qemu_UP() not functioning correctly.

Looking at the output of ps -ef when running the script, I see things
like:

richard   6582  1845  0 11:32 pts/8    00:00:00 /bin/sh /rphome/poky/scripts/bitbake poky-image-sato -c qemuimagetest_standalone
richard   6588  6582 72 11:32 pts/8    00:00:15 python /rphome/poky/bitbake/bin//bitbake poky-image-sato -c qemuimagetest_standalone
richard   6598  6588  0 11:32 pts/8    00:00:00 python /rphome/poky/bitbake/bin//bitbake poky-image-sato -c qemuimagetest_standalone
richard   6601  6598  0 11:32 pts/8    00:00:00 sh -c /rphome/poky/scripts/qemuimage-tests/sanity/boot | tee -a /media/data1/builds/poky2/tmp/log/qemuimagetests/sanity/log_boot.20101223113226
richard   6602  6601  0 11:32 pts/8    00:00:00 /bin/bash /rphome/poky/scripts/qemuimage-tests/sanity/boot
richard   6603  6601  0 11:32 pts/8    00:00:00 tee -a /media/data1/builds/poky2/tmp/log/qemuimagetests/sanity/log_boot.20101223113226

which is why it thinks qemu is running. I'd like to propose something
like:

diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
index c2c394d..2b18683 100644
--- a/scripts/qemuimage-testlib
+++ b/scripts/qemuimage-testlib
@@ -204,7 +204,7 @@ Test_Kill_Qemu()
 # function to check if there is any qemu process
 Test_Check_Qemu_UP()
 {
-       local count=`ps -ef | grep -c qemu`
+       local count=`ps -eo command | cut -d " " -f 1 | grep -c \(^qemu\|.*/qemu\)`
        if [ ${count} -lt 2 ]; then
                Test_Info "There is no Qemu process"
                return 1

which should ensure a qemu command is running rather than any command
which happens to have "qemu" in its path. I'm still testing the above to
see if it works well.

Also, waiting 120 seconds for the qemu network to be up is fine. For the
actual process to be running I'd suggest we just wait 10 seconds maximum
as if it ever takes longer than that, we have a problem. I'd propose the
following change:

@@ -383,9 +383,7 @@ Test_Create_Qemu()
        # Get the pid of the xterm processor, which will be used in Test_Kill_Qemu
        PID=$!
 
-       sleep 5
-       
-       while [ ${up_time} -lt ${timeout} ]
+       while [ ${up_time} -lt 10 ]
        do
                Test_Check_Qemu_UP
                if [ $? -ne 0 ]; then

Are you ok with these changes?

Cheers,

Richard



