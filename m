Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92285E0086E; Wed,  8 Apr 2015 06:53:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE7DCE0086E
	for <poky@yoctoproject.org>; Wed,  8 Apr 2015 06:53:36 -0700 (PDT)
Received: by lbbuc2 with SMTP id uc2so64035374lbb.2
	for <poky@yoctoproject.org>; Wed, 08 Apr 2015 06:53:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=b2RN8WOt+DQ7tgwnLe6d/4KH4c7L7QJYEsEFedG5/rE=;
	b=S0yYkzVW7OVUTYNAG11yIOmtGCUStmcLfNmTZ1bdkYGTfdAJ50c58/f6g+UoU4z6zk
	op7v4JsGsVT4mgdesaDhq9sPlgWsTPwmwPPX/Afm3aCLFS7dAl7sslD77UthxdACuGUw
	YG+aY8Y505cpKuqyHLwyXEFSoLDcnBnBrbn29aT9+2LoS8ZD9JjCQ4PsGvrw+DbjIihq
	kutWA3y5/r8UheTEcHqFHpPygmleJMAQ1JEOHX5jvr5nl0UAZoYcryRmfmtusl8TB/nt
	YsfEWW8dgntT1TxY2eyLjOkUjxRWbPYNpK5CT4QOEWw0UIqIUhdXlUwmB9UmFL1IpPKq
	qCrA==
X-Gm-Message-State: ALoCoQnu1Xr7NhezU/QPrJDJXT5r4kC0Se6whpA3i1YYw5jZT1A3mYk0hoqXXtG2tH+KB2K/wnP+
X-Received: by 10.152.10.180 with SMTP id j20mr23700674lab.54.1428501214277;
	Wed, 08 Apr 2015 06:53:34 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by mx.google.com with ESMTPSA id e3sm2511247lag.26.2015.04.08.06.53.33
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Apr 2015 06:53:33 -0700 (PDT)
Date: Wed, 8 Apr 2015 15:53:31 +0200
From: Anders Darander <anders@chargestorm.se>
To: praveen vattipalli <praveen.vatt@gmail.com>
Message-ID: <20150408135331.GC8848@ad.chargestorm.se>
Mail-Followup-To: praveen vattipalli <praveen.vatt@gmail.com>,
	yocto <yocto@yoctoproject.org>, poky@yoctoproject.org
References: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: error in xerces-c in yocto-dizzy-1.7.1
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
X-List-Received-Date: Wed, 08 Apr 2015 13:53:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* praveen vattipalli <praveen.vatt@gmail.com> [150408 15:48]:
> +PACKAGES = "libxerces-c \
> + libxerces-c-dbg \
> + libxerces-c-dev \
> + xerces-c-samples \
> + xerces-c-samples-dbg \
> +"
> +
> +FILES_libxerces-c = "${libdir}/libxerces-c-3.1.so"
> +FILES_libxerces-c-dbg = "${libdir}/.debug/"
> +FILES_libxerces-c-dev = "${libdir}/lib*.la \
> + ${libdir}/lib*.a \
> + ${libdir}/libxerces-c.so \
> + ${libdir}/pkgconfig/xerces-c.pc \
> + ${includedir}/xercesc \
> +"
> +FILES_xerces-c-samples = "${bindir}/*"
> +FILES_xerces-c-samples-dbg = "${bindir}/.debug/"

> I am getting below error

> ERROR: QA Issue: xerces-c: Files/directories were installed but not shipped
> /usr/src
> /usr/src/debug
> /usr/src/debug/xerces-c
> /usr/src/debug/xerces-c/3.1.1-r0
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1
> /usr/src/debug/xerces-c/3.1.1-r0/build
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/samples
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.h
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.c
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.c
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.h
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/util
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/framework
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/internal
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/xinclude
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax2
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/parsers
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/dom
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/datatype
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/schema
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/DTD
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMBinaryOp.cpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/GrammarResolver.hpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMNode.hpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.cpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.hpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMLeaf.hpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xe

> and so on........

Well, xervces is installing lots of files to /usr/src/debug... So you
have to choices:

1) Remove those files. Add a do_install_append where you're running 
`rm -rf ${D}/usr/src`

2) Package those file in either one of the current packages, or in a new
package.

Cheers,
Anders


-- 
Anders Darander
ChargeStorm AB / eStorm AB

