Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews07.kpnxchange.com (cpsmtpb-ews07.kpnxchange.com
	[213.75.39.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id E1A4E4C802F2
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 06:16:55 -0500 (CDT)
Received: from cpbrm-ews13.kpnxchange.com ([10.94.84.144]) by
	cpsmtpb-ews07.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 21 Mar 2011 12:16:54 +0100
Received: from CPSMTPM-CMT106.kpnxchange.com ([195.121.3.22]) by
	cpbrm-ews13.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 21 Mar 2011 12:16:54 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT106.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Mon, 21 Mar 2011 12:16:49 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Mon, 21 Mar 2011 12:16:46 +0100
Message-ID: <4D87339F.4060304@de-haardt.com>
Date: Mon, 21 Mar 2011 12:16:47 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Sparsh Wid hope <sparsh150847@yahoo.com>
References: <63726.2611.qm@web95703.mail.in.yahoo.com>
In-Reply-To: <63726.2611.qm@web95703.mail.in.yahoo.com>
X-OriginalArrivalTime: 21 Mar 2011 11:16:49.0903 (UTC)
	FILETIME=[793A6FF0:01CBE7B9]
X-RcptDomain: yoctoproject.org
Cc: poky@yoctoproject.org
Subject: Re: Need help to build poky image for beagle board
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Mar 2011 11:16:56 -0000
Content-Type: multipart/alternative;
	boundary="------------030401070406040102010708"

--------------030401070406040102010708
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/21/2011 11:29 AM, Sparsh Wid hope wrote:
> Hi All,
>
> I'm trying to build poky image for beagle board.
> I got the following error-
> FATAL: Error when parsing []: file classes/packaged-staging.bbclass 
> not found in 
> /home/surya/Surya/pro/POKY/meta-texasinstruments:/home/surya/Surya/pro/POKY/meta
>
> I followed the steps below-
>
> 1.Downloaded the source
> wget -c 
> http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.tar.bz2 
> <http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.tar.bz2>
>
> and rename it as POKY.
> 2. Get TI's overlay
> git clone git://github.com/mrchapp/meta-texasinstruments.git
> cd meta-texasinstruments
> git checkout -b gitomapzoom --track origin/gitomapzoom
>
> 3. Copy configuration
> cp -p POKY/meta-texasinstruments/conf/misc/local.conf POKY/build/conf/local.conf
>
> 4. Build!
> cd POKY
> source poky-init-build-env
> from the linkhttp://elinux.org/BeagleBoard/Poky
> Help me to solve this error.
> Thanks in advance
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
I suspect it has to do with the version of poky in you are using, unlike the old "green" release, the "laverne" release doesn't contain the file "packaged-staging.bbclass".
Looking at the dates in the meta-texasinstruments git tree(latest update 2009) I think it has something to do with the compatibility.
I hope this gives you a direction to search for the problem, I am not very experienced with Poky yet.

Regards,
Gerard


--------------030401070406040102010708
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
    <title></title>
  </head>
  <body bgcolor="#ffffff" text="#000000">
    On 03/21/2011 11:29 AM, Sparsh Wid hope wrote:
    <blockquote cite="mid:63726.2611.qm@web95703.mail.in.yahoo.com"
      type="cite">
      <table border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td style="font: inherit;" valign="top">
              <div id="yiv1904449371">
                <table id="yiv1904449371bodyDrftID"
                  class="yiv1904449371" border="0" cellpadding="0"
                  cellspacing="0">
                  <tbody>
                    <tr>
                      <td id="yiv1904449371drftMsgContent"
                        style="font-style: inherit; font-variant:
                        inherit; font-weight: inherit; font-size:
                        inherit; line-height: inherit; font-size-adjust:
                        inherit; font-stretch: inherit; font-family:
                        arial;"><font
                          class="yiv1904449371Apple-style-span"
                          style="font-size: 10pt;" size="2" face="arial">Hi
                          All,</font>
                        <div style="font-family: arial; font-size:
                          10pt;"><br>
                        </div>
                        <div style="font-family: arial; font-size:
                          10pt;">I'm trying to build poky image for
                          beagle board.&nbsp;</div>
                        <div style="font-family: arial; font-size:
                          10pt;">
                          <meta http-equiv="content-type"
                            content="text/html; charset=ISO-8859-1">
                          <pre style="font-family: arial; font-size: 10pt;">I got the following error- </pre>
                          <span class="yiv1904449371Apple-style-span"
                            style="background-color: rgb(160, 255, 64);"><font
                              class="yiv1904449371Apple-style-span"
                              size="2" face="monospace"><span
                                class="yiv1904449371Apple-style-span"
                                style="white-space: pre;">FATAL: Error
                                when parsing []: file
                                classes/packaged-staging.bbclass not
                                found in
/home/surya/Surya/pro/POKY/meta-texasinstruments:/home/surya/Surya/pro/POKY/meta</span></font><font
                              class="yiv1904449371Apple-style-span"
                              size="2" face="arial">&nbsp;</font></span></div>
                        <div><font class="Apple-style-span" size="2"><br>
                          </font></div>
                        <div style="font-family: arial; font-size:
                          10pt;">I followed the steps below-</div>
                        <div style="font-family: arial; font-size:
                          10pt;"><br>
                        </div>
                        <div style="font-family: arial; font-size:
                          10pt;">1.Downloaded the source&nbsp;</div>
                        <div style="font-family: arial; font-size:
                          10pt;"><span class="Apple-style-span"
                            style="white-space: pre;">wget -c <a
                              moz-do-not-send="true"
href="http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.tar.bz2">http://git.poky<wbr>linux.org/cgit/<wbr>cgit.cgi/poky/s<wbr>napshot/poky-la<wbr>verne-4.0.1.tar<wbr>.bz2</a></span></div>
                        <div style="font-family: arial; font-size:
                          10pt;"><br>
                        </div>
                        <div style="font-family: arial; font-size:
                          10pt;">and rename it as POKY.</div>
                        <div style="font-size: 10pt;">
                          <pre style="font-family: arial; font-size: 10pt;">2. Get TI's overlay
git clone git://github.com/mrchapp/meta-texasinstruments.git
cd meta-texasinstruments
git checkout -b gitomapzoom --track origin/gitomapzoom

3. Copy configuration
cp -p POKY/meta-texasinstruments/conf/misc/local.conf POKY/build/conf/local.conf

4. Build!
cd POKY
source poky-init-build-env</pre>
                          <pre style="font-family: arial; font-size: 10pt;">from the link <span class="yiv1904449371Apple-style-span" style="background-color: rgb(128, 255, 0);"><a class="moz-txt-link-freetext" href="http://elinux.org/BeagleBoard/Poky">http://elinux.org/BeagleBoard/Poky</a></span></pre>
                          <pre style="font-family: arial; font-size: 10pt;">Help me to solve this error.</pre>
                          <pre style="font-family: arial; font-size: 10pt;">Thanks in advance          </pre>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
      <br>
      <pre wrap="">
<fieldset class="mimeAttachmentHeader"></fieldset>
_______________________________________________
poky mailing list
<a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
</pre>
    </blockquote>
    <pre>I suspect it has to do with the version of poky in you are using, unlike the old "green" release, the "laverne" release doesn't contain the file "packaged-staging.bbclass". 
Looking at the dates in the meta-texasinstruments git tree(latest update 2009) I think it has something to do with the compatibility.
I hope this gives you a direction to search for the problem, I am not very experienced with Poky yet.

Regards,
Gerard
</pre>
  </body>
</html>

--------------030401070406040102010708--
