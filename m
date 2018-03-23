Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24675E00C61; Fri, 23 Mar 2018 07:28:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f52.google.com (mail-pl0-f52.google.com
	[209.85.160.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06C39E007DA;
	Fri, 23 Mar 2018 07:28:10 -0700 (PDT)
Received: by mail-pl0-f52.google.com with SMTP id m22-v6so7528999pls.5;
	Fri, 23 Mar 2018 07:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=giwad1NIEjlV9Q+/BtTVGODfr0kV1Cox7T/3brNjsRI=;
	b=p/bxq+SOAL5c8n9Z8bmTMwPLSp/cN903NBV80svo2JFEsKLUVJbMOaOMpSzrEsbqEm
	CEu0Onzo5Q9DuftZFO4lfm1Md2lGjIiu0FVfT/wTBRA+o9phMJh2OtG6cjb8ckWnLBjj
	MtyFh1aHuEn8oesW9vo3vgvxIbK3PPu2FiTK76WWLuOwnwskqv8v/DCexSdDkiszUlt8
	4qjzTtji/I59XLbKQ3SuMX4tXaNP5qbHjrKkU3NsqfT5vNTI/8mQOcL/J2joOMqGRAWT
	UuWD75UxtaNukoA2hbRfZag1wJEcIpXintK8pBfY93a9q75sN8/tt96HVEU+6qUcx5U3
	ZKBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=giwad1NIEjlV9Q+/BtTVGODfr0kV1Cox7T/3brNjsRI=;
	b=QKGZX//RyJEpp7OP1nZMUtS3p18sjKKpOb2F2v1xFKGVXZBn886iOtIAm8gvsjFcWi
	I2ntXUAWHJkv2qrhuTELjG6w0sj5MquYlOCH7rHOWv84ggC2TqJRX/uiQaWtbTl/KpjK
	8LfWrAbzVmyyFwzMYOIiYjxWHuoA9yTzLmm7UTW6oOD0x87czHS8wLECjYfUlyop8pXJ
	Zk4RsB6EVdWKt+Mscw2aINDAnvY8VUMEXnekH+wLkPPsSEW/Nu0HCff0jwtF8S7KoPGG
	zAflRX6zC1hn0YPFJ4dXp9lF3klC0a9oim7WeebltwVuY3lwQK6+ydivaJaYpO5GmmMA
	tXJQ==
X-Gm-Message-State: AElRT7EZp2T/W/y47ib6fTsGDKCYZJoBnuOtcshrgNewS/Gozh9zh8oM
	VfLkOWKlm3dEtzC9p9qNdqQ=
X-Google-Smtp-Source: AG47ELuta1q2Zy4E4vYaN4RYCXbBgY4FeU/tL1QQsvH93hifNe+Jnu/lwUWl2hCchffFJeA6tEmiSQ==
X-Received: by 2002:a17:902:a5c5:: with SMTP id
	t5-v6mr30060023plq.244.1521815290249; 
	Fri, 23 Mar 2018 07:28:10 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:d51a:28df:7b7:12f5?
	([2601:202:4000:1184:d51a:28df:7b7:12f5])
	by smtp.gmail.com with ESMTPSA id
	l66sm6562290pfc.184.2018.03.23.07.28.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Mar 2018 07:28:09 -0700 (PDT)
To: "Tan, Raymond" <raymond.tan@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>
References: <F0CA9E243F4F424B836EAC30E41BF4CF781DBB3F@PGSMSX104.gar.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <a5499ff4-b5be-cb84-6ce3-7c4b67dc90c7@gmail.com>
Date: Fri, 23 Mar 2018 07:28:08 -0700
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
X-List-Received-Date: Fri, 23 Mar 2018 14:28:12 -0000
Content-Type: multipart/alternative;
	boundary="------------5E284819F568E5BBFAC677C4"
Content-Language: en-US

--------------5E284819F568E5BBFAC677C4
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

Thanks for the data point. I can now backport
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-kernel/lttng?id=1a97243bf86468a9dfd44f60c9f7563aff54b284

to rocko.

- armin
>
>  
>
> /Ray
>
>
>


--------------5E284819F568E5BBFAC677C4
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
          <o:p></o:p></p>
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
        </p>
      </div>
    </blockquote>
    <br>
    Thanks for the data point. I can now backport
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-kernel/lttng?id=1a97243bf86468a9dfd44f60c9f7563aff54b284">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-kernel/lttng?id=1a97243bf86468a9dfd44f60c9f7563aff54b284</a><br>
    <br>
    to rocko.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:F0CA9E243F4F424B836EAC30E41BF4CF781DBB3F@PGSMSX104.gar.corp.intel.com">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
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

--------------5E284819F568E5BBFAC677C4--
