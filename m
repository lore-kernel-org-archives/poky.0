Return-Path: <tab.liu@lemaker.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1EF2E00C1E; Tue, 28 Jun 2016 02:56:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [14.17.43.228 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Jun 2016 02:56:43 PDT
Received: from smtpbg333.qq.com (smtpbg333.qq.com [14.17.43.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88C19E00B5F
	for <poky@yoctoproject.org>; Tue, 28 Jun 2016 02:56:43 -0700 (PDT)
X-QQ-mid: Yesmtp31t1467107709t596t1524
Received: from [10.1.1.33] (unknown [180.178.34.12])
	by esmtp4.qq.com (ESMTP) with SMTP id 0
	for <poky@yoctoproject.org>; Tue, 28 Jun 2016 17:55:08 +0800 (CST)
X-QQ-SSF: 01400000008000F0F321B00A0000000
X-QQ-FEAT: s2GiS5gUmyJ8tbwJlQ+5eTM5tfbqvXQruFdefqe2U4wXJBo/p6sydMGCP/Fqx
	h7gJlaE/LOErA8D3SiLTq3iZULD68SGlw8Lqvk/E5I6t3smhpFYa9n3axIUYJe0KHGVmcL/
	iTgVfQtwzgFYDjww8ojnRF5stdV+f/Bty72I7RuAypmULt0nMNXcY/OHQAzC3hmGoPv3Bpq
	b0dAl1+YO6QsRdVC0rS6K7OsTYf4CBqG/C0zTZnNbKCs3LBE7j9ReOdhdfFUj/bP7kbcSjQ
	YRAJBG5vz0YroOHqioN8eXDYBy1lmGOBWVng==
X-QQ-GoodBg: 0
To: poky@yoctoproject.org
From: tab <tab.liu@lemaker.org>
Organization: LeMaker
Message-ID: <5772497B.3080701@lemaker.org>
Date: Tue, 28 Jun 2016 17:55:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
X-QQ-Bgrelay: 1
Subject: how to set u-boot in meta-machine
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
X-List-Received-Date: Tue, 28 Jun 2016 09:56:49 -0000
Content-Type: multipart/alternative;
	boundary="------------050304020309010806030805"

--------------050304020309010806030805
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
I'm going to build a linux distro for LeMaker Guitar with yocto project 
and I've meet some problems, hope you can help me:
  I refer this 
page(http://www.yoctoproject.org/docs/2.1/bsp-guide/bsp-guide.html) to 
build a layer named 'meta-guitar' with a custom
kernel source (https://github.com/LeMaker/linux-actions).
It seems nothing wrong during the building time and i get a 
'meta-guitar' successfuly.
But when i try to build a image with `bitbake core-image-minimal` i get 
a error:

ERROR: u-boot-v2016.03+gitAUTOINC+df61a74e68-r0 do_compile: oe_runmake 
failed
ERROR: u-boot-v2016.03+gitAUTOINC+df61a74e68-r0 do_compile: Function 
failed: do_compile (log file is located at 
/home/tab/work/yocto/build/guitar/tmp/work/guitar-poky-linux-gnueabi/u-boot/v2016.03+gitAUTOINC+df61a74e68-r0/temp/log.do_compi
le.16108)

and the logfile says: Configuration file ".config" not found.

It seems that I need to do something with the u-boot while building the 
meta-guitar?
But there's no more info about the u-boot while I'm building 
meta-guitar, such as the path of the u-boot source file?
  How can i solve this problem?
  Hope for your help.

Tab Liu
-- 


  **

  *
  *

  *Tab Liu
  *


  *LeMaker ****Support * *Team *

  **Making Innovation Easy *.
  *

  Email:
  support@lemaker.org <mailto:support@lemaker.org> (Technical Support)
  product@lemaker.org <mailto:product@lemaker.org> (Product Distribution)

  Website: http://www.lemaker.org/ <http://www.lemaker.org/>



--------------050304020309010806030805
Content-Type: multipart/related;
 boundary="------------070704090902020707050008"

--------------070704090902020707050008
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi, <br>
    I'm going to build a linux distro for LeMaker Guitar with yocto
    project and I've meet some problems, hope you can help me:<br>
     I refer this page(<a class="moz-txt-link-freetext"
      href="http://www.yoctoproject.org/docs/2.1/bsp-guide/bsp-guide.html">http://www.yoctoproject.org/docs/2.1/bsp-guide/bsp-guide.html</a>)
    to build a layer named 'meta-guitar' with a custom<br>
    kernel source (<a class="moz-txt-link-freetext"
      href="https://github.com/LeMaker/linux-actions">https://github.com/LeMaker/linux-actions</a>).
    <br>
    It seems nothing wrong during the building time and i get a
    'meta-guitar' successfuly. <br>
    But when i try to build a image with `bitbake core-image-minimal` i
    get a error:<br>
    <br>
    ERROR: u-boot-v2016.03+gitAUTOINC+df61a74e68-r0 do_compile:
    oe_runmake failed<br>
    ERROR: u-boot-v2016.03+gitAUTOINC+df61a74e68-r0 do_compile: Function
    failed: do_compile (log file is located at
/home/tab/work/yocto/build/guitar/tmp/work/guitar-poky-linux-gnueabi/u-boot/v2016.03+gitAUTOINC+df61a74e68-r0/temp/log.do_compi<br>
    le.16108)<br>
    <br>
    and the logfile says: Configuration file ".config" not found. <br>
    <br>
    It seems that I need to do something with the u-boot while building
    the meta-guitar? <br>
    But there's no more info about the u-boot while I'm building
    meta-guitar, such as the path of the u-boot source file? <br>
     How can i solve this problem?<br>
     Hope for your help.<br>
    <br>
    Tab Liu
    <div class="moz-signature">-- <br>
      <span>
        <h1 style="margin: 17pt 0cm 16.5pt; text-align: justify;
          line-height: 240%; page-break-after: avoid; font-size: 22pt;
          font-family: Calibri, sans-serif;">
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 21px;" align="left"><b>
              <span style="font-size: 16pt; font-family: Verdana,
                sans-serif;" lang="EN-US"></span></b></p>
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 21px;" align="left"><b><span
                style="font-size: 16pt; font-family: Verdana,
                sans-serif;" lang="EN-US"><br>
              </span></b></p>
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 21px;" align="left"><b><span
                style="font-size: 16pt; font-family: Verdana,
                sans-serif;" lang="EN-US">Tab Liu<br>
              </span> </b> <span style="font-size: 10pt; font-family:
              Verdana, sans-serif;" lang="EN-US"></span> </p>
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 14.25pt;" align="left"><br>
          </p>
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 14.25pt;" align="left"><b>
              <span style="font-size: 12pt;" lang="EN-US">LeMaker </span>
            </b><b> <span style="font-size: 12pt;" lang="EN-US"><b> <span
                    style="font-size: 12pt;" lang="EN-US"><b> <span
                        style="font-size: 12pt;" lang="EN-US">Support </span>
                    </b> </span> </b>Team </span> </b></p>
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 21px;"><b> <span
                style="font-size: 12pt;" lang="EN-US"><b> <span
                    style="font-size: 12pt;" lang="EN-US">Making
                    Innovation Easy</span> </b>. <br>
              </span> </b></p>
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 21px;"> <span
              style="font-size: 10pt;" lang="EN-US">Email:</span> <span
              style="font-size: 10pt; font-family: Verdana, sans-serif;"
              lang="EN-US"><br>
              <a href="mailto:support@lemaker.org" target="_blank"
                style="text-decoration: none !important;">support@lema<wbr>ker.org</a> (Technical
              Support) <br>
              <a href="mailto:product@lemaker.org" target="_blank"
                style="text-decoration: none !important;">product@lema<wbr>ker.org</a> (Product
              Distribution) <br>
            </span> </p>
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 21px;">Website:  <span
              style="font-size: 10pt; font-family: Verdana, sans-serif;"
              lang="EN-US"><a href="http://www.lemaker.org/"
                target="_blank" style="text-decoration: none
                !important;">http://www.l<wbr>emaker.org/</a></span> </p>
          <p class="MsoNormal" style="font-weight: normal; margin: 0px
            0cm; font-size: 10.5pt; line-height: 21px;"> <span
              lang="EN-US"><img
                src="cid:part6.08000604.02090804@lemaker.org"
                style="max-width: 100%; height: auto !important;"> <br>
            </span> </p>
        </h1>
      </span></div>
  </body>
</html>

--------------070704090902020707050008--

--------------050304020309010806030805--
