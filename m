Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FC8BE00CAE; Fri, 11 Nov 2016 05:55:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	HTML_OBFUSCATE_05_10 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML
	obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57657E00CA3
	for <poky@yoctoproject.org>; Fri, 11 Nov 2016 05:55:22 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id uABDtKFn028873
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 11 Nov 2016 05:55:20 -0800
Received: from server.local (128.224.20.174) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 11 Nov 2016 05:55:19 -0800
To: ali raza <aliraza.1766@gmail.com>
References: <CANGmBbe4EcAZ+3nvN7ZVVqxHC=wq+dEFUwU5_jb0uWDnj1FKyA@mail.gmail.com>
	<adefbe8b-a39b-2c37-3442-97410415dec8@windriver.com>
	<CANGmBbfUow3_OvSgJkBPQe6GWULN1=bQ0m4zF5zGwZgQDp1ZVA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <77eef0ce-b5ea-c945-6376-17ec4fd1ba60@windriver.com>
Date: Fri, 11 Nov 2016 08:55:18 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CANGmBbfUow3_OvSgJkBPQe6GWULN1=bQ0m4zF5zGwZgQDp1ZVA@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Help/question regarding Building the Yocto GENIVI Baseline hardware image for imx6qsabrelite
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
X-List-Received-Date: Fri, 11 Nov 2016 13:55:28 -0000
Content-Type: multipart/alternative;
	boundary="------------87EB7E57755377C97BA80F0C"

