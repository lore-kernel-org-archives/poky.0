Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5695E00BFB; Mon, 26 Mar 2018 08:41:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C2E4E0070F;
	Mon, 26 Mar 2018 08:41:01 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id l27so7657947pfk.12;
	Mon, 26 Mar 2018 08:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=pXtFGxJLwe1PRKI+nIxJjOgIfczeOaXSwx3FoYwL1/Y=;
	b=r7PalZmgwZ3cXWcNXzhF3VFrIEL4f8e+1wxISf6BBKTFgkDo1G7kbD+Mv1KgMtjyt9
	W3GK3qWtm7Sg5AGlmdOFOBO5To02IhHaBKuSkBP8D8aMFyVCZAz2N58NVWMP1isKIccZ
	scdH40KsLcogCokrGoMYbp4tphYXyTIKC6bMG79y9IjJerS4ulR/3b5pmnlTAXiY+XiK
	t8ulwBGm4T1rrJm+1TluuuX9IPPzWwsnJieFI1/GlVn1VppUZOMjISGNffhF2eKLLb0a
	HqJMATqS9QWgSI8Ckp0q1ig4ruACC6wvVCl6s021Qy52QGL88WPjEPjWKwecMLJLmKBD
	2Nag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=pXtFGxJLwe1PRKI+nIxJjOgIfczeOaXSwx3FoYwL1/Y=;
	b=KrFB+6Zje61G31vOaMrC6nZZebkUJt3bw8R0Vsvt1V5mP3yBR+06W7kXVcvgy/lP5h
	K/R/ZGQLRI5JCm4JVLJMEiXA1qBX7dymBno6uJDpfl9qrRp2ybBPP/jpmqMGeWKmDcoM
	cTujpxFNLIMs1uk5okX0OlYrsEzGO/u/eKosuqaT9LojJtgV8tTDnEPfsQ6KDyxmUyPr
	H8cocUaUJJuJ+NmSpux0u7iyG/suCE6gvABGNYDKuCMc4wVyfiQUSwQvV4+uxHPjO6wn
	MTsvegDtRbq1+uHYlf4SfOfLIztX9xAwuA12xCoWiiPXsTv8/+9GIgAPrr4Ivx034QD+
	WAmg==
X-Gm-Message-State: AElRT7HLvBg/BtR7PPeDizbQvxJBDzvSUymk4oSFbBcAg5kQme/IFg8n
	MNCD+qoXE7vU+P6m6SeHQS0=
X-Google-Smtp-Source: AG47ELtqdS+3YgsY2oMzQQOi5NEpnpWTpnBV3p0PJROG+PkaVLbJTts6//HWG8LBnMyZefIU/h5fYw==
X-Received: by 10.101.64.68 with SMTP id h4mr10737498pgp.76.1522078861315;
	Mon, 26 Mar 2018 08:41:01 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:203c:a04e:87e9:791b?
	([2601:202:4000:1184:203c:a04e:87e9:791b])
	by smtp.gmail.com with ESMTPSA id
	c74sm11026171pfe.58.2018.03.26.08.41.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Mar 2018 08:41:00 -0700 (PDT)
To: "Tan, Raymond" <raymond.tan@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>
References: <F0CA9E243F4F424B836EAC30E41BF4CF781DBB3F@PGSMSX104.gar.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <a4b2abb1-a33e-2d5c-62c4-5124b71ec117@gmail.com>
Date: Mon, 26 Mar 2018 08:40:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <F0CA9E243F4F424B836EAC30E41BF4CF781DBB3F@PGSMSX104.gar.corp.intel.com>
Cc: "ray.danks@se-eng.com" <ray.danks@se-eng.com>
Subject: Re: lttng-modules build error on linux-yocto-4.4 with KVM on [rocko] branch
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
X-List-Received-Date: Mon, 26 Mar 2018 15:41:02 -0000
Content-Type: multipart/alternative;
	boundary="------------EA2EBB9AC6241AFB1944904E"
Content-Language: en-US

--------------EA2EBB9AC6241AFB1944904E
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 03/23/2018 05:10 AM, Tan, Raymond wrote:
>
> Dear Maintainers,
>
>  
>
> I’m building the image core-image-sato-sdk on ROCKO branch with the
> poky, meta-virtualization and meta-intel.
>

update lttng in upstream Rocko

