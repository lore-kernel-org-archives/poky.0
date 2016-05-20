Return-Path: <edwin.plauchu.camacho@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D2DDE00EC3; Fri, 20 May 2016 08:51:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E51E00CD9
	for <poky@yoctoproject.org>; Fri, 20 May 2016 08:51:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 20 May 2016 08:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,339,1459839600"; 
	d="scan'208,217";a="971221307"
Received: from pianodaemon-contraption.zpn.intel.com (HELO [10.219.128.59])
	([10.219.128.59])
	by fmsmga001.fm.intel.com with ESMTP; 20 May 2016 08:51:02 -0700
To: "Burton, Ross" <ross.burton@intel.com>
References: <1462817910-15459-1-git-send-email-edwin.plauchu.camacho@linux.intel.com>
	<CAJTo0Lb3Ua9OtsT=XbCHhY4mS6_b2q0BiNp--4rMKXQcRnYQVw@mail.gmail.com>
	<57337913.4090305@linux.intel.com>
From: Plauchu Edwin <edwin.plauchu.camacho@linux.intel.com>
Message-ID: <573F3276.4080503@linux.intel.com>
Date: Fri, 20 May 2016 10:51:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <57337913.4090305@linux.intel.com>
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
X-List-Received-Date: Fri, 20 May 2016 15:51:07 -0000
Content-Type: multipart/alternative;
	boundary="------------010000050609090905030800"

--------------010000050609090905030800
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Ping

On 11/05/16 13:25, Plauchu Edwin wrote:
> It was tested upon BeagleBone Black Rev C.
>
> About your question ... Yes it depends of a kernel patch ( */[PATCH] 
> /**/meta-yocto-bsp: beaglebone: Enable drm for omap/* ) that was sent 
> to linux-yocto@yoctoproject.org. Bruce Ashfield just confirmed this 
> patch as merged.
>
> On 10/05/16 10:22, Burton, Ross wrote:
>>
>> On 9 May 2016 at 19:18, <edwin.plauchu.camacho@linux.intel.com 
>> <mailto:edwin.plauchu.camacho@linux.intel.com>> wrote:
>>
>>     The modesetting driver is better than fbdev driver. This patch is
>>     enabling so for beaglebone BSP (Without 3D accelaration).
>>
>>
>> Can you confirm that you've tested this on real hardware, and what 
>> boards in particular you tested it on?
>>
>> Also presumably this depends on the kernel patch?
>>
>> Cheers,
>> Ross
>
>
>


--------------010000050609090905030800
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Ping<br>
    <br>
    <div class="moz-cite-prefix">On 11/05/16 13:25, Plauchu Edwin wrote:<br>
    </div>
    <blockquote cite="mid:57337913.4090305@linux.intel.com" type="cite">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      It was tested upon BeagleBone Black Rev C.<br>
      <br>
      About your question ... Yes it depends of a kernel patch ( <b><i><font
            color="#009900">[PATCH] </font></i></b><b><i><font
            face="Helvetica, Arial, sans-serif" color="#009900">meta-yocto-bsp:

            beaglebone: Enable drm for omap</font></i></b> ) that was
      sent to <a moz-do-not-send="true"
        class="moz-txt-link-abbreviated"
        href="mailto:linux-yocto@yoctoproject.org">linux-yocto@yoctoproject.org</a>.
      Bruce Ashfield just confirmed this patch as merged.<br>
      <br>
      <div class="moz-cite-prefix">On 10/05/16 10:22, Burton, Ross
        wrote:<br>
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
                <div id=":3o" class="a3s aXjCH">The modesetting driver
                  is better than fbdev driver. This patch is enabling so
                  for beaglebone BSP (Without 3D accelaration).<br>
                </div>
              </blockquote>
            </div>
            <br>
            Can you confirm that you've tested this on real hardware,
            and what boards in particular you tested it on?</div>
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
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------010000050609090905030800--