--------------87EB7E57755377C97BA80F0C
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-11 4:05 AM, ali raza wrote:
> Hi again,
>
> Thanks for the reply, I have moved one step forward. I added the BSP 
> layer.
>
> Next I ran into another error:
>
> ERROR: imx-gpu-viv-1_5.0.11.p8.6-hfp-r0 do_unpack: To use 
> 'imx-gpu-viv' you need to accept the Freescale EULA at 
> '/home/aliraza/genivi-baseline/meta-freescale/EULA'. Please read it 
> and in case you accept it, write: ACCEPT_FSL_EULA = "1" in your 
> local.conf.
>
> I added ACCEPT_FSL_EULA = "1" in my local.conf file.
>
> I got passed that error and now I get this:
>
> ERROR: alsa-lib-1.1.0-r0 do_patch: Command Error: 'quilt --quiltrc 
> /home/aliraza/genivi-baseline/build/tmp/sysroots/x86_64-linux/etc/quiltrc 
> push' exited with 1  Output:
> Patch 0001-add-conf-for-multichannel-support-in-imx.patch is already 
> applied; check your series file
> ERROR: alsa-lib-1.1.0-r0 do_patch: Function failed: patch_do_patch
> ERROR: Logfile of failure stored in: 
> /home/aliraza/genivi-baseline/build/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/alsa-lib/1.1.0-r0/temp/log.do_patch.15360
> ERROR: Task 1455 
> (/home/aliraza/genivi-baseline/poky/meta/recipes-multimedia/alsa/alsa-lib_1.1.0.bb 
> <http://alsa-lib_1.1.0.bb>, do_patch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 722 tasks of which 711 didn't need to 
> be rerun and 1 failed.
>
> I have attached 'log.do_patch.15360' for reference.
>
> Any suggestions?

For this error, no.

What you have is either an issue with your build machine's configuration, or
you have multiple layers that are patching alsa, and patching alsa with the
same patch.

Check for any alsa*bbappends you may have in your layers, and check what
patches they reference.

Bruce

>
> Best Regards,
> Ali Raza
>
>
>
>
>
> On Thu, Nov 10, 2016 at 4:45 PM, Bruce Ashfield 
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> 
> wrote:
>
>     On 2016-11-10 10:31 AM, ali raza wrote:
>
>         Hi,
>
>         I am trying to build Yocto GENIVI Baseline hardware for
>         imx6qsabrelite
>         and I am stuck at one point for which I need little help. I will
>         appreciate if someone can guide me in the right direction.
>
>         I can begin by showing what I have done so far.
>
>         The hardware that I have is: *NXP SABRE LITE
>         *
>         https://www.element14.com/community/docs/DOC-49013?ICID=designcenter-sabre-space
>         <https://www.element14.com/community/docs/DOC-49013?ICID=designcenter-sabre-space>
>
>         I am following the blog by Christian but had changed to
>         version numbers
>         recommended but git hub meta-ivi,
>
>         https://github.com/GENIVI/meta-ivi
>         <https://github.com/GENIVI/meta-ivi>:
>         https://www.jann.cc/2014/12/18/building_the_yocto_genivi_baseline.html#id2
>         <https://www.jann.cc/2014/12/18/building_the_yocto_genivi_baseline.html#id2>
>
>         So here are the steps I did:
>
>         aliraza@aliraza-VirtualBox:~/genivi-baseline$ git clone
>         git://git.yoctoproject.org/poky
>         <http://git.yoctoproject.org/poky>
>         <http://git.yoctoproject.org/poky
>         <http://git.yoctoproject.org/poky>>
>         aliraza@aliraza-VirtualBox:~/genivi-baseline$ cd poky
>         aliraza@aliraza-VirtualBox:~/genivi-baseline/poky$ git
>         checkout aad7166704021d82ad3a5ec468552f8f10360d41; cd -
>         aliraza@aliraza-VirtualBox:~/genivi-baseline$ git clone
>         git://git.openembedded.org/meta-openembedded
>         <http://git.openembedded.org/meta-openembedded>
>         <http://git.openembedded.org/meta-openembedded
>         <http://git.openembedded.org/meta-openembedded>> cd -
>         aliraza@aliraza-VirtualBox:~/genivi-baseline$ cd
>         meta-openembedded/
>         aliraza@aliraza-VirtualBox:~/genivi-baseline/meta-openembedded$
>         git checkout 247b1267bbe95719cd4877d2d3cfbaf2a2f4865a
>         aliraza@aliraza-VirtualBox:~/genivi-baseline/meta-openembedded$
>         cd ..
>         aliraza@aliraza-VirtualBox:~/genivi-baseline$ git clone
>         git://git.yoctoproject.org/meta-ivi
>         <http://git.yoctoproject.org/meta-ivi>
>         <http://git.yoctoproject.org/meta-ivi
>         <http://git.yoctoproject.org/meta-ivi>>
>         aliraza@aliraza-VirtualBox:~/genivi-baseline/meta-openembedded$
>         cd ..
>         aliraza@aliraza-VirtualBox:~/genivi-baseline$ git clone
>         git://git.yoctoproject.org/meta-ivi
>         <http://git.yoctoproject.org/meta-ivi>
>         <http://git.yoctoproject.org/meta-ivi
>         <http://git.yoctoproject.org/meta-ivi>>
>         aliraza@aliraza-VirtualBox:~/genivi-baseline$ echo $TEMPLATECONF
>         /home/aliraza/genivi-baseline/meta-ivi/meta-ivi/conf
>
>         aliraza@aliraza-VirtualBox:~/genivi-baseline$ source
>         poky/oe-init-build-env
>         aliraza@aliraza-VirtualBox:~/genivi-baseline/build/conf$ gedit
>         local.conf
>
>         and from this page added:
>         https://community.nxp.com/docs/DOC-1616#jive_content_id_iMX6_Sabre_Lite_Board_
>         <https://community.nxp.com/docs/DOC-1616#jive_content_id_iMX6_Sabre_Lite_Board_>
>
>         Edit conf/local.conf user config file and set i.MX6 Sabrelite
>         board machine and enable parallel build features
>         MACHINE ?= "imx6qsabrelite"
>         BB_NUMBER_THREADS = "4"
>         PARALLEL_MAKE = "-j 4"
>
>
>         aliraza@aliraza-VirtualBox:~/genivi-baseline/build$ bitbake
>         miranda-image
>         ERROR: OE-core's config sanity checker detected a potential
>         misconfiguration.
>         Either fix the cause of this error or at your own risk disable the
>         checker (see sanity.conf).
>         Following is the list of potential problems / advisories:
>
>         Please set a valid MACHINE in your local.conf or environment
>
>
>         Summary: There was 1 ERROR message shown, returning a non-zero
>         exit code.
>
>         Three questions:
>
>         1- Is it not possible to build for SABRE LITE??
>
>
>
>     Not with the layers that you are currently cloning. You also need
>     to add
>     a layer that provides the BSP.
>
>     The layer index can provide information on what you need:
>
>     https://layers.openembedded.org/layerindex/branch/master/machines/?q=imx6qsabrelite
>     <https://layers.openembedded.org/layerindex/branch/master/machines/?q=imx6qsabrelite>
>
>
>         in the README.hardware it says:
>           * Freescale MPC8315E-RDB (mpc8315e-rdb)
>
>         2- if I build for "mpc8315e-rdb", will that work for SABRE
>         LITE board?
>
>
>     It won't. Since that BSP is specific to the 8315.
>
>
>         3- Am I missing something?
>
>
>     Yep, you need a BSP layer. I pointed to one above.
>
>     Bruce
>
>
>
>         --
>         Regards
>         Ali Raza
>
>
>
>
>
>
> -- 
> Regards
> Ali Raza
>
>


--------------87EB7E57755377C97BA80F0C
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 2016-11-11 4:05 AM, ali raza wrote:<br>
    </div>
    <blockquote
cite="mid:CANGmBbfUow3_OvSgJkBPQe6GWULN1=bQ0m4zF5zGwZgQDp1ZVA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div>
          <div>
            <div>
              <div>
                <div>
                  <div>
                    <div>
                      <div>Hi again,<br>
                        <br>
                      </div>
                      Thanks for the reply, I have moved one step
                      forward. I added the BSP layer.<br>
                      <br>
                    </div>
                    Next I ran into another error:<br>
                    <br>
                    <span style="color:rgb(255,0,0)"><span
                        style="font-family:monospace,monospace">ERROR:
                        imx-gpu-viv-1_5.0.11.p8.6-hfp-r0 do_unpack: To
                        use 'imx-gpu-viv' you need to accept the
                        Freescale EULA at
                        '/home/aliraza/genivi-baseline/meta-freescale/EULA'.
                        Please read it and in case you accept it, write:
                        ACCEPT_FSL_EULA = "1" in your local.conf.<br>
                        <br>
                      </span></span></div>
                  <span style="color:rgb(255,0,0)"><span
                      style="font-family:monospace,monospace"><font
                        color="#000000">I added </font></span></span><span
                    style="color:rgb(255,0,0)"><span
                      style="font-family:monospace,monospace">ACCEPT_FSL_EULA
                      = "1" <span style="color:rgb(0,0,0)">in my
                        local.conf file.</span><br>
                      <br>
                    </span></span></div>
                <span style="color:rgb(255,0,0)"><span
                    style="font-family:monospace,monospace"><font
                      color="#000000">I got passed that error and now I
                      get this:<br>
                      <br>
                      <span style="color:rgb(255,0,0)">ERROR:
                        alsa-lib-1.1.0-r0 do_patch: Command Error:
                        'quilt --quiltrc
/home/aliraza/genivi-baseline/build/tmp/sysroots/x86_64-linux/etc/quiltrc
                        push' exited with 1  Output:<br>
                        Patch
                        0001-add-conf-for-multichannel-support-in-imx.patch
                        is already applied; check your series file<br>
                        ERROR: alsa-lib-1.1.0-r0 do_patch: Function
                        failed: patch_do_patch<br>
                        ERROR: Logfile of failure stored in:
/home/aliraza/genivi-baseline/build/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/alsa-lib/1.1.0-r0/temp/log.do_patch.15360<br>
                        ERROR: Task 1455
                        (/home/aliraza/genivi-baseline/poky/meta/recipes-multimedia/alsa/<a
                          moz-do-not-send="true"
                          href="http://alsa-lib_1.1.0.bb">alsa-lib_1.1.0.bb</a>,
                        do_patch) failed with exit code '1'</span><br>
                      NOTE: Tasks Summary: Attempted 722 tasks of which
                      711 didn't need to be rerun and 1 failed.<br>
                      <br>
                    </font></span></span></div>
              <span style="color:rgb(255,0,0)"><span
                  style="font-family:monospace,monospace"><font
                    color="#000000">I have attached '</font></span></span><span
                style="color:rgb(255,0,0)"><span
                  style="font-family:monospace,monospace"><font
                    color="#000000"><span style="color:rgb(255,0,0)">log.do_patch.15360'
                      <span style="color:rgb(0,0,0)">for reference.<br>
                        <br>
                      </span></span></font></span></span></div>
            <span style="color:rgb(255,0,0)"><span
                style="font-family:monospace,monospace"><font
                  color="#000000"><span style="color:rgb(255,0,0)"><span
                      style="color:rgb(0,0,0)">Any suggestions?<br>
                    </span></span></font></span></span></div>
        </div>
      </div>
    </blockquote>
    <br>
    For this error, no. <br>
    <br>
    What you have is either an issue with your build machine's
    configuration, or<br>
    you have multiple layers that are patching alsa, and patching alsa
    with the<br>
    same patch.<br>
    <br>
    Check for any alsa*bbappends you may have in your layers, and check
    what<br>
    patches they reference.<br>
    <br>
    Bruce<br>
    <br>
    <blockquote
cite="mid:CANGmBbfUow3_OvSgJkBPQe6GWULN1=bQ0m4zF5zGwZgQDp1ZVA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div><span style="color:rgb(255,0,0)"><span
                style="font-family:monospace,monospace"><font
                  color="#000000"><span style="color:rgb(255,0,0)"><span
                      style="color:rgb(0,0,0)"><br>
                    </span></span></font></span></span></div>
          <span style="color:rgb(255,0,0)"><span
              style="font-family:monospace,monospace"><font
                color="#000000"><span style="color:rgb(255,0,0)"><span
                    style="color:rgb(0,0,0)">Best Regards,<br>
                  </span></span></font></span></span></div>
        <span style="color:rgb(255,0,0)"><span
            style="font-family:monospace,monospace"><font
              color="#000000"><span style="color:rgb(255,0,0)"><span
                  style="color:rgb(0,0,0)">Ali Raza<br>
                </span></span></font></span></span>
        <div>
          <div>
            <div>
              <div>
                <div><span style="color:rgb(255,0,0)"><span
                      style="font-family:monospace,monospace"><font
                        color="#000000"><br>
                        <br>
                        <br>
                        <br>
                      </font></span></span></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Thu, Nov 10, 2016 at 4:45 PM, Bruce
          Ashfield <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:bruce.ashfield@windriver.com" target="_blank">bruce.ashfield@windriver.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex"><span
              class="">On 2016-11-10 10:31 AM, ali raza wrote:<br>
            </span>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex"><span
                class="">
                Hi,<br>
                <br>
                I am trying to build Yocto GENIVI Baseline hardware for
                imx6qsabrelite<br>
                and I am stuck at one point for which I need little
                help. I will<br>
                appreciate if someone can guide me in the right
                direction.<br>
                <br>
                I can begin by showing what I have done so far.<br>
                <br>
              </span>
              The hardware that I have is: *NXP SABRE LITE<br>
              *<span class=""><br>
                <a moz-do-not-send="true"
href="https://www.element14.com/community/docs/DOC-49013?ICID=designcenter-sabre-space"
                  rel="noreferrer" target="_blank">https://www.element14.com/comm<wbr>unity/docs/DOC-49013?ICID=desi<wbr>gncenter-sabre-space</a><br>
                <br>
                I am following the blog by Christian but had changed to
                version numbers<br>
                recommended but git hub meta-ivi,<br>
                <br>
                <a moz-do-not-send="true"
                  href="https://github.com/GENIVI/meta-ivi"
                  rel="noreferrer" target="_blank">https://github.com/GENIVI/meta<wbr>-ivi</a>:<br>
                <a moz-do-not-send="true"
href="https://www.jann.cc/2014/12/18/building_the_yocto_genivi_baseline.html#id2"
                  rel="noreferrer" target="_blank">https://www.jann.cc/2014/12/18<wbr>/building_the_yocto_genivi_bas<wbr>eline.html#id2</a><br>
                <br>
                So here are the steps I did:<br>
                <br>
              </span>
              aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline$ git
              clone git://<a moz-do-not-send="true"
                href="http://git.yoctoproject.org/poky" rel="noreferrer"
                target="_blank">git.yoctoproject.org/pok<wbr>y</a> &lt;<a
                moz-do-not-send="true"
                href="http://git.yoctoproject.org/poky" rel="noreferrer"
                target="_blank">http://git.yoctoproject.org/p<wbr>oky</a>&gt;<span
                class=""><br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline$ cd
                poky<br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline/poky$
                git checkout aad7166704021d82ad3a5ec468552f<wbr>8f10360d41;
                cd -<br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline$ git
                clone git://<a moz-do-not-send="true"
                  href="http://git.openembedded.org/meta-openembedded"
                  rel="noreferrer" target="_blank">git.openembedded.org/met<wbr>a-openembedded</a><br>
              </span>
              &lt;<a moz-do-not-send="true"
                href="http://git.openembedded.org/meta-openembedded"
                rel="noreferrer" target="_blank">http://git.openembedded.org/m<wbr>eta-openembedded</a>&gt;
              cd -<span class=""><br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline$ cd
                meta-openembedded/<br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline/meta-openembedd<wbr>ed$
                git checkout 247b1267bbe95719cd4877d2d3cfba<wbr>f2a2f4865a<br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline/meta-openembedd<wbr>ed$
                cd ..<br>
              </span>
              aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline$ git
              clone git://<a moz-do-not-send="true"
                href="http://git.yoctoproject.org/meta-ivi"
                rel="noreferrer" target="_blank">git.yoctoproject.org/met<wbr>a-ivi</a>
              &lt;<a moz-do-not-send="true"
                href="http://git.yoctoproject.org/meta-ivi"
                rel="noreferrer" target="_blank">http://git.yoctoproject.org/m<wbr>eta-ivi</a>&gt;<br>
              aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline/meta-openembedd<wbr>ed$
              cd ..<br>
              aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline$ git
              clone git://<a moz-do-not-send="true"
                href="http://git.yoctoproject.org/meta-ivi"
                rel="noreferrer" target="_blank">git.yoctoproject.org/met<wbr>a-ivi</a>
              &lt;<a moz-do-not-send="true"
                href="http://git.yoctoproject.org/meta-ivi"
                rel="noreferrer" target="_blank">http://git.yoctoproject.org/m<wbr>eta-ivi</a>&gt;<span
                class=""><br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline$ echo
                $TEMPLATECONF<br>
                /home/aliraza/genivi-baseline/<wbr>meta-ivi/meta-ivi/conf<br>
                <br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline$
                source poky/oe-init-build-env<br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline/build/conf$
                gedit local.conf<br>
                <br>
                and from this page added:<br>
                <a moz-do-not-send="true"
href="https://community.nxp.com/docs/DOC-1616#jive_content_id_iMX6_Sabre_Lite_Board_"
                  rel="noreferrer" target="_blank">https://community.nxp.com/docs<wbr>/DOC-1616#jive_content_id_iMX6<wbr>_Sabre_Lite_Board_</a><br>
                <br>
                Edit conf/local.conf user config file and set i.MX6
                Sabrelite board machine and enable parallel build
                features<br>
                MACHINE ?= "imx6qsabrelite"<br>
                BB_NUMBER_THREADS = "4"<br>
                PARALLEL_MAKE = "-j 4"<br>
                <br>
                <br>
                aliraza@aliraza-VirtualBox:~/g<wbr>enivi-baseline/build$
                bitbake miranda-image<br>
                ERROR: OE-core's config sanity checker detected a
                potential<br>
                misconfiguration.<br>
                Either fix the cause of this error or at your own risk
                disable the<br>
                checker (see sanity.conf).<br>
                Following is the list of potential problems /
                advisories:<br>
                <br>
                Please set a valid MACHINE in your local.conf or
                environment<br>
                <br>
                <br>
                Summary: There was 1 ERROR message shown, returning a
                non-zero exit code.<br>
                <br>
                Three questions:<br>
                <br>
                1- Is it not possible to build for SABRE LITE??<br>
              </span></blockquote>
            <br>
            <br>
            Not with the layers that you are currently cloning. You also
            need to add<br>
            a layer that provides the BSP.<br>
            <br>
            The layer index can provide information on what you need:<br>
            <br>
            <a moz-do-not-send="true"
href="https://layers.openembedded.org/layerindex/branch/master/machines/?q=imx6qsabrelite"
              rel="noreferrer" target="_blank">https://layers.openembedded.or<wbr>g/layerindex/branch/master/mac<wbr>hines/?q=imx6qsabrelite</a><span
              class=""><br>
              <br>
              <blockquote class="gmail_quote" style="margin:0 0 0
                .8ex;border-left:1px #ccc solid;padding-left:1ex">
                <br>
                in the README.hardware it says:<br>
                  * Freescale MPC8315E-RDB (mpc8315e-rdb)<br>
                <br>
                2- if I build for "mpc8315e-rdb", will that work for
                SABRE LITE board?<br>
              </blockquote>
              <br>
            </span>
            It won't. Since that BSP is specific to the 8315.<span
              class=""><br>
              <br>
              <blockquote class="gmail_quote" style="margin:0 0 0
                .8ex;border-left:1px #ccc solid;padding-left:1ex">
                <br>
                3- Am I missing something?<br>
              </blockquote>
              <br>
            </span>
            Yep, you need a BSP layer. I pointed to one above.<br>
            <br>
            Bruce<br>
            <br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <br>
              <span class="HOEnZb"><font color="#888888">
                  <br>
                  --<br>
                  Regards<br>
                  Ali Raza<br>
                  <br>
                  <br>
                </font></span></blockquote>
            <br>
          </blockquote>
        </div>
        <br>
        <br clear="all">
        <br>
        -- <br>
        <div class="gmail_signature" data-smartmail="gmail_signature">
          <div dir="ltr">Regards<br>
            Ali Raza<br>
            <br>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------87EB7E57755377C97BA80F0C--
