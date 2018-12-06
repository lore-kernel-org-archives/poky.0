Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DED4E00C77; Wed,  5 Dec 2018 21:38:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23356E00C95
	for <poky@yoctoproject.org>; Wed,  5 Dec 2018 21:37:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wB65bG9b030724
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 5 Dec 2018 21:37:27 -0800
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 5 Dec 2018 21:37:06 -0800
To: Aditya Tayade <Aditya.Tayade@kpit.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <MA1PR01MB2604F38E134555C92B23094791A80@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <72115296-1563-3c1a-2fcd-3ac1c5b46a82@windriver.com>
Date: Thu, 6 Dec 2018 13:44:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB2604F38E134555C92B23094791A80@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
X-Originating-IP: [128.224.163.141]
Subject: Re: [Issue] systemd v237: systemd-analyze plot
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
X-List-Received-Date: Thu, 06 Dec 2018 05:38:04 -0000
Content-Type: multipart/alternative;
	boundary="------------D9B277973177EB7A55672BBF"

--------------D9B277973177EB7A55672BBF
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Please check if systemd-hostnamed.service is installed, and if it's 
activatable via this 'org.freedesttop.hostname1'.

`busctl'
`cat /usr/share/dbus-1/system-services/org.freedesktop.hostname1.service'
`ls -l /lib/systemd/system/dbus-org.freedesktop.hostname1.service'

Best Regards,
Chen Qi

On 12/06/2018 05:25 AM, Aditya Tayade wrote:
>
> Hi,
>
>
> Is any one facing below issue with "systemd-analyze plot" command:
>
> Failed to get host information from systemd: The name 
> org.freedesktop.hostname1 was not provided by any .service files
>
>
> After going through the source code of analyze.c found it's 
> log_debug_error, can any one help here.
>
>
> Rest of systemd-analyze options working fine.
>
>
> Regards,
>
> Aditya Tayade
>
> This message contains information that may be privileged or 
> confidential and is the property of the KPIT Technologies Ltd. It is 
> intended only for the person to whom it is addressed. If you are not 
> the intended recipient, you are not authorized to read, print, retain 
> copy, disseminate, distribute, or use this message or any part 
> thereof. If you receive this message in error, please notify the 
> sender immediately and delete all copies of this message. KPIT 
> Technologies Ltd. does not accept any liability for virus infected mails.
>
>


--------------D9B277973177EB7A55672BBF
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Please check if
      systemd-hostnamed.service is installed, and if it's activatable
      via this 'org.freedesttop.hostname1'.<br>
      <br>
      `busctl'<br>
      `cat
      /usr/share/dbus-1/system-services/org.freedesktop.hostname1.service'<br>
      `ls -l /lib/systemd/system/dbus-org.freedesktop.hostname1.service'<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 12/06/2018 05:25 AM, Aditya Tayade wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB2604F38E134555C92B23094791A80@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="margin-top:0;margin-bottom:0">Hi,</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">Is any one facing below
          issue with "systemd-analyze plot" command:</p>
        <p style="margin-top:0;margin-bottom:0">Failed to get host
          information from systemd: The name org.freedesktop.hostname1
          was not provided by any .service files</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">After going through the
          source code of analyze.c found it's log_debug_error, can any
          one help here.<br>
        </p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">Rest of systemd-analyze
          options working fine.</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">Regards,</p>
        <p style="margin-top:0;margin-bottom:0">Aditya Tayade<br>
        </p>
      </div>
      This message contains information that may be privileged or
      confidential and is the property of the KPIT Technologies Ltd. It
      is intended only for the person to whom it is addressed. If you
      are not the intended recipient, you are not authorized to read,
      print, retain copy, disseminate, distribute, or use this message
      or any part thereof. If you receive this message in error, please
      notify the sender immediately and delete all copies of this
      message. KPIT Technologies Ltd. does not accept any liability for
      virus infected mails.
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------D9B277973177EB7A55672BBF--
