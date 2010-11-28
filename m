Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6E574C811EB
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 15:19:50 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJkf5021068;
	Sun, 28 Nov 2010 21:19:46 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20784-06; Sun, 28 Nov 2010 21:19:42 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJcCj021055
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:19:41 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Qing He <qing.he@intel.com>
In-Reply-To: <a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
Date: Sun, 28 Nov 2010 14:22:46 +0000
Message-ID: <1290954166.27143.217.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Sun, 28 Nov 2010 21:19:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-17 at 16:26 +0800, Qing He wrote:
> @@ -25,6 +24,10 @@ EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
>  		--enable-crypto-auth \
>  		"
>  
> +EXTRA_OECONF_append = " --with-gnutls=${STAGING_LIBDIR}/../"
> +EXTRA_OECONF_virtclass-native_append = " --without-gnutls"
> +EXTRA_OECONF_virtclass-nativesdk_append = " --without-gnutls"
> +
>  do_configure_prepend() {
>  	sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
>  }

I'm going to push a fix but I wanted to note that the above is not
correct. Let me walk through this since I expect various people find
this confusing.

EXTRA_OECONF_virtclass-native_append = "X"

means append "X" to the variable EXTRA_OECONF_virtclass-native

So as bitbake expands this, 

EXTRA_OECONF_virtclass-native = "X" (since EXTRA_OECONF_virtclass-native
was empty)

When bitbake expands overrides, the virtclass-native can be removed and
this overwrites the original EXTRA_OECONF variable so EXTRA_OECONF
becomes just X.

Now taking:

EXTRA_OECONF_append_virtclass-native = "X"

This is different. In this case, when overrides are expanded, this
becomes EXTRA_OECONF_append and then X is added to EXTRA_OECONF.

If the virtclass-native is never expanded (not in OVERRIDES), the append
is never "seen" by bitbake.

Unfortunately rewriting the above to:

EXTRA_OECONF_append = " --with-gnutls=${STAGING_LIBDIR}/../"
EXTRA_OECONF_append_virtclass-native = " --without-gnutls"
EXTRA_OECONF_append_virtclass-nativesdk = " --without-gnutls"

doesn't help since we end up with two appends in the native/nativesdk
cases. There is a way out of this though:

+CURLGNUTLS = " --with-gnutls=${STAGING_LIBDIR}/../"
+CURLGNUTLS_virtclass-native = "--without-gnutls"
+CURLGNUTLS_virtclass-nativesdk = "--without-gnutls"

and then reference CURLGNUTLS in EXTRA_OECONF which is what my update
does :)

Cheers,

Richard


