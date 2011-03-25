Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews02.kpnxchange.com (cpsmtpb-ews02.kpnxchange.com
	[213.75.39.5])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69E0E4C806DA
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 09:19:12 -0500 (CDT)
Received: from cpbrm-ews15.kpnxchange.com ([10.94.84.146]) by
	cpsmtpb-ews02.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 25 Mar 2011 15:19:06 +0100
Received: from CPSMTPM-CMT104.kpnxchange.com ([195.121.3.20]) by
	cpbrm-ews15.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 25 Mar 2011 15:19:06 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT104.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Fri, 25 Mar 2011 15:19:05 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Fri, 25 Mar 2011 15:19:03 +0100
Message-ID: <4D8CA457.4080506@de-haardt.com>
Date: Fri, 25 Mar 2011 15:19:03 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Sparsh Wid hope <sparsh150847@yahoo.com>
References: <671167.786.qm@web95705.mail.in.yahoo.com>
In-Reply-To: <671167.786.qm@web95705.mail.in.yahoo.com>
X-OriginalArrivalTime: 25 Mar 2011 14:19:05.0818 (UTC)
	FILETIME=[9931A3A0:01CBEAF7]
X-RcptDomain: yoctoproject.org
Cc: poky <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 25 Mar 2011 14:19:13 -0000
Content-Type: multipart/alternative;
	boundary="------------010406050307090607040504"

--------------010406050307090607040504
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Poky will search for images in the meta/recipes-core/images directory. To build a image you issue bitbake with the filename from that directory without the .bb extension.
The recipe you have got is from angstrom and probably not compatible, you can find more information about how a recipe should look here: http://pokylinux.org/doc/poky-handbook.html#usingpoky-extend-customimage
You can also set your target to beagleboard in the build/conf/local.conf and build one of the predefined images:

bitbake poky-image-core
or
bitbake poky-image-sato

Regards,

Gerard


