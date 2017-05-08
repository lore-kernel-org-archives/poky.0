Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5834FE00AE4; Mon,  8 May 2017 05:08:08 -0700 (PDT)
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
	*      [91.198.169.216 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 May 2017 05:08:05 PDT
Received: from mailrelay8.public.one.com (mailrelay8.public.one.com
	[91.198.169.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A46BBE00A38
	for <poky@yoctoproject.org>; Mon,  8 May 2017 05:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type;
	bh=RWCZ/W9CSrGsibuyxnSMVuMyD1zxu3apzBW6Faie77o=;
	b=frl5vlXiU0wzzUlDftZr018NLnxbssv+y9azBEaj23hoOlC2h8E3Kkqc7gXA6bl+L8aItdx0stKYe
	vLbqKxHwQIdyELaGx5SsVhsYvVwnoHX9Lm9W+fvDk9wSnBHazdz7YMO04a1rOf4xlqqoTzWJXG2tjV
	4fkWJZSV9PxRZZDI=
X-HalOne-Cookie: 3ec849cbab9165614a350f5975435102091cbc15
X-HalOne-ID: d7b8da7e-33e6-11e7-bc36-b82a72cffc46
Received: from [192.168.1.194] (unknown [185.81.39.126])
	by smtpfilter4.public.one.com (Halon) with ESMTPSA
	id d7b8da7e-33e6-11e7-bc36-b82a72cffc46;
	Mon, 08 May 2017 12:07:01 +0000 (UTC)
To: poky@yoctoproject.org
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <f9f3112c-9b77-df97-f5a3-17e46c3e3eb7@visionweeding.com>
Date: Mon, 8 May 2017 14:07:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: external kernel module - hash mismatch
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
X-List-Received-Date: Mon, 08 May 2017 12:08:08 -0000
Content-Type: multipart/alternative;
	boundary="------------63ED2E538D96EA4064C9CFE0"

--------------63ED2E538D96EA4064C9CFE0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

I have a recipe where I build an external kernel module (a driver).

I followed the model in the hello_mod.bb example, except that the 
SRC_URI is a git repository and  SRCREV= "${AUTOREV}"

I added
PACKAGE_INSTALL_append() = "kernel-module-camdriverV20"

and it works fine. just as expected.

*But*  If I push changes to the git  repository, bitbake fails hard with 
error messages like this:

/ERROR: When reparsing 
/home/lars/poky/meta-fpe/recipes-core/drivers/camdriver/camdriverV20.bb.do_compile, 
the basehash value changed from cc51ed245a373392856ed0fcd4309081 to 
77f012fc7c9ef8b6a34a0c751e3aaa5f. The metadata is not deterministic and 
this needs to be fixed.//
//ERROR: When reparsing 
/home/lars/poky/meta-fpe/recipes-core/drivers/camdriver/camdriverV20.bb.do_install, 
the basehash value changed from c3a246124e6a97131cdb34bc26db47a7 to 
2713df6e7f9e94aee601d6f654758959. The metadata is not deterministic and 
this needs to be fixed.//
/
the only way i can get it to build is to /rm -rf /tmp

/what am I doing wrong/?

-Lars/

-- 

Best Regards
Lars Larsen

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
www.visionweeding.com


--------------63ED2E538D96EA4064C9CFE0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p>Hi</p>
      <p>I have a recipe where I build an external kernel module (a
        driver).</p>
      <p>I followed the model in the hello_mod.bb example, except that
        the SRC_URI is a git repository and  SRCREV= "${AUTOREV}"</p>
      I added<br>
      PACKAGE_INSTALL_append() = "kernel-module-camdriverV20"<br>
      <br>
      and it works fine. just as expected. <br>
      <br>
      <b>But</b>  If I push changes to the git  repository, bitbake
      fails hard with error messages like this:<br>
      <br>
      <font size="-1"><i>ERROR: When reparsing
/home/lars/poky/meta-fpe/recipes-core/drivers/camdriver/camdriverV20.bb.do_compile,
          the basehash value changed from
          cc51ed245a373392856ed0fcd4309081 to
          77f012fc7c9ef8b6a34a0c751e3aaa5f. The metadata is not
          deterministic and this needs to be fixed.</i><i><br>
        </i><i>ERROR: When reparsing
/home/lars/poky/meta-fpe/recipes-core/drivers/camdriver/camdriverV20.bb.do_install,
          the basehash value changed from
          c3a246124e6a97131cdb34bc26db47a7 to
          2713df6e7f9e94aee601d6f654758959. The metadata is not
          deterministic and this needs to be fixed.</i><i><br>
        </i></font><br>
      the only way i can get it to build is to  <i>rm -rf /tmp<br>
        <br>
      </i>what am I doing wrong<i> ?<br>
        <br>
        -Lars</i><br>
    </div>
    <br>
    --
    <pre class="moz-signature" cols="72">
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

--------------63ED2E538D96EA4064C9CFE0--
