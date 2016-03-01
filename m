Return-Path: <telos@ideale.ind.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32694E00CB5; Tue,  1 Mar 2016 13:03:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 328 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Mar 2016 13:03:02 PST
Received: from dc2.ideale.ind.br (dc2.ideale.ind.br [74.207.246.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 828B6E00C9C
	for <poky@yoctoproject.org>; Tue,  1 Mar 2016 13:03:02 -0800 (PST)
Received: from [191.189.96.21] (helo=[192.168.120.205])
	by dc2.ideale.ind.br with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <telos@ideale.ind.br>) id 1aarMJ-0004s8-Re
	for poky@yoctoproject.org; Tue, 01 Mar 2016 20:57:33 +0000
To: poky@yoctoproject.org
From: Telos <telos@ideale.ind.br>
Message-ID: <56D60238.5040703@ideale.ind.br>
Date: Tue, 1 Mar 2016 17:57:28 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 191.189.96.21
X-SA-Exim-Rcpt-To: poky@yoctoproject.org
X-SA-Exim-Mail-From: telos@ideale.ind.br
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:57:07 +0000)
X-SA-Exim-Scanned: Yes (on dc2.ideale.ind.br)
Subject: Building a poky distribution with openjdk-7 and jamvm
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
X-List-Received-Date: Tue, 01 Mar 2016 21:03:06 -0000
Content-Type: multipart/alternative;
	boundary="------------070409090801060000090703"

--------------070409090801060000090703
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi everyone.

I am trying to build a poky distribution to a Beaglebone Black that 
contains "openjdk-7-jre". Also, I am trying to build a openjdk-7-jre 
that supports the JamVM.But I am having some problems with that. Or I 
get problems on distribution building, or when I run the command "java 
-jamvm -version" on beagle I receive the message:

/Error: jamvm VM not supported
/
By default, the openjdk-7-jreuses the Zero VM, and I want to use the 
JamVM. I've searched on internet about that I've tried some things, like:

     -> on beagle, in the file 
"/usr/lib/jvm/java-7-openjdk/jre/lib/arm/jvm.cfg", I've changed the line 
"-jamvm ERROR" to "-jamvm KNOWN". With that, I've tried again the 
command "java -jamvm -version" and the this message has showed:

/Error: missing `jamvm' JVM at 
`/usr/lib/jvm/java-7-openjdk/jre/lib/arm/jamvm/libjvm.so'.//
//        Please install or use the JRE or JDK that contains these 
missing components./

     -> on my machine, in the file 
"poky/meta-java/recipes-core/icedtea/icedtea7-native.inc", I've added 
the line "--with-additional-vms=jamvm \" at line 89 (in the field 
EXTRA_OECONF). In this case, the error was:

/ERROR: Task 1110 
(/home/telos/VZ_TECH/pmv/poky/meta-java/recipes-core/icedtea/icedtea7-native_2.1.3.bb, 
do_configure) failed with exit code '1'/

     -> I've tried the same thing above but in the file 
"/home/telos/VZ_TECH/pmv/poky/meta-java/recipes-core/openjdk/openjdk-7-common.inc", 
at line 96. I got the error:

/ERROR: QA Issue: non debug package contains .debug directory: 
openjdk-7-common path 
/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/openjdk-7-jre/91b01-2.6.2-r6.1/packages-split/openjdk-7-common/usr/lib/jvm/java-7-openjdk/jre/lib/arm/jamvm/.debug/libjvm.so 
[debug-files]//
//        ERROR: QA run found fatal errors. Please consider fixing them.//
//        ERROR: Function failed: do_package_qa//
//        ERROR: Logfile of failure stored in: 
/home/telos/VZ_TECH/pmv/poky/projeto/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/openjdk-7-jre/91b01-2.6.2-r6.1/temp/log.do_package_qa.20088//
//        ERROR: Task 429 
(/home/telos/VZ_TECH/pmv/poky/meta-java/recipes-core/openjdk/openjdk-7_91b01-2.6.2.bb, 
do_package_qa) failed with exit code '1'/

My image recipe (core-image-pmv.bb) is showed below:
/
////IMAGE_INSTALL = "packagegroup-core-boot 
${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL} \//
//        sqlite3 \//
//        git \//
//        i2c-tools \//
//        powertop \//
//        minicom \//
//        devmem2 \//
//        cronie \//
//        htop \//
//        bash \//
//        openjdk-7-jre \//
//        jamvm \//
//        kernel-modules \//
//        valgrind \//
//        "//
//
//    PREFERRED_PROVIDER_virtual/java-initial = "jamvm-initial"//
//    PREFERRED_PROVIDER_virtual/java-initial-native = 
"jamvm-initial-native"//
//    PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"//
//    PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"//
//    PREFERRED_VERSION_icedtea7-native = "2.1.3"//
//
//    EXTRA_IMAGE_FEATURES = "debug-tweaks \//
//          dev-pkgs \//
//          ssh-server-openssh \//
//                tools-sdk \//
//          "//
//    DISTRO_FEATURES += " "//
//
//    IMAGE_FSTYPES += "ext4 "//
//
//    IMAGE_LINGUAS = " "//
//
//    LICENSE = "MIT"//
//
//    inherit core-image/

So, can some help me? Thanks for reading and sorry my english.

Regards,

Telos

