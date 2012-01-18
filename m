Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 283A3E004D2
	for <poky@yoctoproject.org>; Wed, 18 Jan 2012 05:21:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0IDLWh5018716;
	Wed, 18 Jan 2012 13:21:32 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18638-01; Wed, 18 Jan 2012 13:21:28 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0IDLMPq018710
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 18 Jan 2012 13:21:23 GMT
Message-ID: <1326892881.2511.5.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 18 Jan 2012 13:21:21 +0000
In-Reply-To: <4F16C3BE.4040806@mlbassoc.com>
References: <4F16AF6A.2060704@mlbassoc.com> <1326891257.2511.2.camel@ted>
	<4F16C3BE.4040806@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: New sstate concern
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
X-List-Received-Date: Wed, 18 Jan 2012 13:21:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-01-18 at 06:06 -0700, Gary Thomas wrote:
> Still trying to understand why this update is causing everything to
> be rebuilt, how about this one?
> 
> p60_test_pass1/tmp/stamps/i686-linux/ldconfig-native-2.12.1-r2.do_configure.sigdata.7313d9d2da9a7307214c707b22ba14bd
> p60_new/tmp/stamps/i686-linux/ldconfig-native-2.12.1-r2.do_configure.sigdata.c7fdc1d3d32037e732a62ac55f07c115
[...]
> List of dependencies for variable BUILD_LDFLAGS changed from set(['STAGING_LIBDIR_NATIVE']) to set(['STAGING_BASE_LIBDIR_NATIVE', 'STAGING_LIBDIR_NATIVE'])
> changed items: set(['STAGING_BASE_LIBDIR_NATIVE'])
> Dependency on Variable base_libdir_native was removed
> Dependency on Variable STAGING_BASE_LIBDIR_NATIVE was removed
> Variable BUILD_LDFLAGS value changed from -L${STAGING_LIBDIR_NATIVE} -Wl,-rpath-link,${STAGING_LIBDIR_NATIVE} -Wl,-rpath,${STAGING_LIBDIR_NATIVE} -Wl,-O1 to 
> -L${STAGING_LIBDIR_NATIVE} -L${STAGING_BASE_LIBDIR_NATIVE} -Wl,-rpath-link,${STAGING_LIBDIR_NATIVE} -Wl,-rpath-link,${STAGING_BASE_LIBDIR_NATIVE} 
> -Wl,-rpath,${STAGING_LIBDIR_NATIVE} -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} -Wl,-O1
> Hash for dependent task ldconfig-native_2.12.1.bb.do_patch changed from 194974324a80455c3b58f824421da3d0 to f4a5d01ab2e6c472629392ba1d83e288
> 
> I can see that basehash changed which is probably the killer.
> Can you tell me what causes this?
> 
> Thanks for your help understanding this.

The bit I've quoted above is key. Basically BUILD_LDFLAGS (which is
exported to every task's environment) changed.

This is from this commit:
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=35759f977eec6ef81e125a509a7148d7e53a6515

(We don't do this kind of thing often)

Cheers,

Richard



