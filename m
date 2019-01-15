Return-Path: <hector@ikatu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68880E00CFB; Mon, 14 Jan 2019 16:19:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Jan 2019 16:19:28 PST
Received: from malena.ikatu.net (malena.ikatu.net [190.0.137.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C150CE00CE0
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 16:19:28 -0800 (PST)
Received: (qmail 12383 invoked by uid 0); 15 Jan 2019 00:21:24 -0000
Received: from r167-57-189-146.dialup.adsl.anteldata.net.uy (HELO
	?192.168.1.43?) (hector@ikatu.com@167.57.189.146)
	by malena.ikatu.net with SMTP; 15 Jan 2019 00:21:24 -0000
To: poky@yoctoproject.org
From: Hector Almeida <hector@ikatu.com>
Message-ID: <7d48f265-39e9-663c-f229-8dadfc22083f@ikatu.com>
Date: Mon, 14 Jan 2019 21:12:27 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
X-Kalio-Sanitizer: ClamAV
Subject: systemd and sysvinit enabled in DISTRO_FEATURES
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
X-List-Received-Date: Tue, 15 Jan 2019 00:19:30 -0000
Content-Type: multipart/alternative;
	boundary="------------02383439F666AE91A39080DC"
Content-Language: en-US

--------------02383439F666AE91A39080DC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,


I'm trying to use systemd on my main image and sysvinit in a rescue 
image (a ramdisk which will be able to recover a device).


I'm using the configuration suggested in "Using systemd for the Main 
Image and Using SysVinit for the Rescue Image",  where it states that 
this configuration:

"... causes your main image to use the |packagegroup-core-boot.bb| 
recipe and systemd. The rescue/minimal image cannot use this package 
group. However, it can install SysVinit and the appropriate packages 
will have support for both systemd and SysVinit."


But I end up with the /etc/init.d folder with a lot of sysvinit scripts 
in my main image. Also I have some systemd files on my rescue image 
under /etc/systemd.


I can't understand how configuring a different init system for different 
images would work. What I can see that it is done on many recipes 
through the pkg_postint function, is something like: if DISTRO_FEATURES 
contains systemd and sysvinit, then mask the systemd service. But I 
can't find anywhere, some function that takes care of preventing the 
installation of sysvinit or systemd services on each image, depending on 
whether the have chosen one or another.


Any pointers would be appreciated.


Thanks,

Hector


--------------02383439F666AE91A39080DC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p><br>
    </p>
    <p>I'm trying to use systemd on my main image and sysvinit in a
      rescue image (a ramdisk which will be able to recover a device).</p>
    <p><br>
    </p>
    <p>I'm using the configuration suggested in "Using systemd for the
      Main Image and Using SysVinit for the Rescue Image",  where it
      states that this configuration:</p>
    <p> "... causes your main image to use the <code class="filename">packagegroup-core-boot.bb</code>
      recipe and systemd. The rescue/minimal image cannot use this
      package group. However, it can install SysVinit and the
      appropriate packages will have support for both systemd and
      SysVinit."</p>
    <p><br>
    </p>
    <p>But I end up with the /etc/init.d folder with a lot of sysvinit
      scripts in my main image. Also I have some systemd files on my
      rescue image under /etc/systemd.<br>
    </p>
    <p><br>
    </p>
    <p>I can't understand how configuring a different init system for
      different images would work. What I can see that it is done on
      many recipes through the pkg_postint function, is something like:
      if DISTRO_FEATURES contains systemd and sysvinit, then mask the
      systemd service. But I can't find anywhere, some function that
      takes care of preventing the installation of sysvinit or systemd
      services on each image, depending on whether the have chosen one
      or another.<br>
    </p>
    <p><br>
    </p>
    <p>Any pointers would be appreciated.<br>
    </p>
    <p><br>
    </p>
    <p>Thanks,<br>
    </p>
    <p>Hector<br>
    </p>
  </body>
</html>

--------------02383439F666AE91A39080DC--
