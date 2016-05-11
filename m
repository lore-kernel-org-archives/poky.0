Return-Path: <edwin.plauchu.camacho@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67152E00F03; Wed, 11 May 2016 11:25:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E14A1E00E6C
	for <poky@yoctoproject.org>; Wed, 11 May 2016 11:25:14 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 11 May 2016 11:25:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,608,1455004800"; 
	d="scan'208,217";a="804140708"
Received: from pianodaemon-contraption.zpn.intel.com (HELO [10.219.128.59])
	([10.219.128.59])
	by orsmga003.jf.intel.com with ESMTP; 11 May 2016 11:25:14 -0700
To: "Burton, Ross" <ross.burton@intel.com>
References: <1462817910-15459-1-git-send-email-edwin.plauchu.camacho@linux.intel.com>
	<CAJTo0Lb3Ua9OtsT=XbCHhY4mS6_b2q0BiNp--4rMKXQcRnYQVw@mail.gmail.com>
From: Plauchu Edwin <edwin.plauchu.camacho@linux.intel.com>
Message-ID: <57337913.4090305@linux.intel.com>
Date: Wed, 11 May 2016 13:25:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lb3Ua9OtsT=XbCHhY4mS6_b2q0BiNp--4rMKXQcRnYQVw@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>,
	Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Subject: Re: [PATCH] meta-yocto-bsp: Enable xf86 modeset for beaglebone
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
X-List-Received-Date: Wed, 11 May 2016 18:25:15 -0000
Content-Type: multipart/alternative;
	boundary="------------080906060009010903060106"

--------------080906060009010903060106
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

It was tested upon BeagleBone Black Rev C.

About your question ... Yes it depends of a kernel patch ( */[PATCH] 
/**/meta-yocto-bsp: beaglebone: Enable drm for omap/* ) that was sent to 
linux-yocto@yoctoproject.org. Bruce Ashfield just confirmed this patch 
as merged.

On 10/05/16 10:22, Burton, Ross wrote:
>
> On 9 May 2016 at 19:18, <edwin.plauchu.camacho@linux.intel.com 
> <mailto:edwin.plauchu.camacho@linux.intel.com>> wrote:
>
>     The modesetting driver is better than fbdev driver. This patch is
>     enabling so for beaglebone BSP (Without 3D accelaration).
>
>
> Can you confirm that you've tested this on real hardware, and what 
> boards in particular you tested it on?
>
> Also presumably this depends on the kernel patch?
>
> Cheers,
> Ross


--------------080906060009010903060106
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    It was tested upon BeagleBone Black Rev C.<br>
    <br>
    About your question ... Yes it depends of a kernel patch ( <b><i><font
          color="#009900">[PATCH] </font></i></b><b><i><font
          face="Helvetica, Arial, sans-serif" color="#009900">meta-yocto-bsp:
          beaglebone: Enable drm for omap</font></i></b> ) that was sent
    to <a class="moz-txt-link-abbreviated" href="mailto:linux-yocto@yoctoproject.org">linux-yocto@yoctoproject.org</a>. Bruce Ashfield just confirmed this
    patch as merged.<br>
    <br>
    <div class="moz-cite-prefix">On 10/05/16 10:22, Burton, Ross wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0Lb3Ua9OtsT=XbCHhY4mS6_b2q0BiNp--4rMKXQcRnYQVw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 9 May 2016 at 19:18, <span
              dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:edwin.plauchu.camacho@linux.intel.com"
                target="_blank">edwin.plauchu.camacho@linux.intel.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":3o" class="a3s aXjCH">The modesetting driver is
                better than fbdev driver. This patch is enabling so for
                beaglebone BSP (Without 3D accelaration).<br>
              </div>
            </blockquote>
          </div>
          <br>
          Can you confirm that you've tested this on real hardware, and
          what boards in particular you tested it on?</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Also presumably this depends on the
          kernel patch?</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Cheers,</div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080906060009010903060106--
