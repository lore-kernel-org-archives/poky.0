Return-Path: <hector@ikatu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36D4BE00CFB; Mon, 14 Jan 2019 17:12:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from malena.ikatu.net (malena.ikatu.net [190.0.137.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F02AFE00CE0
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 17:12:08 -0800 (PST)
Received: (qmail 31521 invoked by uid 0); 15 Jan 2019 01:20:55 -0000
Received: from r167-57-189-146.dialup.adsl.anteldata.net.uy (HELO
	?192.168.1.43?) (hector@ikatu.com@167.57.189.146)
	by malena.ikatu.net with SMTP; 15 Jan 2019 01:20:55 -0000
To: "Burton, Ross" <ross.burton@intel.com>
References: <7d48f265-39e9-663c-f229-8dadfc22083f@ikatu.com>
	<CAJTo0Lbpgpv98hiSdNV1Ja6TJQ-TV5CgjpQxYxhoyW4+-fL58Q@mail.gmail.com>
From: Hector Almeida <hector@ikatu.com>
Message-ID: <8297d115-346e-6f28-cd00-fee40b2893f6@ikatu.com>
Date: Mon, 14 Jan 2019 22:11:54 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lbpgpv98hiSdNV1Ja6TJQ-TV5CgjpQxYxhoyW4+-fL58Q@mail.gmail.com>
X-Kalio-Sanitizer: ClamAV
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: systemd and sysvinit enabled in DISTRO_FEATURES
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
X-List-Received-Date: Tue, 15 Jan 2019 01:12:10 -0000
Content-Type: multipart/alternative;
	boundary="------------19B980453848C3674002C1A1"
Content-Language: en-US

--------------19B980453848C3674002C1A1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Ross,


thanks for answering.


On my main image, under /etc/init.d I have:

alsa-state     bluetooth      dbus-1         functions hwclock.sh     
networking     syslog
avahi-daemon   connman        dropbear       fuse modutils.sh    
ntpd           run-postinsts  systemd-udevd


For example, in connman's recipe, the 'connman' sysvinit script is 
installed if 'DISTRO_FEATURES' contains 'sysvinit'. But then, is there 
any other procedure that would delete this file from an image the 
chooses systemd as init manager?


Also, on packagroup-core-boot, if 'DISTRO_FEATURES' contains 'sysvinit', 
the following additional packages that contains sysvinit scripts are 
installed: 'init-ifupdown' and 'modutils-initscripts'. I don't 
understand the sense of this, since in the Yocto documentation I 
attached on the previous mail, it says that the main image will use 
packagroup-core-boot and the rescue image should not use it. So, I will 
get init-ifupdown and modutils-initscripts on the main image that uses 
systemd, and I should't use packagegroup-core-boot on the rescue image 
that is the one that really needs those packages (of course I can 
manually add this two packages to my rescue image, I'm just trying to 
under how all this should work).


Hector


On 14/1/19 21:35, Burton, Ross wrote:
> On Tue, 15 Jan 2019 at 00:19, Hector Almeida <hector@ikatu.com 
> <mailto:hector@ikatu.com>> wrote:
>
>     But I end up with the /etc/init.d folder with a lot of sysvinit
>     scripts in my main image. Also I have some systemd files on my
>     rescue image under /etc/systemd.
>
>
> What files are in each place?  It's entirely possible that you're 
> using recipes that ship just one or the other, or recipes that don't 
> correctly use the classes.
>
> Ross

--------------19B980453848C3674002C1A1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Ross,<br>
    <p><br>
    </p>
    <p>thanks for answering.<br>
    </p>
    <p><br>
    </p>
    <p>On my main image, under /etc/init.d I have: <br>
    </p>
    <p>alsa-state     bluetooth      dbus-1         functions     
      hwclock.sh     networking     syslog         <br>
      avahi-daemon   connman        dropbear       fuse          
      modutils.sh    ntpd           run-postinsts  systemd-udevd <br>
    </p>
    <p><br>
    </p>
    <p>For example, in connman's recipe, the 'connman' sysvinit script
      is installed if 'DISTRO_FEATURES' contains 'sysvinit'. But then,
      is there any other procedure that would delete this file from an
      image the chooses systemd as init manager?</p>
    <br>
    <p>Also, on packagroup-core-boot, if 'DISTRO_FEATURES' contains
      'sysvinit', the following additional packages that contains
      sysvinit scripts are installed: 'init-ifupdown' and
      'modutils-initscripts'. I don't understand the sense of this,
      since in the Yocto documentation I attached on the previous mail,
      it says that the main image will use packagroup-core-boot and the
      rescue image should not use it. So, I will get init-ifupdown and
      modutils-initscripts on the main image that uses systemd, and I
      should't use packagegroup-core-boot on the rescue image that is
      the one that really needs those packages (of course I can manually
      add this two packages to my rescue image, I'm just trying to under
      how all this should work).<br>
    </p>
    <p><br>
    </p>
    Hector
    <p> <br>
    </p>
    <div class="moz-cite-prefix">On 14/1/19 21:35, Burton, Ross wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0Lbpgpv98hiSdNV1Ja6TJQ-TV5CgjpQxYxhoyW4+-fL58Q@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">On Tue, 15 Jan 2019 at 00:19, Hector Almeida &lt;<a
            href="mailto:hector@ikatu.com" moz-do-not-send="true">hector@ikatu.com</a>&gt;
          wrote:<br>
        </div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <p>But I end up with the /etc/init.d folder with a lot of
                sysvinit scripts in my main image. Also I have some
                systemd files on my rescue image under /etc/systemd.</p>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>What files are in each place?  It's entirely possible
            that you're using recipes that ship just one or the other,
            or recipes that don't correctly use the classes.</div>
          <div><br>
          </div>
          <div>Ross</div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------19B980453848C3674002C1A1--