http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=rocko
- Armin
>
>  
>
> When I enabled virtualization and kvm,
>
>  
>
> DISTRO_FEATURES_append = " virtualization"
>
> DISTRO_FEATURES_append = " kvm"
>
>  
>
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>
> PREFERRED_VERSION_linux-yocto ?= "4.4%"
>
>  
>
> I get the error as follow :
>
>  
>
> ….
>
>                  from
> /home/rahul/raymond/workingdir/pyro/build/tmp/work/intel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/lttng-probe-kvm.c:42:
>
> /home/rahul/raymond/workingdir/pyro/build/tmp/work/intel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/../probes/lttng-tracepoint-event-impl.h:142:6:
> error: conflicting types for 'trace_kvm_mmio'
>
> void trace_##_name(_proto);
>
>       ^
>
> /home/rahul/raymond/workingdir/pyro/build/tmp/work/intel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/../probes/lttng-tracepoint-event-impl.h:54:2:
> note: in expansion of macro 'LTTNG_TRACEPOINT_EVENT_INSTANCE_MAP'
>
>   LTTNG_TRACEPOINT_EVENT_INSTANCE_MAP(map, name, map, PARAMS(proto),
> PARAMS(args))
>
>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> …..
>
>  
>
> Checking online, same issue was reported with the lttng-modules 2.9.5
> on kernel 4.9 as well, albeit in different project
> https://jira.automotivelinux.org/browse/SPEC-1302
>
>  
>
> With the proposed solution in the AGL thread, updating lttng-modules
> to 2.10.5 does fix this issue, since 2.10.5 is upstreamed into
> master-branch, will this version be patched to ROCKO as well?
>
>  
>
> /Ray
>
>
>


--------------EA2EBB9AC6241AFB1944904E
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 03/23/2018 05:10 AM, Tan, Raymond
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:F0CA9E243F4F424B836EAC30E41BF4CF781DBB3F@PGSMSX104.gar.corp.intel.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Dear Maintainers,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I’m building the image core-image-sato-sdk
          on ROCKO branch with the poky, meta-virtualization and
          meta-intel.
        </p>
      </div>
    </blockquote>
    <br>
    update lttng in upstream Rocko<br>
    <br>
    <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=rocko">http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=rocko</a><br>
    - Armin<br>
    <blockquote type="cite"
cite="mid:F0CA9E243F4F424B836EAC30E41BF4CF781DBB3F@PGSMSX104.gar.corp.intel.com">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">When I enabled virtualization and kvm, <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">DISTRO_FEATURES_append = " virtualization"<o:p></o:p></p>
        <p class="MsoNormal">DISTRO_FEATURES_append = " kvm"<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">PREFERRED_PROVIDER_virtual/kernel ?=
          "linux-yocto"<o:p></o:p></p>
        <p class="MsoNormal">PREFERRED_VERSION_linux-yocto ?= "4.4%"<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I get the error as follow : <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">….<o:p></o:p></p>
        <p class="MsoNormal">                 from
/home/rahul/raymond/workingdir/pyro/build/tmp/work/intel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/lttng-probe-kvm.c:42:<o:p></o:p></p>
        <p class="MsoNormal">/home/rahul/raymond/workingdir/pyro/build/tmp/work/intel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/../probes/lttng-tracepoint-event-impl.h:142:6:
          error: conflicting types for 'trace_kvm_mmio'<o:p></o:p></p>
        <p class="MsoNormal">void trace_##_name(_proto);<o:p></o:p></p>
        <p class="MsoNormal">      ^<o:p></o:p></p>
        <p class="MsoNormal">/home/rahul/raymond/workingdir/pyro/build/tmp/work/intel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/../probes/lttng-tracepoint-event-impl.h:54:2:
          note: in expansion of macro
          'LTTNG_TRACEPOINT_EVENT_INSTANCE_MAP'<o:p></o:p></p>
        <p class="MsoNormal">  LTTNG_TRACEPOINT_EVENT_INSTANCE_MAP(map,
          name, map, PARAMS(proto), PARAMS(args))<o:p></o:p></p>
        <p class="MsoNormal">  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<o:p></o:p></p>
        <p class="MsoNormal">…..<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Checking online, same issue was reported
          with the lttng-modules 2.9.5 on kernel 4.9 as well, albeit in
          different project
          <a href="https://jira.automotivelinux.org/browse/SPEC-1302"
            moz-do-not-send="true">https://jira.automotivelinux.org/browse/SPEC-1302</a>
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">With the proposed solution in the AGL
          thread, updating lttng-modules to 2.10.5 does fix this issue,
          since 2.10.5 is upstreamed into master-branch, will this
          version be patched to ROCKO as well?
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">/Ray<o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------EA2EBB9AC6241AFB1944904E--
