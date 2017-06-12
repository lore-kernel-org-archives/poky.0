Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB8E5E00AE6; Mon, 12 Jun 2017 04:00:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.47.247.221 listed in list.dnswl.org]
Received: from mailrelay3.public.one.com (mailrelay3.public.one.com
	[195.47.247.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3DECE00A9B
	for <poky@yoctoproject.org>; Mon, 12 Jun 2017 04:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	references; bh=9vreCqhOf3ZlvhQ3nXshhlPENECmjVbNI3okS47u66Y=;
	b=CEg6U5IYZu7epwlzjiwfOYKlQFsQK2G38WZU+0qt0ifMgoY0Ed0l2A1r0rH4ynWaVe2wDe36e+uBS
	9zbOnhpSDvQSWs7oU9X1g7wfgL8FnV/lOLyg34XWZOykjKFrnSUyVXxWtvqz+zpoVQN/DmtA6JXp33
	2d46jnzf/01T/+GQ=
X-HalOne-Cookie: 4f6916c6e9b85495604e46ed2c581d61b0fda288
X-HalOne-ID: 4b44d6de-4f5e-11e7-9e23-b8ca3afa9d73
Received: from [192.168.1.194] (unknown [185.81.39.126])
	by smtpfilter1.public.one.com (Halon) with ESMTPSA
	id 4b44d6de-4f5e-11e7-9e23-b8ca3afa9d73;
	Mon, 12 Jun 2017 11:00:06 +0000 (UTC)
To: poky@yoctoproject.org
References: <74a9ea3f-038f-70cf-0453-cb60084be2ea@visionweeding.com>
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <8bbcc50d-e8e3-b923-02c6-df5ee78b4e45@visionweeding.com>
Date: Mon, 12 Jun 2017 13:00:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <74a9ea3f-038f-70cf-0453-cb60084be2ea@visionweeding.com>
Subject: Re: external kernel module does not recognize a new git commit
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
X-List-Received-Date: Mon, 12 Jun 2017 11:00:12 -0000
Content-Type: multipart/alternative;
	boundary="------------B93765823C3ECD3FF1BB8EA0"

--------------B93765823C3ECD3FF1BB8EA0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

SOLVED

It was caused by  my inexperience with bitbake, and half baked attempts 
to setup for offline builds

BB_FETCH_PREMIRRORONLY was set to 1.

sorry for the disturbance.

-Lars


On 2017-05-31 13:32, Lars Larsen wrote:
>
> Hi
>
> For my image I have a  recipe where I build an external kernel module 
> (a driver).
>
> I followed the model in the hello_mod.bb <http://hello_mod.bb> 
> example, except that the SRC_URI is a git repository and SRCREV= 
> "${AUTOREV} (/See the recipe below.)/
>
> in my image recipe I do :
> PACKAGE_INSTALL_append() = "kernel-module-camdriverV20"
>
> If I make changes and push a new version to the git repo , it is not 
> discovered by bitbake, it keeps building the older version it already 
> have checked out.
>
>
> ///
> //SUMMARY = "CAMERA DRIVER for Robovator"//
> //LICENSE = "GPLv2"//
> //LIC_FILES_CHKSUM = 
> "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"//
> //
> //# Cameradriver for Robovator, based on camdriverV10//
> //
> //#INHIBIT_PACKAGE_DEBUG_SPLIT = "1"//
> //BRANCH = "Pokybuild"//
> //
> //inherit module//
> //
> //SRC_URI =" git:///${ESERVER}/GIT/camdriverV20/;branch=${BRANCH};"//
> //
> //SRCREV= "${AUTOREV}"//
> //PV = "1.0.0+gitr${SRCPV}"//
> //
> //#SRCREV = "aa47aca8424a3f65ea2fc50386c2d1cdc47120d2"//
> //#PV = "1.0.0+gitr${SRCPV}"//
> ////
> //S = "${WORKDIR}/git"//
> //
> //# Do not autoload the driver when running "V1.9" mode//
> //#KERNEL_MODULE_AUTOLOAD += "camdriverV20"/
>
> /
> /
>
> ESERVER and BRANCH are externally defined an are correct.
>
> All my application level module recipes are made the same way and they 
> work fine
>
> I must have  something wrong with the driver module. but what?
>
>
> B.R Lars
>
>
> -- 
>
> Best Regards
> Lars Larsen
>
> F.Poulsen Engineering Aps
> Tjørnager 16
> 4330 Hvalsø
> Denmark
> +45 29802784
> www.visionweeding.com
>
>
>

-- 

Best Regards
Lars Larsen

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
www.visionweeding.com


--------------B93765823C3ECD3FF1BB8EA0
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>SOLVED</p>
    <p>It was caused by  my inexperience with bitbake, and half baked
      attempts to setup for offline builds</p>
    <p>BB_FETCH_PREMIRRORONLY was set to 1.</p>
    <p>sorry for the disturbance.<br>
    </p>
    <p>-Lars<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 2017-05-31 13:32, Lars Larsen wrote:<br>
    </div>
    <blockquote
      cite="mid:74a9ea3f-038f-70cf-0453-cb60084be2ea@visionweeding.com"
      type="cite">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <p>Hi</p>
      <p>For my image I have a  recipe where I build an external kernel
        module (a driver).</p>
      <p>I followed the model in the <a moz-do-not-send="true"
          href="http://hello_mod.bb" target="_blank">hello_mod.bb</a>
        example, except that the SRC_URI is a git repository and 
        SRCREV= "${AUTOREV} (<i>See the recipe below.)</i></p>
      in my image recipe I do :<br>
      PACKAGE_INSTALL_append() = "kernel-module-camdriverV20"<br>
      <br>
      <p>If I make changes and push a new version to the git repo , it
        is not discovered by bitbake, it keeps building the older
        version it already have checked out.</p>
      <p><br>
      </p>
      <p><font size="-2"><i> </i><i><br>
          </i><i>SUMMARY = "CAMERA DRIVER for Robovator"</i><i><br>
          </i><i>LICENSE = "GPLv2"</i><i><br>
          </i><i>LIC_FILES_CHKSUM = <a moz-do-not-send="true"
              class="moz-txt-link-rfc2396E"
              href="file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e">"file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"</a></i><i><br>
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
      <p>All my application level module recipes are made the same way
        and they work fine <br>
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
<a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="http://www.visionweeding.com">www.visionweeding.com</a>

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
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

--------------B93765823C3ECD3FF1BB8EA0--
