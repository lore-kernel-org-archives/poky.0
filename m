Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.3657.1592385660892640707
 for <poky@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 02:21:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49n0156th9z5tlT;
	Wed, 17 Jun 2020 11:20:57 +0200 (CEST)
Date: Wed, 17 Jun 2020 11:20:56 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org, andriy.danylovskyy@streamunlimited.com,
	radek.dostal@streamunlimited.com, alex.kanavin@gmail.com,
	richard.purdie@linuxfoundation.org
Subject: Re: [poky] [BUG] icecc breaks gobject-introspection do_compile on 2.7.2 and master
Message-ID: <20200617092056.my5xohwqfbr7ifdz@qschulz>
References: <20191206101849.hvhc5itxvxfxoap6@qschulz>
 <CAMKF1srL4gGxGx6DtHVN3=6uzn7KEGAQXcyypgw+7R6OZUjgsQ@mail.gmail.com>
 <20191209104222.lddk55rzv6lrwlp4@qschulz>
 <CAMKF1sp+rmXSrNqXD5k0Z1oC8rKtZA5xo9-OmJLYG2sS4SwWEg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sp+rmXSrNqXD5k0Z1oC8rKtZA5xo9-OmJLYG2sS4SwWEg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Groupsio-MsgNum: 12042
Content-Type: multipart/mixed; boundary="hczcghdghj5nyutx"
Content-Disposition: inline

--hczcghdghj5nyutx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

Reviving the thread as I see Alex talking to Richard about a g-i build
issue that is a build race due to missing dependency.

This very much looks like gobject-introspection being talked about and I
also have this missing dependency issue.

I haven't written a proper log and I'm definitely not fluent in meson
but the attached diff fixed my issue (I have the commit log sort of
ready but on my home desktop, anyway).

Hope this helps. I'll send the logic behind late(r) this day if need be.

Cheers,
Quentin

--hczcghdghj5nyutx
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="test.patch"

diff --git a/gir/meson.build b/gir/meson.build
index a028033..d50a513 100644
--- a/gir/meson.build
+++ b/gir/meson.build
@@ -463,7 +463,7 @@ foreach gir : gir_files
   typelibs += custom_target('generate-typelib-@0@'.format(gir).underscorify(),
     input: gir,
     output: '@BASENAME@.typelib',
-    depends: [gobject_gir, ],
+    depends: [gobject_gir, gircompiler, ],
     command: gircompiler_command,
     install: true,
     install_dir: typelibdir,

--hczcghdghj5nyutx--
