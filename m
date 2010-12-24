Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53F6F4C8026D
	for <poky@pokylinux.org>; Fri, 24 Dec 2010 08:38:08 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBOEdTZX027143; Fri, 24 Dec 2010 14:39:30 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id npGym5Pudav2; Fri, 24 Dec 2010 14:39:29 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBOEdLTZ027139
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 24 Dec 2010 14:39:23 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
Date: Fri, 24 Dec 2010 14:37:45 +0000
Message-ID: <1293201465.17519.1428.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: --with-gxx-include-dir and sysroot
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
X-List-Received-Date: Fri, 24 Dec 2010 14:38:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-12-24 at 15:34 +0800, Tian, Kevin wrote:
> I got a confusion about the relationship between "--with-gxx-include-dir" and sysroot, 
> and consequently would like to discuss one issue it causes.
> 
> GCC installation manual is not very clear about how c++ header files are searched when
> there's no "--with-gxx-include-dir" but with "--sysroot":
> 
> --with-gxx-include-dir=dirname
>     Specify the installation directory for G++ header files. The default depends on 
> other configuration options, and differs between cross and native configurations.
> 
> My assumption is that ${sysroot}/usr/include/c++ will be searched which is why sysroot
> option is there.

This is a bad assumption I'm afraid. I had to go and take a look at the
code to determine this though.

> However currently Poky always specifies "--with-gxx-include-dir" explicitly:
> 
> gcc-configure-cross.inc:                     
>  --with-gxx-include-dir=${STAGING_DIR_TARGET}/${target_includedir}/c++ \
> --with-sysroot=${STAGING_DIR_TARGET} \
> 
> gcc-configure-runtime.inc:    
> --with-gxx-include-dir=${includedir}/c++/ \
> --with-sysroot=${STAGING_DIR_TARGET} \
> 
> gcc-configure-sdk.inc:                      
> --with-gxx-include-dir=${SDKPATH}/sysroots/${TARGET_SYS}${target_includedir}/c++ \
> --with-sysroot=${SDKPATH}/sysroots/${TARGET_SYS} \
> 
> gcc-configure-target.inc:    
> --with-gxx-include-dir=${includedir}/c++/"
> 
> for cross/sdk, there's no difference from not using option if my assumption is correct.
> The only meaningful one is perhaps runtime. 
> 
> I checked OE side, they don't have gcc-runtime (why???), and only add the option for
> the target gcc (--with-gxx-include-dir=${includedir}/c++/{BINV}) which makes sense
> since using BINV is different from normal convention.

Whilst OE doesn't use this, if you read the configure code for this
option you'll see that it gets set to a default anyway so not specifying
it doesn't change much. In poky we dropped the BINV part of the path
which I believe is part of the default.

> So my question is whether it's necessary to explicitly set this option in Poky, upon which
> we can then talk about the issue I'm seeing and the solution.

Looking at the code I don't think it will actually make any difference
whether we set it or not.

> The major problem with hardcoded "with-gxx-include-dir" is that it makes the toolchain
> problematic when using in a separate build environment, because that hard code path
> may be missing in the new environment. It's not relocatable.
> 
> Previous SDK multi-sysroot support is one example.
> 
> So does sstate, when you need to build some new C++ packages in the 2nd build dir
> while using toolchain built from another dir. I observed this when reusing a set of
> sstate packages of a minimal image, and then started building a sato image and then
> encountered libproxy error due to failing to find cstdio.
> 
> Machine specific sysroot also has this problem, because we end up to use the toolchain
> built for the 1st machine to build recipes for the 2nd machine. It will be generally
> worked around because both sysroots exist and can be both accessed, but it's still
> a potential issue.
> 
> The workaround in my sstate case is a bit ugly. I have to use "-I" in CXXFLAGS in
> bitbake.conf:
> 
> -I${STAGING_DIR_TARGET}/${target_includedir}/c++ 
> -I${STAGING_DIR_TARGET}/${target_includedir}/c++/backward 
> -I${STAGING_DIR_TARGET}/${target_includedir}/c++/${TARGET_SYS}
> 
> If "with-gxx-include-dir" can be removed, we don't need do anything here. 

I really don't think its this simple.

Looking at the gcc code, I propose we patch cppdefault.c so instead of

GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 0, 0

is says

GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 1, 0

and then we only ever specify:

--with-gxx-include-dir=${includedir}/c++/ to build the compiler.

Since we set always set --sysroot for the compiler correctly, this
should then fix all the problems in a clean and simple way.

Why? Changing the 0 -> 1 above will cause c++ to add the sysroot to
GPLUSPLUS_INCLUDE_DIR and in turn this means it should start to behave
sanely.

I don't like patching gcc like this but in this case I believe the
standard settings are just plain wrong and with that simple change,
things will just work as they should...

Of course I've not tested this so I'd appreciate feedback but I think it
will solve the problem in the simplest way :)

Cheers,

Richard