--------------070409090801060000090703
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <font face="Ubuntu Mono">Hi everyone.<br>
      <br>
      I am trying to build a poky distribution to a Beaglebone Black
      that contains "openjdk-7-jre". Also, I am trying to build a
      openjdk-7-jre that supports the JamVM.But I am having some
      problems with that. Or I get problems on distribution building, or
      when I run the command "java -jamvm -version" on beagle I receive
      the message: <br>
      <br>
          <i>Error: jamvm VM not supported<br>
      </i><br>
      By default, the </font><font face="Ubuntu Mono">openjdk-7-jre</font><font
      face="Ubuntu Mono"> uses the Zero VM, and I want to use the JamVM.
      I've searched on internet about that I've tried some things, like:<br>
      <br>
          -&gt; on beagle, in the file
      "/usr/lib/jvm/java-7-openjdk/jre/lib/arm/jvm.cfg", I've changed
      the line "-jamvm ERROR" to "-jamvm KNOWN". With that, I've tried
      again the command "java -jamvm -version" and the this message has
      showed: <br>
      <br>
              <i>Error: missing `jamvm' JVM at
        `/usr/lib/jvm/java-7-openjdk/jre/lib/arm/jamvm/libjvm.so'.</i><i><br>
      </i><i>        Please install or use the JRE or JDK that contains
        these missing components.</i><br>
      <br>
          -&gt; on my machine, in the file
      "poky/meta-java/recipes-core/icedtea/icedtea7-native.inc", I've
      added the line "--with-additional-vms=jamvm \" at line 89 (in the
      field EXTRA_OECONF). In this case, the error was:<br>
      <br>
              <i>ERROR: Task 1110
        (/home/telos/VZ_TECH/pmv/poky/meta-java/recipes-core/icedtea/icedtea7-native_2.1.3.bb,
        do_configure) failed with exit code '1'</i><br>
      <br>
          -&gt; I've tried the same thing above but in the file
      "/home/telos/VZ_TECH/pmv/poky/meta-java/recipes-core/openjdk/openjdk-7-common.inc",
      at line 96. I got the error:<br>
      <br>
             <i> ERROR: QA Issue: non debug package contains .debug
        directory: openjdk-7-common path
        /work/cortexa8hf-vfp-neon-poky-linux-gnueabi/openjdk-7-jre/91b01-2.6.2-r6.1/packages-split/openjdk-7-common/usr/lib/jvm/java-7-openjdk/jre/lib/arm/jamvm/.debug/libjvm.so
        [debug-files]</i><i><br>
      </i><i>        ERROR: QA run found fatal errors. Please consider
        fixing them.</i><i><br>
      </i><i>        ERROR: Function failed: do_package_qa</i><i><br>
      </i><i>        ERROR: Logfile of failure stored in:
/home/telos/VZ_TECH/pmv/poky/projeto/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/openjdk-7-jre/91b01-2.6.2-r6.1/temp/log.do_package_qa.20088</i><i><br>
      </i><i>        ERROR: Task 429
        (/home/telos/VZ_TECH/pmv/poky/meta-java/recipes-core/openjdk/openjdk-7_91b01-2.6.2.bb,
        do_package_qa) failed with exit code '1'</i><br>
      <br>
      My image recipe (core-image-pmv.bb) is showed below:<br>
      <i><br>
      </i><i>    </i><i>IMAGE_INSTALL = "packagegroup-core-boot
        ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL} \</i><i><br>
      </i><i>        sqlite3 \</i><i><br>
      </i><i>        git \</i><i><br>
      </i><i>        i2c-tools \</i><i><br>
      </i><i>        powertop \</i><i><br>
      </i><i>        minicom \</i><i><br>
      </i><i>        devmem2 \</i><i><br>
      </i><i>        cronie \</i><i><br>
      </i><i>        htop \</i><i><br>
      </i><i>        bash \</i><i><br>
      </i><i>        openjdk-7-jre \</i><i><br>
      </i><i>        jamvm \</i><i><br>
      </i><i>        kernel-modules \</i><i><br>
      </i><i>        valgrind \</i><i><br>
      </i><i>        "</i><i><br>
      </i><i><br>
      </i><i>    PREFERRED_PROVIDER_virtual/java-initial =
        "jamvm-initial"</i><i><br>
      </i><i>    PREFERRED_PROVIDER_virtual/java-initial-native =
        "jamvm-initial-native"</i><i><br>
      </i><i>    PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"</i><i><br>
      </i><i>    PREFERRED_PROVIDER_virtual/javac-native =
        "ecj-bootstrap-native"</i><i><br>
      </i><i>    PREFERRED_VERSION_icedtea7-native = "2.1.3"</i><i><br>
      </i><i><br>
      </i><i>    EXTRA_IMAGE_FEATURES = "debug-tweaks \</i><i><br>
      </i><i>          dev-pkgs \</i><i><br>
      </i><i>          ssh-server-openssh \</i><i><br>
      </i><i>                tools-sdk \</i><i><br>
      </i><i>          "</i><i><br>
      </i><i>    DISTRO_FEATURES += " "</i><i><br>
      </i><i><br>
      </i><i>    IMAGE_FSTYPES += "ext4 "</i><i><br>
      </i><i><br>
      </i><i>    IMAGE_LINGUAS = " "</i><i><br>
      </i><i><br>
      </i><i>    LICENSE = "MIT"</i><i><br>
      </i><i><br>
      </i><i>    inherit core-image</i><br>
      <br>
      So, can some help me? Thanks for reading and sorry my english.<br>
      <br>
      Regards,<br>
      <br>
      Telos<br>
    </font>
  </body>
</html>

--------------070409090801060000090703--
