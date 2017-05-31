Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B021E00B51; Wed, 31 May 2017 04:33:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.47.247.78 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 May 2017 04:33:18 PDT
Received: from mailrelay10.public.one.com (mailrelay10.public.one.com
	[195.47.247.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08706E00B3D
	for <poky@yoctoproject.org>; Wed, 31 May 2017 04:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type;
	bh=G3eBxnEFtqE1IkwLZpHZv/XKn7+jj6q3zMJPwxIfj3Q=;
	b=EHjTsI/K5l9Kuig9Mv2UQW9UjfcF2PGahy5vmFLb4fvmkyYV4bm83+XJ47xGwsuldr/MD9aIyQRaU
	Je4e4gVCD1nx9F509OBXEk1yFRqKgpLVnYfyJF+PvBI74g4WkT1Pbcizw4JFzeiCfSH2ghzruf6eEr
	8SS/w6RvttcCxDcw=
X-HalOne-Cookie: dceccf710d1c4333fd622fd4b29d1e2d0ebc4f29
X-HalOne-ID: ca4727d6-45f4-11e7-be78-b82a72d06996
Received: from [192.168.1.194] (unknown [185.81.39.126])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id ca4727d6-45f4-11e7-be78-b82a72d06996;
	Wed, 31 May 2017 11:32:12 +0000 (UTC)
To: poky@yoctoproject.org
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <74a9ea3f-038f-70cf-0453-cb60084be2ea@visionweeding.com>
Date: Wed, 31 May 2017 13:32:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: external kernel module does not recognize a new git commit
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
X-List-Received-Date: Wed, 31 May 2017 11:33:19 -0000
Content-Type: multipart/alternative;
	boundary="------------12BC7942C5E8B8B84C3A1E27"

--------------12BC7942C5E8B8B84C3A1E27
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

For my image I have a  recipe where I build an external kernel module (a 
driver).

I followed the model in the hello_mod.bb <http://hello_mod.bb> example, 
except that the SRC_URI is a git repository and  SRCREV= "${AUTOREV} 
(/See the recipe below.)/

in my image recipe I do :
PACKAGE_INSTALL_append() = "kernel-module-camdriverV20"

If I make changes and push a new version to the git repo , it is not 
discovered by bitbake, it keeps building the older version it already 
have checked out.


///
//SUMMARY = "CAMERA DRIVER for Robovator"//
//LICENSE = "GPLv2"//
//LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"//
//
//# Cameradriver for Robovator, based on camdriverV10//
//
//#INHIBIT_PACKAGE_DEBUG_SPLIT = "1"//
//BRANCH = "Pokybuild"//
//
//inherit module//
//
//SRC_URI =" git:///${ESERVER}/GIT/camdriverV20/;branch=${BRANCH};"//
//
//SRCREV= "${AUTOREV}"//
//PV = "1.0.0+gitr${SRCPV}"//
//
//#SRCREV = "aa47aca8424a3f65ea2fc50386c2d1cdc47120d2"//
//#PV = "1.0.0+gitr${SRCPV}"//
////
//S = "${WORKDIR}/git"//
//
//# Do not autoload the driver when running "V1.9" mode//
//#KERNEL_MODULE_AUTOLOAD += "camdriverV20"/

/
/

ESERVER and BRANCH are externally defined an are correct.

All my application level module recipes are made the same way and they 
work fine

I must have  something wrong with the driver module. but what?


B.R Lars


-- 

Best Regards
Lars Larsen

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
www.visionweeding.com


--------------12BC7942C5E8B8B84C3A1E27
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi</p>
    <p>For my image I have a  recipe where I build an external kernel
      module (a driver).</p>
    <p>I followed the model in the <a href="http://hello_mod.bb"
        target="_blank">hello_mod.bb</a> example, except that the
      SRC_URI is a git repository and  SRCREV= "${AUTOREV} (<i>See the
        recipe below.)</i></p>
    in my image recipe I do :<br>
    PACKAGE_INSTALL_append() = "kernel-module-camdriverV20"<br>
    <br>
    <p>If I make changes and push a new version to the git repo , it is
      not discovered by bitbake, it keeps building the older version it
      already have checked out.</p>
    <p><br>
    </p>
    <p><font size="-2"><i> </i><i><br>
        </i><i>SUMMARY = "CAMERA DRIVER for Robovator"</i><i><br>
        </i><i>LICENSE = "GPLv2"</i><i><br>
        </i><i>LIC_FILES_CHKSUM =
          <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e">"file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"</a></i><i><br>
        </i><i><br>
        </i><i># Cameradriver for Robovator, based on camdriverV10</i><i><br>
        </i><i><br>
        </i><i>#INHIBIT_PACKAGE_DEBUG_SPLIT = "1"</i><i><br>
        </i><i>BRANCH = "Pokybuild"</i><i><br>
        </i><i><br>
        </i><i>inherit module</i><i><br>
        </i><i><br>
        </i><i>SRC_URI ="
          git:///${ESERVER}/GIT/camdriverV20/;branch=${BRANCH};"</i><i><br>
        </i><i><br>
        </i><i>SRCREV= "${AUTOREV}"</i><i><br>
        </i><i>PV = "1.0.0+gitr${SRCPV}"</i><i><br>
        </i><i><br>
        </i><i>#SRCREV = "aa47aca8424a3f65ea2fc50386c2d1cdc47120d2"</i><i><br>
        </i><i>#PV = "1.0.0+gitr${SRCPV}"</i><i><br>
        </i><i> </i><i><br>
        </i><i>S = "${WORKDIR}/git"</i><i><br>
        </i><i><br>
        </i><i># Do not autoload the driver when running "V1.9" mode</i><i><br>
        </i><i>#KERNEL_MODULE_AUTOLOAD += "camdriverV20"</i></font></p>
    <p><font size="-2"><i><br>
        </i></font></p>
    <p>ESERVER and BRANCH are externally defined an are correct.</p>
    <p>All my application level module recipes are made the same way and
      they work fine <br>
    </p>
    <p>I must have  something wrong with the driver module. but what?<br>
    </p>
    <br>
    <p>B.R Lars<br>
    </p>
    <br>
    <pre class="moz-signature" cols="72">-- 

Best Regards
Lars Larsen 

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
<a class="moz-txt-link-abbreviated" href="http://www.visionweeding.com">www.visionweeding.com</a>

</pre>
  </body>
</html>

--------------12BC7942C5E8B8B84C3A1E27--
