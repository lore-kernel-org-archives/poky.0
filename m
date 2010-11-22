Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 45DEA4C810A8
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 05:31:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Nov 2010 03:31:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,235,1288594800"; d="scan'208";a="576258958"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 22 Nov 2010 03:31:20 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 22 Nov 2010 19:29:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 22 Nov 2010 19:29:32 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<rpurdie@linux.intel.com>
Date: Mon, 22 Nov 2010 19:29:30 +0800
Thread-Topic: [poky] update about SSTATE status
Thread-Index: AcuJqGRH3TSI9KdnTme+mjC8viFbMgAVKd5QAA5ftYA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3A619CCB@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D3A61970E@shsmsx502.ccr.corp.intel.com>
	<1290363431.1272.15745.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D3A619B9D@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D3A619B9D@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: update about SSTATE status
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
X-List-Received-Date: Mon, 22 Nov 2010 11:31:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tian, Kevin
>Sent: Monday, November 22, 2010 3:46 PM
>
>
>>
>>> d) no STATE package from the 1st build could be reused when the two bui=
lds use
>>> different source trees, though two source trees are identical with only=
 difference on
>>> the path. This is related to OEROOT
>>
>>I was sure I tested this and the checksums matched :/. Which variables
>>are changing to cause this - we really need to track them down...
>
>Sorry that I don't have such info from existing debug log. There I just re=
corded dep
>variables used in checksum calculation and also the task data itself. Howe=
ver I didn't
>see direct invocation on OEROOT. I'll figure it out later.
>

I think the reason is simple. OEROOT is exported as shell variable by poky-=
env-internal.
All preserved shell variables are included in dependencies of shell tasks:

def build_dependencies(key, keys, shelldeps, d):
    deps =3D set()
    try:
        if d.getVarFlag(key, "func"):
            if d.getVarFlag(key, "python"):
                parsedvar =3D d.expandWithRefs(d.getVar(key, False), key)
                parser =3D bb.codeparser.PythonParser()
                parser.parse_python(parsedvar.value)
                deps =3D deps | parser.references
            else:
                parsedvar =3D d.expandWithRefs(d.getVar(key, False), key)
                parser =3D bb.codeparser.ShellParser()
                parser.parse_shell(parsedvar.value)
                deps =3D deps | shelldeps

Thanks
Kevin