On 03/25/2011 03:06 PM, Sparsh Wid hope wrote:
>
>   Thanks for your suggestion . I tried that bitbake 
> beagleboard-demo-image and have same error. please help if you get 
> anything about it.
> Thanks in advance
> --- On *Fri, 25/3/11, Gerard van den Bosch /<gerard@de-haardt.com>/* 
> wrote:
>
>
>     From: Gerard van den Bosch <gerard@de-haardt.com>
>     Subject: Re: [poky] Need help to build poky image for beagle board
>     To: "Sparsh Wid hope" <sparsh150847@yahoo.com>
>     Cc: poky@yoctoproject.org
>     Date: Friday, 25 March, 2011, 1:34 PM
>
>     On 03/25/2011 01:57 PM, Sparsh Wid hope wrote:
>>
>>
>>
>>         Hi All,
>>
>>         I'm trying to build poky image for beagle board.
>>
>>         I followed the steps below-
>>
>>
>>         1.Downloaded the source
>>         wget
>>         -c http://git.poky
>>         linux.org/cgit/
>>         cgit.cgi/poky/s
>>         napshot/poky-laverne-4.0.1.tar
>>         .bz2
>>         <http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.tar.bz2>
>>
>>         2. untar it
>>
>>         3. I want it build for beagleboard, so i
>>         downloaded recipes_images_beagleboard-demo-image.bb recipe
>>         from
>>         http://gitorious.org/angstrom/openembedded/blobs/org.openembedded.dev/recipes/images/beagleboard-demo-image.bb
>>         and copied that in laverne-4.0.1/meta/recipes-core/images
>>
>>         4.
>>         Build!
>>
>>         cd laverne-4.0.1
>>
>>         source poky-init-build-env
>>
>>         bitbake recipes_images_beagleboard-demo-image
>>
>>         and get error as
>>
>>         ERROR: Nothing PROVIDES 'recipes_images_beagleboard-demo-image'
>>         Command execution failed: Traceback (most recent call last):
>>            File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 88, in runAsyncCommand
>>              commandmethod(self.cmds_async, self, options)
>>            File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 184, in buildTargets
>>              command.cooker.buildTargets(pkgs_to_build, task)
>>            File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.py", line 756, in buildTargets
>>              taskdata.add_provider(localdata, self.status, k)
>>            File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 354, in add_provider
>>              self.add_provider_internal(cfgData, dataCache, item)
>>            File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 374, in add_provider_internal
>>              raise bb.providers.NoProvider(item)
>>         NoProvider: recipes_images_beagleboard-demo-image
>>
>>
>>         Help me to solve this error.
>>
>>         Thanks in advance
>>
>>         Sparsh
>>
>>
>>
>>     _______________________________________________
>>     poky mailing list
>>     poky@yoctoproject.org  </mc/compose?to=poky@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/poky
>     Try:
>     bitbake beagleboard-demo-image
>
>


--------------010406050307090607040504
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    <pre>Poky will search for images in the meta/recipes-core/images directory. To build a image you issue bitbake with the filename from that directory without the .bb extension.
The recipe you have got is from angstrom and probably not compatible, you can find more information about how a recipe should look here: <a class="moz-txt-link-freetext" href="http://pokylinux.org/doc/poky-handbook.html#usingpoky-extend-customimage">http://pokylinux.org/doc/poky-handbook.html#usingpoky-extend-customimage</a>
You can also set your target to beagleboard in the build/conf/local.conf and build one of the predefined images:</pre>
    <pre>bitbake poky-image-core
or
bitbake poky-image-sato</pre>
    <pre>
Regards,</pre>
    <pre>Gerard</pre>
    <br>
    On 03/25/2011 03:06 PM, Sparsh Wid hope wrote:
    <blockquote cite="mid:671167.786.qm@web95705.mail.in.yahoo.com"
      type="cite">
      <table border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td style="font: inherit;" valign="top">&nbsp;<br>
              &nbsp;&nbsp;Thanks for your suggestion . I tried that&nbsp;bitbake
              beagleboard-demo-image and have same error. please help if
              you get anything about it.
              <div>Thanks in advance<br>
                --- On <b>Fri, 25/3/11, Gerard van den Bosch <i><a class="moz-txt-link-rfc2396E" href="mailto:gerard@de-haardt.com">&lt;gerard@de-haardt.com&gt;</a></i></b>
                wrote:<br>
                <blockquote style="border-left: 2px solid rgb(16, 16,
                  255); margin-left: 5px; padding-left: 5px;"><br>
                  From: Gerard van den Bosch
                  <a class="moz-txt-link-rfc2396E" href="mailto:gerard@de-haardt.com">&lt;gerard@de-haardt.com&gt;</a><br>
                  Subject: Re: [poky] Need help to build poky image for
                  beagle board<br>
                  To: "Sparsh Wid hope" <a class="moz-txt-link-rfc2396E" href="mailto:sparsh150847@yahoo.com">&lt;sparsh150847@yahoo.com&gt;</a><br>
                  Cc: <a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
                  Date: Friday, 25 March, 2011, 1:34 PM<br>
                  <br>
                  <div id="yiv654454608"> On 03/25/2011 01:57 PM, Sparsh
                    Wid hope wrote:
                    <blockquote type="cite">
                      <table border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                          <tr>
                            <td style="font: inherit;" valign="top"><br>
                              <br>
                              <br>
                              <blockquote style="border-left: 2px solid
                                rgb(16, 16, 255); margin-left: 5px;
                                padding-left: 5px;">
                                <div id="yiv654454608">
                                  <table border="0" cellpadding="0"
                                    cellspacing="0">
                                    <tbody>
                                      <tr>
                                        <td style="font: inherit;"
                                          valign="top">
                                          <div id="yiv654454608">
                                            <table
                                              id="yiv654454608bodyDrftID"
                                              class="yiv654454608"
                                              border="0" cellpadding="0"
                                              cellspacing="0">
                                              <tbody>
                                                <tr>
                                                  <td
                                                    id="yiv654454608drftMsgContent"
                                                    style="font:
                                                    inherit;"><font
                                                      class="yiv654454608Apple-style-span"
                                                      style="font-size:
                                                      10pt; font-family:
                                                      arial;" size="2"
                                                      face="arial">Hi
                                                      All,</font>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;"><br>
                                                    </div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;">I'm trying
                                                      to build poky
                                                      image for beagle
                                                      board.&nbsp;</div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;">
                                                      <pre style="font-family: arial; font-size: 10pt;"><span class="yiv654454608Apple-style-span" style="white-space: normal;">I followed the steps below-</span></pre>
                                                    </div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;"><br>
                                                    </div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;">1.Downloaded
                                                      the source&nbsp;</div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;"><span
                                                        class="yiv654454608Apple-style-span"
                                                        style="white-space:
                                                        pre;">wget<br>
                                                        -c <a
                                                          moz-do-not-send="true"
                                                          rel="nofollow"
target="_blank"
href="http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.tar.bz2">http://git.poky<br>
linux.org/cgit/<br>
cgit.cgi/poky/s<br>
napshot/poky-laverne-4.0.1.tar<br>
                                                          .bz2</a></span></div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;"><br>
                                                    </div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;">2. untar it</div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;"><br>
                                                    </div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;">3. I want
                                                      it build for
                                                      beagleboard, so i
                                                      downloaded&nbsp;recipes_images_beagleboard-demo-image.bb

                                                      recipe from&nbsp;<a
                                                        moz-do-not-send="true"
                                                        rel="nofollow"
                                                        class="yiv654454608moz-txt-link-freetext"
                                                        target="_blank"
href="http://gitorious.org/angstrom/openembedded/blobs/org.openembedded.dev/recipes/images/beagleboard-demo-image.bb">http://gitorious.org/angstrom/openembedded/blobs/org.openembedded.dev/recipes/images/beagleboard-demo-image.bb</a>
                                                      and copied that in
laverne-4.0.1/meta/recipes-core/images</div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;"><br>
                                                    </div>
                                                    <div
                                                      style="font-family:
                                                      arial; font-size:
                                                      10pt;"><span
                                                        class="yiv654454608Apple-style-span"
                                                        style="white-space:
                                                        pre;">4.<br>
                                                        Build!</span></div>
                                                    <div>
                                                      <pre style="font-family: arial; font-size: 10pt;">cd&nbsp;laverne-4.0.1</pre>
                                                      <pre style="font-family: arial; font-size: 10pt;">source poky-init-build-env</pre>
                                                      <pre style="font-family: arial; font-size: 10pt;">bitbake recipes_images_beagleboard-demo-image</pre>
                                                      <pre style="font-family: arial; font-size: 10pt;">and get error as </pre>
                                                      <pre><font class="yiv654454608Apple-style-span" face="arial">ERROR: Nothing PROVIDES 'recipes_images_beagleboard-demo-image'
Command execution failed: Traceback (most recent call last):
  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 88, in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 184, in buildTargets
    command.cooker.buildTargets(pkgs_to_build, task)
  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.py", line 756, in buildTargets
    taskdata.add_provider(localdata, self.status, k)
  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 354, in add_provider
    self.add_provider_internal(cfgData, dataCache, item)
  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 374, in add_provider_internal
    raise bb.providers.NoProvider(item)
NoProvider: recipes_images_beagleboard-demo-image</font><span class="yiv654454608Apple-style-span" style="font-family: arial; font-size: 10pt;">
</span></pre>
                                                      <div
                                                        style="font-family:
                                                        arial;
                                                        font-size:
                                                        10pt;"><br>
                                                      </div>
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
                                  Sparsh</div>
                              </blockquote>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <br>
                      <pre><fieldset class="yiv654454608mimeAttachmentHeader"></fieldset>
_______________________________________________
poky mailing list
<a moz-do-not-send="true" rel="nofollow" class="yiv654454608moz-txt-link-abbreviated" ymailto="mailto:poky@yoctoproject.org" target="_blank" href="/mc/compose?to=poky@yoctoproject.org">poky@yoctoproject.org</a>
<a moz-do-not-send="true" rel="nofollow" class="yiv654454608moz-txt-link-freetext" target="_blank" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
</pre>
                    </blockquote>
                    <pre>Try: 
bitbake beagleboard-demo-image</pre>
                  </div>
                </blockquote>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------010406050307090607040504--
